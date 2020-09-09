<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
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
ul:after{
    content:'';
    display: block;
    clear:both;
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
li a:hover:not(.active) {
    background-color: #111;
}
.active {
    background-color: #4CAF50;
}
.logout{
	background-color: #FF0000;
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
<div style="text-align:center">
      <span style="font-family:arial;font-size:3em;font-weight: bold; text-align: center;">Restaurant.</span>
      </div>      
	<ul>
	  <li><a class="logout" href="LogIn.jsp">Logout</a></li>
      <li><a class="active" href="CHome.jsp">Home</a></li>
      <li><a href="Menu.jsp">Menu</a></li>
      <li><a class="active" href="Reservation.jsp">Reservation</a></li>
      <li><a href="Contact.jsp">Contact</a></li>
    </ul>
    
</body>
</html>