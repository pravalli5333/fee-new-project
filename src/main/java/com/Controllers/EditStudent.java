package com.Controllers;

import java.io.Serializable;
import java.util.List;

import javax.transaction.Transaction;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.AnnotationConfiguration;
import org.hibernate.cfg.Configuration;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import Pojos.StudentPojo;

@Controller
public class EditStudent {

	private Object pojo;
	private Object edit;

	@RequestMapping(value = "viewstudentrequest", method = RequestMethod.POST)
	public String viewstudentdetails(StudentPojo stPojo, Model model) {
		System.out.println("view details");
		Configuration configure = new AnnotationConfiguration().configure();
		SessionFactory sf = configure.buildSessionFactory();
		Session session = sf.openSession();
		session.beginTransaction();
		Query createQuery = session.createQuery("from StudentPojo");
		@SuppressWarnings("unchecked")
		List<StudentPojo> list = createQuery.list();
		session.beginTransaction().commit();
		model.addAttribute("view", list);
		return "viewstudent";
	}

	@RequestMapping(value = "editstudentrequest", method = RequestMethod.POST)
	public String editstudentdetails(@RequestParam("email") String email, Model model) {
		
		Configuration configure = new AnnotationConfiguration().configure();
		SessionFactory sf = configure.buildSessionFactory();

		Session session = sf.openSession();
		
		Query editQuery = session.createQuery("from StudentPojo where email=:email");
		editQuery.setParameter("email", email);
		List<StudentPojo> list = editQuery.list();
		model.addAttribute("stpojo", list.get(0));
		return "updatestudent";

	}

	@RequestMapping(value = "updatestudentrequest", method = RequestMethod.POST)
	public String updatestudentdetails(StudentPojo stPojo, Model model) {
		System.out.println("haiiiiiiii");
		Configuration configure = new AnnotationConfiguration().configure();
		SessionFactory sf = configure.buildSessionFactory();
		Session session = sf.openSession();

		session.saveOrUpdate(stPojo);
		session.beginTransaction().commit();
		Query updatequery = session.createQuery("from StudentPojo");
		List<StudentPojo> list = updatequery.list();
		session.close();
		model.addAttribute("edit", list);
		model.addAttribute("mes", "update successfully");
		return "updatestudent";
	}

}
