<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="qweadzs.DBConn"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%request.setCharacterEncoding("euc-kr");%>
<!DOCTYPE html>
<head>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
</head>

<%
   Connection conn = DBConn.getMySqlConnection();

   PreparedStatement pstmt = null;
   Statement stmt = conn.createStatement();

   String name = request.getParameter("name");
   String id = request.getParameter("id");
   String pw = request.getParameter("pw");
   String phoneNumber = request.getParameter("phone");
   String birth1 = request.getParameter("birth1");
   String birth2 = request.getParameter("birth2");
   
   String chk_id = "select * from customer where id=?";
   pstmt = conn.prepareStatement(chk_id);
   pstmt.setString(1,id);
   ResultSet rs = pstmt.executeQuery();
   
   
   if(rs.next()) {
      out.print("<script>");
      out.print("alert('중복된 아이디가 존재합니다.');");
      out.print("location.href = 'join.jsp';");
      out.print("</script>");
   } else {
      String sql = "insert into customer(id,phoneNumber,birth1,birth2,name,pw,admin) values('" + id + "','"+ phoneNumber + "','" + birth1 + "','" + birth2 + "','" + name + "','" + pw + "',0)";
      stmt.execute(sql);
         
      out.print("<script>");
      out.print("alert('회원가입에 성공하였습니다.');");
      out.print("location.href = 'LogIn.jsp';");
      out.print("</script>");
    }
   
   
%>