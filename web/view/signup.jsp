<%-- 
    Document   : signup
    Created on : Nov 7, 2020, 1:54:09 PM
    Author     : Vu Ngoc Thinh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html id="app" lang="en" dir="ltr" ng-csp ng-strict-di>

    <head>
        <meta charset="utf-8">
        <title ng-bind="( & #39; loginTitle & #39; | localize) + & #39; - Spotify & #39;">Sign up</title>
        <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
        <link rel="icon" href="images/circle.png">
        <link rel="stylesheet" href="css/signup.css">
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
    </head>

    <body>
        <div class="header">
            <a href="home"><img src="images/circle_black.png" alt="" class="logo">
            <img src="images/genius.png" alt="" class="logo-title"></a>
        </div>


        <div class="container">
            <h2 class="lable title-feild" id="login-lable">Sign up for free to start listening.</h2>
            <form class="form-login" id="form" method="POST" action="../genius/signup">
                <div class="form-group">
                    <label for="exampleInputEmail1" class="title-feild">What's your email?</label>
                    <input type="email" name="email" required class="form-control" id="email" aria-describedby="emailHelp" placeholder="Enter your email.">
                </div>
                <div class="form-group" style="box-sizing: border-box;">
                    <label for="exampleInputEmail1" class="title-feild">Confirm your email</label>
                    <input type="email" required class="form-control" id="re-email" aria-describedby="emailHelp" placeholder="Enter your email again.">
                    <span style="color: crimson;margin-top: 15px;
                          font-weight: 600;
                          display: none;" id="error-reemail">
                        <span class="material-icons" style="font-size: 18px;
                              margin-right: 5px;
                              margin-top: 3px;
                              margin-left: 5px;
                              font-weight: 600;">error_outline</span>The email addresses don't match.</span>
                </div>
                <div class="form-group">
                    <label for="exampleInputPassword1" class="title-feild">Create a password</label>
                    <input type="password" name="password" required class="form-control" id="password" placeholder="Create a password.">
                </div>
                <div class="form-group">
                    <label for="exampleInputPassword1" class="title-feild">What should we call you?</label>
                    <input type="text" name="name" required class="form-control" id="name" placeholder="Enter a profile name.">
                </div>

                <div class="form-group">
                    <label for="birth_date" class="title-feild">What's your date of birth?</label>
                    <div class="contain">

                        <div class="ngay">
                            <label for="date" class="title-feild">Day</label>
                            <input type="text" maxlength="2" required class="form-control" name="date" id="date" placeholder="DD" />

                        </div>

                        <div class="thang">
                            <label for="month" class="title-feild">Month</label>
                            <select name="month" id="month" required class="form-control">
                                <option disabled value>Month</option>
                                <option value="01">January</option>
                                <option value="02">February</option>
                                <option value="03">March</option>
                                <option value="04">April</option>
                                <option value="05">May</option>
                                <option value="06">June</option>
                                <option value="07">July</option>
                                <option value="08">August</option>
                                <option value="09">September</option>
                                <option value="10">October</option>
                                <option value="11">November</option>
                                <option value="12">December</option>
                            </select>
                        </div>
                        <div class="nam">
                            <label for="year" class="title-feild">Year</label>
                            <input type="text" maxlength="4" required class="form-control" name="year" id="year" placeholder="YYYY" />                    
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
                    <label for="gender" class="title-feild">What's your gender?</label>
                    <div class="form-flex">
                        <input type="radio" name="gender" value="male" id="male" checked="checked" />
                        <label for="male" id="male-title">Male</label>

                        <input type="radio" name="gender" value="female" id="female" />
                        <label for="female" id="female-title">Female</label>
                    </div>
                </div>
                <div class="form-group floorm-check">
                    <button type="submit" class="btn btn-success">SIGN UP</button>
                </div>
            </form>
            <hr class="form-group">
            <h6 class="lable title-feild">Have an account?
                <a href="login">Log in</a>.
            </h6>
        </div>




        <script src="script/signup.js"></script>
        <script src="https://www.gstatic.com/firebasejs/8.0.0/firebase-app.js"></script>
        <script src="https://www.gstatic.com/firebasejs/8.0.0/firebase-storage.js"></script>
        <script src="https://www.gstatic.com/firebasejs/8.0.0/firebase-analytics.js"></script>
        <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
    </body>

</html>