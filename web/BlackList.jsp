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
<link rel="stylesheet" href="css/bootstrap.css">
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<script>
function add(){
	if (document.getElementById("id").value == "") {
        alert("내용을 입력해주세요");
        return false;
}else
	document.goBlack.submit();
}
</script>
	<div style="text-align: center">
		<span
			style="font-family: arial; font-size: 3em; font-weight: bold; text-align: center;">Blacklist.</span>
	</div>
	<form name = "goBlack" action="Blackadd.jsp" method = "post">
	<div class="row">
		<div class="col-lg-6">
			<div class="input-group">
					<input type="text" class="form-control" name="id" id="id" placeholder="ID를 입력하세요.">
					<span class="input-group-btn">
						<input type = "button" value="추가" class="btn btn-default" onclick="add()">
					</span>
			</div>
			<!-- /input-group -->
		</div>
		<!-- /.col-lg-6 -->
	</div>
	</form>
	<!-- /.row -->

<form action="Blackrem" method="post">
	<div class="row">
		<div class="col-lg-6">
			<div class="input-group">
				<input type="text" class="form-control" placeholder="ID를 입력하세요.">
				<span class="input-group-btn">
					<button class="btn btn-default" type="button">삭제</button>
				</span>
			</div>
			<!-- /input-group -->
		</div>
		<!-- /.col-lg-6 -->
	</div>
	</form>
	<!-- /.row -->

	<table width="100%" border="1">
		<thead>
			<tr>
				<th>이름</th>
				<th>아이디</th>
				<th>핸드폰번호</th>
			</tr>
		</thead>
		<tbody>
			<%
				Connection conn = null;
				PreparedStatement pstmt = null;
				ResultSet rs = null;

				try {
					conn = DBConn.getMySqlConnection();
					Statement stmt = null;
					stmt = conn.createStatement();
					String query = "select * from blacklist";
					rs = stmt.executeQuery(query);
					while (rs.next()) {
			%>
			<tr>
				<td><%=rs.getString("name")%></td>
				<td><%=rs.getString("id")%></td>
				<td><%=rs.getString("phoneNumber")%></td>
			</tr>
			<%
				}
				} catch (SQLException se) {
					se.printStackTrace();
				} finally {
					if (rs != null)
						rs.close();
					if (pstmt != null)
						pstmt.close();
					if (conn != null)
						conn.close();
				}
			%>
		</tbody>
	</table>
	<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
	<script src="js/bootstrap.js"></script>
</body>
</html>