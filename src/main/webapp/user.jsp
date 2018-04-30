<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
    <title>User details</title>
</head>
<body>
<jsp:include page="header.jsp"/>

<c:out value="${user.name}" /><br>
<c:out value="${user.email}" /><br>

<table>
    <tr>
        <th>exercise</th>
        <th>date</th>
        <th>details</th>
    </tr>
    <c:forEach items="${solutions}" var="solution">
        <tr>
            <td>${solution.excercise_id}</td>
            <td>${solution.updated}</td>
            <td><a href="/solution?id=${solution.id}">  details </a></td>
        </tr>
    </c:forEach>
</table>

<jsp:include page="footer.jsp"/>
</body>
</html>
