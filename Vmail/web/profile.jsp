<%@page import="java.util.List"%>
<%@page import="com.Vmail.helper.connectionProvider"%>
<%@page import="com.Vmail.dao.UserDao"%>
<%@page import="com.Vmail.dao.MessageDao"%>
<%@page import="com.Vmail.entities.Message"%>
<%@page import="com.Vmail.entities.User"%>
<%@page import="com.Vmail.entities.Inbox"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page errorPage="error_page.jsp" %>
<%
    User user = (User) session.getAttribute("currentUser");
    if (user == null) {
        response.sendRedirect("login-page.jsp");
    }

%>
<!DOCTYPE html>

<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Profile !! Page</title>
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



    <!--Prfile Navbar-->
    <%@include file="profile-navbar.jsp" %>
    <!--End Navbar-->


    <!--message for profile update-->
    <%            Message m = (Message) session.getAttribute("msg");
        if (m != null) {
    %>
    <div class="alert <%= m.getCssClass()%>" role="alert">
        <%= m.getContent()%>
    </div>

    <%
            session.removeAttribute("msg");
        }
    %>
    <!--Message for Sending Mail-->
    <%            Message ms = (Message) session.getAttribute("msg2");
        if (ms != null) {
    %>
    <div class="alert <%= ms.getCssClass()%>" role="alert">
        <%= ms.getContent()%>
    </div>

    <%
            session.removeAttribute("msg2");
        }
    %>


    <%
        MessageDao d = new MessageDao(connectionProvider.getConnection());
        List<Inbox> inbox = d.getInboxMessage(user.getEmail());
        for (Inbox i : inbox) {
            int id = i.getInboxid();
    %>
    <div class="container">
        <div class="card text-center">
            <div class="card-header" id="btns">
                <p id="content"></p>
                <i>Message From: </i><%= i.getFromemail()%>
            </div>
            <div class="card-body color3">
                <h5 class="card-title"><%= i.getSubject()%></h5>
                <p class="card-text"><%= i.getMessage()%></p>
                <span class="fa fa-file-sound-o   hello"></span>

            </div>
            <div class="card-footer text-muted">
                <%= i.getDate()%>
            </div>
        </div>

    </div>
    <br>
    <%            }
    %>
    

    <!--Footer Start-->
    <%--<%@include file="footer.jsp" %>--%>
    <!--Footer End-->

    <!--javascript-->
    <script
        src="https://code.jquery.com/jquery-3.4.1.min.js"
        integrity="sha256-CSXorXvZcTkaix6Yvo6HppcZGetbYMGWSFlBw8HfCJo="
    crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
    <!--my Java Script-->
    <!--<script src="js/myjs.js" type="text/javascript"></script>-->

    <script>

        $(document).ready(function () {
            let editStatus = false;

            $('#edit-profile-button').click(function () {
                //                        alert("second loaded")

                if (editStatus == false)
                {
                    $('#profile-detail').hide()
                    $('#profile-edit').show()
                    editStatus = true;
                    $(this).text("Back")
                } else
                {
                    $('#profile-detail').show()
                    $('#profile-edit').hide()
                    editStatus = false;
                    $(this).text("Edit")
                }

            });
            $('.hello').mouseover(function(){
                alert("Playing Voice")
            })
        });

    </script>
    
    <script>
  window.SpeechRecognition = window.SpeechRecognition || window.webkitSpeechRecognition;

  const recognition = new SpeechRecognition();
  recognition.interimResults = true;
  recognition.lang = 'en-US';
  
  let p = document.createElement('p');
  const words = document.querySelector('.words');
  words.appendChild(p);

  recognition.addEventListener('result', e => {
    const transcript = Array.from(e.results)
      .map(result => result[0])
      .map(result => result.transcript)
      .join('');

      const poopScript = transcript.replace(/poop|poo|shit|dump/gi, '💩');
      p.textContent = poopScript;

      if (e.results[0].isFinal) {
        p = document.createElement('p');
        words.appendChild(p);
      }
  });

  recognition.addEventListener('end', recognition.start);

  recognition.start();

</script>



</body>
</html>


