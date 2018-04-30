<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
    <title>Title</title>
</head>
<body>
<jsp:include page="header.jsp"/>
<%--add user form--%>
<form action="/adduser" method="post">
    name <input type="text" name="name"> <br>
    email <input type="text" name="email"> <br>
    password <input type="text" name="password"> <br>
    group <input type="text" name="group"> <br>
        <input type="submit">
</form> <br>

<jsp:include page="footer.jsp"/>

</body>
</html>
