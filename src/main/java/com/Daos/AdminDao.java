package com.Daos;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.AnnotationConfiguration;
import org.hibernate.cfg.Configuration;
import org.hibernate.classic.Session;
import org.springframework.ui.Model;

import Pojos.AdminPojo;

public class AdminDao {
	
	 public List<AdminPojo> adminLogin(AdminPojo admin){
			Configuration configure = new AnnotationConfiguration().configure();
			SessionFactory sf = configure.buildSessionFactory();

			Session session = sf.openSession();

			Query cq = session.createQuery("from AdminPojo  where name = '" + admin.getName() + "' and password = '"
					+ admin.getPassword() + "'");
			@SuppressWarnings("unchecked")
			
			List<AdminPojo> list = cq.list();
			session.close();
			return list;
			 }
	 
	 public List<AdminPojo> viewAccountant(AdminPojo admin,Model model ){
			Configuration configure = new AnnotationConfiguration().configure();
			SessionFactory sf = configure.buildSessionFactory();
			Session session = sf.openSession();
			session.beginTransaction();
			Query createQuery = session.createQuery("from AdminPojo");
			@SuppressWarnings("unchecked")
			List<AdminPojo> list = createQuery.list();
			session.getTransaction().commit();
			session.close();
			return list;
		

}

}
