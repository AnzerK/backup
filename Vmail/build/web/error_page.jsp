

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page isErrorPage="true" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Sorry Something went wrong</title>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
        <!--My Css-->
        <link href="CSS/mystyle.css" rel="stylesheet" type="text/css"/>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <style>
            .banner-background{
                clip-path: polygon(50% 0%, 100% 0, 100% 91%, 75% 100%, 25% 93%, 0 100%, 0 0);
            }
        </style>
    </head>
    <body>
        <div class="container text-center">
            <img src="img/error-404.png" alt="error page" class="img-fluid">
            <h3 class="display-3">Sorry! Something went Wrong....</h3>
            <h4><%= exception %></h4>
            <br>
            <a href="index.jsp" class="btn btn-primary btn-lg text mt-3"> Home</a>
        </div>
    </body>
</html>
