<%-- 
    Document   : search
    Created on : Nov 10, 2020, 9:44:30 AM
    Author     : Vu Ngoc Thinh
--%>

<%@page import="model.User"%>
<%@page import="java.util.ArrayList"%>
<%@page import="model.Song"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head><title>Genius - Search</title>
        <link rel="stylesheet" href="css/genres.css">
        <link rel="stylesheet" href="css/index.css">

        <link rel="icon" href="images/circle.png">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link
            rel="stylesheet"
            href="//code.jquery.com/ui/1.12.1/themes/smoothness/jquery-ui.css"
            />
        <script src="//code.jquery.com/jquery-1.12.4.js"></script>
        <script src="//code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
        <style>
            footer{
                margin-top: 210px;
            }
        </style>

        </head>
        <body>



            <%
                HttpSession s = request.getSession(true);
                User user = (User) s.getAttribute("user");
                ArrayList<Song> songs = (ArrayList<Song>) request.getAttribute("songs");
                ArrayList<String> songNames = (ArrayList<String>) request.getAttribute("songNames");
            %>  


            <nav class="navbar navbar-dark bg-dark">
            <div class="nav-container">
                <a class="navbar-brand" href="home">
                    <img src="images/circle.png" width="45" height="45" alt="" loading="lazy">
                </a>
                <form action="../genius/search" method="get" class="mt-2">
                    <input class="form-control align-middle" id="search" style="width: 500px;" type="search" name="query" placeholder="Search for Artists, Songs and more" aria-label="Search">
                </form>
                <li class="nav-item mt-1" id="nav-item-user">
                    <% if (user != null) {%>
                    <div class="dropdown show">

                        <a class="btn user btn-secondary dropdown-toggle"
                           style="font-weight: 500;width: 187.89px" href="#" role="button" id="dropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                            <img src="<%=user.getAvatar()%>" id="avatar" alt="" srcset=""> <span style="margin: auto;margin-left: 2px;margin-right: -1px"><%=user.getName()%></span>
                        </a>

                        <div class="dropdown-menu" aria-labelledby="dropdownMenuLink">
                            <a class="dropdown-item" href="user?id=<%=user.getId()%>">Account</a>
                             <a class="dropdown-item" href="upload">Upload</a>
                            <a class="dropdown-item" href="logout">Log out</a>
                        </div>
                    </div>

                    <%} else {%>
                    <a class="nav-link login" style="font-weight: 700" href="login">Login</a>
                    <span class="seperate" style="font-weight: 700">|</span>
                    <a class="nav-link sign-up" style="font-weight: 700" href="signup">Sign up</a>
                    <%}%>
                </li>
            </div>
        </nav>

        <div class="container-body" >
            <div class="row row-wrapper">

                <h1 id="genres-lable" style="display: contents">Search</h1>



                <div class="genres-album" style="margin-bottom: 50px">
                    <div class="albums">
                        <div class="albums-title" style=" margin-top: 30px;
                             margin-bottom: 15px;">
                            <h3>Popular songs</h3>
                        </div>

                        <div class="genres-music">
                            <%
                                for (int i = 0; i < songs.size(); i++) {

                            %>
                            <div class="card" style="width: 156px;height: 250px ; margin: 0;">
                                <a class="img-link" href="listen?aid=<%=songs.get(i).getAlbum().getId()%>&sid=<%=songs.get(i).getId()%>">
                                    <img class="card-img-top" alt="a" src="<%=songs.get(i).getImage()%>">
                                </a>
                                <div class="card-body">
                                    <a href="listen?aid=<%=songs.get(i).getAlbum().getId()%>&sid=<%=songs.get(i).getId()%>">
                                        <h6 class="card-title"><%=songs.get(i).getName()%></h6>
                                    </a>
                                    <p class="card-text" style="font-size: 12px"><%=songs.get(i).getArtist()%></p>
                                </div>
                            </div>

                            <%}%>

                        </div>
                    </div>

                </div>
            </div>
        </div>
        <script>
            $("#search").autocomplete({
                source: [
            <%
                for (int i = 0; i < songNames.size(); i++) {

            %>
                    "<%=songNames.get(i)%>",
            <%}%>
                ],
                minLength: 2
            });
        </script>

        <%@include file="footer.jsp"%>   
    </body>
</html>
