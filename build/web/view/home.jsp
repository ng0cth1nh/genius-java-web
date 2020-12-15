<%-- 
    Document   : home
    Created on : Oct 26, 2020, 10:09:32 PM
    Author     : Vu Ngoc Thinh
--%>

<%@page import="model.Playlist"%>
<%@page import="model.Category"%>
<%@page import="model.Chart"%>
<%@page import="java.util.ArrayList"%>
<%@page import="model.Album"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">

    <head>
        <title>Genius</title>
        <!-- Required meta tags -->
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <link rel="stylesheet" href="css/index.css">
        <link rel="stylesheet" href="css/listen.css">
        <link rel="icon" href="images/circle.png">

        <link rel="stylesheet" href="css/owl.carousel.css">
        <link rel="stylesheet" href="css/owl.theme.default.min.css">
        <!-- Bootstrap CSS -->
        <link rel="stylesheet" type="text/css" href="https://fonts.googleapis.com/css?family=Roboto:100,300,400,500,700,900">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">

        <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/normalize/5.0.0/normalize.min.css">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
        <style>
            .dropdown-toggle::after{
                margin-top:16px;
            }


            .hot-card-title, .card-title{
                color: #212529;
            }
        </style>
    </head>

    <body>

        <!-- Optional JavaScript -->
        <!-- jQuery first, then Popper.js, then Bootstrap JS -->
        <!-- Just an image -->

        <%@include file="header.jsp"%>




        <div id="hotMusic" class="carousel slide" data-ride="carousel">
            <ol class="carousel-indicators" style="bottom: -60px;">
                <li data-target="#hotMusic" data-slide-to="0" class="active"></li>
                <li data-target="#hotMusic" data-slide-to="1"></li>
                <li data-target="#hotMusic" data-slide-to="2"></li>
            </ol>

            <%          ArrayList<Album> data = null;
                if (request.getAttribute("albumData") != null) {
                    data = (ArrayList<Album>) request.getAttribute("albumData");
                }
                ArrayList<Chart> chartData = null;
                if (request.getAttribute("chartData") != null) {
                    chartData = (ArrayList<Chart>) request.getAttribute("chartData");
                }
                ArrayList<Album> popularAlbumsData = null;
                if (request.getAttribute("popularAlbumsData") != null) {
                    popularAlbumsData = (ArrayList<Album>) request.getAttribute("popularAlbumsData");
                }
                ArrayList<Album> newAlbumsData = null;
                if (request.getAttribute("newAlbumsData") != null) {
                    newAlbumsData = (ArrayList<Album>) request.getAttribute("newAlbumsData");
                }
                ArrayList<Category> categoriesData = null;
                if (request.getAttribute("categoriesData") != null) {
                    categoriesData = (ArrayList<Category>) request.getAttribute("categoriesData");
                }
                Playlist recentPlaylist = null;
                if (request.getAttribute("recentPlaylist") != null) {
                    recentPlaylist = (Playlist) request.getAttribute("recentPlaylist");
                }
                Playlist playlistForYou = null;
                if (request.getAttribute("playlistForYou") != null) {
                    playlistForYou = (Playlist) request.getAttribute("playlistForYou");
                }
            %>


            <div class="carousel-inner">
                <div class="carousel-item active">

                    <div class="slide-page">
                        <%
                            for (int i = 0; i < 5; i++) {
                        %>
                        <div class="card" style="width: 200px;height: 300px ; margin: 0;">

                            <a class="hot-img-link" href="listen?aid=<%=data.get(i).getId()%>&sid=<%=data.get(i).getSongs().get(0).getId()%>"><img class="hot-card-img-top" alt="a" src="<%=data.get(i).getImage()%>"></a>
                            <div class="hot-card-body">
                                <a href="listen?aid=<%=data.get(i).getId()%>&sid=<%=data.get(i).getSongs().get(0).getId()%>">
                                    <h6 class="hot-card-title"><%=data.get(i).getName()%></h6>
                                </a>
                                <p class="hot-card-text" style="font-size: 12px"><%=data.get(i).getArtist()%></p>
                            </div>                        

                        </div>
                        <%
                            }
                        %>   

                    </div>
                </div>

                <div class="carousel-item">

                    <div class="slide-page">
                        <%
                            for (int i = 5; i < 10; i++) {
                        %>
                        <div class="card" style="width: 200px;height: 300px ; margin: 0;">

                            <a class="hot-img-link" href="listen?aid=<%=data.get(i).getId()%>&sid=<%=data.get(i).getSongs().get(0).getId()%>"><img class="hot-card-img-top" alt="a" src="<%=data.get(i).getImage()%>"></a>
                            <div class="hot-card-body">
                                <a href="listen?aid=<%=data.get(i).getId()%>&sid=<%=data.get(i).getSongs().get(0).getId()%>">
                                    <h6 class="hot-card-title"><%=data.get(i).getName()%></h6>
                                </a>
                                <p class="hot-card-text" style="font-size: 12px"><%=data.get(i).getArtist()%></p>
                            </div>                        

                        </div>
                        <%
                            }
                        %>   

                    </div>
                </div>    

                <div class="carousel-item">

                    <div class="slide-page">
                        <%
                            for (int i = 10; i < 15; i++) {
                        %>
                        <div class="card" style="width: 200px;height: 300px ; margin: 0;">

                            <a class="hot-img-link" href="listen?aid=<%=data.get(i).getId()%>&sid=<%=data.get(i).getSongs().get(0).getId()%>"><img class="hot-card-img-top" alt="a" src="<%=data.get(i).getImage()%>"></a>
                            <div class="hot-card-body">
                                <a href="listen?aid=<%=data.get(i).getId()%>&sid=<%=data.get(i).getSongs().get(0).getId()%>">
                                    <h6 class="hot-card-title"><%=data.get(i).getName()%></h6>
                                </a>
                                <p class="hot-card-text" style="font-size: 12px"><%=data.get(i).getArtist()%></p>
                            </div>                        

                        </div>
                        <%
                            }
                        %>   

                    </div>
                </div> 


            </div>


            <a class="carousel-control-prev" href="#hotMusic" role="button" data-slide="prev">
                <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                <span class="sr-only">Previous</span>
            </a>
            <a class="carousel-control-next" href="#hotMusic" role="button" data-slide="next">
                <span class="carousel-control-next-icon" aria-hidden="true"></span>
                <span class="sr-only">Next</span>
            </a>
        </div>

        <div class="container-body">
            <div class="row row-wrapper ">
                <div class="col-md-9 trend">
                    <%  if (recentPlaylist != null) {
                    %>
                    <div class="recently-album">
                        <div class="albums">
                            <div class="albums-title">
                                <h3><%=recentPlaylist.getName()%></h3>
                            </div>        
                            <div class="new-music">

                                <%
                                    for (int i = 0; i < recentPlaylist.getSong().size(); i++) {

                                %>
                                <div class="card" style="width: 156px;height: 250px ; margin: 0;">
                                    <a class="img-link" href="listen?aid=<%=recentPlaylist.getSong().get(i).getAlbum().getId()%>&sid=<%=recentPlaylist.getSong().get(i).getId()%>">
                                        <img class="card-img-top" alt="a" src="<%=recentPlaylist.getSong().get(i).getImage()%>">
                                    </a>
                                    <div class="card-body">
                                        <a href="listen?aid=<%=recentPlaylist.getSong().get(i).getAlbum().getId()%>&sid=<%=recentPlaylist.getSong().get(i).getId()%>">
                                            <h6 class="card-title"><%=recentPlaylist.getSong().get(i).getName()%></h6>
                                        </a>
                                        <p class="card-text" style="font-size: 12px"><%=recentPlaylist.getSong().get(i).getArtist()%></p>
                                    </div>
                                </div>


                                <%}%>

                            </div>
                        </div>
                    </div>

                    <%}%>
                     <%  if (playlistForYou != null) {
                    %>
                    <div class="recently-album">
                        <div class="albums">
                            <div class="albums-title">
                                <h3><%=playlistForYou.getName()%></h3>
                            </div>        
                            <div class="new-music">

                                <%
                                    for (int i = 0; i < playlistForYou.getSong().size(); i++) {

                                %>
                                <div class="card" style="width: 156px;height: 250px ; margin: 0;">
                                    <a class="img-link" href="listen?aid=<%=playlistForYou.getSong().get(i).getAlbum().getId()%>&sid=<%=playlistForYou.getSong().get(i).getId()%>">
                                        <img class="card-img-top" alt="a" src="<%=playlistForYou.getSong().get(i).getImage()%>">
                                    </a>
                                    <div class="card-body">
                                        <a href="listen?aid=<%=playlistForYou.getSong().get(i).getAlbum().getId()%>&sid=<%=playlistForYou.getSong().get(i).getId()%>">
                                            <h6 class="card-title"><%=playlistForYou.getSong().get(i).getName()%></h6>
                                        </a>
                                        <p class="card-text" style="font-size: 12px"><%=playlistForYou.getSong().get(i).getArtist()%></p>
                                    </div>
                                </div>


                                <%}%>

                            </div>
                        </div>
                    </div>

                    <%}%>
                    
                    
                    <div class="recently-album">
                        <div class="albums">
                            <div class="albums-title">
                                <h3>New Releases</h3>
                            </div>        
                            <div class="new-music">

                                <%
                                    for (int i = 0; i < newAlbumsData.size(); i++) {

                                %>
                                <div class="card" style="width: 156px;height: 250px ; margin: 0;">
                                    <a class="img-link" href="listen?aid=<%=newAlbumsData.get(i).getId()%>&sid=<%=newAlbumsData.get(i).getSongs().get(0).getId()%>">
                                        <img class="card-img-top" alt="a" src="<%=newAlbumsData.get(i).getImage()%>">
                                    </a>
                                    <div class="card-body">
                                        <a href="listen?aid=<%=newAlbumsData.get(i).getId()%>&sid=<%=newAlbumsData.get(i).getSongs().get(0).getId()%>">
                                            <h6 class="card-title"><%=newAlbumsData.get(i).getName()%></h6>
                                        </a>
                                        <p class="card-text" style="font-size: 12px"><%=newAlbumsData.get(i).getArtist()%></p>
                                    </div>
                                </div>


                                <%}%>

                            </div>
                        </div>
                    </div>
                    <div class="popular-album">
                        <div class="albums">
                            <div class="albums-title">
                                <h3>Popular albums</h3>

                            </div>

                            <div class="new-music">
                                <%
                                    for (int i = 0; i < popularAlbumsData.size(); i++) {

                                %>
                                <div class="card" style="width: 156px;height: 250px ; margin: 0;">
                                    <a class="img-link" href="listen?aid=<%=popularAlbumsData.get(i).getId()%>&sid=<%=popularAlbumsData.get(i).getSongs().get(0).getId()%>"><img class="card-img-top" alt="a" src="<%=popularAlbumsData.get(i).getImage()%>"></a>
                                    <div class="card-body">
                                        <a href="listen?aid=<%=popularAlbumsData.get(i).getId()%>&sid=<%=popularAlbumsData.get(i).getSongs().get(0).getId()%>">
                                            <h6 class="card-title"><%=popularAlbumsData.get(i).getName()%></h6>
                                        </a>
                                        <p class="card-text" style="font-size: 12px"><%=popularAlbumsData.get(i).getArtist()%></p>
                                    </div>
                                </div>

                                <%}%>

                            </div>
                        </div>
                    </div>
                    <div class="genres">
                        <div class="genres-title">
                            <h3>Genres</h3>
                        </div>
                        <div class="owl-carousel owl-theme genres-items">
                            <%
                                for (int i = 0; i < categoriesData.size(); i++) {

                            %>
                            <% if (categoriesData.get(i).getName().toLowerCase().equalsIgnoreCase("r&b")) {
                            %>

                            <a href="genres?cid=<%=categoriesData.get(i).getId()%>"><div class="item rb"><h4><%=categoriesData.get(i).getName()%></h4></div></a>
                                        <%} else {
                                        %>
                            <a href="genres?cid=<%=categoriesData.get(i).getId()%>"><div class="item <%=categoriesData.get(i).getName().toLowerCase()%>"><h4><%=categoriesData.get(i).getName()%></h4></div></a>

                            <%}
                                }%>
                        </div>
                    </div>
                </div>

                <div class="col-md-3 charts">
                    <div class="charts-header">
                        <h4 class="charts-title">Charts</h4>

                        <ul class="nav nav-tabs charts-items" id="chartsTab" role="tablist">
                            <li class="nav-item">
                                <a class="nav-link active" id="vn-tab" data-toggle="tab" href="#vn-chart" role="tab" aria-controls="home" aria-selected="true"><%=chartData.get(0).getName()%> <img src="images/vietnam (1).png" alt="" id="vn" srcset=""></a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" id="us-tab" data-toggle="tab" href="#us-chart" role="tab" aria-controls="profile" aria-selected="false"><%=chartData.get(1).getName()%> <img src="images/united-states.png" alt="" id="us" srcset=""></a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" id="kpop-tab" data-toggle="tab" href="#kr-chart" role="tab" aria-controls="contact" aria-selected="false"><%=chartData.get(2).getName()%> <img src="images/south-korea.png" alt="" id="kr" srcset=""></a>
                            </li>
                        </ul>



                    </div>

                    <div class="charts-body">
                        <div class="tab-content" id="myTabContent">
                            <div class="tab-pane fade show active" id="vn-chart" role="tabpanel" aria-labelledby="home-tab">

                                <ul class="chart_list">
                                    <%
                                        for (int i = 0; i < chartData.get(0).getSongs().size(); i++) {


                                    %>
                                    <li id="suggestion-1" class="li-body-chart" style="width: 100%">
                                        <a href="listen?aid=<%=chartData.get(0).getSongs().get(i).getAlbum().getId()%>&sid=<%=chartData.get(0).getSongs().get(i).getId()%>">
                                            <img class="avatar_chart" style="width: 72px; height: 72px;" src="<%=chartData.get(0).getSongs().get(i).getImage()%>"></a>
                                        <div class="chart-body">
                                            <a href="listen?aid=<%=chartData.get(0).getSongs().get(i).getAlbum().getId()%>&sid=<%=chartData.get(0).getSongs().get(i).getId()%>" class="chart_song_title"><%=chartData.get(0).getSongs().get(i).getName()%></a><br>
                                            <span class="chart-artist"><%=chartData.get(0).getSongs().get(i).getArtist()%></span>
                                        </div>
                                    </li>
                                    <hr>
                                    <%}%>
                                </ul>
                            </div>
                            <div class="tab-pane fade" id="us-chart" role="tabpanel" aria-labelledby="profile-tab">
                                <ul class="chart_list">

                                    <%
                                        for (int i = 0; i < chartData.get(1).getSongs().size(); i++) {


                                    %>
                                    <li id="suggestion-1" class="li-body-chart" style="width: 100%">
                                        <a href="listen?aid=<%=chartData.get(1).getSongs().get(i).getAlbum().getId()%>&sid=<%=chartData.get(1).getSongs().get(i).getId()%>">
                                            <img class="avatar_chart" style="width: 72px; height: 72px;" src="<%=chartData.get(1).getSongs().get(i).getImage()%>"></a>
                                        <div class="chart-body">
                                            <a href="listen?aid=<%=chartData.get(1).getSongs().get(i).getAlbum().getId()%>&sid=<%=chartData.get(1).getSongs().get(i).getId()%>" class="chart_song_title"><%=chartData.get(1).getSongs().get(i).getName()%></a><br>
                                            <span class="chart-artist"><%=chartData.get(1).getSongs().get(i).getArtist()%></span>
                                        </div>
                                    </li>
                                    <hr>
                                    <%}%>
                                </ul>
                            </div>
                            <div class="tab-pane fade" id="kr-chart" role="tabpanel" aria-labelledby="contact-tab">
                                <ul class="chart_list">
                                    <%
                                        for (int i = 0; i < chartData.get(2).getSongs().size(); i++) {


                                    %>
                                    <li id="suggestion-1" class="li-body-chart" style="width: 100%">
                                        <a href="listen?aid=<%=chartData.get(2).getSongs().get(i).getAlbum().getId()%>&sid=<%=chartData.get(2).getSongs().get(i).getId()%>">
                                            <img class="avatar_chart" style="width: 72px; height: 72px;" src="<%=chartData.get(2).getSongs().get(i).getImage()%>"></a>
                                        <div class="chart-body">
                                            <a href="listen?aid=<%=chartData.get(2).getSongs().get(i).getAlbum().getId()%>&sid=<%=chartData.get(2).getSongs().get(i).getId()%>" class="chart_song_title"><%=chartData.get(2).getSongs().get(i).getName()%></a><br>
                                            <span class="chart-artist"><%=chartData.get(2).getSongs().get(i).getArtist()%></span>
                                        </div>
                                    </li>
                                    <hr>
                                    <%}%>

                                </ul>
                            </div>
                        </div>
                    </div>

                </div>

            </div>


        </div>





        <%@include file="footer.jsp"%>             

        <script src="script/jquery.min.js"></script>
        <script src="script/owl.carousel.js"></script>
        <script type="text/javascript">
            $(document).ready(function () {
                $(".dropdown-toggle").dropdown();
            });

            var owl = $('.owl-carousel');
            owl.owlCarousel({
                items: 4,
                loop: true,
                margin: 10,
                autoplay: true,
                autoplayTimeout: 3000,
                autoplayHoverPause: true
            });
            $('.play').on('click', function () {
                owl.trigger('play.owl.autoplay', [3000])
            })
            $('.stop').on('click', function () {
                owl.trigger('stop.owl.autoplay')
            })
        </script>
        <script src='https://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>   
        <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>

        <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
    </body>

</html>



