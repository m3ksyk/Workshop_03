<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
    <title>Title</title>
</head>
<body>
<jsp:include page="header.jsp"/>
Add a group: <br>

<form action="/addgroup" method="post">
Group name: <input type="text" name="groupName">
    <input type="submit"><br>
</form>

<jsp:include page="footer.jsp"/>
</body>
</html>
