
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
    <title>Exercises</title>
</head>
<body>
<jsp:include page="header.jsp"/>

<table >
    <tr>
        <th>title</th>
        <th>description</th>

    </tr>

    <c:forEach items="${exercises}" var="exercise">
        <tr>
            <td>${exercise.title}</td>
            <td>${exercise.description}</td>

        </tr>
    </c:forEach>
</table>

<jsp:include page="footer.jsp"/>
</body>
</html>
