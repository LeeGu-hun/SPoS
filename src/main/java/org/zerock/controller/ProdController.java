package org.zerock.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.zerock.service.ProdService;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;


@Controller
@AllArgsConstructor
@Log4j
@RequestMapping("/shop/")
public class ProdController {
	
	private ProdService prdService;
	
	
	
}
