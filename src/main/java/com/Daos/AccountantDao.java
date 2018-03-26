package com.Daos;

import org.hibernate.SessionFactory;
import org.hibernate.cfg.AnnotationConfiguration;
import org.hibernate.cfg.Configuration;
import org.hibernate.classic.Session;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;

import Pojos.AdminPojo;
@Controller
public class AccountantDao {
	public String saveAccountDetails(AdminPojo admin,Model model){
		
		Configuration configure = new AnnotationConfiguration().configure();
		SessionFactory sf = configure.buildSessionFactory();
				
		Session session= sf.openSession();
		session.save(admin);
	
		 session.beginTransaction().commit();
		 session.close();
		return "result";
}}
