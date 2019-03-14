<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>X-Pro - sklep fotograficzny</title>
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
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

    <div class="row">
        <div class="col-md-4 order-md-2 mb-4">
            <h4 class="d-flex justify-content-between align-items-center mb-3">
                <span class="text-muted">Twój koszyk</span>
                <span class="badge badge-secondary badge-pill">${items}</span>
            </h4>
            <ul class="list-group mb-3">
                <c:forEach var="item" items="${cart.cartItems}">
                    <li class="list-group-item d-flex justify-content-between lh-condensed">
                        <div>
                            <h6 class="my-0">${item.product.model}</h6>
                        </div>
                        <span class="text-muted">${item.sum} zł</span>
                    </li>
                </c:forEach>

                <li class="list-group-item d-flex justify-content-between">
                    <span>Suma (PLN)</span>
                    <strong>${total} zł</strong>
                </li>
            </ul>

        </div>
        <div class="col-md-8 order-md-1">
            <h4 class="mb-3">Dane odbiorcy przesyłki</h4>
            <form class="needs-validation" novalidate>
                <div class="row">
                    <div class="col-md-6 mb-3">
                        <label for="firstName">Imię</label>
                        <input type="text" class="form-control" id="firstName" placeholder="" value="" required>
                        <div class="invalid-feedback">
                            Proszę o podanie imienia
                        </div>
                    </div>
                    <div class="col-md-6 mb-3">
                        <label for="lastName">Nazwisko</label>
                        <input type="text" class="form-control" id="lastName" placeholder="" value="" required>
                        <div class="invalid-feedback">
                            Proszę o podanie nazwiska
                        </div>
                    </div>
                </div>

                <div class="mb-3">
                    <label for="username">Login</label>
                    <div class="input-group">
                        <div class="input-group-prepend">
                            <span class="input-group-text">@</span>
                        </div>
                        <input type="text" class="form-control" id="username"  required>
                        <div class="invalid-feedback" style="width: 100%;">
                            Proszę o podanie loginu
                        </div>
                    </div>
                </div>

                <div class="mb-3">
                    <label for="email">E-mail </label>
                    <input type="email" class="form-control" id="email" required>
                    <div class="invalid-feedback">
                        Proszę o podanie adresu e-mail
                    </div>
                </div>

                <div class="mb-3">
                    <label for="address">Adres</label>
                    <input type="text" class="form-control" id="address" required>
                    <div class="invalid-feedback">
                        Proszę podać adres wysyłki
                    </div>
                </div>

                <div class="mb-3">
                    <label for="address2">Adres 2 <span class="text-muted">(Opcjonalnie)</span></label>
                    <input type="text" class="form-control" id="address2">
                </div>

                <div class="row">
                    <div class="col-md-5 mb-3">
                        <label for="country">Kraj</label>
                        <select class="custom-select d-block w-100" id="country" required>
                            <option value="">Wybierz...</option>
                            <option>Polska</option>
                        </select>
                        <div class="invalid-feedback">
                            Proszę wybrać kraj
                        </div>
                    </div>
                    <div class="col-md-4 mb-3">
                        <label for="state">Województwo</label>
                        <select class="custom-select d-block w-100" id="state" required>
                            <option value="">Wybierz...</option>
                            <option>mazowieckie</option>
                        </select>
                        <div class="invalid-feedback">
                            Proszę wybrać województwo
                        </div>
                    </div>
                    <div class="col-md-3 mb-3">
                        <label for="zip">Kod pocztowy</label>
                        <input type="text" class="form-control" id="zip" placeholder="" required>
                        <div class="invalid-feedback">
                            Wprowadź kod pocztowy
                        </div>
                    </div>
                </div>
                <hr class="mb-4">
                <div class="custom-control custom-checkbox">
                    <input type="checkbox" class="custom-control-input" id="same-address">
                    <label class="custom-control-label" for="same-address">Adres wysyłki jest taki sam jak adres
                        zameldowania</label>
                </div>
                <div class="custom-control custom-checkbox">
                    <input type="checkbox" class="custom-control-input" id="save-info">
                    <label class="custom-control-label" for="save-info">Zachowaj powyższe informacje do następnego
                        zamówienia</label>
                </div>
                <hr class="mb-4">

                <h4 class="mb-3">Szczegóły płatności</h4>

                <div class="d-block my-3">
                    <div class="custom-control custom-radio">
                        <input id="credit" name="paymentMethod" type="radio" class="custom-control-input" checked
                               required>
                        <label class="custom-control-label" for="credit">Karta kredytowa</label>
                    </div>
                    <div class="custom-control custom-radio">
                        <input id="debit" name="paymentMethod" type="radio" class="custom-control-input" required>
                        <label class="custom-control-label" for="debit">Karta debetowa</label>
                    </div>
                    <div class="custom-control custom-radio">
                        <input id="paypal" name="paymentMethod" type="radio" class="custom-control-input" required>
                        <label class="custom-control-label" for="paypal">Paypal</label>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-6 mb-3">
                        <label for="cc-name">Imię i nazwisko</label>
                        <input type="text" class="form-control" id="cc-name" placeholder="" required>
                        <div class="invalid-feedback">
                            Wprowadź imię i nazwisko
                        </div>
                    </div>
                    <div class="col-md-6 mb-3">
                        <label for="cc-number">Numer karty</label>
                        <input type="text" class="form-control" id="cc-number" placeholder="" required>
                        <div class="invalid-feedback">
                            Wprowadź numer karty
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-3 mb-3">
                        <label for="cc-expiration">Data ważności</label>
                        <input type="text" class="form-control" id="cc-expiration" placeholder="" required>
                        <div class="invalid-feedback">
                            Wprowadź datę ważności
                        </div>
                    </div>
                    <div class="col-md-3 mb-3">
                        <label for="cc-expiration">Kod CVV</label>
                        <input type="text" class="form-control" id="cc-cvv" placeholder="" required>
                        <div class="invalid-feedback">
                            Wprowadź kod CVV
                        </div>
                    </div>
                </div>
                <hr class="mb-4">
                <button class="btn btn-primary btn-lg btn-block" type="submit">Złóż zamówienie</button>
            </form>
        </div>
    </div>

</div>

<!-- Bootstrap core JavaScript
    ================================================== -->
<!-- Placed at the end of the document so the pages load faster -->
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"
        integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN"
        crossorigin="anonymous"></script>
<script>window.jQuery || document.write('<script src="../../assets/js/vendor/jquery-slim.min.js"><\/script>')</script>
<script src="../../assets/js/vendor/popper.min.js"></script>
<script src="../../dist/js/bootstrap.min.js"></script>
<script src="../../assets/js/vendor/holder.min.js"></script>
<script>
    // Example starter JavaScript for disabling form submissions if there are invalid fields
    (function () {
        'use strict';

        window.addEventListener('load', function () {
            // Fetch all the forms we want to apply custom Bootstrap validation styles to
            var forms = document.getElementsByClassName('needs-validation');

            // Loop over them and prevent submission
            var validation = Array.prototype.filter.call(forms, function (form) {
                form.addEventListener('submit', function (event) {
                    if (form.checkValidity() === false) {
                        event.preventDefault();
                        event.stopPropagation();
                    }
                    form.classList.add('was-validated');
                }, false);
            });
        }, false);
    })();
</script>

</body>
</html>
