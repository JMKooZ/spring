<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: USER
  Date: 2023-04-14
  Time: 오후 9:35
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Header</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
</head>
<body>
<header class="p-3 text-bg-dark">
    <div class="container">
        <div class="d-flex flex-wrap align-items-center justify-content-center justify-content-lg-start">
            <a href="/" class="d-flex align-items-center mb-2 mb-lg-0 text-white text-decoration-none">
                <img class="bi me-2" width="40" height="32" role="img" aria-label="Bootstrap" alt=""
                     src="<c:url value="img/logo.jpg"/>"/>
            </a>

            <ul class="nav col-12 col-lg-auto me-lg-auto mb-2 justify-content-center mb-md-0">
                <li><a href="<c:url value="/"/>" class="nav-link px-2 text-secondary">Home</a></li>
                <li><a href="<c:url value="/board/main"/>" class="nav-link px-2 text-white">게시판</a></li>
                <li><a href="#" class="nav-link px-2 text-white">Pricing</a></li>
                <li><a href="#" class="nav-link px-2 text-white">FAQs</a></li>
                <li><a href="#" class="nav-link px-2 text-white">About</a></li>
            </ul>

            <form class="col-12 col-lg-auto mb-3 mb-lg-0 me-lg-3" role="search">
                <input type="search" class="form-control form-control-dark text-bg-dark" placeholder="Search..."
                       aria-label="Search">
            </form>
            <form style="margin-top: 15px" method="post">
                <c:choose>
                    <c:when test="${sessionScope.member.id eq 'admin'}">
                        <div class="text-end">
                            <span>${sessionScope.member.name}님</span>
                            <button type="submit" class="btn btn-outline-light me-2" formaction="/adminPage.jsp" formmethod="post">
                                고객관리
                            </button>
                            <button type="submit" class="btn btn-outline-light me-2" formaction="/logout_Process.jsp">
                                LogOut
                            </button>
                        </div>
                    </c:when>
                    <c:when test="${not empty sessionScope.member}">
                        <div class="text-end">
                            <span>${sessionScope.member.name}님</span>
                            <button type="submit" class="btn btn-outline-light me-2" formaction="/myPage.jsp" formmethod="post">
                                MyPage
                            </button>
                            <button type="submit" class="btn btn-outline-light me-2" formaction="/logout_Process.jsp">
                                LogOut
                            </button>
                        </div>
                    </c:when>
                    <c:when test="${empty sessionScope.member}">
                        <div class="text-end">
                            <button type="submit" class="btn btn-outline-light me-2" formaction="/search_id_pw.jsp">Search ID&PW</button>
                            <button type="submit" class="btn btn-outline-light me-2" formaction="loginPage" formmethod="get">Login</button>
                            <button type="submit" class="btn btn-warning" formaction="/createView.jsp" formmethod="get">Sign-up</button>
                        </div>
                    </c:when>
                </c:choose>
            </form>
        </div>
    </div>
</header>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4"
        crossorigin="anonymous"></script>
</body>
</html>
