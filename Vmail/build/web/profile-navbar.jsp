<!--navbar-->

<nav class="navbar navbar-expand-lg navbar-dark color2">
    <a class="navbar-brand" href="index.jsp"><img src="img/email (1).svg" style="height: 30px;width: 30px;"></a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
    </button>

    <div class="collapse navbar-collapse" id="navbarSupportedContent">
        <ul class="navbar-nav mr-auto">
            <li class="nav-item active">
                <a class="nav-link "  href="profile.jsp">Vmail <span class="sr-only">(current)</span></a>
            </li>
            <li class="nav-item active">
                <a class="nav-link mx-1" href="profile.jsp"><span class="fa fa-inbox"></span>Inbox </a>
            </li>
            <li class="nav-item active">
                <a class="nav-link mx-1" href="Starred.jsp"><span class="fa fa-star"></span>Starred</a>
            </li>
            <li class="nav-item active">
                <a class="nav-link mx-1" href="Sent.jsp"><span class="fa fa-send-o"></span>Sent</a>
            </li>

            <li class="nav-item active">
                <a class="nav-link" href="#" data-toggle="modal" data-target="#ComposeModal" ><span class=" fa fa-plus mr-1"></span>Compose</a>
            </li>
            <li class="nav-item active">
                <a class="nav-link ml-5" href="#" data-toggle="modal" data-target="#ComposeModal" ><span class=" fa fa-microphone mr-1"></span>Switch to Voice Mode</a>
            </li>

        </ul>
        <ul class="navbar-nav mr-right">
            <li class="nav-item">
                <a class="nav-link text-dark" href="#!" data-toggle="modal" data-target="#profile-modal"><span class="fa fa-user-circle mr-1"></span><%= user.getName()%></a>
            </li>
            <li class="nav-item">
                <a class="nav-link text-dark" href="LogoutServlet"><span class="fa fa-refresh mr-1"></span>Logout</a>
            </li>

        </ul>
    </div>
</nav>
<!--===============================================-->
<!--profile Model-->
<!-- Button trigger modal -->


<!-- Modal -->
<div class="modal fade" id="profile-modal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header color2 text-white">
                <h5 class="modal-title" id="exampleModalLabel">Vmail</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body color3">
                <div class="container text-center"> 
                    <img src="img/default.png"<%= user.getProfile()%> class="img-fluid" alt="default" style="border-radius: 50%; max-width: 150px;">


                    <h5 class="modal-title mt-3" id="exampleModalLabel"><%= user.getName()%></h5>
                    <!--detail-->
                    <div id="profile-detail">
                        <table class="table">

                            <tbody>
                                <tr>
                                    <th scope="row">ID</th>
                                    <td><%=user.getId()%></td>


                                </tr>
                                <tr>
                                    <th scope="row">Email</th>
                                    <td><%=user.getEmail()%></td>

                                </tr>
                                <tr>
                                    <th scope="row">Mobile</th>
                                    <td><%=user.getMobile()%></td>

                                </tr>


                            </tbody>
                        </table>
                    </div>

                    <!--profile Edit-->

                    <div id="profile-edit" style="display: none;">   
                        <h3 class="mt-3">Please Edit Carefully</h3>
                        <form action="EditServlet" method="post" enctype="mutipart/form-data">
                            <table class="table">
                                <tr>
                                    <td>ID</td>
                                    <td><%=user.getId()%></td>
                                </tr>
                                <tr>
                                    <td>Email</td>
                                    <td><input type="email" class="form-control" name="user_email" value="<%=user.getEmail()%>"></td>
                                </tr>
                                <tr>
                                    <td>Name</td>
                                    <td><input type="name" class="form-control" name="user_name" value="<%=user.getName()%>"></td>
                                </tr>
                                <tr>
                                    <td>Password</td>
                                    <td><input type="password" class="form-control" name="user_password" value="<%=user.getPassword()%>"></td>
                                </tr>
                                <tr>
                                    <td>Mobile</td>
                                    <td><input type="name" class="form-control" name="user_mobile" value="<%=user.getMobile()%>"></td>
                                </tr>

                                <!--                                        <tr>
                                                                            <th scope="row">New Profile Pic</th>
                                                                            <td>
                                                                                <input type="file" class="form-control" name="image">
                                                                            </td>
                                
                                                                        </tr>-->

                            </table>
                            <button class="btn btn-outline-primary">Save</button>
                        </form>

                    </div>
                </div>
            </div>
            <div class="modal-footer color2">
                <button type="button" class="btn btn-outline-danger" data-dismiss="modal">Close</button>
                <button id="edit-profile-button" type="button" class="btn btn-outline-primary">Edit</button>
            </div>
        </div>
    </div>
</div>

<!--End of Profile Model-->


<!--Start Compose Mail Modal-->



<!-- Modal -->
<div class="modal fade " id="ComposeModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered" role="document">
        <div class="modal-content">
            <div class="modal-header color2 text-white">
                <h5 class="modal-title " id="exampleModalLongTitle"><span class="fa fa-plus mx-1"></span>Compose Mail</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>



            <div class="modal-body">
                <form action="submitcompose" method="post"> 
                    <div class="form-group row">
                        <label class="col-sm-2 col-form-label">From:</label>
                        <div class="col-sm-10">
                            <input type="email" class="form-control"  name="Fromemail" value="<%= user.getEmail()%>">
                        </div>
                    </div>
                    <div class="form-group row">
                        <label class="col-sm-2 col-form-label">To:</label>
                        <div class="col-sm-10">
                            <input type="email" class="form-control" name="Toemail">
                        </div>
                    </div>
                    <div class="form-group row">
                        <label class="col-sm-2 col-form-label">Subject</label>
                        <div class="col-sm-10">
                            <input type="text" class="form-control" name="subject">
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="message-text" class="col-form-label">Message:</label>
                        <div class="words" contenteditable>
                        </div>
                        <textarea name="Message" class="form-control  " id="message-text" rows="5"></textarea>

                    </div>
                    <div class="modal-footer primary-background">
                        <button type="button" class="btn btn-outline-danger" data-dismiss="modal">Close</button>

                        <button type="submit" class="btn btn-outline-primary">Send <sapn class="fa fa-send-o"></sapn></button>
                    </div>
                </form>
            </div>

        </div>
    </div>
</div>   




<!--End Compose Mail Modal-->



<!--Event Listener Start-->


<!--Event listener End-->
