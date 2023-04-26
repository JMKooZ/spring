<%--
  Created by IntelliJ IDEA.
  User: USER
  Date: 2023-04-14
  Time: 오후 10:00
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Login</title>
</head>
<body>
<%@ include file="HeadFoot/header.jsp"%>
<%--<form style="margin-top: 100px">--%>
<p>
<br>
<div class="col-md-10 mx-auto col-lg-5">
  <form class="p-4 p-md-5 border rounded-3 bg-light" action="<c:url value="loginPage"/>" method="post">
    <div class="form-floating mb-3">
      <input type="text" class="form-control" id="floatingInput" placeholder="MkMall" name="id">
      <label for="floatingInput">ID</label>
    </div>
    <div class="form-floating mb-3">
      <input type="password" class="form-control" id="floatingPassword" placeholder="Password" name="pw">
      <label for="floatingPassword">PassWord</label>
    </div>
    <div class="checkbox mb-3">
      <label>
        <input type="checkbox" value="remember-me"> Remember me
      </label>
    </div>
    <button class="w-100 btn btn-lg btn-dark" type="submit">Sign up</button>
    <hr class="my-4">
    <small class="text-muted">By clicking Sign up, you agree to the terms of use.</small>
  </form>
</div>

</body>
</html>
