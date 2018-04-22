<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
    <title>Users</title>
</head>
<body>
<jsp:include page="header.jsp"/>

<table >
    <tr>

        <th>name</th>
        <th>email</th>
        <th>group</th>

    </tr>

    <c:forEach items="${users}" var="user">
        <tr>
            <td>${user.username}</td>
            <td>${user.email}</td>
            <td>${user.user_group_id}</td>

        </tr>
    </c:forEach>
</table>

<jsp:include page="footer.jsp"/>
dodac do listy uzytkownikow rozwiazania?
</body>
</html>
