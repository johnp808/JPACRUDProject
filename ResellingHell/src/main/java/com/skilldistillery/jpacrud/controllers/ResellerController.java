package com.skilldistillery.jpacrud.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.skilldistillery.jpacrud.dao.ResellerDAO;
import com.skilldistillery.jpacrud.entities.Reseller;

@Controller
public class ResellerController {

	@Autowired
	private ResellerDAO dao;

	@RequestMapping(path = {"/",  "home.do"})
	public String home(Model model) {
		model.addAttribute("resellers", dao.findAll());
		return "home";
	}
	@RequestMapping(path = "getReseller.do")
	public String showReseller(@RequestParam Integer rid, Model model) {
		Reseller reseller = dao.findById(rid);
		model.addAttribute("reseller", reseller);
		return "reseller/show";
	}
	
	@RequestMapping (path="updateResellerSlot.do", method=RequestMethod.POST)
	public String updateResellerSlot(Model model, @RequestParam Integer rid) {
		Reseller updatedReseller = dao.findById(rid);
		model.addAttribute("reseller", updatedReseller);
		return "updateReseller";
	}
	
	@RequestMapping (path="updateReseller.do", method=RequestMethod.POST)
	public String updateReseller(Integer rid, Model model, Reseller reseller) {
		model.addAttribute("reseller", dao.updateReseller(rid, reseller));
		return "updateSuccess";
	}

}
