<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: USER
  Date: 2023-04-26
  Time: 오후 5:21
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>select</title>
</head>
<body>
<c:forEach var="user" items="${users}">
    ${user.id}<br>
    ${user.pw}<br>
    ${user.name}<br>
</c:forEach>
<form action="login" method="post">
    <input type="submit" value="홈으로">
</form>
</body>
</html>
