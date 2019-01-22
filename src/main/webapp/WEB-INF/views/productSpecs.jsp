<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%--header--%>
<%@include file="parts/header.jsp" %>
<%--end of header--%>
<div class="container">
    <h1>${product.manufacturer} ${product.model}</h1>
    <img src="${product.imageUrl}">
    <h2>${product.price}</h2>
    <button class="button btn-primary">
        Dodaj do koszyka
    </button>
</div>

</body>
</html>
