package com.springboot.service;

import java.util.List;

import com.springboot.pojo.Login;
import com.springboot.pojo.Employee;

public interface AdminService 
{
	List<Employee> listEmployee();
	String registerUser(Employee m);
	String updateUser(Employee m);
	Employee getEmpById(int eid);
	Login authenticateUser(String username,String password);
	

	 
}
