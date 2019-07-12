<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>

<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet"
	href="https://unpkg.com/purecss@1.0.0/build/pure-min.css"
	integrity="sha384-nn4HPE8lTHyVtfCBi5yW9d20FjT8BJwUXyWZT9InLYax14RDjBj46LmSztkmNP9w"
	crossorigin="anonymous">
<meta charset="UTF-8">
<title>Member Details</title>
<style>
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

tr.odd {
	background-color: #FDFEFE
}

tr.even {
	background-color: #F0F3F4
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
		<h3 align="center">Member Details</h3>
		<div align="center">
			<table class="pure-table">
				<thead>
					<tr>
						<th>ID</th>
						<th>First Name</th>
						<th>Last Name</th>
						<th>Email</th>
						<th>Mobile</th>
						<th>Manager</th>
						<th>Company</th>
						<th>Update</th>
					</tr>
				</thead>


				<c:forEach var="m" varStatus="loopStatus"
					items="${requestScope.employee_list}">

					<tr class="${loopStatus.index % 2 == 0 ? 'odd' : 'even'}">
						<td>${m.eid}</td>
						<td>${m.fname}</td>


						<td>${m.lname}</td>



						<td>${m.email}</td>




						<td>${m.mobile}</td>



						<td>${m.manager}</td>



						<td>${m.company}</td>
						
						<td><a href="<c:url value='/member/${m.eid}' />" >Edit</a></td>


					</tr>

				</c:forEach>

			</table>
		</div>
	</div>

</body>
</html>