package org.zerock.controller;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
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
	
	@PostMapping("/getBoardList")
	public void getBoardList(@RequestBody Criteria cri, Model model) {
		log.info("getBoardList with cri : " + cri);
		List<BoardVO> vo = service.getList(cri);
		vo.forEach(e -> e.setAttachList(service.getAttachList(e.getBoard_index())));
		log.info("List : " + vo);
		model.addAttribute("list", vo);
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
