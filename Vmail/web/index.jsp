<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <!--Bootstrap CSS-->
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
        <!--My Css-->
        <link href="CSS/mystyle.css" rel="stylesheet" type="text/css"/>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <link href="https://fonts.googleapis.com/css2?family=Tangerine:wght@700&display=swap" rel="stylesheet">
        <style>
            .banner-background{
                clip-path: polygon(50% 0%, 100% 0, 100% 91%, 75% 100%, 25% 93%, 0 100%, 0 0);
            }
            .Myfont{
                font-family: 'Tangerine', cursive;
                font-size: 50px;
                text-shadow: 4px 4px 4px #aaa;
            }

        </style>
    </head>
    <body class="background-image">
        <!--Normal Navbar-->
        <%@include file="normal_navbar.jsp" %>
        <!--Navbar End-->

        <div class="container-fluid p-0 m-0 ">
            <div class="row jumbotron text-center color3 banner-background " style="opacity: 0.8;">
                <div class="col-sm-6">

                    <img src="img/email (1).svg" Style="height: 150px;width: 150px;">

                </div>
                <div class="col-sm-6">

                    <span class="Myfont">Vmail</span>
                    <p class="Myfont">A Voice Based E-Mail System</p>
                    <br>
                    <a href="register-page.jsp"><button class="btn btn-outline-primary btn-lg"><span class="fa fa-user-plus mr-1"></span>Create An Account</button></a>
                    <a href="login-page.jsp"><button class="btn btn-outline-primary btn-lg"><span class="fa fa-user-circle fa-spin mr-1"></span>Login</button></a>

                </div>
            </div>
            <div class="row">

            </div>
        </div>

        <!--Carousel Start-->
        <div class="container-fluid ">
            <div class="card p-0 m-0">
                <div class="card-body p-0 m-0">
                    <div id="carouselExampleCaptions" class="carousel slide carousel-fade m-0 p-0" data-ride="carousel">
                        <ol class="carousel-indicators">
                            <li data-target="#carouselExampleCaptions" data-slide-to="0" class="active"></li>
                            <li data-target="#carouselExampleCaptions" data-slide-to="1"></li>
                            <li data-target="#carouselExampleCaptions" data-slide-to="2"></li>
                        </ol>
                        <div class="carousel-inner">
                            <div class="carousel-item active">
                                <img src="img/Blog Box.jpg" class="d-block w-100" alt="...">

                                <div class="carousel-caption d-none d-md-block" style="margin-bottom:500px;">
                                    <h2 class="text-secondary">A New Hope for Person with Disorder people</h2>
                                    <p  class="text-secondary">Person who is not able to see,can able to send Mail.</p>
                                </div>
                            </div>
                            <div class="carousel-item">
                                <img src="img/virtual-reality.jpg" class="d-block w-100" alt="...">
                                <div class="carousel-caption d-none d-md-block">
                                    <h2>Voice Command Functionality</h2>
                                    <p>Ability to provide a Hand Free Experience</p>
                                </div>
                            </div>
                            <div class="carousel-item">
                                <img src="img/abstract-architecture-background-buildings-370717.jpg" class="d-block w-100" alt="...">
                                <div class="carousel-caption d-none d-md-block text-secondary" style="margin-bottom:400px;">
                                    <h2 >Sky is not limited</h2>
                                    <p>Every Person has Right to be Equality with other One.</p>
                                </div>
                            </div>
                        </div>
                        <a class="carousel-control-prev" href="#carouselExampleCaptions" role="button" data-slide="prev">
                            <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                            <span class="sr-only">Previous</span>
                        </a>
                        <a class="carousel-control-next" href="#carouselExampleCaptions" role="button" data-slide="next">
                            <span class="carousel-control-next-icon" aria-hidden="true"></span>
                            <span class="sr-only">Next</span>
                        </a>
                    </div>
                </div>
            </div>
        </div>

        <!--Carousel End-->
        <div class="container-fluid p-4">
            <div class="row">
                <div class="col-sm-6 text-center Myfont">
                    <p>250 Million People are Visually Challenged .</p>
                    <p> They are Not Able to use Internet or E-Mail System.</p>
                </div>
                <div class="col-sm-6">

                </div>
            </div>
            <div class="row Myfont text-center">
                <div class="col-sm-6"></div>
                <div class="col-sm-6">
                    <p>Voice Based Mail System Provide you a plateform to do your Work</p>
                </div>
            </div>


        </div>


        <!--Footer Start-->
        <%@include file="footer.jsp" %>
        <!--Footer End-->
        <!-- Bootstrap java Script-->
        <script
            src="https://code.jquery.com/jquery-3.4.1.min.js"
            integrity="sha256-CSXorXvZcTkaix6Yvo6HppcZGetbYMGWSFlBw8HfCJo="
        crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
        <!--my Java Script-->
        <script src="js/myjs.js" type="text/javascript"></script>

    </body>
</html>
