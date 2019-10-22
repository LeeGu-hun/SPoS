package org.zerock.controller;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
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
	
	@GetMapping("/main")
	public String main(Model model) {
		List<BoardVO> tempVO = service.getList();
		tempVO.forEach(e -> e.setAttachList(service.getAttachList(e.getBoard_index())));
		log.info("List : " + tempVO);
		model.addAttribute("list", tempVO);
		return "main";
	}
	
	@PostMapping("/getBoardList")
	public void getBoardList(@RequestBody Criteria cri, Model model) {
		log.info("getBoardList with cri : " + cri);
		List<BoardVO> moreList = service.getBoardMore(cri);
		if(moreList.isEmpty()) {
			model.addAttribute("isEmpty", true);
		} else {
			model.addAttribute("isEmpty", false);
			cri.setPageNum(cri.getPageNum()+1);
		}
		model.addAttribute("listMore", moreList);
		model.addAttribute("pageMaker", cri);
	}
	
	@PostMapping("/register")
	public String register(BoardVO board) {
	//public String register(BoardVO board, RedirectAttributes rttr) {
//		new BoardRegisterValidator().validate(board, errors);
//		if(errors.hasErrors()) {
//			log.info(errors.getAllErrors());
//			return "/board/register";
//		}
		log.info("==================================");
		log.info("register: " + board);
		
//		if(board.getAttachList()!=null) {
//			board.getAttachList().forEach(attach -> log.info(attach));
//		}
		log.info("==================================");
		service.register(board);
		return "redirect:/";
	}
	
//	@GetMapping(value = "/getAttachList", produces = MediaType.APPLICATION_JSON_UTF8_VALUE)
//	@ResponseBody
//	public ResponseEntity<List<BoardAttachVO>> getAttachList(Long board_index) {
//		log.info("getAttachList : " + board_index);
//		return new ResponseEntity<>(service.getAttachList(board_index), HttpStatus.OK);
//	}
}
