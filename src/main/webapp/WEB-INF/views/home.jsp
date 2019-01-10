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

<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
    <a class="navbar-brand" href="/">X-Pro</a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent"
            aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
    </button>

    <div class="collapse navbar-collapse" id="navbarSupportedContent">
        <ul class="navbar-nav mr-auto">

            <li class="nav-item dropdown active">
                <a class="nav-link dropdown-toggle" href="/aparaty" id="navbarDropdown" role="button"
                   data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                    Aparaty fotograficzne
                </a>
                <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                    <a class="dropdown-item" href="/bezlusterkowce">bezlusterkowce</a>
                    <a class="dropdown-item" href="/dslr">DSLR</a>
                </div>
            </li>
            <li class="nav-item active">
                <a class="nav-link" href="/obiektywy">Obiektywy</a>
            </li>

        </ul>
        <form class="form-inline my-2 my-lg-0">
            <input class="form-control mr-sm-2" type="search" placeholder="Czego szukasz?" aria-label="Search">
            <button class="btn btn-outline-primary my-2 my-sm-0" type="submit">Szukaj</button>
        </form>
    </div>
</nav>


<div id="carouselExampleSlidesOnly" class="carousel slide" data-ride="carousel">
    <div class="carousel-inner">
        <div class="carousel-item active">
            <img style="height: 350px" class="d-block mx-auto rounded" src="https://u.cyfrowe.pl/600x0/a/6/CX79600_front_CMYK_Large_1515520980.png" alt="First slide">
            <div class="carousel-caption d-none d-md-block">
                <h5>Sony A7S II</h5>
                <p>W wyjątkowej cenie!!!</p>
            </div>
        </div>
        <div class="carousel-item">
            <img style="height: 350px" class="d-block mx-auto rounded" src="https://upload.cyfrowe.pl/cyfrowe/descFiles/A7SII_SEL35F14Z_DSC07231-Large480499425.jpg" alt="Second slide">
            <div class="carousel-caption d-none d-md-block">
                <h5>Wypróbuj teraz!</h5>
                <p>Zamów do domu</p>
            </div>
        </div>
        <div class="carousel-item">
            <img style="height: 350px" class="d-block mx-auto rounded" src="https://upload.cyfrowe.pl/cyfrowe/descFiles/A7SII_SEL35F14Z_DSC07135-Large1618204145.jpg" alt="Third slide">
            <div class="carousel-caption d-none d-md-block">
                <h5>Cashback na bezlusterkowce</h5>
                <p>Nawet 1000 zł!</p>
            </div>
        </div>
    </div>
</div>


</body>
</html>
