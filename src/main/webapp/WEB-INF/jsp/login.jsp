<%--
  Created by IntelliJ IDEA.
  User: USER
  Date: 2023-04-26
  Time: 오후 5:08
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>login</title>
</head>
<body>
<form action="/login" method="post">
  아이디 <input type="text" name="id"> <br>
  비밀번호 <input type="password" name="pw"/> <br>
  <input type="submit" value="로그인"/>
  <input type="reset" value="취소"/>
</form>
</body>
</html>
