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

// show all resellers
	@RequestMapping(path = { "/", "home.do" })
	public String home(Model model) {
		model.addAttribute("resellers", dao.findAll());
		return "home";
	}

	// find by id
	@RequestMapping(path = "getReseller.do")
	public String showReseller(@RequestParam Integer rid, Model model) {
		Reseller reseller = dao.findById(rid);
		model.addAttribute("reseller", reseller);
		return "reseller/show";
	}

	@RequestMapping(path = "createResellerSlot.do", method = RequestMethod.POST)
	public String createPokemonForm(Model model, Reseller reseller) {
		return "addReseller";
	}

	@RequestMapping(path = "createReseller.do", method = RequestMethod.POST)
	public String createPokemon(Model model, Reseller reseller) {
		model.addAttribute("reseller", dao.create(reseller));
		return "addWorked";
	}

	// update reseller
	@RequestMapping(path = "updateResellerSlot.do", method = RequestMethod.POST)
	public String updateResellerSlot(@RequestParam Integer rid, Model model) {
		Reseller updatedReseller = dao.findById(rid);
		model.addAttribute("reseller", updatedReseller);
		return "updateReseller";
	}

	// update reseller
	@RequestMapping(path = "updateReseller.do", method = RequestMethod.POST)
	public String updateReseller(Integer rid, Model model, Reseller reseller) {
		model.addAttribute("reseller", dao.updateReseller(rid, reseller));
		System.out.println("Dick");
		return "updateSuccess";
	}

	@RequestMapping(path = "deleteReseller.do")
	public String deleteReseller(Integer rid, Model model) {
		model.addAttribute("reseller", dao.destroy(rid));
		return "deleted";
	}
}
