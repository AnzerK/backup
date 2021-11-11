
<%@page import="com.Vmail.entities.User"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page errorPage="error_page.jsp" %>
<%
    User user = (User) session.getAttribute("currentUser");
    if (user == null) {
        response.sendRedirect("login-page.jsp");
    }

%>
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
    <body>
        <!--Prfile Navbar-->
       <%@include file="profile-navbar.jsp" %>
        <!--End Navbar-->
        
        <div class="container">
            <div class="row">
                <div class="col">`Lorem ipsum dolor sit amet, consectetur adipisicing elit. Placeat corporis provident atque similique eligendi ex fugit aspernatur! Rerum, ea, provident maxime deserunt obcaecati quisquam voluptatibus optio tempora ratione enim esse omnis dolores aspernatur unde natus aut explicabo harum saepe amet culpa nulla nesciunt praesentium sunt corporis velit nam iste est.
                </div>
            </div>
            <br>
            <div class="row">
                <div class="col">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Facere quod obcaecati iusto debitis. Nemo, neque, molestias, hic error voluptate facilis ea quas qui alias maxime voluptas iure laboriosam quam pariatur perspiciatis quaerat minima quis illum ratione officiis labore dolore fugit. Architecto, cum tempora laboriosam qui incidunt voluptatum ad eveniet. Explicabo.
                </div>
            </div><br>
            <div class="row">
                <div class="col">
                    Lorem ipsum dolor sit amet, consectetur adipisicing elit. Blanditiis, corporis maxime in hic cum fuga aliquid veritatis deleniti vero laboriosam voluptates dolore consequuntur possimus atque impedit facere quibusdam aperiam temporibus ipsum facilis sapiente provident dolor voluptas velit delectus inventore obcaecati odio assumenda distinctio doloribus. Dolorum, consequuntur nemo aspernatur cum quod.
                </div><br>
            </div>
            <div class="row">
                <div class="col">
                    Lorem ipsum dolor sit amet, consectetur adipisicing elit. Facere, aut, quis, magnam, quisquam exercitationem magni beatae similique nesciunt deserunt quasi ipsum nulla inventore esse repudiandae quo reiciendis voluptatum nobis obcaecati ipsa culpa tempora dolores pariatur est commodi at iste eum. Dolorum, quisquam natus esse voluptatibus ducimus veritatis voluptates perferendis labore.
                </div><br>
            </div><br>
            <div class="row">
                <div class="col">
                    Lorem ipsum dolor sit amet, consectetur adipisicing elit. Facere, aut, quis, magnam, quisquam exercitationem magni beatae similique nesciunt deserunt quasi ipsum nulla inventore esse repudiandae quo reiciendis voluptatum nobis obcaecati ipsa culpa tempora dolores pariatur est commodi at iste eum. Dolorum, quisquam natus esse voluptatibus ducimus veritatis voluptates perferendis labore.
                </div><br>
            </div><br>
            <div class="row">
                <div class="col">
                    Lorem ipsum dolor sit amet, consectetur adipisicing elit. Facere, aut, quis, magnam, quisquam exercitationem magni beatae similique nesciunt deserunt quasi ipsum nulla inventore esse repudiandae quo reiciendis voluptatum nobis obcaecati ipsa culpa tempora dolores pariatur est commodi at iste eum. Dolorum, quisquam natus esse voluptatibus ducimus veritatis voluptates perferendis labore.
                </div><br>
            </div><br>
            <div class="row">
                <div class="col">
                    Lorem ipsum dolor sit amet, consectetur adipisicing elit. Facere, aut, quis, magnam, quisquam exercitationem magni beatae similique nesciunt deserunt quasi ipsum nulla inventore esse repudiandae quo reiciendis voluptatum nobis obcaecati ipsa culpa tempora dolores pariatur est commodi at iste eum. Dolorum, quisquam natus esse voluptatibus ducimus veritatis voluptates perferendis labore.
                </div><br>
            </div><br>
            <div class="row">
                <div class="col">
                    Lorem ipsum dolor sit amet, consectetur adipisicing elit. Facere, aut, quis, magnam, quisquam exercitationem magni beatae similique nesciunt deserunt quasi ipsum nulla inventore esse repudiandae quo reiciendis voluptatum nobis obcaecati ipsa culpa tempora dolores pariatur est commodi at iste eum. Dolorum, quisquam natus esse voluptatibus ducimus veritatis voluptates perferendis labore.
                </div><br>
            </div><br>
            <div class="row">
                <div class="col">
                    Lorem ipsum dolor sit amet, consectetur adipisicing elit. Facere, aut, quis, magnam, quisquam exercitationem magni beatae similique nesciunt deserunt quasi ipsum nulla inventore esse repudiandae quo reiciendis voluptatum nobis obcaecati ipsa culpa tempora dolores pariatur est commodi at iste eum. Dolorum, quisquam natus esse voluptatibus ducimus veritatis voluptates perferendis labore.
                </div><br>
            </div><br>
            <div class="row">
                <div class="col">
                    Lorem ipsum dolor sit amet, consectetur adipisicing elit. Facere, aut, quis, magnam, quisquam exercitationem magni beatae similique nesciunt deserunt quasi ipsum nulla inventore esse repudiandae quo reiciendis voluptatum nobis obcaecati ipsa culpa tempora dolores pariatur est commodi at iste eum. Dolorum, quisquam natus esse voluptatibus ducimus veritatis voluptates perferendis labore.
                </div><br>
            </div><br>
            <div class="row">
                <div class="col">
                    Lorem ipsum dolor sit amet, consectetur adipisicing elit. Facere, aut, quis, magnam, quisquam exercitationem magni beatae similique nesciunt deserunt quasi ipsum nulla inventore esse repudiandae quo reiciendis voluptatum nobis obcaecati ipsa culpa tempora dolores pariatur est commodi at iste eum. Dolorum, quisquam natus esse voluptatibus ducimus veritatis voluptates perferendis labore.
                </div><br>
            </div><br>
            <div class="row">
                <div class="col">
                    Lorem ipsum dolor sit amet, consectetur adipisicing elit. Facere, aut, quis, magnam, quisquam exercitationem magni beatae similique nesciunt deserunt quasi ipsum nulla inventore esse repudiandae quo reiciendis voluptatum nobis obcaecati ipsa culpa tempora dolores pariatur est commodi at iste eum. Dolorum, quisquam natus esse voluptatibus ducimus veritatis voluptates perferendis labore.
                </div><br>
            </div><br>
            
            
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
