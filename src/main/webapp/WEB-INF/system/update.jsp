<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
<head>
<link rel="stylesheet"
	href="https://unpkg.com/purecss@1.0.0/build/pure-min.css"
	integrity="sha384-nn4HPE8lTHyVtfCBi5yW9d20FjT8BJwUXyWZT9InLYax14RDjBj46LmSztkmNP9w"
	crossorigin="anonymous">
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<title>Add Employee</title>
<script type="text/javascript">
function alertName(){
alert("Form has been submitted");
} 
</script>
<style>
body {
	font-family: "Lato", sans-serif;
}

.sidenav {
	height: 100%;
	width: 0;
	position: fixed;
	z-index: 1;
	top: 0;
	left: 0;
	background-color: #111;
	overflow-x: hidden;
	transition: 0.5s;
	padding-top: 60px;
}

.sidenav a {
	padding: 8px 8px 8px 32px;
	text-decoration: none;
	font-size: 25px;
	color: #818181;
	display: block;
	transition: 0.3s;
}

.sidenav a:hover {
	color: #f1f1f1;
}

.sidenav .closebtn {
	position: absolute;
	top: 0;
	right: 25px;
	font-size: 36px;
	margin-left: 50px;
}

#main {
	transition: margin-left .5s;
	padding: 16px;
}

@media screen and (max-height: 450px) {
	.sidenav {
		padding-top: 15px;
	}
	.sidenav a {
		font-size: 18px;
	}
}

form {
	text-align: center;
}

.container {
	font-family: Roboto, sans-serif;
	background-image:
		url(https://image.freepik.com/free-vector/dark-blue-blurred-background_1034-589.jpg);
	border-style: 1px solid grey;
	margin: 0 auto;
	text-align: center;
	opacity: 0.8;
	margin-top: 67px;
	box-shadow: 2px 5px 5px 0px #eee;
	max-width: 700px;
	padding-top: 10px;
	height: 700px;
}
/*--- for label of first and last name---*/
.hid {
	margin-left: 1px;
	font-family: sans-serif;
	font-size: 14px;
	color: white;
	margin-top: 10px;
}

.fname {
	margin-left: 1px;
	font-family: sans-serif;
	font-size: 14px;
	color: white;
	margin-top: 5px;
}

#lname {
	margin-top: 5px;
}

/*---for heading-----*/
.heading {
	text-decoration: bold;
	text-align: center;
	font-size: 30px;
	padding-top: 10px;
}
/*-------for email----------*/
/*------label----*/
#ht {
	margin-top: 5px;
}

.ht {
	margin-left: 44px;
	font-family: sans-serif;
	color: white;
	font-size: 14px;
	margin-top: 13px;
}

.details {
	color: white;
	margin-top: 9px;
	font-size: 14px;
	font-family: sans-serif;
	margin-left: 6px;
	margin-top: 9px;
}

#details {
	margin-top: 6px;
}
/*------------for phone Number--------*/
/*----------label--------*/
.pno {
	font-size: 18px;
	margin-left: -13px;
	margin-top: 10px;
	color: #ff9;
}

/*--------------for Gender---------------*/
/*--------------label---------*/
.pincode {
	color: white;
	font-family: sans-serif;
	font-size: 14px;
	margin-left: 28px;
	margin-top: 8px;
}

/*---------- for Input type--------*/
.col-xs-4.male {
	color: white;
	font-size: 13px;
	margin-top: 9px;
	padding-bottom: 16px;
}

.col-xs-4.female {
	color: white;
	font-size: 13px;
	margin-top: 9px;
	padding-bottom: 16px;
	padding-right: 95px;
}
/*------------For submit button---------*/
.sbutton {
	color: white;
	font-size: 20px;
	border: 1px solid white;
	background-color: #080808;
	width: 32%;
	margin-left: 41%;
	margin-top: 16px;
	box-shadow: 0px 2px 2px 0px white;
}

.btn.btn-warning:hover {
	box-shadow: 2px 1px 2px 3px #99ccff;
	background: #5900a6;
	color: #fff;
	transition: background-color 1.15s ease-in-out, border-color 1.15s
		ease-in-out, box-shadow 1.15s ease-in-out;
}

.border {
	border-style: 5px solid grey;
	background-color: #ccf2ff;
	margin: 0 auto;
	text-align: center;
	opacity: 0.8;
	margin-top: 20px;
	box-shadow: 2px 5px 5px 0px #eee;
	max-width: 700px;
	padding-top: 10px;
	height: 700px;
}

.bagimg {
	background-color: #ccf2ff;
}
</style>

<script>
function openNav() {
  document.getElementById("mySidenav").style.width = "250px";
  document.getElementById("main").style.marginLeft = "250px";
}

function closeNav() {
  document.getElementById("mySidenav").style.width = "0";
  document.getElementById("main").style.marginLeft= "0";
}
</script>
</head>
<body>
	<div id="mySidenav" class="sidenav">
		<a href="javascript:void(0)" class="closebtn" onclick="closeNav()">&times;</a>
		<a href="welcome">Home</a> <a href="register">Add Employee</a> <a
			href="list">List Employee</a> <a href="logout">Logout</a>
	</div>
	<div class="bagimg" id="main">
		<span style="font-size: 30px; cursor: pointer" onclick="openNav()">&#9776;
			<label style="color: royalblue; font-style: italic;">HRMS</label>
		</span>
		<form method="post">

			<div class="border">

				<div class="pure-form pure-form-aligned"
					style="border-style: solid;" >
					<header class="heading">&nbsp;&nbsp; Register Employee</header>
					<hr></hr>
					<fieldset>
						<div class="pure-control-group">
							<label for="name">First Name :</label> <input type="text"
								name="fname" id="fname" required="required" value="fname"
								placeholder="Enter First Name"> <span
								class="pure-form-message-inline"></span>
						</div>

						<div class="pure-control-group">
							<label for="lname">Last Name :</label> <input type="text"
								name="lname" id="lname" required="required"value="lname"
								placeholder="Enter Last Name">
						</div>

						<div class="pure-control-group">
							<label for="email">Email Address :</label> <input type="email"
								name="email" id="email" required="required"value="email"
								placeholder="Enter Email">
						</div>

						<div class="pure-control-group">
							<label for="foo">Mobile :</label> <input type="tel" name="mobile"
								id="mobile" required="required" value="mobile"
								placeholder="Enter Mobile Number">
						</div>

						<div class="pure-control-group">
							<label for="foo">Birth Date :</label> <input type="date"
								name="bdate" id="bdate" required="required" value="bdate"
								placeholder="Enter Birth Date">
						</div>

						<div class="pure-control-group">
							<label for="foo">Company Name :</label> <input type="text"
								name="company" id="company" required="required"value="company"
								placeholder=" Enter Company">
						</div>


						<div class="pure-control-group">
							<label for="department">Department :</label> <input type="text"
								name="department" id="department" required="required"value="department"
								placeholder="Enter Department ">
						</div>

						<div class="pure-control-group">
							<label for="designation">Designation :</label> <input type="text"
								name="designation" id="designation" required="required"value="designation"
								placeholder="Enter Designation ">
						</div>



						<div class="pure-control-group">
							<label for="manager">Manager :</label> <input type="text"
								name="manager" id="manager" required="required"value="managae"
								placeholder="Enter Manager ">
						</div>


						<div class="pure-control-group">
							<label for="address">Address :</label> <input type="text"
								name="address" id="address" required="required"value="address"
								placeholder="Enter Address ">
						</div>


						<div class="pure-control-group">
							<label for="zip">Zip :</label> <input type="number" name="zip"
								id="zip" required="required" value="zip" placeholder="Enter ZIP ">
						</div>

						<div class="pure-control-group">
							<label for="gender">Gender :</label> <select id="gender"
								name="gender" >
								<option>Male</option>
								<option>Female</option>

							</select>
						</div>



						<div class="pure-controls">
							<label for="cb" class="pure-checkbox"> <input id="cb"
								type="checkbox"> I've read the terms and conditions
							</label>

							<button type="submit" value="update" onclick="showAlert()"
								class="pure-button pure-button-primary">Update</button>
						</div>
					</fieldset>
				</div>


			</div>
		</form>

	</div>

</body>
</html>