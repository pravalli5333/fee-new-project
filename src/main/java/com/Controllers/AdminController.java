package com.Controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.Daos.AdminDao;
import com.Services.AdminService;

import Pojos.AdminPojo;

@Controller
public class AdminController {
	

	@Autowired
	AdminService service;
	@Autowired
	AdminDao dao1;
		
		@RequestMapping(value="adminlogin")
		public String goTOAdmin(){
			return"Login";
		}
		
		@RequestMapping(value="acclogin")
		public String goTOAccountant(){
			
			return"Login";
		}
		
		@RequestMapping(value="addaccount")
		public String addAccountant(){
			return"addAccountant";
		}
		
		@RequestMapping(value="viewAccount")
		public String viewAccountant(AdminPojo admin,Model model ){
			List<AdminPojo> list = dao1.viewAccountant(admin,model);
			
			for (AdminPojo accData : list) {
				System.out.println(accData.getName());
			}
			model.addAttribute("accList",list);
			return"viewAccountantDetails";
		}
		
		
		@RequestMapping(value="logout")
		public String logOut(){
			
			return"adminHome";
		}
		
		@RequestMapping(value="logout1")
		public String logOutt(){
			
			return"welcome";
		}
		
	
	@RequestMapping(value = "loginaction")
 public String adminLogin(AdminPojo admin,Model model){
		String view = service.adminLogin(admin, model);
		return view;
	
	 
 }

}