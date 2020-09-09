<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="qweadzs.DBConn"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>

<%
	String userid = null; //세션이 있으면 되돌아감, 회원가입 부분에도 삽입
	if (session.getAttribute("userid") != null) {
		userid = (String) session.getAttribute("userid");
	}
	if (userid != null) {
		out.print("<script>");
		out.print("alert('이미 로그인이 되어있습니다.');");
		out.print("history.back();");
		out.print("history.back();");
		out.print("</script>");
	}
	Connection conn = DBConn.getMySqlConnection();
	Statement stmt = conn.createStatement();

	String id = request.getParameter("id");
	String pw = request.getParameter("pw");

	String sql = "select admin from customer where id='" + id + "' and pw='" + pw + "'";
	ResultSet rs = stmt.executeQuery(sql);//쿼리문 실행

	if (rs.next()) {
		if (rs.getInt(1) == 1) {
			session.setAttribute("userid", id); //세션 만들기
			out.print("<script>");
			out.print("alert('관리자 로그인에 성공하였습니다.');");
			out.print("location.href = 'AHome.jsp';");
			out.print("</script>");
		} else {
			session.setAttribute("userid", id);
			out.print("<script>");
			out.print("alert('사용자 로그인에 성공하였습니다.');");
			out.print("location.href = 'CHome.jsp';");
			out.print("</script>");
		}
	} else {
		out.print("<script>");
		out.print("alert('패스워드 또는 아이디가 잘못된 값입니다.');");
		out.print("history.back();");
		out.print("</script>");
	}
%>