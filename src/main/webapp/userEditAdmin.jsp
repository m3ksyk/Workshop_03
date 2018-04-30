<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
    <title>Title</title>
</head>
<body>
<jsp:include page="header.jsp"/>

Edit user: ${"id"} <br>

<form action="/edituser" method="get">
    User name: <input type="text" name="name">
    password: <input type="text" name="password">
    email: <input type="text" name="email">
    group id: <input type="text" name="user_group_id">
    <input type="submit"><br>
</form>
<jsp:include page="footer.jsp"/>
</body>
</html>
