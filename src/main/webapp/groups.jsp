<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
    <title>Groups</title>
</head>
<body>
<jsp:include page="header.jsp"/>

<table >
    <tr>
        <th >group name</th>
        <th >actions</th>
    </tr>
    sprawdzic czy link dziala poprawnie
    <c:forEach items="${groups}" var="group">
        <tr>
            <td>${group.name}</td>
            <td><a href='<c:url value="/groupUsers.jsp?id=${group.id}" />'>Users</a></td>
        </tr>
    </c:forEach>
</table>

<jsp:include page="footer.jsp"/>
</body>
</html>
