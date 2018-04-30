
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
    <title>Group users</title>
</head>
<body>
<jsp:include page="header.jsp"/>

<table >
    <tr>
        <th > name</th>
        <th >email</th>
        <th >group</th>
    </tr>
    sprawdzic czy link dziala poprawnie
    <c:forEach items="${users}" var="user">
        <tr>
            <td><c:out value="${user.name}" /></td>
            <td><c:out value="${user.email}" /></td>
            <td><c:out value="${user.group}" /></td>
            <td><a href='<c:url value="/user.jsp?id=${user.id}" />'>Details</a></td>
        </tr>
    </c:forEach>
</table>
<jsp:include page="footer.jsp"/>
</body>
</html>
