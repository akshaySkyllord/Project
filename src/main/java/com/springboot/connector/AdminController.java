package com.springboot.connector;

import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;


import com.springboot.pojo.Employee;
import com.springboot.pojo.Login;
import com.springboot.service.AdminService;


@Controller
@RequestMapping("/system")
public class AdminController 

{
	@Autowired
	private AdminService service;

	public AdminController()
	{
		System.out.println("inside constructor of"+getClass().getName());
	}


	@GetMapping("/welcome")
	public String showwelcome()
	{
		System.out.println("in welcome form ");
		return "welcome";
	}



	@GetMapping("/list")
	public String showList(Employee m,Model map)
	{
		System.out.println("in list form ");
		map.addAttribute("employee_list", service.listEmployee());
		return "list";
	}



	@GetMapping("/success")
	public String showRegSuccess(Employee m)
	{
		System.out.println("in show success");
		return "success";
	}

	@GetMapping("/register")
	public String showRegForm(Employee m)
	{
		System.out.println("in show registration");
		return "register";
	}
	@PostMapping("/register")
	public String processRegForm(Employee m,Model map)
	{
		System.out.println("in process reg detail form "+m);

		try {
			service.registerUser(m);
			return "success";
		}catch(Exception e)
		{
			return "/register";
		}


	}




	@GetMapping("/update")
	public String showUpdate(@PathVariable int eid,Model map)
	{
		System.out.println("in show update");
		Employee emp=service.getEmpById(eid);
		map.addAttribute("command",emp);
		return "update";
	}


	@PostMapping("/update")
	public String processUpdate(Employee m)
	{
		System.out.println("in process update form "+m);

		try {
			service.updateUser(m);
			return "success";
		}catch(Exception e)
		{
			return "/register";
		}


	}








	@RequestMapping("/member/{eid}")
	public String showSocietyMember(@PathVariable("eid") int eid,Model map)
	{
		/*System.out.println("in society detail "+member);
							return "member";*/

		System.out.println("display member details " + eid);
/*		Employee emp=service.getEmpById(eid);
		map.addAttribute("command",emp);
		flashMap.addFlashAttribute("status",service.registerUser(m));
*/		map.addAttribute("society_list", this.service.getEmpById(eid));
		return "member";


	}

	@PostMapping("/member")
	public String addSocietyMember(Employee m)
	{
		System.out.println("in process update form "+m);

		try {
			service.updateUser(m);
			return "success";
		}catch(Exception e)
		{
			return "/register";
		}




	}


	@GetMapping("/logout")
	public String adminLogout(HttpSession hs)
	{
		System.out.println("in logout");
		hs.invalidate();
		return "redirect:login";
	}


	@GetMapping("/login")
	public String showLoginForm()
	{
		System.out.println("In show login form");
		return "/login";
	}
	@PostMapping("/login")
	public String processLoginForm(@RequestParam String username,@RequestParam String password) 
	{

		System.out.println("in process login form " + username + " " + password);
		Login l=null;
		try {
			l = service.authenticateUser(username, password);
			//valid login
			if(l.getUsername().equals("admin")) 
			{
				//add validated user dtls under session scope
				//hs.setAttribute("admin_dtls", l);//v ---DETACHED
				//flashMap.addFlashAttribute("status","admin Login Successful");
				return "/welcome";
			}

			//hs.setAttribute("user_dtls", l);//v ---DETACHED
			//flashMap.addFlashAttribute("status","user Login Successful");

			return "welcome";	

		} catch (Exception e)
		{
			//map.addAttribute("status", "Invalid Login , Please try again..");
			return "login";
		}

	}
}