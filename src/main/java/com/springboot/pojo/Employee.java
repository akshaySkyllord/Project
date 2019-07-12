package com.springboot.pojo;


import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import org.springframework.format.annotation.DateTimeFormat;

@Entity
@Table(name="Employees")
public class Employee 
{
  private Integer eid;
  private String fname;
  private String lname;
  private String email;
  private String mobile;
  @DateTimeFormat(pattern="yyyy-MM-dd")
  private Date bdate;
  private  String company;
  private  String department;
  private String designation;
  private  String manager;
  private  String address;
  private String gender;


  private  int zip;
 
   

  public Employee() 
  {
	System.out.println("in constructor of"+getClass().getName());  
  }






public Employee(Integer eid, String fname, String lname, String email, String mobile, Date bdate, String company,
		String department, String designation, String manager, String address, int zip,String gender) {
	super();
	this.eid = eid;
	this.fname = fname;
	this.lname = lname;
	this.email = email;
	this.mobile = mobile;
	this.bdate = bdate;
	this.company = company;
	this.department = department;
	this.designation = designation;
	this.manager = manager;
	this.address = address;
	this.zip = zip;
	this.gender=gender;
}






@Id
@GeneratedValue(strategy=GenerationType.IDENTITY)
@Column(name="eid")
public Integer getEid() {
	return eid;
}



public void setEid(Integer eid) {
	this.eid = eid;
}


@Column(name="FName")
public String getFname() {
	return fname;
}



public void setFname(String fname) {
	this.fname = fname;
}


@Column(name="LName")
public String getLname() {
	return lname;
}



public void setLname(String lname) {
	this.lname = lname;
}


@Column(name="email")
public String getEmail() {
	return email;
}



public void setEmail(String email) {
	this.email = email;
}


@Column(name="mobile")
public String getMobile() {
	return mobile;
}



public void setMobile(String mobile) {
	this.mobile = mobile;
}

@Temporal(TemporalType.DATE)
@Column(name="bdate")
public Date getBdate() {
	return bdate;
}



public void setBdate(Date bdate) {
	this.bdate = bdate;
}









@Column(name="company")
public String getCompany() {
	return company;
}






public void setCompany(String company) {
	this.company = company;
}





@Column(name="department")
public String getDepartment() {
	return department;
}






public void setDepartment(String department) {
	this.department = department;
}





@Column(name="designation")
public String getDesignation() {
	return designation;
}






public void setDesignation(String designation) {
	this.designation = designation;
}





@Column(name="manager")
public String getManager() {
	return manager;
}






public void setManager(String manager) {
	this.manager = manager;
}





@Column(name="address")
public String getAddress() {
	return address;
}






public void setAddress(String address) {
	this.address = address;
}





@Column(name="zip")
public int getZip() {
	return zip;
}






public void setZip(int zip) {
	this.zip = zip;
}





@Column(name="gender")
public String getGender() {
	return gender;
}






public void setGender(String gender) {
	this.gender = gender;
}






@Override
public String toString() {
	return "Employee [eid=" + eid + ", fname=" + fname + ", lname=" + lname + ", email=" + email + ", mobile=" + mobile
			+ ", bdate=" + bdate + ", company=" + company + ", department=" + department + ", designation="
			+ designation + ", manager=" + manager + ", address=" + address + ", gender=" + gender + ", zip=" + zip
			+ "]";
}










  
  
}
