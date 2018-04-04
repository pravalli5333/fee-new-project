package com.Controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.Daos.AccountantDao;

import Pojos.AdminPojo;

@Controller
public class AccountantController {
	
	@Autowired
	AccountantDao adao;
	
	@RequestMapping(value="/addAccount", method = RequestMethod.POST)
	public String saveAccountDetails(AdminPojo admin,Model model){
		
		String view =adao.saveAccountDetails(admin, model);
		return view;
		}
	
	@RequestMapping(value="/addStudent",method = RequestMethod.POST)
	public String addStudent(){
		return"addstudent";
	}

	@RequestMapping(value="/back")
	public String back(){
		return"adminHome";
	}
	
	@RequestMapping(value="/back1")
	public String back1(){
		return"AccountantSection";
	}
	

	
	
	}
	


