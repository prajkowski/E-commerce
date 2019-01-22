<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%--header--%>
<%@include file="parts/header.jsp" %>
<%--end of header--%>

<div class="card-deck col-sm-6">
    <c:forEach var="product" items="${products}">
        <div class="card" style="width: 18rem;">
            <img class="card-img-top" src="${product.imageUrl}" alt="Card image cap">
            <div class="card-body">
                <h5 class="card-title">${product.model}</h5>
                <p class="card-text">${product.price}</p>
                <a href="/p/${product.id}" class="btn btn-primary">Szczegóły</a>
            </div>
        </div>
    </c:forEach>
</div>
</body>
</html>
