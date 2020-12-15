<%-- 
    Document   : header.jsp
    Created on : Oct 30, 2020, 5:18:41 PM
    Author     : Vu Ngoc Thinh
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="model.User"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link
            rel="stylesheet"
            href="//code.jquery.com/ui/1.12.1/themes/smoothness/jquery-ui.css"
            />
        <script src="//code.jquery.com/jquery-1.12.4.js"></script>
        <script src="//code.jquery.com/ui/1.12.1/jquery-ui.js"></script>

    </head>
    <body>
        <%
            HttpSession s = request.getSession(true);
            User user = (User) s.getAttribute("user");
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
                            <img src="<%=user.getAvatar()%>" id="avatar"  alt="" srcset=""> <span style="margin: auto;margin-left: 7px;margin-right: 3px;margin-bottom: 12px"><%=user.getName()%></span>
                        </a>

                        <div class="dropdown-menu" aria-labelledby="dropdownMenuLink">
                            <a class="dropdown-item" href="user?uid=<%=user.getId()%>">Account</a>
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


    </body>
</html>
