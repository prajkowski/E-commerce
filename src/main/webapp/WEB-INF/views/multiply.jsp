<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: ars
  Date: 15.11.18
  Time: 12:47
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<table border="1">
    <tr>
        <th>x</th>
        <c:forEach var="item" begin="1" end="${size}">
            <th>${item}</th>
        </c:forEach>
    </tr>
    <c:forEach var="row" begin="1" end="${size}">
        <tr>
            <td>${row}</td>
            <c:forEach var="col" begin="1" end="${size}">
                <td>
                    <c:set var = "r"
                           value = "${row}"
                           scope = "session" />
                    <c:set var = "c"
                           value = "${col}"
                           scope = "session" />
                    <c:out value="${c*r}" />
                </td>
            </c:forEach>
        </tr>
    </c:forEach>
</table>
<br>
<table border="1">
    <tr>
        <td>x</td>
        <c:forEach var="item" begin="1" end="${cols}">
            <th>${item}</th>
        </c:forEach>
    </tr>
    <c:forEach var="row" begin="1" end="${rows}">
        <tr>
            <td>${row}</td>
            <c:forEach var="col" begin="1" end="${cols}">
                <td>
                    ${col * row}
                </td>
            </c:forEach>
        </tr>
    </c:forEach>
</table>
</body>
</html>
