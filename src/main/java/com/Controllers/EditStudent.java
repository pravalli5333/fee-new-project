package com.Controllers;

import java.util.List;

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

	@RequestMapping(value = "deleterequest", method = RequestMethod.POST)
	public String deletedetails(@RequestParam("email") String mail, Model model) {
		System.out.println("delete details");
		Configuration configure = new AnnotationConfiguration().configure();
		SessionFactory sf = configure.buildSessionFactory();
		Session session = sf.openSession();
		session.beginTransaction();
		Query deleteQuery = session.createQuery("delete from StudentPojo where email=:uname");
		deleteQuery.setParameter("uname", mail);
		deleteQuery.executeUpdate();
		System.out.println("fetching user details from data base");
		Query createQuery = session.createQuery("from StudentPojo");
		@SuppressWarnings("unchecked")
		List<StudentPojo> list = createQuery.list();
		session.getTransaction().commit();
		session.close();

		for (StudentPojo userData : list) {
			System.out.println(userData.getName());
		}
		model.addAttribute("stpojo", list);

		return "editstudent";
	}

	@RequestMapping(value = "editstudentrequest", method = RequestMethod.POST)
	public String editstudentrequest(StudentPojo stPojo, Model model) {
		System.out.println("view details");
		Configuration configure = new AnnotationConfiguration().configure();
		SessionFactory sf = configure.buildSessionFactory();
		Session session = sf.openSession();
		session.beginTransaction();
		Query createQuery = session.createQuery("from StudentPojo");
		@SuppressWarnings("unchecked")
		List<StudentPojo> list = createQuery.list();
		session.beginTransaction().commit();
		model.addAttribute("stpojo", list);
		return "editstudent";
	}

	@RequestMapping(value = "editstudentrequest1", method = RequestMethod.POST)
	public String editstudentdetails(@RequestParam("email") String email, Model model) {

		Configuration configure = new AnnotationConfiguration().configure();
		SessionFactory sf = configure.buildSessionFactory();

		Session session = sf.openSession();

		Query editQuery = session.createQuery("from StudentPojo where email=:email");
		editQuery.setParameter("email", email);
		List<StudentPojo> list = editQuery.list();
		model.addAttribute("slist", list);
		return "updatestudent";

	}

	@RequestMapping(value = "updatestudentrequest", method = RequestMethod.POST)
	public String updatestudentdetails(StudentPojo stPojo, Model model) {
		System.out.println("springssssssss");
		Configuration configure = new AnnotationConfiguration().configure();
		SessionFactory sf = configure.buildSessionFactory();
		Session session = sf.openSession();
		
		System.out.println("The email is: "+stPojo.getEmail());
		session.saveOrUpdate(stPojo);
		Query updatequery = session.createQuery("from StudentPojo");
		List<StudentPojo> list = updatequery.list();
		session.beginTransaction().commit();
		model.addAttribute("stpojo", list);
		System.out.println("hkhjkjkj");
		model.addAttribute("mes", "update successfully");
		return "editstudent";
	}

}
