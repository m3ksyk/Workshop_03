<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
    <title>Users</title>
</head>
<body>
<jsp:include page="header.jsp"/> <br>
<%=  request.getAttribute("users")  %>
<br>
<table >
    <tr>

        <th>name</th>
        <th>email</th>
        <th>group</th>

    </tr>

    <c:forEach items="${users}" var="user">
        <tr>
            <td><c:out value="${user.username}" /></td>
            <td><c:out value="${user.email}" /></td>
            <td><c:out value="${user.user_group_id}" /></td>

        </tr>
    </c:forEach>
</table>

<jsp:include page="footer.jsp"/>

</body>
</html>
