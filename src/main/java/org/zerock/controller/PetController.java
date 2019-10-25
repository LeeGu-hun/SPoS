package org.zerock.controller;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;

import org.springframework.beans.propertyeditors.CustomDateEditor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import org.zerock.domain.Criteria;
import org.zerock.domain.EnrollmentVO;
import org.zerock.domain.PageDTO;
import org.zerock.service.PetService;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Controller
@Log4j
@AllArgsConstructor
public class PetController {

	private PetService petservice;

	@InitBinder
	protected void initBinder(WebDataBinder binder) {
		DateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
		binder.registerCustomEditor(Date.class, new CustomDateEditor(dateFormat, false));
	}

	@GetMapping("/Enrollment")
	public void publishing(Model model) {
		log.info("Enrollment:");
		model.addAttribute("custList", petservice.getCustList());
		model.addAttribute("cateList", petservice.getCateList());
	}
	@PostMapping("/Enrollment")
	public String saleReg(EnrollmentVO vo, RedirectAttributes rttr) {
		log.info("Enrollment");
		petservice.Enrollment(vo);
		rttr.addFlashAttribute("result", 1);
		log.info("rttr"+rttr.getFlashAttributes());
		return "redirect:/Enrollment";
	}

	@PostMapping("/sale/getProdListWithCate")
	public void getProdListWithCate(Model model, 
			@RequestParam("pet_sort") String pet_sort) {
		log.info("getProdListWithCate");
		if(pet_sort.equals(""))
			model.addAttribute("prodList", 
				petservice.getProdList());
		else 
			model.addAttribute("prodList", 
					petservice.getProdList(pet_sort));
	}
	@PostMapping("/sale/getProdListWithCateByReport")
	public void getProdListWithCateByReport(Model model, 
			@RequestParam("pet_sort") String pet_sort,
			@RequestParam("selProd") String selProd) {
		
		if(pet_sort.equals("all"))
			model.addAttribute("prodList", petservice.getProdList());
		else 
			model.addAttribute("prodList", 	petservice.getProdList(pet_sort));
		log.info("selProd>>>"+selProd);
		model.addAttribute("selProd", selProd);
	}	
	
	@GetMapping("/PetFood")
	public void reportGet(Model model) {
		log.info("PetFood:");
		model.addAttribute("custList", petservice.getCustList());
		model.addAttribute("cateList", petservice.getCateList());
	}

	@PostMapping("/PetFood")
	public void reportPost(Model model, Criteria cri) {
		log.info("getProdListWithCateByReport");
		model.addAttribute("orderList", petservice.getOrderList(cri));
		model.addAttribute("custList", petservice.getCustList());
		model.addAttribute("cateList", petservice.getCateList());
		model.addAttribute("pageMaker1", new PageDTO(cri, petservice.getTotal(cri)));
	}

}
