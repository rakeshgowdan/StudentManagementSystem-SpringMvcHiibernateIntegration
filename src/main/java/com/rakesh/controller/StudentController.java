package com.rakesh.controller;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.rakesh.model.Student;
import com.rakesh.service.StudentService;



@Controller
public class StudentController {

	@Autowired(required = true)
	StudentService ss;
	
	
	@RequestMapping("/")
	public ModelAndView home() {
	    List<Student> listCustomer = ss.listAllStudents();
	    ModelAndView mav = new ModelAndView("index");
	    mav.addObject("listStudent", listCustomer);
	    return mav;
	}
	@RequestMapping("/new")
	public String newCustomerForm(HashMap<String, Object> model) { //modelap
		Student customer = new Student();
	    model.put("customer", customer);
	    return "new_student";
	}
	@RequestMapping(value = "/save", method = RequestMethod.POST)
	public String saveCustomer(@ModelAttribute("customer") Student customer) {
	    ss.save(customer);
	    return "redirect:/";
	}
	@RequestMapping("/edit")
	public ModelAndView editCustomerForm(@RequestParam long id) {
	    ModelAndView mav = new ModelAndView("edit_student");
	    Student customer = ss.get(id);
	    mav.addObject("customer", customer);
	 
	    return mav;
	}
	@RequestMapping("/delete")
	public String deleteCustomerForm(@RequestParam long id) {
	    ss.delete(id);
	    return "redirect:/";       
	}
	@RequestMapping("/search")
	public ModelAndView search(@RequestParam String keyword) {
	    List<Student> result = ss.search(keyword);
	    ModelAndView mav = new ModelAndView("search");
	    mav.addObject("result", result);
	 
	    return mav;    
	}
}
