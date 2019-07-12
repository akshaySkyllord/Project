package com.springboot.pojo;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import org.hibernate.validator.constraints.NotEmpty;

@Entity
@Table(name="Login")
public class Login
{
 private Integer UID;
 @NotEmpty
 private String username;
 @NotEmpty
 private String password;
 
 
 public Login() 
 {
  System.out.println("in constructor of:"+getClass().getName());
 }

 
public Login(Integer uID, String username, String password) {
	super();
	UID = uID;
	this.username = username;
	this.password = password;
}


public Login(String username, String password) 
{
	this.username = username;
	this.password = password;
}

@Id
@GeneratedValue(strategy=GenerationType.IDENTITY)
public Integer getUID() {
	return UID;
}


public void setUID(Integer uID) {
	UID = uID;
}


@Column(length=20,name="username",unique=true)
public String getUsername() {
	return username;
}

public void setUsername(String username) {
	this.username = username;
}
@Column(length=20,name="password")
public String getPassword() {
	return password;
}

public void setPassword(String password) {
	this.password = password;
}


/*@OneToOne
@JoinColumn(name="member_id")
public Member getMember() {
	return member;
}*/



@Override
public String toString() {
	return "Login [UID=" + UID + ", username=" + username + ", password=" + password + "]";
}






 
}
