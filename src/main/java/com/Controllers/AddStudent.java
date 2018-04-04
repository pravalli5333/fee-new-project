package com.Controllers;


import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.AnnotationConfiguration;
import org.hibernate.cfg.Configuration;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import Pojos.StudentPojo;

@Controller
public class AddStudent {
	
	
	@RequestMapping(value="addstudentrequest")
	public String addstudentdetails(StudentPojo stPojo,Model model){
		System.out.println("haiiiiiiii");
		Configuration configure = new AnnotationConfiguration().configure();
		SessionFactory sf = configure.buildSessionFactory();
		Session session = sf.openSession();
		
		session.save(stPojo);
		
		session.beginTransaction().commit();
		
		model.addAttribute("message", "Registered Sucesfully");
		return "resultacc";
		
	}
	
	
}
