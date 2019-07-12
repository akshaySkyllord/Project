package com.springboot.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.springboot.pojo.Login;
import com.springboot.daos.AdminDAO;
import com.springboot.pojo.Employee;

@Service
@Transactional
public class AdminServiceImpl implements AdminService 
{
	@Autowired
	private AdminDAO dao;

	public List<Employee> listEmployee() {
		return dao.listEmployee();	
	}

	public String registerUser(Employee m) {
		System.out.println("In service register....");
		return dao.registerUser(m);
	}

	public Login authenticateUser(String username, String password) {
		return dao.authenticateUser(username, password);
	}

	public String updateUser(Employee m) {
		
		 return dao.updateUser(m);
	}

	public Employee getEmpById(int eid) {
		// TODO Auto-generated method stub
		return dao.getEmpById(eid);
	}
	

	

	


}
