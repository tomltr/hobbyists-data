package com.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.entity.Hobbyist;
import com.service.HobbyistService;

@Controller
@RequestMapping("/hobbyist")
public class HobbyistController 
{
	
	// Inject Hobbyist Service
	@Autowired
	private HobbyistService hobbyistService;
	
	@GetMapping("/list")
	public String listHobbyists(Model model)
	{
		// get hobbyists from the service
		List<Hobbyist> theHobbyists = hobbyistService.getHobbyists();
		
		// add the hobbyists to the model
		model.addAttribute("hobbyists", theHobbyists);

		return "list-hobbyists";
	}
	
	@GetMapping("/addForm")
	public String addForm(Model model)
	{
		Hobbyist newHobbyist = new Hobbyist();
		model.addAttribute("hobbyist", newHobbyist);
		
		return "hobbyist-form";
	}
	
	@PostMapping("/createNewHobbyist")
	public String createNewHobbyist(@ModelAttribute("hobbyist") Hobbyist newHobbyist)
	{
		hobbyistService.createHobbyist(newHobbyist);
		
		return "redirect:/hobbyist/list";
	}
}
