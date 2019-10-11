package org.zerock.controller;

import java.util.List;

import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.zerock.domain.BoardVO;
import org.zerock.domain.Criteria;
import org.zerock.service.MainPageService;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Controller
@AllArgsConstructor
@Log4j
public class MainPageController {
	private MainPageService service;
	
	@GetMapping("/main")
	public String main(Model model) {
		model.addAttribute("list", service.getList());
		log.info(service.getList());
		return "main";
	}
	
	//여까지했음
	@GetMapping(value = "/getBoardList", produces = MediaType.APPLICATION_JSON_UTF8_VALUE)
	@ResponseBody
	public ResponseEntity<List<BoardVO>> getBoardList(Criteria cri) {
		log.info("getBoardList with cri : " + cri);
		return new ResponseEntity<>(service.getBoardMore(cri), HttpStatus.OK);
	}
}
