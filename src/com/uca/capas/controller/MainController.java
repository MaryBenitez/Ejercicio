package com.uca.capas.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.uca.capas.domain.Contribuyente;
import com.uca.capas.service.ContribuyenteService;

@Controller
public class MainController {
	
	@Autowired
	ContribuyenteService contS;
	
	@RequestMapping("/")
	public ModelAndView initMain() {
		ModelAndView mav = new ModelAndView();
		Contribuyente contribuyente = new Contribuyente();
		mav.addObject("contribuyente", contribuyente);
		mav.setViewName("main");
		return mav;
	}
	
	@RequestMapping(value = "/BuscarC" , method=RequestMethod.POST)
	public ModelAndView buscar() {
		ModelAndView mav = new ModelAndView();
		mav.addObject("contribuyente",contS.findAll());
		mav.setViewName("contribuyentes");
		return mav;
		
	}
	
}
