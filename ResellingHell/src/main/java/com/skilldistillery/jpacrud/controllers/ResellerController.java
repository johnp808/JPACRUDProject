package com.skilldistillery.jpacrud.controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.skilldistillery.jpacrud.dao.ResellerDAO;
import com.skilldistillery.jpacrud.entities.Reseller;

@Controller
public class ResellerController {

	@Autowired
	private ResellerDAO dao;
	
	/*
	 * 	@RequestMapping(path="/")
	public String index(Model model) {
		List<Film> films = filmDao.findAll();
		model.addAttribute("films", films);
//	  return "WEB-INF/index.jsp";
	   return "index"; // if using a ViewResolver.
	}
	@RequestMapping(path={"/","home.do"})
	public String index(Model model) {
	  model.addAttribute("allPokemon", dao.findAll());
	  return "index"; // if using a ViewResolver.
	}
	
		@RequestMapping (path="getPokemon.do")
	public String showPokemon(Integer pid, Model model) {
		model.addAttribute("pokemon", dao.findById(pid));
		return "show";
	}
	 */
	@RequestMapping(path = "getReseller.do")
	public String showReseller(Integer gid, Model model) {
		Reseller reseller = dao.findById(gid);
		model.addAttribute("reseller", reseller);
		return "reseller/show";
	}
	
	@RequestMapping(path = {"/",  "home.do"})
	public String home(Model model) {
		model.addAttribute("resellers", dao.findAll());
		return "home";
	}

	
	
	
}
