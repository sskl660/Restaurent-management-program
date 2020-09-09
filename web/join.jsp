<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
    <head>
        <title> ㅁㅁ레스토랑 회원가입 </title>
    </head>
    <body>
    <form name=form method="post" action="joinInfo.jsp">
      <table width=650 border="1px" align=center>
        <tr>
          <th colspan="2" bgcolor="#E4F7BA" >ㅁㅁ레스토랑 회원가입</th>
        </tr>
        <tr>
          <td>이름</td>
          <td><input type="text" name="name"></td>
        </tr>
        <tr>
          <td>아이디</td>
          <td><input type="text" name="id"> </td>
        </tr>
        <tr>
          <td>비밀번호</td>
          <td><input type="password" name="pw"> </td>
        </tr>
        <tr>
          <td>핸드폰 번호</td>
          <td><input type="text" name="phone">- 빼고 적으세요</td>
        </tr>
        <tr>
          <td>주민등록번호</td>
          <td><input type="text" name="birth1">-<input type="password" name="birth2"></td>
        </tr>
        <tr>
        	<td>직원입니까?</td>
        	<td><input type="radio" name="chkbox" value="1">예    <input type="radio" name="chkbox" value="0">아니오</td>
        </tr>
        
      </table>
      <p align=center>
        <input type="submit" name="join" value="회원 가입">&nbsp;&nbsp;&nbsp;
        <input type="reset" name="reset" value="다시 입력">
        
      </p>
    </form>
    <%session.invalidate(); %>
    </body>
</html>