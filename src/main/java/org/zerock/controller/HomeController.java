package org.zerock.controller;

import java.io.IOException;
import java.security.Principal;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.zerock.domain.BoardVO;
import org.zerock.domain.Criteria;
import org.zerock.domain.FoodHistoryVO;
import org.zerock.service.BoardService;
import org.zerock.service.FoodService;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;


@Controller
@AllArgsConstructor
@Log4j
public class HomeController {
	
	private BoardService service;
	private FoodService fService;
	
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home() {
		return "customLogin";
	}
	
	@RequestMapping(value = "/home", method = RequestMethod.GET)
	public String home(Model model, Criteria cri, Principal principal) {
		List<BoardVO> vo = service.getList(cri);
		vo.forEach(e -> e.setAttachList(service.getAttachList(e.getBoard_index())));
		log.info("List : " + vo);
		log.info(principal);
		model.addAttribute("list", vo);
		model.addAttribute("pageMaker", cri);
		String testStr = principal+"";
		log.info(testStr);
		
		if(!testStr.equals("null")) {
			model.addAttribute("food", fService.getFood(principal.getName()));			
		} else {
			model.addAttribute("food", new FoodHistoryVO(0,0));
		}
		
		return "/home";
	}
	
	@RequestMapping(value = "/favicon.ico", method = RequestMethod.GET)
	public void favicon(HttpServletRequest request, HttpServletResponse reponse) {
		try {
			reponse.sendRedirect("/resources/favicon.ico");
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
}
