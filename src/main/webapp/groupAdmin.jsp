
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
    <title>Group Administration</title>
</head>
<body>
<jsp:include page="header.jsp"/> <br>
<a href='<c:url value="/groupAddAdmin.jsp" />'>Add group</a> <br>
<table >
    <tr>
        <th >group name</th>
        <th >actions</th>
    </tr>

    <c:forEach items="${groups}" var="group">
        <tr>
            <td><c:out value="${group.name}" /></td>

            <td>
                <a href='<c:url value="/groupEditAdmin.jsp?id=${group.id}" />'>Edit</a>
                <a href='<c:url value="/deletegroup?id=${group.id}" />'>Delete</a>
            </td>
        </tr>
    </c:forEach>
</table>


<jsp:include page="footer.jsp"/>
</body>
</html>
