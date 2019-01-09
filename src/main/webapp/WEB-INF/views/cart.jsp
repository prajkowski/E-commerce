<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: ars
  Date: 15.11.18
  Time: 15:40
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<c:forEach var="item" items="${cart.cartItems}">
    ${item}<br>
</c:forEach>
<div></div>
W koszyku jest ${items} pozycji
W koszyku jest ${numOfProducts} produktów
Wartość koszyka: ${total}
</body>
</html>
