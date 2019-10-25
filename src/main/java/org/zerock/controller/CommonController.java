package org.zerock.controller;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import org.zerock.domain.MemberVO;
import org.zerock.service.MemberService;

import lombok.extern.log4j.Log4j;

@Log4j
@Controller
public class CommonController {	

	private MemberService service;
	
	@GetMapping("/customLogin")
	public void customLogin() {
		
	}
	
	@RequestMapping("/customLogout")
	public ModelAndView logout(HttpSession session) {
		session.invalidate();
		ModelAndView mv = new ModelAndView("redirect:/");
		return mv;
	}

	
	@GetMapping("/membership")
	public void membership() {
		
	}
		
	@RequestMapping("/membership")
	public String join_member(MemberVO member,RedirectAttributes rttr) {
		log.info("join_member: " + member);
		service.join_member(member);
		rttr.addFlashAttribute("result", member);
		return "redirect:/customLogin";
	}
	
	@GetMapping("/modify")
	public void modify() {
		
	}
	@PostMapping("/modify")
	public String updateMember(MemberVO vo,RedirectAttributes rttr) {
		log.info("updateMember: "+ vo);
		service.updateMember(vo);
		rttr.addFlashAttribute("result",vo);
		return "redirect:/customLogin";
	}

}
