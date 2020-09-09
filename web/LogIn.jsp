<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<script>
function goJoinPage() {
    location.href="join.jsp";
}
function goHomePage(){
	location.href="CHome.jsp";
}
</script>
	<form action = "LogInProc.jsp" method="post">
	<span style="font-family:arial;font-size:3em;font-weight: bold; text-align: center;">ID : <input type="text" name = "id"><br></span>
	<span style="font-family:arial;font-size:3em;font-weight: bold; text-align: center;">Password : <input type="password" name = "pw"><br></span>
	<input type=submit value = '로그인' >
	</form>
	<input type=submit value = '회원가입' onclick="goJoinPage()">
</body>
</html>