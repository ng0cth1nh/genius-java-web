<%-- 
    Document   : genres
    Created on : Nov 9, 2020, 3:10:07 PM
    Author     : Vu Ngoc Thinh
--%>

<%@page import="model.Category"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" href="css/genres.css">
        <link rel="stylesheet" href="css/index.css">

        <link rel="icon" href="images/circle.png">
        <link
            rel="stylesheet"
            href="//code.jquery.com/ui/1.12.1/themes/smoothness/jquery-ui.css"
            />
        <script src="//code.jquery.com/jquery-1.12.4.js"></script>
        <script src="//code.jquery.com/ui/1.12.1/jquery-ui.js"></script>

        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Genius - Genres</title>
         <style>
            footer{
                margin-top: 210px;
            }
        </style>
    </head>
    <body>
        <%@include file="header.jsp"%>


        <%
            Category category = (Category) request.getAttribute("category");
            
        %>  

        <div class="container-body" >
            <div class="row row-wrapper">

                <h1 id="genres-lable" style="display: contents"><%=category.getName()%></h1>



                <div class="genres-album" style="margin-bottom: 50px">
                    <div class="albums">
                        <div class="albums-title" style=" margin-top: 30px;
                             margin-bottom: 15px;">
                            <h3>Popular albums</h3>
                        </div>

                        <div class="genres-music">
                            <%
                                for (int i = 0; i < category.getAlbums().size(); i++) {

                            %>
                            <div class="card" style="width: 156px;height: 250px ; margin: 0;">
                                <a class="img-link" href="listen?aid=<%=category.getAlbums().get(i).getId()%>&sid=<%=category.getAlbums().get(i).getSongs().get(0).getId()%>">
                                    <img class="card-img-top" alt="a" src="<%=category.getAlbums().get(i).getImage()%>">
                                </a>
                                <div class="card-body">
                                    <a href="listen?aid=<%=category.getAlbums().get(i).getId()%>&sid=<%=category.getAlbums().get(i).getSongs().get(0).getId()%>">
                                        <h6 class="card-title"><%=category.getAlbums().get(i).getName()%></h6>
                                    </a>
                                    <p class="card-text" style="font-size: 12px"><%=category.getAlbums().get(i).getArtist()%></p>
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
