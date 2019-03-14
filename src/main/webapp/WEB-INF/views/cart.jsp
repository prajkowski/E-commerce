<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>X-Pro - sklep fotograficzny</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
          integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"
            integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN"
            crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"
            integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"
            crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"
            integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
            crossorigin="anonymous"></script>
</head>
<body class="bg-light">

<%@include file="parts/header.jsp" %>
<div class="container">
    <div class="card">
        <div class="card-body">
            <h4 class="font-weight-bold">Twój koszyk</h4>
            <table class="table">
                <thead>
                <tr>
                    <th scope="col">Produkt</th>
                    <th scope="col">Cena</th>
                    <th scope="col">Ilość</th>
                    <th scope="col">Usuń</th>
                </tr>
                </thead>
                <tbody>
                <c:forEach var="item" items="${cart.cartItems}">
                    <tr>
                        <td><a href="/p/${item.product.id}">${item.product.model}</a></td>
                        <td>${item.product.price}</td>
                        <td>${item.quantity}</td>
                        <td><a href="/delete/${item.product.id}">X</a></td>
                    </tr>
                </c:forEach>
                </tbody>
            </table>

            <div>
                W koszyku jest ${items} pozycji
                Wartość zakupów: <strong>${total}</strong>
            </div>
        </div>
    </div>

    <div class="card">
        <div class="card-body">
            <a href="/order" class="btn btn-primary float-right">Dostawa i płatność</a>
        </div>
    </div>
</div>

</body>
</html>
