<%-- 
    Document   : signup
    Created on : Nov 7, 2020, 1:54:09 PM
    Author     : Vu Ngoc Thinh
--%>

<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.sql.Date"%>
<%@page import="model.User"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html id="app" lang="en" dir="ltr" ng-csp ng-strict-di>

    <head>
        <title>Account - Update</title>
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
                width: 570px;
            }
            .form-group{
                width: 100%;
            }
            #login-lable{
                margin-top: 50px;
                margin-bottom: 30px;
                margin-left: 270px;
                font-size: 50px;
            }
        </style>
    </head>

    <body>
        <%@include file="header.jsp"%>
        <%
            User u = (User) request.getAttribute("u");
            Date date = u.getDob();
            SimpleDateFormat formatter = new SimpleDateFormat("MM/dd/yyyy");
            String strDate = formatter.format(date);
            String Day = strDate.substring(3, 5);
            String Year = strDate.substring(6, strDate.length());
            String Month = strDate.substring(0, 2);


        %>



        <div class="container">
            <h1 id="login-lable">Edit profile</h1>
            
          
            
            
            
            <form class="form-login" id="form" method="POST" action="../genius/edit" >
                  <div class="form-group">
                    <label for="exampleInputPassword1" class="title-feild">Avatar</label>
                    <div style="display: flex;">
                        <img src="<%=u.getAvatar()%>" id="images" style="width: 60px;height: 60px;border: 1px solid black
                             ;margin-right: 10px">
                        <input type="file" style="margin-top: 30px" class="form-control-file" id="photo">
                        <button onclick="uploadPhoto()" class="btn btn-success">Save</button>
                    </div>            
                  </div>   
                
                    <input type="text" style="display: none" class="form-control-file" name="photoAvatar" id="photoAvatar">
                

                <div class="form-group">
                    <label for="exampleInputPassword1" class="title-feild">Name</label>
                    <input type="text" name="name" required class="form-control" id="name" value="<%=u.getName()%>">
                </div>
                <div class="form-group">
                    <label for="exampleInputPassword1" class="title-feild">New password</label>
                    <input type="password" name="password" required class="form-control" id="password">
                </div>
                <div class="form-group">
                    <label for="exampleInputPassword1" class="title-feild">Repeat new password</label>
                    <input type="password" name="repassword" required class="form-control" id="rePassword">
                    <span style="color: crimson;margin-top: 15px;
                          font-weight: 600;
                          display: none;" id="error-repassword">
                        <span class="material-icons" style="font-size: 18px;
                              margin-right: 5px;
                              margin-top: 3px;
                              margin-left: 5px;
                              font-weight: 600;">error_outline</span>The passwords don't match.</span>
                </div>

                <div class="form-group">
                    <label for="exampleInputEmail1" class="title-feild">Email</label>
                    <input type="email" name="email" required class="form-control" id="email" value="<%=u.getEmail()%>">
                </div>


                <div class="form-group">
                    <label for="birth_date" class="title-feild">Birthday</label>
                    <div class="contain">

                        <div class="ngay">
                            <label for="date" class="title-feild">Day</label>
                            <input value="<%=Day%>" type="text" maxlength="2" required class="form-control" name="date" id="date" placeholder="DD" />

                        </div>

                        <div class="thang">
                            <label for="month" class="title-feild">Month</label>
                            <select name="month" id="month" required class="form-control">
                                <option disabled value>Month</option>
                                <%if (Day.equals("01")) {%>
                                <option value="01" selected>January</option>
                                <%} else {%><option value="01">January</option><%}%>

                                <%if (Day.equals("02")) {%>
                                <option value="02" selected>February</option>
                                <%} else {%><option value="02">February</option><%}%>

                                <%if (Day.equals("03")) {%>
                                <option value="03" selected>March</option>
                                <%} else {%><option value="03">March</option><%}%>

                                <%if (Day.equals("04")) {%>
                                <option value="04" selected>April</option>
                                <%} else {%><option value="04">April</option><%}%>

                                <%if (Day.equals("05")) {%>
                                <option value="05" selected>May</option>
                                <%} else {%><option value="05">May</option><%}%>

                                <%if (Day.equals("06")) {%>
                                <option value="06" selected>June</option>
                                <%} else {%><option value="06">June</option><%}%>

                                <%if (Day.equals("07")) {%>
                                <option value="07" selected>July</option>
                                <%} else {%><option value="07">July</option><%}%>

                                <%if (Day.equals("08")) {%>
                                <option value="08" selected>August</option>
                                <%} else {%><option value="08">August</option><%}%>

                                <%if (Day.equals("09")) {%>
                                <option value="09" selected>September</option>
                                <%} else {%><option value="09">September</option><%}%>

                                <%if (Day.equals("10")) {%>
                                <option value="10" selected>October</option>
                                <%} else {%><option value="10">October</option><%}%>

                                <%if (Day.equals("11")) {%>
                                <option value="11" selected>November</option>
                                <%} else {%><option value="01">November</option><%}%>

                                <%if (Day.equals("12")) {%>
                                <option value="12" selected>December</option>
                                <%} else {%><option value="12">December</option><%}%>



                            </select>
                        </div>
                        <div class="nam">
                            <label for="year" class="title-feild">Year</label>
                            <input type="text" value="<%=Year%>" maxlength="4" required class="form-control" name="year" id="year" placeholder="YYYY" />                    
                        </div>
                    </div>
                    <span style="color: crimson;margin-top: 15px;
                          font-weight: 600;
                          display: none;" id="error-date">
                        <span class="material-icons" style="font-size: 18px;
                              margin-right: 5px;
                              margin-top: 3px;
                              margin-left: 5px;
                              font-weight: 600;">error_outline</span>Date is invalid.</span>
                </div>
                <div class="form-group">
                    <label for="gender" class="title-feild">Gender</label>
                    <div class="form-flex">
                        <%if (u.isGender()) {
                        %>
                        <input type="radio" name="gender" value="male" id="male" checked="checked" />
                        <label for="male" id="male-title">Male</label>
                        <input type="radio" name="gender" value="female" id="female" />
                        <label for="female" id="female-title">Female</label>
                        <%} else {%>
                        <input type="radio" name="gender" value="male" id="male" />
                        <label for="male" id="male-title">Male</label>
                        <input type="radio" name="gender" value="female" id="female" checked="checked"/>
                        <label for="female" id="female-title">Female</label>
                        <%}%>



                    </div>
                </div>


                <div class="form-group floorm-check" id="">
                    <input type="submit" name="event" class="btn btn-success" style="font-weight: 700" value="SAVE PROFILE"/>
                </div>
            </form>

        </div>


        <script src="script/edit.js"></script>
        <script src="https://www.gstatic.com/firebasejs/8.0.0/firebase-app.js"></script>
        <script src="https://www.gstatic.com/firebasejs/8.0.0/firebase-storage.js"></script>
        <script src="https://www.gstatic.com/firebasejs/8.0.0/firebase-analytics.js"></script>



        <script>
//           $('#myForm').submit(function () {
//               alert('Handler for .submit() called.');
//               return false;
//           });

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
                const name = new Date() + "-" + file.name;
                const metadata = {
                    contentType: file.type,
                };
                const task = ref.child(name).put(file, metadata);
                task
                        .then(snapshot => snapshot.ref.getDownloadURL())
                        .then((url) => {

                         document.getElementById("photoAvatar").value = url;

                         document.getElementById("images").setAttribute("src" , url);
                           
                         document.getElementById("avatar").setAttribute("src" , url);
                        })
                        .catch(console.error);
            };


        </script>
        <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>



        <%@include file="footer.jsp"%>   
    </body>

</html>