package com.Services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;

import com.Daos.AdminDao;

import Pojos.AdminPojo;




@Controller
public class AdminService {

	
	@Autowired
	AdminDao dao;

	 public String adminLogin(AdminPojo admin,Model model){ {
		//Database logic
		List<AdminPojo> list = dao.adminLogin(admin);
		
		//Bussiness logic
		if (list != null && list.size() > 0) {
			AdminPojo ld = list.get(0);
			if(ld.getRole().equals("admin")){
				return "adminHome";
			}else{
				return "AccountantSection";
			}

		} else {
			model.addAttribute("msg","Please Fill Up The  Valid Credentials");
			return "Login";

		}
	}
}
	 
	}
