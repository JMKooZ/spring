<%--
  Created by IntelliJ IDEA.
  User: USER
  Date: 2023-04-11
  Time: 오후 4:53
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>logout</title>
</head>
<body>
<%
   session.invalidate();
   out.print("<script>alert('로그아웃되었습니다')</script>");
   out.print("<script>location.href='/index.jsp'</script>");
%>
</body>
</html>
