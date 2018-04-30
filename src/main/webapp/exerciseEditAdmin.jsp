<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
    <title>Title</title>
</head>
<body>
<jsp:include page="header.jsp"/>


Edit exercise: ${"id"} <br>

<form action="/editExercise" method="get">
    title: <input type="text" name="title">
    description: <input type="text" name="description">

    <input type="submit"><br>
</form>

<jsp:include page="footer.jsp"/>

</body>
</html>
