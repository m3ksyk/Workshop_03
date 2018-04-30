<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
    <title>Exercise management</title>
</head>
<body>
<jsp:include page="header.jsp"/>
<a href='<c:url value="/exerciseAddAdmin.jsp" />'>Add exercise</a> <br>
<table >
    <tr>
        <th >title </th>
        <th >description </th>
        <th >actions</th>
    </tr>

    <c:forEach items="${exercises}" var="exercise">
        <tr>
            <td><c:out value="${exercise.title}" /></td>
            <td><c:out value="${exercise.description}" /></td>

            <td>
                <a href='<c:url value="/exerciseEditAdmin.jsp?id=${exercise.id}" />'>Edit</a>
                <a href='<c:url value="/deleteExercise?id=${exercise.id}" />'>Delete</a>
            </td>
        </tr>
    </c:forEach>
</table>


<jsp:include page="footer.jsp"/>

</body>
</html>
