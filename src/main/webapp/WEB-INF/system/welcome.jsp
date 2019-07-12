<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
	integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
	crossorigin="anonymous"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"
	integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1"
	crossorigin="anonymous"></script>
<script
	src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"
	integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM"
	crossorigin="anonymous"></script>


<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<title>Home</title>
<style>
body {
	font-family: "Lato", sans-serif;
	background-color: #66d9ff;
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

.right {
	position: absolute;
	right: 5px;
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
		document.getElementById("main").style.marginLeft = "0";
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
			<label style="color: royalblue; font-style: italic;">HRMS</label> <a
			class="right"
			style="color: royalblue; font-style: italic; font-size: 20px"
			href="logout">Logout</a>


		</span> <br>
		<div class="row">
			<div class="col-sm-6">
				<div>
					<div class="card-body">
						<div align="center">
							<a href="list"><img
								src="http://www.background101.com/wp-content/uploads/2015/07/existing-employees-2.jpg"
								width="500" height="300" style="border-style: solid;" alt="logo"></a>
							<!--  <img src="/images/success.png"  alt="NOT FOUND"> -->
							<h5 class="card-title">List Records</h5>
							<p class="card-text">With supporting text below as a natural
								lead-in to additional content.</p>
							<a href="list" class="btn btn-primary">View </a>
						</div>
					</div>
				</div>
			</div>
			<div class="col-sm-6">
				<div>
					<div class="card-body">
						<div align="center">
							<a href="register"><img
								src="https://ptsystems.com/wp-content/uploads/2017/12/blog-onboard-840x322.png"
								width="500" height="300" style="border-style: solid;" alt="logo"></a>
							<h5 class="card-title">Add Record</h5>
							<p class="card-text">With supporting text below as a natural
								lead-in to additional content.</p>
							<a href="register" class="btn btn-primary">Register</a>
						</div>
					</div>
				</div>
			</div>
		</div>









	</div>

</body>
</html>