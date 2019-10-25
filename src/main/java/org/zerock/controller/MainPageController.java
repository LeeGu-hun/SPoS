package org.zerock.controller;

import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.List;

import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import org.zerock.domain.BoardAttachVO;
import org.zerock.domain.BoardVO;
import org.zerock.domain.Criteria;
import org.zerock.service.BoardService;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Controller
@AllArgsConstructor
@Log4j
public class MainPageController {
	private BoardService service;
	
	@PostMapping("/getBoardList")
	public void getBoardList(@RequestBody Criteria cri, Model model) {
		log.info("getBoardList with cri : " + cri);
		List<BoardVO> vo = service.getList(cri);
		vo.forEach(e -> e.setAttachList(service.getAttachList(e.getBoard_index())));
		log.info("List : " + vo);
		model.addAttribute("list", vo);
	}
	
	@PostMapping("/register")
	public String register(BoardVO board, RedirectAttributes rttr) {
//		new BoardRegisterValidator().validate(board, errors);
//		if(errors.hasErrors()) {
//			log.info(errors.getAllErrors());
//			return "/board/register";
//		}
		log.info("==================================");
		log.info("register: " + board);
		
		if(board.getAttachList()!=null) {
			board.getAttachList().forEach(attach -> attach.setPicture_path(attach.getPicture_path().replace("\\", "/")));
			board.getAttachList().forEach(attach -> log.info(attach));
		}
		log.info("==================================");
		service.register(board);
		return "redirect:/home";
	}

	@PostMapping(value = "/delete/{board_index}")
	@PreAuthorize("principal.username == #user_id")
	public ResponseEntity<String> removeBoard(@PathVariable("board_index") Long board_index, @RequestBody String user_id) {
		log.info("remove board: " + board_index);
		List<BoardAttachVO> attachList = service.getAttachList(board_index);
		boolean isSucces = service.remove(board_index);
		if(isSucces) {
			// delete Attach Files
			deleteFiles(attachList);
		}
		return isSucces == true ? new ResponseEntity<>("success", HttpStatus.OK) : new ResponseEntity<>(HttpStatus.INTERNAL_SERVER_ERROR);
	}
	
	private void deleteFiles(List<BoardAttachVO> attachList) {
		if(attachList == null || attachList.size() == 0)
			return;
		
		log.info("delete attach files...................");
		log.info(attachList);
		
		attachList.forEach(attach -> {
			Path file = Paths.get("d:\\upload\\" + attach.getPicture_path() + "\\" + attach.getPicture_uuid() + "_" + attach.getPicture_name());
			try {
				Files.deleteIfExists(file);
				Path thumbNail = Paths.get("d:\\upload\\" + attach.getPicture_path() + "\\s_" + attach.getPicture_uuid() + "_" + attach.getPicture_name());
				Files.delete(thumbNail);
			} catch (Exception e) {
				log.error("delete file error!" + e.getMessage());
			} // end catch
		}); // end forEach
	}
}
