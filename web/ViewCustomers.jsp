<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@page import="java.sql.ResultSet" %>
<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.Statement" %>
<%@page import="java.sql.Connection" %>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="qweadzs.DBConn" %>
<% request.setCharacterEncoding("euc-kr"); %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<table width="100%" border="1">
    <thead>
        <tr>
            <th>이름</th>
            <th>아이디</th>
            <th>비밀번호 </th>
            <th>주민 앞자리 </th>
            <th>뒷자리 </th>
            <th>핸드폰번호 </th>
        </tr>
    </thead>
    <tbody>
    <%
    	Connection conn = null;
        PreparedStatement pstmt = null;
        ResultSet rs = null;
         
        try{
        	conn = DBConn.getMySqlConnection();
             
            Statement stmt = null;
            stmt = conn.createStatement();
            String query = "select * from customer";
            rs = stmt.executeQuery(query);
             
            while(rs.next()){
    %>
        <tr>
            <td><%= rs.getString("name") %></td>
            <td><%= rs.getString("id") %></td>
            <td><%= rs.getString("pw") %></td>
            <td><%= rs.getString("birth1") %></td>
            <td><%= rs.getString("birth2") %></td>
            <td><%= rs.getString("phoneNumber") %></td>
        </tr>
    <%
            }
        }catch(SQLException se){
            se.printStackTrace();
        }finally{
            if(rs != null) rs.close();
            if(pstmt != null) pstmt.close();
            if(conn != null) conn.close();
        }
    %>
    </tbody>
</table>

</body>
</html>