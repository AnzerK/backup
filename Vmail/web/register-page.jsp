<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Register !! Page</title>
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
    <body class="background-image">
        <%@include file="normal_navbar.jsp" %>
        <main class="d-flex align-items-center color2 banner-background" style="height: 90vh;" >
            <div class="container">
                <div class="row">
                    <div class="col-md-6 offset-md-3">
                        <div class="card">
                            <div class="card-header text-center color3">
                                <span class="fa fa-user-plus fa-3x"></span>
                                <br>
                                <h4>Register Here </h4>
                            </div>
                            <div class="card-body"> 
                                <form id="reg-form" action="RegisterServlet" method="post">
                                    <div class="form-group">
                                        <label for="exampleInputEmail1">Name</label>
                                        <input type="name" name="user_name"class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp">

                                    </div>
                                    <div class="form-group">
                                        <label for="exampleInputEmail1">Enter new Email</label>
                                        <input type="email" name="user_email"class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp">

                                    </div>
                                    <div class="form-group">
                                        <label for="exampleInputPassword1">Create Password</label>
                                        <input type="password" name="user_password"class="form-control" id="exampleInputPassword1">
                                    </div>
                                    <div class="form-group">
                                        <label for="exampleInputPassword1">Mobile</label>
                                        <input type="number" name="user_mobile"class="form-control" id="exampleInputPassword1">
                                    </div>
                                    
                                    
                                    
                                   
                                    

                                    <div class="form-group form-check">
                                        <input type="checkbox" name="check" class="form-check-input" id="exampleCheck1">
                                        <label class="form-check-label" for="exampleCheck1">Agree with all Terms and Conditions of all user policies.</label>
                                    </div>
                                    <div class="container text-center" id="loader" style="display: none;">
                                        <span class="fa fa-refresh fa-spin fa-3x "></span>
                                    </div>
                                    <br>
                                    <button id="submit-btn" type="submit" class="btn btn-outline-primary">Submit</button>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

        </main>


        <!-- Bootstrap java Script-->
        <script
            src="https://code.jquery.com/jquery-3.4.1.min.js"
            integrity="sha256-CSXorXvZcTkaix6Yvo6HppcZGetbYMGWSFlBw8HfCJo="
        crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
        <!--my Java Script-->
        <script src="js/myjs.js" type="text/javascript"></script>
        <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
        <script>
            $(document).ready(function () {
                console.log("loaded..")
                $('#reg-form').on('submit', function (event) {
                    event.preventDefault();
                    let form = new FormData(this);
                    $("#submit-btn").hide();
                    $("#loader").show();
                    //send register servlet:
//                ajax
                    $.ajax({
                        url: "RegisterServlet",
                        type: 'POST',
                        data: form,
                        success: function (data, textStatus, jqXHR) {
                            console.log(data);
                            $("#submit-btn").show();
                            $("#loader").hide();
                            if (data.trim() === 'done')
                            {
                                swal("Register Successfully... Redirect to login page")
                                        .then((value) => {
                                            window.location = "login-page.jsp"
                                        });
                            }
                            else
                            {
                                swal(data);
                            }
                        },
                        error: function (jqXHR, textStatus, errorThrown) {
                            $("#submit-btn").show();
                            $("#loader").hide();
                            swal("Something Wents wrong...try again");


                        },
                        processData: false,
                        contentType: false
                    });
                });
            });

        </script>
    </body>
</html>
