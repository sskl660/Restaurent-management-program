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
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<%
		String id = request.getParameter("id");
		/* out.print(id); */

		response.setContentType("text/html; charset=EUC-KR");
		Connection conn = null;
        PreparedStatement pstmt = null;
        Statement stmt = null;
        
        
        String sql = "select oid,phoneNumber,name,id from customer where id = ?";
        conn = DBConn.getMySqlConnection();
        pstmt = conn.prepareStatement(sql);
        pstmt.setString(1, id);
        ResultSet rs = pstmt.executeQuery();

    		if(rs.next()){ //값이 있다면 (아이디가 존재한다면)
            	
    			String oid = rs.getString(1);
	    		String pn = rs.getString(2);
	    		String nm = rs.getString(3);
	    		String id_d = rs.getString(4);
	    		
	            String sql_insert = "insert into blacklist(userid,name,phone,id) values('"+oid+"',' "+nm+" ', ' "+ pn+ " ', ' " +id_d+" ')";
	            stmt = conn.createStatement();
	            stmt.execute(sql_insert);
	            
	            out.print("<script>");
            	out.print("alert('블랙리스트 추가가 완료되었습니다.');");
            	out.print("location.href = 'BlackList.jsp';");
            	out.print("</script>");
            }
            else{
            	out.print("<script>");
            	out.print("alert('아이디가 존재하지 않습니다.');");
            	out.print("location.href = 'BlackList.jsp';");
            	out.print("</script>");
            }
            
       		rs.close();
       		stmt.close();
       		conn.close();
        
        %>
</body>
</html>