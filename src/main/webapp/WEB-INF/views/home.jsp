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
<body>

<%@include file="parts/header.jsp" %>

<div id="carouselExampleSlidesOnly" class="carousel slide" data-ride="carousel">
    <div class="carousel-inner">
        <div class="carousel-item active">
            <img style="height: 350px" class="d-block mx-auto rounded"
                 src="https://www.videomaker.com/wp-content/uploads/drpl/articles/18492/346-R02a-Sony-a7s-II-primary.png" alt="First slide">
            <div class="carousel-caption d-none d-md-block">
                <h5>Sony A7S II</h5>
                <p>W wyjątkowej cenie!!!</p>
            </div>
        </div>
        <div class="carousel-item">
            <img style="height: 350px" class="d-block mx-auto rounded"
                 src="https://upload.cyfrowe.pl/cyfrowe/descFiles/A7SII_SEL35F14Z_DSC07231-Large480499425.jpg"
                 alt="Second slide">
            <div class="carousel-caption d-none d-md-block">
                <h5>Wypróbuj teraz!</h5>
                <p>Zamów do domu</p>
            </div>
        </div>
        <div class="carousel-item">
            <img style="height: 350px" class="d-block mx-auto rounded"
                 src="https://upload.cyfrowe.pl/cyfrowe/descFiles/A7SII_SEL35F14Z_DSC07135-Large1618204145.jpg"
                 alt="Third slide">
            <div class="carousel-caption d-none d-md-block">
                <h5>Cashback na bezlusterkowce</h5>
                <p>Nawet 1000 zł!</p>
            </div>
        </div>
    </div>
</div>


</body>
</html>
