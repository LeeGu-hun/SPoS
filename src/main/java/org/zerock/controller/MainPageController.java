package org.zerock.controller;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
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
}