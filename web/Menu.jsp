<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="css/bootstrap.css">
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
<div style="text-align:center">
      <span style="font-family:arial;font-size:3em;font-weight: bold; text-align: center;">Restaurant.</span>

   <ul>
   <li><a class="logout" href="LogIn.jsp">Logout</a></li>
      <li><a class="active" href="CHome.jsp">Home</a></li>
      <li><a href="Menu.jsp">Menu</a></li>
      <li><a class="active" href="Reservation.jsp">Reservation</a></li>
      <li><a  href="ViewCustomers.jsp">View All Customers</a></li>
      <li><a class="active" href="BlackList.jsp">BlackList</a></li>
      <li><a class="vip" href="Vip.jsp">Vip</a></li>
    </ul>
  </div>
      
    <div class="container">
       <div class="jumbotron">
          <h1> 메뉴 소개</h1>
          <p>우리 레스토랑은 존나 맛있다 이기!! </p>
          <a class="btn btn-primary btn-pull" href="#" role="button">당장 예약하자 이기!</a>   
       </div>
    </div>
    <div class="container">            <!--사진칸  -->
       <div id="myCarousel" class="carousel slide" data-ride="carousel">
          <ol class="carousel-indicators">
             <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
             <li data-target="#myCarousel" data-slide-to="1"></li>
             <li data-target="#myCarousel" data-slide-to="2"></li>
          </ol>
       <div class="carousel-inner">
          <div class="item active">
             <img src="images/stak1.PNG">
          </div>
          <div class="item">
             <img src="images/stak2.PNG">
          </div>
          <div class="item">
             <img src="images/stak3.PNG">
          </div>
       </div>
       <a class="left carousel-control" href="#myCarousel" data-slide="prev">      <!--화살표  -->
          <span class="glyphicon glyphicon-chevron-left"></span>
       </a>
       <a class="right carousel-control" href="#myCarousel" data-slide="next">
          <span class="glyphicon glyphicon-chevron-right"></span>
       </a>
       </div>
    </div>

     
    <script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
   <script src="js/bootstrap.js"></script>
</body>
</html>