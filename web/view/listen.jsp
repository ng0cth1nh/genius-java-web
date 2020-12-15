<%-- 
    Document   : listen
    Created on : Oct 25, 2020, 11:34:53 PM
    Author     : Vu Ngoc Thinh
--%>

<%@page import="model.User"%>
<%@page import="model.Comment"%>
<%@page import="java.util.Collections"%>
<%@page import="java.util.Comparator"%>
<%@page import="java.util.ArrayList"%>
<%@page import="model.Album"%>
<%@page import="model.Song"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">

    <head>
        <title>Genius - Listen</title>
        <!-- Required meta tags -->
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

        <link rel="stylesheet" href="css/index.css">
        <link rel="stylesheet" href="css/listen.css">
        <link rel="icon" href="images/circle.png">
        <!-- Bootstrap CSS -->

        <link
            rel="stylesheet"
            href="//code.jquery.com/ui/1.12.1/themes/smoothness/jquery-ui.css"
            />
        <script src="//code.jquery.com/jquery-1.12.4.js"></script>
        <script src="//code.jquery.com/ui/1.12.1/jquery-ui.js"></script>


        <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
        <link rel="stylesheet" type="text/css" href="https://fonts.googleapis.com/css?family=Roboto:100,300,400,500,700,900">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
        <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
        <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/normalize/5.0.0/normalize.min.css">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
        <style>

            .dropdown-toggle::after{
                margin-top: 16px!important;
            }
        </style>



    </head>

    <body>

        <!-- Optional JavaScript -->
        <!-- jQuery first, then Popper.js, then Bootstrap JS -->
        <!-- Just an image -->
        <%
            HttpSession s = request.getSession(true);
            User user = (User) s.getAttribute("user");
            ArrayList<String> songNames = (ArrayList<String>) request.getAttribute("songNames");

        %>

        <script>
            $("#search").autocomplete({
                source: [
            <%                for (int i = 0; i < songNames.size(); i++) {

            %>
                    "<%=songNames.get(i)%>",
            <%}%>
                ],
                minLength: 2
            });
        </script>


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
                           style="font-weight: 500;width: auto" href="#" role="button" id="dropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                            <img src="<%=user.getAvatar()%>" id="avatar" alt="" srcset=""> <span style="margin-top: 7px;margin-left: 7px;margin-right: 3px"><%=user.getName()%></span>
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







        <%
            int i = 0;
            Album album = (Album) request.getAttribute("album");
            Song song = (Song) request.getAttribute("song");
            ArrayList<Song> songs = album.getSongs();
            ArrayList<Comment> comments = (ArrayList<Comment>) request.getAttribute("comments");
            ArrayList<Comment> commentsSlit = (ArrayList<Comment>) request.getAttribute("commentsSlit");
            ArrayList<Song> relatedSong = (ArrayList<Song>) request.getAttribute("relatedSongs");
            int totalComments = (Integer) request.getAttribute("totalComments");
            int index = 0;
            for (int k = 0; k < songs.size(); k++) {
                if (song.getId().equalsIgnoreCase(songs.get(k).getId())) {
                    index = k;
                }

            }
        %>
        <div class="jumbotron">
            <div class="row">
                <div class="col col-lg-2">
                </div>
                <div class="col col-auto wrapper">
                    <div id="player">
                        <audio src="" id="hidden-player"></audio>
                        <img src="" class="coverr" alt="" height="200" width="200" />
                        <div class="player-song">
                            <div class="title"></div>
                            <div class="artist"></div>
                            <progress value="0" max="1"></progress>
                            <div class="timestamps">
                                <div class="time-now"></div>
                                <div class="time-finish"></div>
                            </div>
                            <div class="actions">
                                <div class="control">
                                    <% if (index > 0) {


                                    %>
                                    <a href="../genius/listen?aid=<%=album.getId()%>&sid=<%=songs.get(index - 1).getId()%>">
                                        <i class="material-icons">fast_rewind</i>
                                    </a>

                                    <%}%>
                                    <div class="play">
                                        <a class="play-button" style="margin-bottom: 5px!important;" id="trigger">
                                            <div class="left"></div>
                                            <div class="right"></div>
                                            <div class="triangle-1"></div>
                                            <div class="triangle-2"></div>
                                        </a>
                                    </div>
                                    <% if (index < (songs.size() - 1)) {


                                    %>
                                    <a id="next-song" href="../genius/listen?aid=<%=album.getId()%>&sid=<%=songs.get(index + 1).getId()%>">
                                        <i class="material-icons">fast_forward</i>
                                    </a>
                                    <%}%>

                                </div>
                                <div class="volume" style="margin-left: 332px;">
                                    <i class="material-icons">volume_down</i>
                                    <input id="vol-control" type="range" min="0" max="100" step="1" oninput="SetVolume(this.value)" onchange="SetVolume(this.value)"></input>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="description">
                        <div class="information">

                            <h4 id="song"><%=song.getName()%></h4>
                            <h5 id="artist">Artist: <%=song.getArtist()%></h5>
                            <h5 id="album">Album:
                                <a><%=album.getName()%></a>
                            </h5>
                        </div>
                        <div class="lyric">
                            <div class="btn-group btn-group-toggle" data-toggle="buttons">
                                <div class="btn btn-secondary active">
                                    <input type="radio" name="options" id="option1" checked>
                                    <span class="material-icons" id="material-icons">
                                        audiotrack
                                    </span>
                                    <span id="item">Lyric</span>
                                </div>
                                <label class="btn btn-secondary">
                                    <input type="radio" name="options" id="option2">
                                    <span class="material-icons" id="material-icons">
                                        share
                                    </span>
                                    <div id="item">Share</div>
                                </label>
                                <label class="btn btn-secondary">
                                    <input type="radio" name="options" id="option3">
                                    <span class="material-icons" id="material-icons">
                                        control_point
                                    </span>
                                    <div id="item">More</div>
                                </label>
                            </div>


                            <p class="lyric-container"  style="padding: 20px;line-height: 2">

                                <%
                                    String[] lyrics = song.getLyric().split("\n");
                                    for (int j = 0; j < lyrics.length / 8; j++) {


                                %>
                                <%=lyrics[j]%>
                                <br>

                                <%}%>


                                <span id="dots">...</span>


                                <span id="more">
                                    <%   for (int j = lyrics.length / 8; j < lyrics.length; j++) {


                                    %>

                                    <%=lyrics[j]%>
                                    <br>

                                    <%}%>

                                </span>

                            </p>
                            <button type="button" class="btn btn-primary btn-sm" id="read" onclick="read()">See
                                more</button>
                        </div>
                    </div>
                    <div class="related_song">
                        <h4 class="related_song_title">Related songs</h4>
                        <div class="related_song_container" style="width: 842px!important;flex-wrap: wrap!important;
                             justify-content: space-between!important;">
                            <%
                                for (int j = 0; j < relatedSong.size(); j++) {


                            %>
                            <div class="card" style="width: 156px;height: 250px ; margin: 0;">
                                <a href="listen?aid=<%=relatedSong.get(j).getAlbum().getId()%>&sid=<%=relatedSong.get(j).getId()%>" style="margin-left: 6px;margin-top: 6px;">
                                    <img class="card-img-top" alt="a" src="<%=relatedSong.get(j).getImage()%>"></a>
                                <div class="card-body">
                                    <a href="listen?aid=<%=relatedSong.get(j).getAlbum().getId()%>&sid=<%=relatedSong.get(j).getId()%>">
                                        <h6 class="card-title"><%=relatedSong.get(j).getName()%></h6>
                                    </a>
                                    <p class="card-text" style="font-size: 12px"><%=relatedSong.get(j).getArtist()%></p>
                                </div>
                            </div>
                            <%}%>
                        </div>
                    </div>
                    <div class="comment">
                        <div id="result" style="display: flex ; justify-content: center;"> </div>
                        <h4 class="comment_title">Comments</h4>
                        <form class="comment_container form-group" id="comment-form" method="post" action="../genius/listen?sid=<%=song.getId()%>">
                            <textarea name="comment" class="form-control" id="text-comment" rows="3" placeholder="Add a public comment..."></textarea>
                            <button type="submit" id="btn_comment" class="btn btn-secondary btn-sm"><span id="comment_text">Comment</span></button>

                        </form>

                        <div class="list_comment" id="list_comment_body">
                            <div class="list_header">
                                <i class="material-icons">chat_bubble</i> &nbsp;
                                <span><%=comments.size()%></span>&nbsp;comments
                            </div>
                            <hr>
                            <div class="list_body">
                                <ul class="ul_comment">
                                    <%
                                        for (int j = 0; j < commentsSlit.size(); j++) {

                                    %>   
                                    <li id="comment-1" class="li-body-comment" style="width: 100%">
                                        <a href="user?id=<%=commentsSlit.get(j).getUser().getId()%>">
                                            <img class="avatar_users" style="width: 40px; height: 40px;" src="<%=commentsSlit.get(j).getUser().getAvatar()%>">
                                        </a>
                                        <div class="media-body">
                                            <div class="comment-header">
                                                <a href="user?id=<%=commentsSlit.get(j).getUser().getId()%>"><%=commentsSlit.get(j).getUser().getName()%></a>
                                                <span style="font-size: 14px"><%=commentsSlit.get(j).getDate()%></span>
                                            </div>

                                            <p class="media-text"><%=commentsSlit.get(j).getContent()%></p>
                                        </div>
                                    </li>
                                    <%}%>

                                </ul>
                                <ul class="pagination">
                                    <li class="page-item">
                                        <a class="page-link" href="" aria-label="Previous">
                                            <span aria-hidden="true">&laquo;</span>
                                            <span class="sr-only">Previous</span>
                                        </a>
                                    </li>
                                    <%
                                        for (int h = 1; h <= totalComments; h++) {
                                    %>
                                    <li class="page-item"><a class="page-link" href="listen?aid=<%=song.getAlbum().getId()%>&sid=<%=song.getId()%>&index=<%=h%>"><%=h%></a></li>
                                               
                                        <%
                                            }
                                        %>
                                        <li class="page-item"> 
                                        <a class="page-link" href="" aria-label="Next">
                                            <span aria-hidden="true">&raquo;</span>
                                            <span class="sr-only">Next</span>
                                        </a>
                                    </li>
                                </ul>
                            </div>
                                        
                        </div>
                    </div>
                </div>
                <div class="col col-lg-2 suggestion">
                    <div class="suggestion_header">
                        <h5 class="related_song_title">Suggestion</h5>
                        <!-- Default checked -->
                        <div class="custom-control custom-switch">

                            <input type="checkbox" class="custom-control-input" id="customSwitch1" checked>
                            <label class="custom-control-label" for="customSwitch1">Auto play</label>
                        </div>
                    </div>
                    <hr>
                    <ul class="suggestion_list">
                        <%                                if (!album.isSingle()) {
                                for (i = 0; i < songs.size(); i++) {


                        %>
                        <li id="suggestion-1" class="li-body-suggestion" style="width: 100%">
                            <a href="listen?aid=<%=album.getId()%>&sid=<%=songs.get(i).getId()%>"><img class="avatar_suggestion" style="width: 72px; height: 72px;" src="<%=songs.get(i).getImage()%>"></a>
                            <div class="suggestion-body" style="width: inherit!important;">
                                <a href="listen?aid=<%=album.getId()%>&sid=<%=songs.get(i).getId()%>" class="suggestion_song_title"><%=songs.get(i).getName()%></a><br>
                                <span class="suggestion-text"><%=songs.get(i).getArtist()%></span>
                            </div>
                        </li>
                        <hr>
                        <%}
                            }
                        %>

                    </ul>

                </div>
            </div>

        </div>



        <%@include file="footer.jsp"%>


        <script>



            songs = [
                {
                    src: "<%=song.getAudio()%>",
                    title: "<%=song.getName()%>",
                    artist: "<%=song.getArtist()%>",
                    coverart: "<%=song.getImage()%>"
                }




            ];



            var num = 0;
            var hiddenPlayer = $('#hidden-player');
            var player = $('#player');
            var title = $('.title');
            var artist = $('.artist');
            var cover = $('.coverr');


            function secondsTimeSpanToHMS(s) {
                var h = Math.floor(s / 3600); //Get whole hours
                s -= h * 3600;
                var m = Math.floor(s / 60); //Get remaining minutes
                s -= m * 60;
                return h + ":" + (m < 10 ? '0' + m : m) + ":" + (s < 10 ? '0' + s : s); //zero padding on minutes and seconds
            }
            ;



            var initSongSrc = songs[0].src;
            var initSongTitle = songs[0].title;
            var initSongArtist = songs[0].artist;
            var initSongCover = songs[0].coverart;


            hiddenPlayer.attr("src", initSongSrc);
            title.html(initSongTitle);
            artist.html(initSongArtist);
            cover.attr('src', initSongCover);
            hiddenPlayer.attr('order', '0');
            hiddenPlayer[0].onloadedmetadata = function () {
                var dur = hiddenPlayer[0].duration;
                var songLength = secondsTimeSpanToHMS(dur)
                var songLengthParse = songLength.split(".")[0];
                $('.time-finish').html(songLengthParse);
            };

            hiddenPlayer[0].play();


            var items = songs.length - 1;

            $('.next').on('click', function () {
                var songOrder = hiddenPlayer.attr('order');
                if (items == songOrder) {
                    num = 0;
                    var songSrc = songs[0].src;
                    var songTitle = songs[0].title;
                    var songArtist = songs[0].artist;
                    var songCover = songs[0].coverart;
                    hiddenPlayer.attr('order', '0');
                    hiddenPlayer.attr('src', songSrc).trigger('play');
                    title.html(songTitle);
                    artist.html(songArtist);
                    cover.attr('src', songCover);
                } else {
                    console.log(songOrder);
                    num += 1;
                    var songSrc = songs[num].src;
                    var songTitle = songs[num].title;
                    var songArtist = songs[num].artist;
                    var songCover = songs[num].coverart;
                    hiddenPlayer.attr('src', songSrc).trigger('play');
                    title.html(songTitle);
                    artist.html(songArtist);
                    cover.attr('src', songCover);
                    hiddenPlayer.attr('order', num);
                }
            });

            $('.prev').on('click', function () {
                var songOrder = hiddenPlayer.attr('order');
                if (songOrder == 0) {
                    num = items;
                    var songSrc = songs[items].src;
                    var songTitle = songs[items].title;
                    var songArtist = songs[items].artist;
                    hiddenPlayer.attr('order', items);
                    hiddenPlayer.attr('src', songSrc).trigger('play');
                    title.html(songTitle);
                    artist.html(songArtist);
                } else {
                    num -= 1;
                    var songSrc = songs[num].src;
                    var songTitle = songs[num].title;
                    var songArtist = songs[num].artist;
                    hiddenPlayer.attr('src', songSrc).trigger('play');
                    title.html(songTitle);
                    artist.html(songArtist);
                    hiddenPlayer.attr('order', num);
                }
            });

            $(".play-button").click(function () {
                $(this).toggleClass("paused");
                if ($(this).hasClass("paused")) {
                    hiddenPlayer[0].pause();
                } else {
                    hiddenPlayer[0].play();
                }
            });


            hiddenPlayer.on('timeupdate', function () {
                var songLength = secondsTimeSpanToHMS(this.duration)
                var songLengthParse = songLength.split(".")[0];
                $('.time-finish').html(songLengthParse);
                var songCurrent = secondsTimeSpanToHMS(this.currentTime)
                var songCurrentParse = songCurrent.split(".")[0];
                $('.time-now').html(songCurrentParse);
                $('progress').attr("value", this.currentTime / this.duration);
                if (!hiddenPlayer[0].paused) {
                    $(".play-button").removeClass('paused');
                    $('progress').css('cursor', 'pointer');
                    $('progress').on('click', function (e) {
                        var parentOffset = $(this).parent().offset();
                        var relX = e.pageX - parentOffset.left;
                        var percPos = relX * 100 / 597;
                        var second = hiddenPlayer[0].duration * parseInt(percPos) / 100;
                        console.log(second);
                        hiddenPlayer[0].currentTime = second;
                    })
                }

                if (this.currentTime === this.duration && document.getElementById('customSwitch1').checked === true) {
                    document.getElementById('next-song').click();
                }
            })

            ///////////////////////////

            function SetVolume(val) {
                var player = document.getElementById('hidden-player');
                console.log('Before: ' + player.volume);
                player.volume = val / 100;
                console.log('After: ' + player.volume);
            }


            function read() {

                if (document.getElementById("dots").style.display === "none") {
                    document.getElementById("dots").style.display = "inline";
                    document.getElementById("read").innerHTML = "See more";
                    document.getElementById("more").style.display = "none";
                } else {
                    document.getElementById("dots").style.display = "none";
                    document.getElementById("read").innerHTML = "See less";
                    document.getElementById("more").style.display = "inline";
                }
            }


        </script>





        <script src='https://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>
        <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>

    </body>

</html>