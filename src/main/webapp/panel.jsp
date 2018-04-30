<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
    <title>Admin Panel</title>
</head>
<body>
<jsp:include page="header.jsp"/> <br>
ADMIN PANEL <br>
<a href='<c:url value="/exerciseAdmin.jsp" />'>Exercises</a> <br>
<a href='<c:url value="/groupAdmin.jsp" />'>User Groups</a> <br>
<a href='<c:url value="/userAdmin.jsp" />'>Users</a> <br>
<jsp:include page="footer.jsp"/>
</body>
</html>
