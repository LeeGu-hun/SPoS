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
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import org.zerock.service.ProdService;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Controller
@AllArgsConstructor
@Log4j
@RequestMapping("/shop/")
public class ProdController {

	private ProdService prodSvc;

	@InitBinder
	protected void initBinder(WebDataBinder binder) {
		DateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
		binder.registerCustomEditor(Date.class, new CustomDateEditor(dateFormat, false));
	}

	@GetMapping("/prodList")
	public void prodList(Model model) {
		log.info("prodList:");
		model.addAttribute("cate", prodSvc.getProdCate());

	}

	@PostMapping("/getDetailCateWithCate")
	public void getProdListWithCate(Model model, @RequestParam("prodCate") String prodCate) {
		log.info("getDetailCateWithCate");
		if (prodCate.equals(""))
			model.addAttribute("detailCate", prodSvc.getDetailCate(prodCate));
		else
			model.addAttribute("detailCate", prodSvc.getProdList(prodCate));
	}

	@PostMapping("/getProdListWithDetailCate")
	public void getProdListWithDetailCate(Model model, @RequestParam("detailCate") String detailCate) {
		log.info("getProdListWithDetailCate");
		if (detailCate.equals(""))
			model.addAttribute("prodList", prodSvc.getProdList(detailCate));
		else
			model.addAttribute("prodList", prodSvc.getProdList(detailCate));
	}
	@GetMapping("/prodDetail")
	public void prodDetail(Model model) {
		log.info("prodDetail:");
		
		
	}
	// 2. 상품 상세보기
		@RequestMapping("detail/{prodId}")
		public ModelAndView detail(@PathVariable("prodId") int prodId, ModelAndView mav){
			mav.setViewName("/shop/prodDetail");
			mav.addObject("vo", prodSvc.detailProd(prodId));
			return mav;
		}
	
	@GetMapping("/prodEdit")
	public void prodEdit(Model model) {
		log.info("prodEdit");
	}
	
	@GetMapping("/prodWrite")
	public void prodWrite(Model model) {
		log.info("prodWrite");
	}

}
