<%-- 
    Document   : login
    Created on : Oct 30, 2020, 3:23:28 PM
    Author     : Vu Ngoc Thinh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html lang="en">

    <head>
        <title>Login - Genius</title>
        <!-- Required meta tags -->
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <link rel="stylesheet" href="css/login.css">
        <link rel="icon" href="images/circle.png">   
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    </head>

    <body>
        <header class="header">
            <a href="home">
                <img src="images/circle.png" alt="" class="logo">
            <img src="images/genius.png" alt="" class="logo-title">
            </a>
            
            <hr>
        </header>
        <div class="container">
            <h6 class="lable title-feild" id="login-tile">To continue, log in to Genius.</h6>
            <%

                Cookie[] list = request.getCookies();
                String u = "";
                String p = "";
                String r = "";
                if (list != null) {
                    for (int i = 0; i < list.length; i++) {
                        if(list[i].getName().equals("cuser")){
                            u = list[i].getValue();
                        }
                        if(list[i].getName().equals("cpass")){
                            p = list[i].getValue();
                        }
                        if(list[i].getName().equals("crem")){
                            r = list[i].getValue();
                        }
                    }
                }


            %>
            <form class="form-login" action="login" method="post">

                <div class="form-group">
                    <label for="exampleInputEmail1" class="title-feild">Email address or username</label>
                    <input type="text" required name="username" class="form-control" id="exampleInputEmail1" value="<%=u%>">
                </div>
                <div class="form-group">
                    <label for="exampleInputPassword1" class="title-feild">Password</label>
                    <input type="password" required name="password" class="form-control" id="exampleInputPassword1" value="<%=p%>">
                </div>
                <div class="form-group form-check">
                    <input type="checkbox" name="rem" <%= "on".equals(r.trim()) ? "checked='check'" : "" %>
                           class="form-check-input" id="exampleCheck1"/>
                    <label class="form-check-label" for="exampleCheck1">Remember me</label>
                    <button type="submit" class="btn btn-success">LOG IN</button>
                </div>
            </form>
            <hr class="form-group">
            <%                if (request.getAttribute("errorMessage") != null) {
            %>
            <div class="alert" role="alert">
                <%= request.getAttribute("errorMessage")%>
            </div>
            <%
                }
            %>
            <h6 class="lable title-feild">Don't have an account?</h6>
            <a href="signup" class=""><button id="sign-up" class="btn btn-success">SIGN UP FOR GENIUS</button></a>

        </div>


        <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
    </body>

</html>