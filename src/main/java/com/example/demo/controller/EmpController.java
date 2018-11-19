package com.example.demo.controller;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.example.demo.dao.EmpDao;
import com.example.demo.domain.Emp;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@Controller
@RequestMapping("/emps")
public class EmpController {
	
	@Autowired
	private EmpDao empDao;
	
	@GetMapping
	public String getSearchView() {
		return "search";
	}
	
	@PostMapping
	public String postOne(@RequestParam Map<String,String> map, Model model) {
		log.debug(map.toString());
		List<Emp> empList = empDao.search(map);
		model.addAttribute("emps", empList);
		return "search";
	}
	
//	@PostMapping
//	public ModelAndView postOne(@RequestParam Map<String,String> map) {
//		log.debug(map.toString());
//		List<Emp> empList = empDao.search(map);
//		ModelAndView mav = new ModelAndView();
//		mav.setViewName("example3");
//		mav.addObject("map", map);
//		mav.addObject("emps", empList);
//		return mav;
//	}
	
}
