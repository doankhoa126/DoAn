<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html style="overflow: hidden;">
<head>
<style>
/*Css viewcontent*/
.container-viewcontent {
	display: flex;
}

.row-menu {
	width: 20%;
	margin-right: 20px;
}
/*Css menu-main*/
.menu-main {
	width: 100%;
	height: 100vh;
	font-size: x-large;
	background-color: rgb(242, 242, 242);
	font-size: x-large;
}
/*Css search*/
.search-container {
	vertical-align: middle;
	white-space: nowrap;
	position: relative;
	padding-left: 3%;
	padding-top: 20px;
}

.search-container input {
	height: 30px;
	font-size: 20px;
	width: 12vw;
}

.search-container .icon-search {
	position: absolute;
	margin-left: 0;
	margin-top: 0;
	background-color: white;
	height: 36px;
}

.icon-search:hover {
	background-color: gainsboro;
}
/*Css viewcontents*/
.viewcontents-container {
	height: 5%;
}

.viewcontents-container i {
	padding-left: 3%;
	padding-top: 2.5%;
	margin-right: 10px;
}

.viewcontents-container a {
	color: blue;
	padding-top: 2.5%;
	text-decoration: none;
}

.viewcontents-container:hover {
	background-color: gainsboro;
}
/*Css formcontent*/
.formcontent-container {
	
	height: 5%;
}

.formcontent-container i {
	padding-top: 2.5%;
	padding-left: 3%;
	margin-right: 10px;
}

.formcontent-container a {
	color: blue;
	padding-top: 2.5%;
	text-decoration: none;
}

.formcontent-container:hover {
	background-color: gainsboro;
}
/*Css main*/
.row-main {
	width: 100%;
}

.row-main hr {
	border-color: rgb(242, 242, 242);
	width: 100%;
}
/*Css table-main*/
.table-main, .td-main, .th-main {
	border: 1px solid black;
}

.th-main {
	text-align: unset;
	background-color: gainsboro;
	font-size: 150%;
	padding-bottom: 1%;
	padding-top: 1%;
	padding-left: 1%;
	font-weight: lighter;
}

.td-main {
	padding: 1%;
}

.table-main {
	width: 95%;
	border-collapse: collapse;
}
/*Css table-son*/
.table-son, .td-son, .th-son {
	border: 1px solid black;
}

.table-son {
	width: 100%;
	border-collapse: collapse;
	font-size: 20px;
}

.th-son {
	text-align: unset;
}

.td-son {
	
}

.table-son .tr-son:nth-child(odd) {
	background-color: #eee;
}

.table-son .tr-son:nth-child(even) {
	background-color: white;
}

.table-son .tr-son:nth-child(1) {
	background-color: white;
}
</style>
<meta charset="ISO-8859-1">
<title>View Contents</title>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/css/all.min.css" />
</head>
<body>
	<jsp:include page="Header(khong su dung).jsp"></jsp:include>
	<div class="container-viewcontent">
		<div class="row-menu">
			<div class="menu-main">


				<div class="search-container">
					<input type="text" placeholder="Search" name="search">
					<button type="submit" class="icon-search">
						<i style="font-size: 20px;" class="fa fa-search"></i>
					</button>
				</div>
				<hr style="margin-bottom:0;" />


				<div class="viewcontents-container">
					<i class="fas fa-table"></i><a href="ViewContent">View contents</a>
				</div>
				<hr style="margin-bottom:0;margin-top:0"/>

				<div class="formcontent-container">
					<i class="fas fa-edit"></i><a href="#">Form content</a>
				</div>
				<hr style="margin-top:0"/>
			</div>
		</div>

		<div class="row-main">
			<h1 style="margin-top: 2%;">View Content</h1>
			<hr />
			<table class="table-main">
				<tr class="tr-main">
					<th class="th-main">View Content List</th>
				</tr>
				<tr class="tr-main">
					<td class="td-main"><table class="table-son">
							<tr class="tr-son">
								<th class="th-son">#</th>
								<th class="th-son">Title</th>
								<th class="th-son">Brief</th>
								<th class="th-son">Created Date</th>
								<th class="th-son">Action</th>
							</tr>
							<tr class="tr-son">
								<td class="td-son">1</td>
								<td class="td-son">hello title</td>
								<td class="td-son">hello Brief</td>
								<td class="td-son">hello Created Date</td>
								<td class="td-son"><a href="#" style="margin-right:20px">Edit</a><a href="#">Delete</a></td>
							</tr>
							<tr class="tr-son">
								<td class="td-son">2</td>
								<td class="td-son">hello title</td>
								<td class="td-son">hello Brief</td>
								<td class="td-son">hello Created Date</td>
								<td class="td-son"><a href="#" style="margin-right:20px">Edit</a><a href="#">Delete</a></td>
							</tr>
						</table></td>
				</tr>
			</table>

		</div>
	</div>
</body>
</html>