<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
    <title>Exercise solution</title>
</head>
<body>
<jsp:include page="header.jsp"/>
Solution details: <<br>
Exercise id: <c:out value="${solution. Exercise}" /><br>
Created : <c:out value="${solution.created}" /><br>
Updated: <c:out value="${solution.updated}" /><br>
Description: <c:out value="${solution.description}" /><br>

<jsp:include page="footer.jsp"/>

</body>
</html>
