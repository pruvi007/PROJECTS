<html>
<title>BROOMLING TECH</title>
<head>
			 <script src = "https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
             <script src = "//maxcdn.bootstrapcdn.com/bootstrap/3.3.1/js/bootstrap.min.js"></script>
           	 <link href = "//maxcdn.bootstrapcdn.com/bootstrap/3.3.1/css/bootstrap.min.css" rel = "stylesheet">

            <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css">

            

               <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.6.9/angular.min.js"></script>
                <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.6.9/angular-resource.min.js">
                </script>
                <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.6.9/angular-route.min.js">
               </script>
                <script src="https://cdn.firebase.com/js/client/2.0.4/firebase.js"></script>
                <script src="https://cdn.firebase.com/libs/angularfire/0.9.0/angularfire.min.js"></script>

             <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

             <style>
              #app_clock
              {
                position: fixed;
                top:1%;
                left:45%;
              }
              #panel1
              {
                  position: absolute;
                  left:40%;
              }
              #panel2
              {
                  position:absolute;
                  left:5%;
              }
              img
              {
                 border-radius: 50%;

              }
              .carousel.slide {
                max-width: 500px;
              }
              

              .carousel-caption {
                  position: absolute;
                  z-index: 1;
                  display:table;
                  width:100%;
                  height:100%;
              }

              .carousel-caption div {
                  display:table-cell;
                  vertical-align: middle;
                  text-align:center;
              }

              .trickcenter {
                  position: absolute;
                  top: 84%; // 50% for perfect centering
                  left: 80%;
                  transform: translate(-20%, -50%);
              }

               /* Style the Image Used to Trigger the Modal */
                #myImg {
                    border-radius: 5px;
                    cursor: pointer;
                    transition: 0.3s;
                }

                #myImg:hover {opacity: 0.7;}

                /* The Modal (background) */
                .modal {
                    display: none; /* Hidden by default */
                    position: fixed; /* Stay in place */
                    z-index: 5; /* Sit on top */
                    padding-top: 100px; /* Location of the box */
                    left: 0;
                    top: 0;
                    width: 100%; /* Full width */
                    height: 100%; /* Full height */
                    overflow: auto; /* Enable scroll if needed */
                    background-color: rgb(0,0,0); /* Fallback color */
                    background-color: rgba(0,0,0,0.9); /* Black w/ opacity */
                }

                /* Modal Content (Image) */
                .modal-content {
                    margin: auto;
                    display: block;
                    width: 80%;
                    max-width: 700px;
                }

                /* Caption of Modal Image (Image Text) - Same Width as the Image */
                #caption {
                    margin: auto;
                    display: block;
                    width: 80%;
                    max-width: 700px;
                    text-align: center;
                    color: #ccc;
                    padding: 10px 0;
                    height: 150px;
                }

                /* Add Animation - Zoom in the Modal */
                .modal-content, #caption {
                    animation-name: zoom;
                    animation-duration: 1.0s;
                }

                @keyframes zoom {
                    from {transform:scale(0)}
                    to {transform:scale(1)}
                }

                /* The Close Button */
                .close {
                    position: absolute;
                    top: 15px;
                    right: 35px;
                    color: #f1f1f1;
                    font-size: 40px;
                    font-weight: bold;
                    transition: 0.3s;
                }

                .close:hover,
                .close:focus {
                    color: #bbb;
                    text-decoration: none;
                    cursor: pointer;
                }

                /* 100% Image Width on Smaller Screens */
                @media only screen and (max-width: 500px){
                    .modal-content {
                        width: 50%;
                        z-index:5;
                    }
                } 
                #door1
                {
                    position:absolute;
                    left:10%;
                }
                 #door2
                {
                    position:absolute;
                    left:40%;
                }
                 #door3
                {
                    position:absolute;
                    left:70%;
                }
                #bd1
                {
                    position: absolute;
                    left:16%;
                    top:27%;
                    z-index:10;
                }
                #bd2
                {
                    position: absolute;
                    left:44%;
                    top:27%;
                    z-index:10;
                }
                #bd3
                {
                    position: absolute;
                    left:75%;
                    top:27%;
                    z-index:10;
                }
                #text1
                {
                    position:absolute;
                    left:12%;
                    top:35%;
                    z-index:-1;

                }
                #text2
                {
                    position:absolute;
                    left:42%;
                    top:35%;
                    z-index:-1;
                }
                #text3
                {
                    position:absolute;
                    left:72%;
                    top:35%;
                    z-index:-1;
                }
                body
                {
                   background-image: url("back2.jpg");
                   background-repeat: no-repeat;
                   background-size: 100%;
                }
                .panel-primary > .panel-heading{
                  background: #333;
                  color:gray;               

                }
                .panel-primary
                {
                    border-color: black;
                    background:#D3D3D3;
                }
                #log
                {
                  position: absolute;
                  right:2%;
                  top:2%;
                }

                #log1
                {
                  position: absolute;
                  left:2%;
                  top:2%;
                }
    
         	</style>

</head>
<body>

    <div id="log">
      
    <a href="#" class="btn btn-danger">
          <span class="glyphicon glyphicon-log-out"></span><font size="3" face="courier new">&nbspLog out</font>
    </a>
   </div>

   <div id="log1">
    <a href="#" class="btn btn-info">
          <span class="glyphicon glyphicon-home"></span><font face="courier new" size="3"> SOCIAL WEB</font>
        </a>
    </div>

    <div id="app_clock" ng-app="clock">
            <div ng-controller="myCtrl">
            <font size="6" face="Courier New" color:"light blue"><b>{{time}}</b> </font>
            </div>
      </div>
      <script>
        var app_clock = angular.module("clock",[]);
                  app_clock.controller('myCtrl',function($scope,$interval)
                  {
                        $scope.time = new Date().toLocaleTimeString();
                        $interval(function()
                              {
                                    $scope.time = new Date().toLocaleTimeString();
                              },1000);
                  });

      </script>


                <br><br><br>
		              <ul class="nav nav-tabs">
                                <li class="active"><a data-toggle="tab" href="#home"><font size="4" face="courier new" color="black"><b>ABOUT ME</b></font></a></li>
                                <li><a data-toggle="tab" href="#menu1"><font size="4" face="courier new" color="black"><b>LATEST BLOG</b></font></a></li>
                                <li><a data-toggle="tab" href="#menu2"><font size="4" face="courier new" color="black"><b>GALLERY</b></font></a></li>
                              </ul>

                              <div class="tab-content">
                                <div id="home" class="tab-pane fade in active">
                                    <center>
                                      <font size="5" color="black"><b>WELCOME PAGE</b></font>
                                  <br><br>
                                  <!--PANEL-->
                                  <div id="panel1">

                                    <div class="mx-auto" style="width: 700px;">
                                    <div class="panel panel-primary">
                                    <div class="panel-heading">
                                      <h1 class="panel-title"><b>ABOUT ME</b></div>
                                    <div class="panel-body">
                                       <img src="user.png" width="50" class="img-responsive">
                                      <hr>

                                      <p><font size="4" face="courier new"><b>
                                       A<br>
                                        B<br>
                                         O<br>
                                          U<br>
                                           T<br>
                                           <br>
                                           <br>

                                          Y<br>
                                             O<br>
                                              U<br>

                                     </b></font></p>
                                    </div>
                                  </h1></div></div>
                                </div>

                                <div id="panel2">

                                    <div class="mx-auto" style="width: 400px;">
                                    <div class="panel panel-primary">
                                    <div class="panel-heading">
                                      <h1 class="panel-title"><b>pruvi007</b></div>
                                    <div class="panel-body">
                                      <img src="user.png" width="180" class="img-responsive">
                                      <font size="5" face="courier new"><b>pruvi007</b></font>
                                      <br>
                                      <p><font size="3" face="courier new">THE BIGGER THEY ARE THE HARDER THEY FALL !</font></p>

                                      <font size="3" face="courier new"><b>
                                      NAME: PRAVEEN KUMAR<br>
                                      ALIAS: pruvi007<br>
                                      Ph No: 7903471770<br>
                                      Email: pruvi007@gmail.com<br></b></font>
                                    </div>
                                  </h1></div></div>
                              </div>
                              <!--END-->
                                  </center>
                                </div>

                                <!--MENU2-->
                                <div id="menu1" class="tab-pane fade in active">
                                    <center>
                                    <font size="5" color="black"><b>SOCIAL PAGE</b></font><br>
                                  </center>

                                    <div id="bd1">
                                    <button class="btn btn-success" onclick="myFunction()">FB_POSTS</button>
                                    </div>

                                    <div id="bd2">
                                    <button class="btn btn-success" onclick="myFunction2()">TWITTER_TWEETS</button>
                                    </div>

                                    <div id="bd3">
                                    <button class="btn btn-success" onclick="myFunction3()">INSTA_POSTS</button>
                                    </div>
                                  
                                    <center>
                                  <br><br>
                                  <div id="door1">
                                  <img src="door_fb.JPG" style="height:70%;width:80%;border-radius: 0%;">
                                  </div>

                                  <div id="door2">
                                  <img src="door_twitter.JPG" style="height:70%;width:80%;border-radius: 0%;">
                                  </div>

                                  <div id="door3">
                                  <img src="door_insta.JPG" style="height:70%;width:80%;border-radius: 0%;">
                                  </div>

                                  <div id="text1">
                                    <center>
                                    <font size="4" face="courier new">
                                      fb_handle: <br><b>pruvi007</b><br>NOTIFICATIONS</font><br><br><br>
                                    <button class="btn btn-danger"><a href="#"><font size="4" face="courier new" color="white">LINK TO PROFILE</font></a></button><br>
                                    <center>
                                  </div>

                                  <div id="text2">
                                    <center>
                                    <font size="4" face="courier new">
                                      twitter_handle: <br><b>pruvi007</b><br>NOTIFICATIONS</font><br><br><br>
                                    <button class="btn btn-danger"><a href="#"><font size="4" face="courier new" color="white">LINK TO PROFILE</font></a></button><br>
                                    <center>
                                  </div>

                                  <div id="text3">
                                    <center>
                                    <font size="4" face="courier new">
                                      insta_handle: <br><b>pruvi007</b><br>NOTIFICATIONS</font><br><br><br>
                                    <button class="btn btn-danger"><a href="#"><font size="4" face="courier new" color="white">LINK TO PROFILE</font></a></button><br>
                                    <center>
                                  </div>
                              
                              </center>
                                </div>

                                <script>
                                        function myFunction() {
                                          var x = document.getElementById("door1");
                                          if (x.style.display === "none") {
                                              x.style.display = "block";
                                          } else {
                                              x.style.display = "none";
                                          }
                                      } 
                                      function myFunction2() {
                                          var x = document.getElementById("door2");
                                          if (x.style.display === "none") {
                                              x.style.display = "block";
                                          } else {
                                              x.style.display = "none";
                                          }
                                      } 
                                      function myFunction3() {
                                          var x = document.getElementById("door3");
                                          if (x.style.display === "none") {
                                              x.style.display = "block";
                                          } else {
                                              x.style.display = "none";
                                          }
                                      } 

                                </script>



                                <div id="menu2" class="tab-pane fade in active">
                                    <center>
                                  
                                   <center>
                                    <font size="5" color="black"><b>GALLERIA</b></font>
                                  </center>
                                    <br>
                                      <!--Carousel-->
                                      <div id="myCarousel" class="carousel slide" data-ride="carousel">
                                        <!-- Indicators -->
                                        <ol class="carousel-indicators">
                                          <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
                                          <li data-target="#myCarousel" data-slide-to="1"></li>
                                          <li data-target="#myCarousel" data-slide-to="2"></li>
                                          <li data-target="#myCarousel" data-slide-to="3"></li>
                                          
                                        </ol>

                                        <!-- Wrapper for slides -->
                                        <div class="carousel-inner">
                                          <div class="item active">
                                            <img src="car1.jpeg"   style="border-radius: 0%; height:70%;width:150%;">
                                            <div class="carousel-caption trickcenter">
                                             
                                              <div><font size="4" face="courier new"><b>NIGHT SCENARY</b></font></div>
                                           
                                          </div>
                                          </div>

                                          <div class="item">
                                            <img src="car2.jpg"   style="border-radius: 0%;height:70%;width:110%;">
                                            <div class="carousel-caption trickcenter">
                                              <div><font size="4" face="courier new" color="black"><b>PERFECT AVENUE</b></font></div>
                                          </div>
                                          </div>

                                          <div class="item">
                                            <img src="car2.png"   style="border-radius: 0%;height:70%;width:110%;">
                                            <div class="carousel-caption trickcenter">
                                              <div><font size="4" face="courier new"><b>JON SNOW</b></font></div>
                                          </div>
                                          </div>

                                           <div class="item">
                                            <img src="car3.jpg"   style="border-radius: 0%;height:70%;width:110%;">
                                            <div class="carousel-caption trickcenter">
                                              <div><font size="4" face="courier new"><b>GUITAR!GUITAR!!</b></font></div>
                                          </div>
                                          </div>

                                          
                                        </div>

                                        <!-- Left and right controls -->
                                        <a class="left carousel-control" href="#myCarousel" data-slide="prev">
                                          <span class="glyphicon glyphicon-chevron-left"></span>
                                          <span class="sr-only">Previous</span>
                                        </a>
                                        <a class="right carousel-control" href="#myCarousel" data-slide="next">
                                          <span class="glyphicon glyphicon-chevron-right"></span>
                                          <span class="sr-only">Next</span>
                                        </a>
                                      </div>
                                      <!--CAROUSEL-->
                                      <br>

                                      

                                     
                                    </div> 


                                     

                                 
                              </center>
                                </div>
                            </div>

                            


</body>
</html>
