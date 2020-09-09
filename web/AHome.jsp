<%@page import="java.io.PrintWriter"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="qweadzs.DBConn"%>
<%
	request.setCharacterEncoding("euc-kr");
%>
<!DOCTYPE html>
<html>
<head>
<style type="text/css">
ul {
	list-style-type: none;
	margin: 0;
	padding: 0;
	background-color: #333;
}

ul:after {
	content: '';
	display: block;
	clear: both;
}

li {
	float: left;
}

li a {
	display: block;
	color: white;
	text-align: center;
	padding: 14px 16px;
	text-decoration: none;
}

li a:hover:not (.active ) {
	background-color: #111;
}

.active {
	background-color: #4CAF50;
}

.logout {
	background-color: #FF0000;
}

.vip {
	background-color: #D7DF01;
}

.box {
	border-color: powderblue;
	border-width: 20px;
	border-style: solid;
	padding: 50px 50px;
	margin: 100px 100px;
}

.box-center {
	margin: auto;
	width: 50%;
	border: 3px solid green;
	padding: 10px;
	text-align: center;
}
</style>
<meta charset="EUC-KR">
<title>ㅁㅁ레스토랑</title>
</head>
<body>
<meta name="viewport" content="width=device-width", initial-scale="1">
<link rel="stylesheet" href="css/bootstrap.css">
	<%
		String userid = null; //세션번호 받기
		if (session.getAttribute("userid") != null) {
			userid = (String) session.getAttribute("userid");
		}
	%>
	<div style="text-align: center">
		<span
			style="font-family: arial; font-size: 3em; font-weight: bold; text-align: center;">Restaurant.</span>
	</div>
	<ul>
		<li><a class="logout" href="Logoutproc.jsp">Logout</a></li>
		<!-- 이거이거  -->
		<li><a class="active" href="CHome.jsp">Home</a></li>
		<li><a href="Menu.jsp">Menu</a></li>
		<li><a class="active" href="Reservation.jsp">Reservation</a></li>
		<li><a href="ViewCustomers.jsp">View All Customers</a></li>
		<li><a class="active" href="BlackList.jsp">BlackList</a></li>
		<li><a class="vip" href="Vip.jsp">Vip</a></li>
		<li><a href="Attitude.jsp">Attitude</a></li>

	</ul>
<div class="container">
    <div class="jumbotron">
        <h1 class="text-center"><%=userid%>님 환영합니다.</h1>
            </div>
</div>

	
	
</body>
<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
	<script src="js/bootstrap.js"></script>
</html>