<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
    <title>Title</title>
</head>
<body>
<jsp:include page="header.jsp"/>
Edit group: <%-- (id zmienianej grupy pobierane getem z linka w tabeli listy grup)
tu wstawic nazwe edytowanej grupy--%>

<form action="/editgroup">
    Group name: <input type="text" name="groupName">
    <input type="submit"><br>
</form>

<jsp:include page="footer.jsp"/>
</body>
</html>
