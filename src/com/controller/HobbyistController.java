package com.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.entity.Hobbyist;
import com.service.HobbyistService;

@Controller
@RequestMapping("/hobbyists")
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
	
	@GetMapping("/sort")
	public String sortByOption(@RequestParam("option") String option, Model model)
	{
		// Get new hobbyists list to replace the hobbyists model attribute.
		List<Hobbyist> theHobbyists = hobbyistService.getHobbyistsByOption(option);
		model.addAttribute("hobbyists", theHobbyists);
		return "list-hobbyists";
	}
	
	@GetMapping("/addForm")
	public String addForm(Model model)
	{
		// create new hobbyist and add it to model attribute
		Hobbyist newHobbyist = new Hobbyist();
		model.addAttribute("hobbyist", newHobbyist);
		return "hobbyist-form";
	}
	
	@PostMapping("/saveHobbyist")
	public String saveHobbyist(@ModelAttribute("hobbyist") Hobbyist newHobbyist)
	{
		// insert new hobbyist using hobbyistService
		hobbyistService.saveHobbyist(newHobbyist);
		return "redirect:/hobbyists/list";
	}
	
	@GetMapping("/updateForm")
	public String updateHobbyist(@RequestParam("hobbyistId") int id, Model model)
	{
		// get the hobbyist from our service
		Hobbyist hobbyist = hobbyistService.getHobbyist(id);
		
		// set hobbyist as a model attribute 
		model.addAttribute("hobbyist", hobbyist);

		// send the attribute info to populate form
		return "hobbyist-form";
	}
	
	@GetMapping("/remove")
	public String removeHobbyist(@RequestParam("hobbyistId") int id)
	{
		// remove hobbyist according to parameter hobbyistId
		hobbyistService.removeHobbyist(id);
		return "redirect:/hobbyists/list";
	}
	
	@GetMapping("/search")
	public String search(@RequestParam("keyword") String keyword, Model model)
	{
		// get new hobbyists list according to parameter keyword
		List<Hobbyist> resultHobbyists = hobbyistService.search(keyword);
		model.addAttribute("hobbyists", resultHobbyists);
		return "list-hobbyists";
	}
}
