<%-- 
    Document   : signup
    Created on : Nov 7, 2020, 1:54:09 PM
    Author     : Vu Ngoc Thinh
--%>

<%@page import="model.Category"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.sql.Date"%>
<%@page import="model.User"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html id="app" lang="en" dir="ltr" ng-csp ng-strict-di>

    <head>
        <title>Account - Upload</title>
        <meta charset="utf-8">
        <title ng-bind="( & #39; loginTitle & #39; | localize) + & #39; - Spotify & #39;">Sign up</title>
        <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
        <link rel="icon" href="images/circle.png">
        <link rel="stylesheet" href="css/signup.css">
        <link rel="stylesheet" href="css/user.css">
        <link
            rel="stylesheet"
            href="//code.jquery.com/ui/1.12.1/themes/smoothness/jquery-ui.css"
            />

        <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
        <script src="//code.jquery.com/jquery-1.12.4.js"></script>
        <script src="//code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
        <script src="https://www.gstatic.com/firebasejs/8.0.0/firebase-app.js"></script>
        <script src="https://www.gstatic.com/firebasejs/8.0.0/firebase-storage.js"></script>
        <script src="https://www.gstatic.com/firebasejs/8.0.0/firebase-analytics.js"></script>
        <style>
            .form-login{
                width: 80%;
            }
            .form-group{
                width: 100%;
            }
            .btn-success{
                /*                width: 200px;
                                height: 40px;
                                 font-weight: 700; 
                                margin-top: 160px;
                                margin-right: 176px;*/
            }
            .title-feild{
                font-size: 20px;
            }
            #login-lable{
                margin-top: 50px;
                margin-bottom: 30px;
                margin-left: 270px;
                font-size: 50px;
            }
            .container{
                margin-top: 40px;
            }
            #login-lable{
                font-size: 60px;
                margin-left: 85px;
            }
            footer {
                background-color: #212529;
                margin-top: 200px;
            }
            .text-center {
                color: #fff;
            }

            .file-upload{display:block;text-align:center;font-family: Helvetica, Arial, sans-serif;font-size: 12px;}
            .file-upload .file-select{display:block;border: 2px solid #dce4ec;color: #34495e;cursor:pointer;height:40px;line-height:40px;text-align:left;background:#FFFFFF;overflow:hidden;position:relative;}
            .file-upload .file-select .file-select-button{background:#dce4ec;padding:0 10px;display:inline-block;height:40px;line-height:40px;}
            .file-upload .file-select .file-select-name{line-height:40px;display:inline-block;padding:0 10px;}
            .file-upload .file-select:hover{border-color:#34495e;transition:all .2s ease-in-out;-moz-transition:all .2s ease-in-out;-webkit-transition:all .2s ease-in-out;-o-transition:all .2s ease-in-out;}
            .file-upload .file-select:hover .file-select-button{background:#34495e;color:#FFFFFF;transition:all .2s ease-in-out;-moz-transition:all .2s ease-in-out;-webkit-transition:all .2s ease-in-out;-o-transition:all .2s ease-in-out;}
            .file-upload.active .file-select{border-color:#3fa46a;transition:all .2s ease-in-out;-moz-transition:all .2s ease-in-out;-webkit-transition:all .2s ease-in-out;-o-transition:all .2s ease-in-out;}
            .file-upload.active .file-select .file-select-button{background:#3fa46a;color:#FFFFFF;transition:all .2s ease-in-out;-moz-transition:all .2s ease-in-out;-webkit-transition:all .2s ease-in-out;-o-transition:all .2s ease-in-out;}
            .file-upload .file-select input[type=file]{z-index:100;cursor:pointer;position:absolute;height:100%;width:100%;top:0;left:0;opacity:0;filter:alpha(opacity=0);}
            .file-upload .file-select.file-select-disabled{opacity:0.65;}
            .file-upload .file-select.file-select-disabled:hover{cursor:default;display:block;border: 2px solid #dce4ec;color: #34495e;cursor:pointer;height:40px;line-height:40px;margin-top:5px;text-align:left;background:#FFFFFF;overflow:hidden;position:relative;}
            .file-upload .file-select.file-select-disabled:hover .file-select-button{background:#dce4ec;color:#666666;padding:0 10px;display:inline-block;height:40px;line-height:40px;}
            .file-upload .file-select.file-select-disabled:hover .file-select-name{line-height:40px;display:inline-block;padding:0 10px;}
        </style>
    </head>


    <%
        HttpSession s = request.getSession(true);
        User user = (User) s.getAttribute("user");
        ArrayList<String> songNames = (ArrayList<String>) request.getAttribute("songNames");
        ArrayList<Category> categoriesData = (ArrayList<Category>) request.getAttribute("categoriesData");

    %>

    <body>
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


        <div class="container">
            <h1 id="login-lable">Upload</h1>

            <form class="form-login" id="form" method="POST" action="../genius/upload" >
                <div class="form-group">
                    <label for="exampleInputPassword1" class="title-feild">Cover</label>
                    <div style="display: flex;">
                        <img src="https://cdn.dribbble.com/users/49910/screenshots/4431133/attachments/1006783/avatar_03.png" id="images" style="width: 200px;height: 200px;border: 1px solid black
                             ;margin-right: 10px">
                        <input type="file" style="margin-top: 170px" class="form-control-file" id="photo">
                        <input type="text" style="display: none" class="form-control-file" name="cover" id="cover">



                        <input type="text" style="display: none" class="form-control-file" name="song" id="song">

                    </div>            
                </div> 

                <div class="form-group" style="display:inline-block">
                    <label for="exampleInputPassword1" class="title-feild">File song upload</label>
                    <div class="file-upload" style="display:flex">
                        <div class="file-select" style="width: 85%;margin-right: 47px;">
                            <div class="file-select-button" id="fileName">Choose song</div>
                            <div class="file-select-name" id="noFile">No file chosen...</div> 
                            <input type="file" name="chooseFile" id="chooseFile">
                        </div> 
                        <button onclick="uploadPhoto()" style="width: 10%;height: 40px;margin: auto;;" class="btn btn-success">Save</button>
                    </div>


                </div>  



                <div class="form-group">
                    <label for="exampleInputPassword1" class="title-feild">Album</label>
                    <input type="text" name="album" required class="form-control" id="album">
                </div>  

                <div class="form-group">
                    <label for="exampleInputPassword1" class="title-feild">Name</label>
                    <input type="text" name="name" required class="form-control" id="name">
                </div>  
                <div class="form-group">
                    <label for="exampleInputPassword1" class="title-feild">Artist</label>
                    <input type="text" name="artist" required class="form-control" id="artist">
                </div>  

                <div class="form-group">
                    <label for="exampleInputPassword1" class="title-feild">Lyric</label>
                    <textarea class="form-control" id="lyric" name="lyric" style="height: 200px" rows="3"></textarea>
                </div>  
                <div class="form-row align-items-center" style="margin-top: 30px;">
                    <div class="col-auto my-1">
                        <label class="mr-sm-2 sr-only" for="inlineFormCustomSelect">Preference</label>
                        <select class="custom-select mr-sm-2" id="inlineFormCustomSelect" name="genres" style="width: 230px;">
                            <option selected>Genres</option>
                            <%
                                for (int i = 0; i < categoriesData.size(); i++) {
                            %>
                            <option value="<%=categoriesData.get(i).getId()%>"><%=categoriesData.get(i).getName()%></option>
                            <%}%>
                        </select>
                    </div>
                    <div class="form-check" style="margin-top: 0px;margin-right: 19px;margin-left: 20px;">
                        <input class="form-check-input" type="checkbox" name="issingle" value="issingle" id="gridCheck1">
                        <label class="form-check-label" for="gridCheck1">Is single?</label>
                    </div>

                </div>
                <div class="form-group">
                    <button type="submit" style=" font-weight: 700;width: 100px" class="btn btn-success">Upload</button>
                </div>  

            </form>


        </div>







        <footer class="page-footer font-small special-color-dark pt-4">

            <!-- Footer Elements -->
            <div class="container">

                <!-- Social buttons -->
                <ul class="list-unstyled list-inline text-center">
                    <li class="list-inline-item">
                        <a href="https://www.facebook.com/ng0cth1nh/" class="btn-floating btn-fb mx-1">
                            <img src="https://img.icons8.com/fluent/48/000000/facebook-new.png" />
                        </a>
                    </li>
                    <li class="list-inline-item">
                        <a href="https://www.instagram.com/ng0cth1nh/" class="btn-floating btn-tw mx-1">
                            <img src="https://img.icons8.com/fluent/48/000000/instagram-new.png" />
                        </a>
                    </li>
                    <li class="list-inline-item">
                        <a href="https://twitter.com/thinhvu4620" class="btn-floating btn-dribbble mx-1">
                            <img src="https://img.icons8.com/color/48/000000/twitter-circled.png" />
                        </a>
                    </li>
                </ul>
                <!-- Social buttons -->

            </div>
            <!-- Footer Elements -->

            <!-- Copyright -->
            <div class="footer-copyright text-center py-3">©2020 Copyright:
                <a href="https://genius.com/"> Genius.com</a>
            </div>
            <!-- Copyright -->

        </footer>










        <script src="https://www.gstatic.com/firebasejs/8.0.0/firebase-app.js"></script>
        <script src="https://www.gstatic.com/firebasejs/8.0.0/firebase-storage.js"></script>
        <script src="https://www.gstatic.com/firebasejs/8.0.0/firebase-analytics.js"></script>



        <script>

                            var firebaseConfig = {
                            apiKey: "AIzaSyDcd4d3x3AkXIqlC8I_mJI3GVgzIgzAK6A",
                                    authDomain: "web-project-e04ed.firebaseapp.com",
                                    databaseURL: "https://web-project-e04ed.firebaseio.com",
                                    projectId: "web-project-e04ed",
                                    storageBucket: "web-project-e04ed.appspot.com",
                                    messagingSenderId: "457696683739",
                                    appId: "1:457696683739:web:53e8283196c98548174efe",
                                    measurementId: "G-PFHQNR6ZJ2",
                            };
                            // Initialize Firebase
                            firebase.initializeApp(firebaseConfig);
                            firebase.analytics();
                            function uploadPhoto() {

                            const ref = firebase.storage().ref();
                            const file = document.querySelector("#photo").files[0];
                            const songfile = document.querySelector("#chooseFile").files[0];
                            const name = new Date() + "-" + file.name;
                            const sname = new Date() + "-" + songfile.name;
                            const metadata = {
                            contentType: file.type,
                            };
                            const metadata2 = {
                            contentType: songfile.type,
                            };
                            const task = ref.child(name).put(file, metadata);
                            task
                                    .then(snapshot => snapshot.ref.getDownloadURL())
                                    .then((url) => {

                                    document.getElementById("cover").value = url;
                                    document.getElementById("images").setAttribute("src", url);
                                    })
                                    .catch(console.error);
                            
                            
                            
                            const task2 = ref.child(sname).put(songfile, metadata2);
                                  
                            task2
                                    .then(snapshot => snapshot.ref.getDownloadURL())
                                    .then((url) => {

                                    document.getElementById("song").value = url;
                                  
                                   
                                    })
                                    .catch(console.error);


                            };
//                            };


                            $('#chooseFile').bind('change', function () {
                            var filename = $("#chooseFile").val();
                            if (/^\s*$/.test(filename)) {
                            $(".file-upload").removeClass('active');
                            $("#noFile").text("No file chosen...");
                            }
                            else {
                            $(".file-upload").addClass('active');
                            $("#noFile").text(filename.replace("C:\\fakepath\\", ""));
                            }
                            });
        </script>
        <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>


    </body>

</html>