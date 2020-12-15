<%-- 
    Document   : account
    Created on : Nov 7, 2020, 5:24:04 PM
    Author     : Vu Ngoc Thinh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Account - Overview</title>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <link rel="stylesheet" href="css/user.css">
          <link rel="icon" href="images/circle.png">
        <link
            rel="stylesheet"
            href="//code.jquery.com/ui/1.12.1/themes/smoothness/jquery-ui.css"
            />
        <script src="//code.jquery.com/jquery-1.12.4.js"></script>
        <script src="//code.jquery.com/ui/1.12.1/jquery-ui.js"></script>

        <!-- Bootstrap CSS -->
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">

    </head>
    <body>
        <%@include file="header.jsp"%>
        <%
            User u = (User) request.getAttribute("u");


        %>
        <div class="container-body">
            <div class="row row-wrapper">

                <h1 id="user-title">Account overview</h1>
                <h4 id="title">Profile</h4>
                <ul class="user-items">
                    <li class="item">
                        <div class="item-lable">Username</div>
                        <div class="item-content"><%=u.getId()%></div>
                    </li>
                    <hr>
                    <li class="item">
                        <div class="item-lable">Name</div>
                        <div class="item-content"><%=u.getName()%></div>
                    </li>                    
                    <hr>
                    <li class="item">
                        <div class="item-lable">Date of birth</div>
                        <div class="item-content"><%=u.getDob()%></div>
                    </li>
                    <hr>
                    <li class="item">
                        <div class="item-lable">Gender</div>
                        <%
                            if (u.isGender()) {
                        %>
                        <div class="item-content">Male</div>
                        <%} else {%>
                        <div class="item-content">Female</div>
                        <%}%>
                    </li>
                    <hr>
                    <li class="item">
                        <div class="item-lable">Email</div>
                        <div class="item-content"><%=u.getEmail()%></div>
                    </li>
                    <hr>



                </ul>

                <a class="btn btn-outline-secondary edit" href="edit?uid=<%=u.getId()%>">
                  EDIT PROFILE

                </a>


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


        <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>

    </body>
</html>
