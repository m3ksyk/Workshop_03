
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
    <title>Title</title>
</head>
<body>
<jsp:include page="header.jsp"/> <br>
User management page <br>
<a href='<c:url value="/userAddAdmin.jsp" />'>Add new User</a> <br>

<table >
    <tr>

        <th>name</th>
        <th>email</th>
        <th>group</th>
        <th>action</th>

    </tr>

    <c:forEach items="${users}" var="user">
        <tr>
            <td><c:out value="${user.username}" /></td>
            <td><c:out value="${user.email}" /></td>
            <td><c:out value="${user.user_group_id}" /></td>
            <td>
                <a href='<c:url value="/userEditAdmin.jsp" />'>edit user</a>
                <a href='<c:url value="/deleteuser?id=${user.id}" />'>delete user</a>
            </td>
        </tr>
    </c:forEach>
</table>

<jsp:include page="footer.jsp"/>
</body>
</html>
