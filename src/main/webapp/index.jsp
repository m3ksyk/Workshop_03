
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<html>
<head>
    <title>HomePage</title>
</head>
<body>
<jsp:include page="header.jsp"/>
<br>
<table>
    <tr>
        <th>Exercise</th>
        <th>User</th>
        <th>Date</th>
        <th>Details</th>
    </tr>

    <c:forEach items="${solutions}" var="solution">
        <tr>
            <td><c:out value="${solution.exercise_id}" /></td>
            <td><c:out value="${solution.users_id}" /></td>
            <td><c:out value="${solution.updated}" /></td>

            <td><a href='<c:url value="/solution.jsp?id=${solution.id}" />'>details</a></td>
        </tr>
    </c:forEach>
</table>
<%@ include file="footer.jsp" %>
</body>
</html>
