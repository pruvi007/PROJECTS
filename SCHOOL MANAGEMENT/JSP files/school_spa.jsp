<%@ page import = "java.io.*" %>
<%@ page import = "java.sql.*" %>
<%@ page import = "java.util.*" %>

<html>
<title>SCHOOL_SPA</title>
      <head>
            <!--minfied CSS compiled -->
             <script src = "https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
             <script src = "//maxcdn.bootstrapcdn.com/bootstrap/3.3.1/js/bootstrap.min.js"></script>
            <link href = "//maxcdn.bootstrapcdn.com/bootstrap/3.3.1/css/bootstrap.min.css" rel = "stylesheet">

            <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css">

            <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
            <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css%22">

               <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.6.9/angular.min.js"></script>
                <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.6.9/angular-resource.min.js">
                </script>
                <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.6.9/angular-route.min.js">
               </script>
                <script src="https://cdn.firebase.com/js/client/2.0.4/firebase.js"></script>
                <script src="https://cdn.firebase.com/libs/angularfire/0.9.0/angularfire.min.js"></script>

             <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
             <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
             <script src="http://code.angularjs.org/1.2.4/angular-route.js"></script>
             <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.0/umd/popper.min.js"></script>
             <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
 
              <script src='https://code.responsivevoice.org/responsivevoice.js'></script>
             
            <style>
                  
              body{
                
                background-size: 120%;
              }
              .panel-header{
                color:white;
                background-color: black;
                
                border-color: black;
                

              }
             
              #app_clock
              {
                position: fixed;
                top:1%;
                left:3%;
              }

              #scroll
              {
                overflow:scroll;
                height:260px;
              }
                 
                  
                  #quote
                  {
                        position: fixed;
                        top:2%;
                        left:42%;

                  }

                  .dropbtn {
                      background-color: #3498DB;
                      color: white;
                      padding: 16px;
                      font-size: 16px;
                      border: none;
                      cursor: pointer;
                  }

                  /* Dropdown button on hover & focus */
                  .dropbtn:hover, .dropbtn:focus {
                      background-color: #2980B9;
                  }

                  /* The container <div> - needed to position the dropdown content */
                  .dropdown {
                      position: relative;
                      display: inline-block;
                  }

                  /* Dropdown Content (Hidden by Default) */
                  .dropdown-content {
                      display: none;
                      position: absolute;
                      background-color: #f1f1f1;
                      min-width: 160px;
                      box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
                      z-index: 1;
                  }

                  /* Links inside the dropdown */
                  .dropdown-content a {
                      color: black;
                      padding: 12px 16px;
                      text-decoration: none;
                      display: block;
                  }

                  /* Change color of dropdown links on hover */
                  .dropdown-content a:hover {background-color: #ddd}

                  /* Show the dropdown menu (use JS to add this class to the .dropdown-content container when the user clicks on the dropdown button) */
                  .show {display:block;}

                   @media only screen and (max-width: 700px){
                      .modal-content {
                          width: 100%;
                      }
                  }
                  .btn
                  {
                      background-color: #323232;
                      color:white;
                  }
                  .modal-content {
                    position: absolute;
                    left:-30%;
                    overflow: auto;
                    margin: auto;
                    display: block;
                    width: 160%;
                    max-width: 1400px;
                }

                .modal {
                    display: none; /* Hidden by default */
                    position: fixed; /* Stay in place */
                    z-index: 10000; /* Sit on top */
                     /* Location of the box */
                    left: 0%;
                    top: 0px;
                    width: 100%; /* Full width */
                    height: 100%; /* Full height */
                    overflow: auto; /* Enable scroll if needed */
                    background-color: rgb(0,0,0); /* Fallback color */
                    background-color: rgba(0,0,0,0.9); /* Black w/ opacity */
                }
                .modal-header
                  {    
     
                        background-color: #60603F;
                  }


                  .modal-backdrop {
                    z-index: -1;
                  }
                  
                  #view_div
                  {
                      position: fixed;
                      left:1%;
                      top:30%;
                     
                  }
                  #view_acc,#marks_acc
                  {
                      position: absolute;
                      top:30%;
                      left:18%;
                     
                      background-color: white;
                  }

                  #marks_div
                  {
                      position: fixed;
                      top:50%;
                      left:1%;

                  }
                  #add_div
                  {
                      position: fixed;
                      left:1%;
                      top:40%;
                  }
                  #update_div
                  {
                      position: fixed;
                      left:1%;
                      top:60%;
                  }
                  #rem_div
                  {
                      position: fixed;
                      left:1%;
                      top:70%;
                  }
                  #pay_div
                  {
                      position: fixed;
                      left:1%;
                      top:80%;
                  }
                  #c1,#c2,#c3,#c4,#c5,#c6,#c7,#c8,#c9,#c10,#c_2,#c_1,#c_0
                  {
                      border: 3px solid red;
                      padding: 20px; 
                      width: 800px;
                      resize: both;
                      overflow: auto;
                      position:absolute;
                      top:30%;
                      left:38%;
                  }

                  #pc1,#pc2,#pc3,#pc4,#pc5,#pc6,#pc7,#pc8,#pc9,#pc10,#pc_2,#pc_1,#pc_0
                  {
                      border: 3px solid blue;
                      padding: 20px; 
                      width: 800px;
                      resize: both;
                      overflow: auto;
                      position:absolute;
                      top:30%;
                      left:38%;
                  }
                  #add_stu,#rem_stu
                  {
                     position: absolute;
                     padding: 20px; 
                     border: 3px solid black;
                     width: 900px;
                     top:30%;
                     left:24%;
                  }

                  #home,#menu1,#menu2
                  {
                      overflow: auto;
                  }

                  .affix {
                      position: fixed;
                      top: 0;
                      width: 100%;
                      z-index: 9999 !important;
                  }
                  .affix + .container-fluid {
                      position: fixed;
                      padding-top: 70px;
                  }

                  #fix{
                    position: fixed;
                    top:10%;
                    z-index:100;
                    width:100%;
                  }
                  
                  #fixside
                  {
                      position: fixed;
                      background-color: #323232;
                      height: 200%;
                      
                      width:15%;
                      top:10%;
                      z-index:-1;


                  }
                  #toppest{
                    position:fixed;
                    width:100%;
                    height:10%;
                    background-color: #323232;
                    z-index:9999;
                  }
                  #img9
                  {
                    position: absolute;
                    padding: 20px; 
                    border: 3px solid #323232;
                    top:5%;
                    left:75%;

                  }
                  #bharti
                  {
                      position:absolute;
                      top:22%;
                      left:33%;
                  }

                   #log
                  {
                    position: fixed;
                    right:2%;
                    top:2%;
                    z-index:10000;
                  }
                  #ajax_name
                  {
                      position: absolute;
                      top:15%;
                      left:13%;
                      z-index:10000;
                  }
                  #ajax_fat
                  {
                      position: absolute;
                      top:15%;
                      left:55%;
                      z-index:10000;
                  }
                  #ajax_mot
                  {
                      position: absolute;
                      top:31%;
                      left:13%;
                      z-index:10000;
                  }
                  #ajax_dob
                  {
                      position: absolute;
                      top:31%;
                      left:55%;
                      z-index:10000;
                  }
                  #ajax_class
                  {
                      position: absolute;
                      top:47%;
                      left:13%;
                      z-index:10000;
                  }
                  #ins
                  {
                    float:left;
                    border:5px solid black;
                    padding:30px;
                  }

                 
             </style>

             

             
      </head>

       <body>
  <!--JDBC CONNECTION WITH MYSQL-->    
<%
      Class.forName("com.mysql.jdbc.Driver");
      String connectionURL= "jdbc:mysql://localhost:3306/Diablo";

      Connection connection = null;
      connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/school","root","pagal.com");

      Statement stmt=null;
      Statement stmt2 = null;
      Statement stmt3 = null;
      PreparedStatement prep=null;
      ResultSet res=null;
      ResultSet res2=null;
      ResultSet res3 = null;
      stmt = connection.createStatement();
      stmt2 = connection.createStatement();
      stmt3 = connection.createStatement();      

%>  
<!--CONNECTION DONE-->
          

                 
                  <!--LOGOUT BUTTON-->
                  <div id="log">
                     <a href="index.jsp" class="btn btn-danger">
                      <span class="glyphicon glyphicon-log-out"></span><font size="3" face="courier new">&nbspLog out</font>
                    </a>
                  </div>
                 
                       
                       <!--RESPONSIVE VOICE API-->
<script>
        responsiveVoice.speak("WELCOME TO shiksha bharti", "UK English Female");

        function say_menu2(){
          responsiveVoice.speak("WELCOME TO Student Corner. The Records of Students are managed Here!", "UK English Female");
        }
</script>
<!--VOICE API END-->


      <!--ACCORIDION-->
      <script>
            var acc = document.getElementsByClassName("accordion");
              var i;

              for (i = 0; i < acc.length; i++) {
                  acc[i].addEventListener("click", function() {
                      /* Toggle between adding and removing the "active" class,
                      to highlight the button that controls the panel */
                      this.classList.toggle("active");

                      /* Toggle between hiding and showing the active panel */
                      var panel = this.nextElementSibling;
                      if (panel.style.display === "block") {
                          panel.style.display = "none";
                      } else {
                          panel.style.display = "block";
                      }
                  });
              } 
      </script>
      <!--END ACC-->

      <!--ANGULAR CLOCK-->  
          <div id="toppest"> 
              <div id="app_clock" ng-app="clock">
                    <div ng-controller="myCtrl">
                    <font size="5" face="Courier New" color="white"><b>{{time}}</b> </font>
                    </div>
              </div>

               <div id="quote" ng-app="quotes">
                    <div ng-controller="myCtrl1"> 
                          <font size="4" face="courier new" color="white"><b>{{myHeader}}</b></font>
                    </div>
              </div>
              
              

              <script>
                         // var root = angular.module('root',['clock','myApp','quotes']);
                         

                          var quote = angular.module('quotes', []);
                                      quote.controller('myCtrl1', function($scope, $timeout) 
                                      {
                                          $scope.myHeader = "BELIEVE IN YOUSELF";
                                          $timeout(function () 
                                          {
                                              $scope.myHeader = "WELCOME TO SHIKSHA BHARTI";
                                          }, 2000);
                                         
                                      });

                          var app_clock = angular.module("clock",[]);
                          app_clock.controller('myCtrl',function($scope,$interval)
                          {
                                $scope.time = new Date().toLocaleTimeString();
                                $interval(function()
                                      {
                                            $scope.time = new Date().toLocaleTimeString();
                                      },1000);
                          });

                            
                            
                                

                          
                         angular.element(document).ready(function() {
                            angular.bootstrap(document.getElementById("quote"), ['quotes']);
                            angular.bootstrap(document.getElementById("app_clock"), ['clock']);
                            
                          }); 
                          

              </script>
          </div>
      <!--ENDS--> 


<!--NAVBAR-->


                            <div id="fix">
                             <nav class="navbar navbar-inverse" data-spy="affix" data-offset-top="197">
                                <ul class="nav navbar-nav">
                                <li class="active"><a data-toggle="tab" href="#home">HOME</a></li>
                                
                                <li ><a data-toggle="tab" href="#menu1">STUDENT CORNER</a></li>
                                <li ><a data-toggle="tab" href="#menu2">INSTRUCTIONS</a></li>
                                
                              </ul>
                            </nav>
                          </div>

                              <div class="tab-content">

                                <!-------------------------------------------------------------------->
                                <!---HOME TAB--->
                                <div id="home" class="tab-pane fade in active">
                                  <br><br><br><br><br>
                                    <center>
                                    <br><br>  
                                 <font size="4" face="courier new"><b> WELCOME TO SHIKSHA BHARTI</b></font>
                                  <p>
                                  <br>
                                  <div id="bharti">
                                    <img src="logo.jpg" width="100%"/>
                                  </div>
                                  <br>
                                  <font size="3" face="courier new">
                                    An idea <b>Shiksha Bharati</b> is the realisation of a dream, an idea born of the urge to be worthy, to contribute something meaningful to the society. Nothing better than preparing the future citizen for a better tomorrow. The tiny tots learn in an informal way with the help of specially designed apparatus under the supervision and guidance of trained and experienced teachers.
                                    The school provides separate well furnished hostels for both boys and girls coming from different states and countries with adequate infra structural facilities to meet the requirement of each student. The hostelers are cared by trained and experienced residential wardens and nurse who take utmost care to provide a friendly, homely and congenial environment to all the residential students. Delicious, hygienic, nutritious meals and refreshments are provided. The students have independent study tables and lockers. 

                                    The school is recognised from the Directorate of Education, Delhi Govt and affiliated to the CBSE upto Sr. Secondary level. The school strictly follows the CBSE curriculum.
                                    </font></p></center>
                                </div>
                                <!-------------------------------------------------------------------->

                                <!--INSTRUCTIONS TAB------------->
                                <div id="menu2" class="tab-pane fade in active">
                                  <br><br><br><br><br>
                                    <center>
                                    <br> 
                                 <font size="4" face="courier new" ><b> INSTRUCTIONS</b></font>
                               </center>
                                  <p>
                                 
                                  
                                 <div id="ins">
                                  <font size="3" face="courier new">
                                    Following are the Instructions which always have to be take care of:-<br>
                                    <font color="red"><b>
                                    Note:- Always follow the instruction while you are filling a form, If not then it can might mess up the Database.</b></font><br><br>
                                    <b>1. LOGIN</b><br>
                                    a) While logging in, if the message shown says 'User Exists', means the user is enrolled in the database(just type the associated password to get the access).
                                    b) If However the entered password doesn't match with the username, you'll be again redirected to the login page. (No worries).
                                    <br>
                                    <b>2. HOME</b><br>
                                    This section of the website displays about the School Shiksha Bharti. You can read it though.
                                    Just The reading stuff. Nothing to do here.
                                    <br><br>
                                    <b>3. STUDENT CORNER</b><br>
                                      <b>a) VIEW STUDENTS:-</b> You'll be redirected to a new page where the student details are present. 
                                        Now when you click on 'view students' button then a drop down list would appear, there you can select the class you wish to see. Now suppose you click class 'I', it will open the deatails of class I, now do remember to again click on class I button to close the opened window. If not then the new clicked class will overlap with the previous one. 
                                        <font color="red">If clicked then click again to close</font><br><br>
                                      b)It consists of the deatils of the student + Marks + Fees. Appropriate buttons are mentioned in the details window.<br><br>
                                      <b>c) ADD STUDENT(Important):</b> This is important because the information you enter gets submitted in the database. So be careful while filling up the form, if you went wrong somewhere then you might end up messing the database.
                                        a) If two students have the same name in the same class,(Same Name+Same class), then please change one of the names. Like (rajat kumar and rajat kumar), the latter can be changed to rajat kumar2. 
                                        <font color="red"> If however you entered the same names and realised later Then you have to remove the student from the database which can be done from remove student section</font> <br><br>
                                      <b>d)VIEW MARKS:-</b>As mentioned the view students, if you click on class I then again click on  class i to close it. And at the end click on VIEW MARKS to close the drop down list.<br><br>
                                      <b>e)UPDATE MARKS(Important):-</b> This section is very crucial because you are required to enter the marks of the students. 
                                      Since there are so many subjects, Enter the marks for the required subjects and put 0 in all others because it will only be submitted if all fields are filled.<br>
                                      <font color="red">NOTE:Enter the marks carefully because its related to the DATABASE</font><br>
                                      a) Same as above click on terminal 1 to open the marks for terminal 1 and click again to close it.<br><br>
                                     <b>f)REMOVE STUDENT:-</b>
                                      If you wish to remove a student just enter the details and the student will be removed from all records of the school.Please Note- removed from all records.<br><br>
                                      <b>g)FEES:-</b>
                                      There are 2 sections PAY FEES and VIEW FEES.<br>
                                      <b>a)VIEW FEE-</b> This will show the fees of every student month wise, there is no class wise fees structure, its month wise. but since in every month there will be so many students i have put a search button so You can search for a particular student.<br>
                                      <b>b)PAY FEE-</b>Similar to marks here also there are so many columns, but fill which are required and put 0 in all others. <br>
                                      FEES can be updated at any time, so if a student comes up with half of the total sum you will be able to collect that amount and enter the data.<br>

                                    </font></p></center>
                                  </div>
                                </div>



                                <!-------------------------------------------------------------------->
                                <!---STUDENT TAB--->
                                <div id="menu1" class="tab-pane fade">
                                  <br><br><br><br><br>
                                  <center>
                                  <font size="3" face="courier new"><b>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbspWELCOME TO <br>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbspSTUDENT CORNER</b></font><br>
                                  </center>
                                          
                                          
                                        <div id="fixside">
                                          <div id="view_div">
                                            <a href="spa_half.jsp"><button type="button" class="btn btn-primary bt-lg"><font size="3" face="courier new">VIEW STUDENTS</button></a>
                                          </div>

                                          <div id= "add_div">
                                            <button class="btn btn-danger" onclick='responsiveVoice.speak("add or update student");add_stu()' onclick=""><font size="4" face="courier new" ">ADD STUDENT</font></button>
                                          </div>


                                        <div id="marks_div">
                                           <button type="button" onclick='responsiveVoice.speak("performance section");'class="btn btn-primary bt-lg" data-toggle="collapse" data-target="#demo2"><font size="3" face="courier new">VIEW MARKS</button>
                                         </div>
                                         <div id="update_div">
                                           <button type="button" onclick='responsiveVoice.speak("marks updation");' class="btn btn-danger bt-lg" data-toggle="collapse" data-target="#demo3"><font size="3" face="courier new">UPDATE MARKS</button>
                                         </div> 

                                         <div id="rem_div">
                                           <button type="button" onclick='responsiveVoice.speak("remove student");rem_stu()' class="btn btn-primary bt-lg"><font size="3" face="courier new">REMOVE STUDENT</button>
                                         </div> 

                                         <div id="pay_div">
                                           <a href="fee.jsp" class="btn btn-danger"><font size="3" face="courier new">FEES PORTAL</font></a>
                                         </div> 

                                        </div>

                                         <div id="marks_acc">
                                                <div id="demo2" class="collapse">
                                                  <table class="table table-striped">
                                                    <tr><center><th colspan="3"><font size="3" face="courier new"><b>VIEW MARKS</b></font></th></center></tr>
                                                    <tr>
                                                    <th> <font size="3" face="courier new"><b>NURSERY</b></font></th>
                                                    <th><button class="btn btn-primary btn-sm" onclick="myFunction_12()">SHOW</button></th>
                                                  </tr>
                                                  <tr>
                                                    <th> <font size="3" face="courier new"><b>L.K.G</b></font></th>
                                                    <th><button class="btn btn-primary btn-sm" onclick="myFunction_11()">SHOW</button></th>
                                                  </tr>
                                                  <tr>
                                                    <th> <font size="3" face="courier new"><b>U.K.G.</b></font></th>
                                                    <th><button class="btn btn-primary btn-sm" onclick="myFunction_10()">SHOW</button></th>
                                                  </tr>
                                                    <tr>
                                                    <th><font size="3" face="courier new"><b>CLASS I</b></font></th>
                                                    <th> <button class="btn btn-primary btn-sm" onclick="myFunction11()">SHOW</button></th>
                                                  </tr>
                                                  <tr>
                                                    <th> <font size="3" face="courier new"><b>CLASS II</b></font></th>
                                                    <th><button class="btn btn-primary btn-sm" onclick="myFunction12()">SHOW</button></th>
                                                  </tr>
                                                  <tr>
                                                    <th> <font size="3" face="courier new"><b>CLASS III</b></font></th>
                                                    <th> <button class="btn btn-primary btn-sm" onclick="myFunction13()">SHOW</button></th>
                                                  </tr>
                                                  <tr>
                                                    <th> <font size="3" face="courier new"><b>CLASS IV</b></font></th>
                                                    <th> <button class="btn btn-primary btn-sm" onclick="myFunction14()">SHOW</button></th>
                                                  </tr>
                                                  <tr>
                                                    <th> <font size="3" face="courier new"><b>CLASS V</b></font></th>
                                                    <th> <button class="btn btn-primary btn-sm" onclick="myFunction15()">SHOW</button></th>
                                                  </tr><tr>
                                                    <th> <font size="3" face="courier new"><b>CLASS VI</b></font></th>
                                                    <th> <button class="btn btn-primary btn-sm" onclick="myFunction16()">SHOW</button></th>
                                                  </tr><tr>
                                                    <th> <font size="3" face="courier new"><b>CLASS VII</b></font></th>
                                                    <th> <button class="btn btn-primary btn-sm" onclick="myFunction17()">SHOW</button></th>
                                                  </tr><tr>
                                                    <th> <font size="3" face="courier new"><b>CLASS VIII</b></font></th>
                                                    <th> <button class="btn btn-primary btn-sm" onclick="myFunction18()">SHOW</button></th>
                                                  </tr><tr>
                                                    <th> <font size="3" face="courier new"><b>CLASS IX</b></font></th>
                                                    <th> <button class="btn btn-primary btn-sm" onclick="myFunction19()">SHOW</button></th>
                                                  </tr>
                                                  <tr>
                                                    <th> <font size="3" face="courier new"><b>CLASS X</b></font></th>
                                                    <th> <button class="btn btn-primary btn-sm" onclick="myFunction20()">SHOW</button></th>
                                                  </tr>
                                                 
                                                </table>

                                                </div>
                                              </div>

                                              <!--SCRIPT FOR VIEW MARKS-->
                                              <script>
                                                      function myFunction_12() {
                                                          var x = document.getElementById("pc_2");
                                                          if (x.style.display === "none") {
                                                              x.style.display = "block";
                                                          } else {
                                                              x.style.display = "none";
                                                          }
                                                      }
                                                      function myFunction_11() {
                                                          var x = document.getElementById("pc_1");
                                                          if (x.style.display === "none") {
                                                              x.style.display = "block";
                                                          } else {
                                                              x.style.display = "none";
                                                          }
                                                      }
                                                      function myFunction_10() {
                                                          var x = document.getElementById("pc_0");
                                                          if (x.style.display === "none") {
                                                              x.style.display = "block";
                                                          } else {
                                                              x.style.display = "none";
                                                          }
                                                      }
                                                      function myFunction11() {
                                                          var x = document.getElementById("pc1");
                                                          if (x.style.display === "none") {
                                                              x.style.display = "block";
                                                          } else {
                                                              x.style.display = "none";
                                                          }
                                                      }
                                                      function myFunction12() {
                                                          var x = document.getElementById("pc2");
                                                          if (x.style.display === "none") {
                                                              x.style.display = "block";
                                                          } else {
                                                              x.style.display = "none";
                                                          }
                                                      }
                                                      function myFunction13() {
                                                          var x = document.getElementById("pc3");
                                                          if (x.style.display === "none") {
                                                              x.style.display = "block";
                                                          } else {
                                                              x.style.display = "none";
                                                          }
                                                      }
                                                      function myFunction14() {
                                                          var x = document.getElementById("pc4");
                                                          if (x.style.display === "none") {
                                                              x.style.display = "block";
                                                          } else {
                                                              x.style.display = "none";
                                                          }
                                                      }
                                                      function myFunction15() {
                                                          var x = document.getElementById("pc5");
                                                          if (x.style.display === "none") {
                                                              x.style.display = "block";
                                                          } else {
                                                              x.style.display = "none";
                                                          }
                                                      }
                                                      function myFunction16() {
                                                          var x = document.getElementById("pc6");
                                                          if (x.style.display === "none") {
                                                              x.style.display = "block";
                                                          } else {
                                                              x.style.display = "none";
                                                          }
                                                      }
                                                      function myFunction17() {
                                                          var x = document.getElementById("pc7");
                                                          if (x.style.display === "none") {
                                                              x.style.display = "block";
                                                          } else {
                                                              x.style.display = "none";
                                                          }
                                                      }
                                                      function myFunction18() {
                                                          var x = document.getElementById("pc8");
                                                          if (x.style.display === "none") {
                                                              x.style.display = "block";
                                                          } else {
                                                              x.style.display = "none";
                                                          }
                                                      }
                                                      function myFunction19() {
                                                          var x = document.getElementById("pc9");
                                                          if (x.style.display === "none") {
                                                              x.style.display = "block";
                                                          } else {
                                                              x.style.display = "none";
                                                          }
                                                      } 
                                                      function myFunction20() {
                                                          var x = document.getElementById("pc10");
                                                          if (x.style.display === "none") {
                                                              x.style.display = "block";
                                                          } else {
                                                              x.style.display = "none";
                                                          }
                                                      }


                                              </script>
                                              <!--END OF SCRIPT VIEW MARKS-->
                                               
                                           
                                            
                                          <div id="marks_acc">
                                                <div id="demo3" class="collapse">
                                                  <table class="table table-striped">
                                                    <tr><center><th colspan="3"><font size="3" face="courier new"><b>CLICK HERE</b></font></th></center></tr>
                                                    <tr>
                                                    <th> <font size="3" face="courier new"><b>NURSERY</b></font></th>
                                                    <th><button class="btn btn-danger btn-sm" onclick="password('update.jsp?class=NUR')">CLICK HERE</button></th>
                                                  </tr>
                                                  <tr>
                                                    <th> <font size="3" face="courier new"><b>LKG</b></font></th>
                                                    <th><button class="btn btn-danger btn-sm" onclick="password('update.jsp?class=LKG')">CLICK HERE</button></th>
                                                  </tr>
                                                  <tr>
                                                    <th> <font size="3" face="courier new"><b>UKG</b></font></th>
                                                    <th><button class="btn btn-danger btn-sm" onclick="password('update.jsp?class=UKG')">CLICK HERE</button></th>
                                                  </tr>
                                                    <tr>
                                                    <th><font size="3" face="courier new"><b>CLASS I</b></font></th>
                                                    <th> <button class="btn btn-danger btn-sm" onclick="password('update.jsp?class=I)">CLICK HERE</button></th>
                                                  </tr>
                                                  <tr>
                                                    <th> <font size="3" face="courier new"><b>CLASS II</b></font></th>
                                                    <th><button class="btn btn-danger btn-sm" onclick="password('update.jsp?class=II')">CLICK HERE</button></th>
                                                  </tr>
                                                  <tr>
                                                    <th> <font size="3" face="courier new"><b>CLASS III</b></font></th>
                                                    <th> <button class="btn btn-danger btn-sm" onclick="password('update.jsp?class=III')">CLICK HERE</button></th>
                                                  </tr>
                                                  <tr>
                                                    <th> <font size="3" face="courier new"><b>CLASS IV</b></font></th>
                                                    <th> <button class="btn btn-danger btn-sm" onclick="password('update.jsp?class=IV')">CLICK HERE</button></th>
                                                  </tr>
                                                  <tr>
                                                    <th> <font size="3" face="courier new"><b>CLASS V</b></font></th>
                                                    <th> <button class="btn btn-danger btn-sm" onclick="password('update.jsp?class=V')">CLICK HERE</button></th>
                                                  </tr><tr>
                                                    <th> <font size="3" face="courier new"><b>CLASS VI</b></font></th>
                                                    <th> <button class="btn btn-danger btn-sm" onclick="password('update.jsp?class=VI')">CLICK HERE</button></th>
                                                  </tr><tr>
                                                    <th> <font size="3" face="courier new"><b>CLASS VII</b></font></th>
                                                    <th> <button class="btn btn-danger btn-sm" onclick="password('update.jsp?class=VII')">CLICK HERE</button></th>
                                                  </tr><tr>
                                                    <th> <font size="3" face="courier new"><b>CLASS VIII</b></font></th>
                                                    <th> <button class="btn btn-danger btn-sm" onclick="password('update.jsp?class=VIII')">CLICK HERE</button></th>
                                                  </tr><tr>
                                                    <th> <font size="3" face="courier new"><b>CLASS IX</b></font></th>
                                                    <th> <button class="btn btn-danger btn-sm" onclick="password('update.jsp?class=IX')">CLICK HERE</button></th>
                                                  </tr>
                                                  <tr>
                                                    <th> <font size="3" face="courier new"><b>CLASS X</b></font></th>
                                                    <th> <button class="btn btn-danger btn-sm" onclick="password('update.jsp?class=X')">CLICK HERE</button></th>
                                                  </tr>
                                                 
                                                </table>

                                                </div>
                                              </div>
                                                     
                                          </div>
                                          <br>

                                          
                                              

                             
                                   <script>
                                                function add_stu() {
                                                    var x = document.getElementById("add_stu");
                                                    if (x.style.display === "none") {
                                                        x.style.display = "block";
                                                    } else {
                                                        x.style.display = "none";
                                                    }
                                                } 
                                                function rem_stu() {
                                                    var x = document.getElementById("rem_stu");
                                                    if (x.style.display === "none") {
                                                        x.style.display = "block";
                                                    } else {
                                                        x.style.display = "none";
                                                    }
                                                } 


                                        </script>
                                        <!--PASSWORD SCRIPT-->

                                              <script>
                                                  function password(str)
                                                  {
                                                    var pass = "update";
                                                    var x = prompt("Enter in the password "," ");
                                                    if (x.toLowerCase() == pass) 
                                                    {
                                                      alert("CORRECT PASSWORD");
                                                      window.location = str;
                                                    }
                                                    else
                                                    {
                                                      alert("WRONG PASSWORD GOING BACK!");
                                                      window.location="http://localhost:8080/School/school_spa.jsp#!#menu2";
                                                    }

                                                  }
                                                    
                                                  </script>

                                              <!--PASSWORD ENDS-->
                                        <!--END SCRIPT VIEW STUDENTS-->
                                <!-------------------------------------------------------------------->
          
    <script>
            var request;
            var request2;
            var request3;
            var request4;
            var request5;
            function sendname(str)
            {
                var v = str;
                var url = "school_name.jsp?name="+v;
                if(window.XMLHttpRequest)
                {
                  request = new XMLHttpRequest();
                }


                try
                {
                  request.onreadystatechange = getInfo;
                  request.open("GET",url,true);
                  request.send();

                  
                }
                catch(e)
                {
                  alert("UNABLE TO PERFORM AJAX");
                }
        
            }

            function sendf(str)
            {
                var v = str;
                var url = "school_fat.jsp?name="+v;
                if(window.XMLHttpRequest)
                {
                  request2 = new XMLHttpRequest();
                }


                try
                {
                  request2.onreadystatechange = getInfo;
                  request2.open("GET",url,true);
                  request2.send();

                  
                }
                catch(e)
                {
                  alert("UNABLE TO PERFORM AJAX");
                }
        
            }

            function sendm(str)
            {
                var v = str;
                var url = "school_mot.jsp?name="+v;
                if(window.XMLHttpRequest)
                {
                  request3 = new XMLHttpRequest();
                }


                try
                {
                  request3.onreadystatechange = getInfo;
                  request3.open("GET",url,true);
                  request3.send();

                  
                }
                catch(e)
                {
                  alert("UNABLE TO PERFORM AJAX");
                }
        
            }

            function senddob(str)
            {
                var v = str;
                var url = "school_dob.jsp?name="+v;
                if(window.XMLHttpRequest)
                {
                  request4 = new XMLHttpRequest();
                }


                try
                {
                  request4.onreadystatechange = getInfo;
                  request4.open("GET",url,true);
                  request4.send();

                  
                }
                catch(e)
                {
                  alert("UNABLE TO PERFORM AJAX");
                }
        
            }

            function sendc(str)
            {
                var v = str;
                var url = "school_class.jsp?name="+v;
                if(window.XMLHttpRequest)
                {
                  request5 = new XMLHttpRequest();
                }


                try
                {
                  request5.onreadystatechange = getInfo;
                  request5.open("GET",url,true);
                  request5.send();

                  
                }
                catch(e)
                {
                  alert("UNABLE TO PERFORM AJAX");
                }
        
            }

            function getInfo()
            {
              if(request.readyState==4)
              {
                var val = request.responseText;
                document.getElementById("ajax_name").innerHTML = val;
              }
              if(request2.readyState==4)
              {
                var val2 = request2.responseText;
                document.getElementById("ajax_fat").innerHTML = val2;

              }

              if(request3.readyState==4)
              {
                var val3 = request3.responseText;
                document.getElementById("ajax_mot").innerHTML = val3;

              }
              if(request4.readyState==4)
              {
                var val3 = request4.responseText;
                document.getElementById("ajax_dob").innerHTML = val3;

              }
              if(request5.readyState==4)
              {
                var val3 = request5.responseText;
                document.getElementById("ajax_class").innerHTML = val3;

              }
            }
    </script>
                          
        

      <!--ADD STUDENT DIV-->
      <div id="add_stu" style="display:none;">

           <form class = "form-inline" action = "spa_submit.jsp" name="login"  method="post">
                              <!--<table class = "table ">
                              <tr class="active ">-->
                              <center>
                             
                              <div class = "form-group row">
                                 <div class="col-lg-12">
                                  
                                   <font size="3" face="Courier New"><b>NAME</b></font><br><input  name="first" class="form-control" placeholder="NAME"  onkeyup="sendname(this.value)" autocomplete="off" size="30%" required="required" style="font-size:15px;font-family:Courier New;font-weight: bold;">
                                   
                                    </div>
                                    </div>
                                    <div id="ajax_name"></div>
                                    &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp                                  
                                  

                                    <div class = "form-group row">
                                 <div class="col-lg-12">
                                  
                                   <font size="3" face="Courier New"><b>FATHER'S-NAME</b></font><br><input  name="father" class="form-control" placeholder="FATHER'S-NAME"  onkeyup="sendf(this.value)" size="30%" autocomplete="off" required="required" style="font-size:15px;font-family:Courier New;font-weight: bold;">
                                    
                                    </div>
                                    </div>
                                    <div id="ajax_fat"></div>
                                    <br><br>
                                 

                                    <div class = "form-group row">
                                 <div class="col-lg-12">
                                  
                                   <font size="3" face="Courier New"><b>MOTHER'S-NAME</b></font><br><input  name="mother" class="form-control" placeholder="MOTHER'S-NAME"  onkeyup="sendm(this.value)" size="30%" autocomplete="off" required="required" style="font-size:15px;font-family:Courier New;font-weight: bold;">
                                    
                                    </div>
                                    </div>
                                    <div id="ajax_mot"></div>
                                     &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp   

                                     <div class = "form-group row">
                                 <div class="col-lg-12">
                                  
                                   <font size="3" face="Courier New"><b>D.O.B</b></font><br><input  name="dob" class="form-control" placeholder="DATE OF BIRTH"  onkeyup="senddob(this.value)" size="30%"  autocomplete="off" required="required" style="font-size:15px;font-family:Courier New;font-weight: bold;">
                                    
                                    </div>
                                    </div>
                                    <div id="ajax_dob"></div>
                                    <br><br>
                                    
                                  
                                    <div class = "form-group row">
                                 <div class="col-lg-12">
                                  
                                   <font size="3" face="Courier New"><b>CLASS</b></font><br><input  name="class" class="form-control" placeholder="CLASS"  onkeyup="sendc(this.value)" size="30%" autocomplete="off" required="required" style="font-size:15px;font-family:Courier New;font-weight: bold;">
                                    
                                    </div>
                                    </div>
                                    <div id="ajax_class"></div>
                                    &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp   
                                   <div class = "form-group row">
                                 <div class="col-lg-12">
                                  
                                   <font size="3" face="Courier New"><b>PHONE-NO</b></font><br><input  name="phone" class="form-control" placeholder="PHONE"  size="30%" autocomplete="off" required="required" style="font-size:15px;font-family:Courier New;font-weight: bold;">
                                    
                                    </div>
                                    </div>
                                    <br><br>

                                    <div class = "form-group row">
                                 <div class="col-lg-12">
                                  
                                   <font size="3" face="Courier New"><b>ADDRESS</b></font><br><input  name="addr" class="form-control" placeholder="ADDRESS"  size="30%" height="30%" autocomplete="off" required="required" style="font-size:15px;font-family:Courier New;font-weight: bold;">
                                    
                                    </div>
                                    </div>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp   
                                    

                                     
                                    

                                    <div class = "form-group row">
                                 <div class="col-lg-12">
                                  
                                   <font size="3" face="Courier New"><b>ADHAAR No</b></font><br><input  name="aadhar" class="form-control" placeholder="ADHAAR No"  autocomplete="off" size="30%" required="required" style="font-size:15px;font-family:Courier New;font-weight: bold;">
                                    
                                    </div>
                                    </div>
                                    <br><br>

                                     <div class = "form-group row">
                                 <div class="col-lg-12">
                                  
                                   <font size="3" face="Courier New"><b>IMAGE</b></font><br><input  type="file" name="img" " placeholder="IMAGE"  size="30%" height="30%" required="required" style="font-size:15px;font-family:Courier New;font-weight: bold;">
                                    
                                    </div>
                                    </div>
                                    
                                    
                               
                                   <br><br>

                                 
                              <tr><th><center><button class = "btn btn-danger btn-sm" type="submit" value = "SUBMIT" name="submit"><h5>&nbsp&nbsp&nbsp&nbsp&nbsp&nbspSUBMIT&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp</h5></button></center></th></tr>
                            </form>
                  
                            </center>


      </div>

      <!--END-->

      <!--REMOVE STUDENT DIV-->
      <div id="rem_stu" style="display:none;">

           <form class = "form-inline" action = "rem_stu.jsp" name="login"  method="post">
                              <!--<table class = "table ">
                              <tr class="active ">-->
                              <center>
                             
                              <div class = "form-group row">
                                 <div class="col-lg-12">
                                  
                                   <font size="3" face="Courier New"><b>NAME</b></font><br><input  name="first" class="form-control" placeholder="NAME"  size="30%" required="required" style="font-size:15px;font-family:Courier New;font-weight: bold;">
                                    
                                    </div>
                                    </div>
                                    &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp                                  
                               

                                    <div class = "form-group row">
                                 <div class="col-lg-12">
                                  
                                   <font size="3" face="Courier New"><b>FATHER'S-NAME</b></font><br><input  name="father" class="form-control" placeholder="FATHER'S-NAME"  size="30%" required="required" style="font-size:15px;font-family:Courier New;font-weight: bold;">
                                    
                                    </div>
                                    </div>
                                    <br><br>
                                 

                                   
                                     &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp   

                                     <div class = "form-group row">
                                 <div class="col-lg-12">
                                  
                                   <font size="3" face="Courier New"><b>CLASS</b></font><br><input  name="class" class="form-control" placeholder="CLASS"  size="20%" required="required" style="font-size:15px;font-family:Courier New;font-weight: bold;">
                                    
                                    </div>
                                    </div>

                                    <br><br>
                                    
                                  
                                    

                                 
                              <tr><th><center><button class = "btn btn-danger btn-sm" type="submit" value = "SUBMIT" name="submit"><h5>&nbsp&nbsp&nbsp&nbsp&nbsp&nbspSUBMIT&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp</h5></button></center></th></tr>
                            </form>
                  
                            </center>


      </div>

      <!--END-->



     

      <!----------------------------------------------------------------------------------> 


      <!---------------------------------------------------------------------------------->
      <!--PERFORMANCE STARTS-->
      <div id="pc_2" style="display: none;">
        <!--INNER ACCORDIONS FOR DIFFERENT TERMINAL-->
        <%
       
            %>
            <font size="6" face="courier new"><b>NURSERY_RESULT</b></font><br>
            <!-----------------------TERM1 BEGINS---------------------------->
             <button type="button" class="btn btn-primary bt-lg" data-toggle="collapse" data-target="#pc_21">TERM 1</button><br>
              <div id="pc_2t1_acc">
                
                <div id="pc_21" class="collapse">
                  <br><font size="2" face="courier new"><b>TERM_1_RESULT</b></font><br>
              <%
              res = stmt.executeQuery("select * from marksT1 where class='NUR'");
              int c = 1;
              %>

            <table class = "table table-sm table-striped table-bordered table-responsive w-auto">
            <tr class="active">
              <th><font size="2" face="courier new"><b>SNO</b></th>
              <th><font size="2" face="courier new"><b>NAME</b></th>
              <th><font size="2" face="courier new"><b>ENG<br>(100)</b></th>
              <th><font size="2" face="courier new"><b>HINDI<br>(100)</b></th>
              <th><font size="2" face="courier new"><b>MATHS<br>(100)</b></th>
              <th><font size="2" face="courier new"><b>GK<br>(100)</b></font></th>
              
              <th><font size="2" face="courier new"><b>DRAWING<br>(50)</b></font></th>
              <th><font size="2" face="courier new"><b>HANDICRAFT<br>(50)</b></font></th>
              <th><font size="2" face="courier new"><b>DANCE<br>MUSIC<br>(50)</b></font></th>
             
              <th><font size="2" face="courier new"><b>OBTAINED<br>MARKS</b></font></th>
              <th><font size="2" face="courier new"><b>TOTAL<br>MARKS</b></font></th>
              <th><font size="2" face="courier new"><b>%<br>(100%)</b></font></th>
            </tr>
            
            <%
            while(res.next())
            {
            
            
              String name = res.getString(2);
              int hindi = res.getInt(3);
              int eng = res.getInt(4);
              int maths = res.getInt(5);
              int gk = res.getInt(6);
              int hwd = res.getInt(7);
                  int ewd = res.getInt(8);
                  int draw = res.getInt(9);
                  int handi = res.getInt(10);
                  int dance = res.getInt(11);
                  int sci = res.getInt(12);
                  int scip = res.getInt(13);
                  int social = res.getInt(14);
                  int hist = res.getInt(15);
                  int geo = res.getInt(16);
                  int civics = res.getInt(17);
                  int home = res.getInt(18);
                  int sans = res.getInt(19);
                  int compt = res.getInt(20);
                  int compp = res.getInt(21);
              int obt = eng+hindi+maths+gk+draw+handi+dance;
              int tot = 550;
              double per = ((double)obt/(double)tot)*100;
              per = Math.round(per* 100.0) / 100.0;

              %>
              <tr>
              <td><font size="2" face="courier new"><%out.print(c++);%></font></td>
              <td><b><font size="2" face="courier new"><%out.print(name.toUpperCase());%></b></font></td>
              <td><font size="2" face="courier new"><%out.print(eng);%></font></td>
              <td><font size="2" face="courier new"><%out.print(hindi);%></font></td>
              <td><font size="2" face="courier new"><%out.print(maths);%></font></td>
              <td><font size="2" face="courier new"><%out.print(gk);%></font></td>
              <td><font size="2" face="courier new"><%out.print(draw);%></font></td>
              <td><font size="2" face="courier new"><%out.print(handi);%></font></td>
              <td><font size="2" face="courier new"><%out.print(dance);%></font></td>
              <td><b><font size="2" face="courier new"><%out.print(obt);%></b></font></td>
              <td><font size="2" face="courier new"><%out.print(tot);%></font></td>
              <td><b><font size="2" face="courier new"><%out.print(per);%></b></font></td>
              </tr><%
              
            }
            %>
            
            </table>
          </div></div><br>
          <!--------------TERM1 ENDS------------------------------->


          <!-----------------------HALF_YEARLY BEGINS---------------------------->
             <button type="button" class="btn btn-primary bt-lg" data-toggle="collapse" data-target="#pc_22">HALF_YEARLY</button><br>
              <div id="pc_2t2_acc">
                
                <div id="pc_22" class="collapse">
                  <br><font size="2" face="courier new"><b>HALF_YEARLY_RESULT</b></font><br>
              <%
              res = stmt.executeQuery("select * from marks_HALF where class='NUR'");
              c = 1;
              %>

            <table class = "table table-sm table-striped table-bordered table-responsive w-auto">
            <tr class="active">
              <th><font size="2" face="courier new"><b>SNO</b></th>
              <th><font size="2" face="courier new"><b>NAME</b></th>
              <th><font size="2" face="courier new"><b>ENG</b></th>
              <th><font size="2" face="courier new"><b>HINDI</b></th>
              <th><font size="2" face="courier new"><b>MATHS</b></th>
              <th><font size="2" face="courier new"><b>GK</b></font></th>
              
              <th><font size="2" face="courier new"><b>DRAWING</b></font></th>
              <th><font size="2" face="courier new"><b>HANDICRAFT</b></font></th>
              <th><font size="2" face="courier new"><b>DANCE<br>MUSIC</b></font></th>
             
              <th><font size="2" face="courier new"><b>OBTAINED<br>MARKS</b></font></th>
              <th><font size="2" face="courier new"><b>TOTAL<br>MARKS</b></font></th>
              <th><font size="2" face="courier new"><b>%<br>(100%)</b></font></th>
            </tr>
            
            <%
            while(res.next())
            {
            
            
              String name = res.getString(2);
              int hindi = res.getInt(3);
              int eng = res.getInt(4);
              int maths = res.getInt(5);
              int gk = res.getInt(6);
              int hwd = res.getInt(7);
                  int ewd = res.getInt(8);
                  int draw = res.getInt(9);
                  int handi = res.getInt(10);
                  int dance = res.getInt(11);
                  int sci = res.getInt(12);
                  int scip = res.getInt(13);
                  int social = res.getInt(14);
                  int hist = res.getInt(15);
                  int geo = res.getInt(16);
                  int civics = res.getInt(17);
                  int home = res.getInt(18);
                  int sans = res.getInt(19);
                  int compt = res.getInt(20);
                  int compp = res.getInt(21);
              int obt = eng+hindi+maths+gk+draw+handi+dance;
              int tot = 550;
              double per = ((double)obt/(double)tot)*100;
              per = Math.round(per* 100.0) / 100.0;

              %>
              <tr>
              <td><font size="2" face="courier new"><%out.print(c++);%></font></td>
              <td><b><font size="2" face="courier new"><%out.print(name.toUpperCase());%></b></font></td>
              <td><font size="2" face="courier new"><%out.print(eng);%></font></td>
              <td><font size="2" face="courier new"><%out.print(hindi);%></font></td>
              <td><font size="2" face="courier new"><%out.print(maths);%></font></td>
              <td><font size="2" face="courier new"><%out.print(gk);%></font></td>
              <td><font size="2" face="courier new"><%out.print(draw);%></font></td>
              <td><font size="2" face="courier new"><%out.print(handi);%></font></td>
              <td><font size="2" face="courier new"><%out.print(dance);%></font></td>
              <td><b><font size="2" face="courier new"><%out.print(obt);%></b></font></td>
              <td><font size="2" face="courier new"><%out.print(tot);%></font></td>
              <td><b><font size="2" face="courier new"><%out.print(per);%></b></font></td>
              </tr><%
              
            }
            %>
            
            </table>
          </div></div><br>
          <!--------------HALF_YEARLY ENDS------------------------------->

          <!-----------------------TERM3 BEGINS---------------------------->
             <button type="button" class="btn btn-primary bt-lg" data-toggle="collapse" data-target="#pc_23">TERM 3</button><br>
              <div id="pc_2t3_acc">
                
                <div id="pc_23" class="collapse">
                  <br><font size="2" face="courier new"><b>TERM_3_RESULT</b></font><br>
              <%
              res = stmt.executeQuery("select * from marks_T3 where class='NUR'");
              c = 1;
              %>

            <table class = "table table-sm table-striped table-bordered table-responsive w-auto">
            <tr class="active">
              <th><font size="2" face="courier new"><b>SNO</b></th>
              <th><font size="2" face="courier new"><b>NAME</b></th>
              <th><font size="2" face="courier new"><b>ENG</b></th>
              <th><font size="2" face="courier new"><b>HINDI</b></th>
              <th><font size="2" face="courier new"><b>MATHS</b></th>
              <th><font size="2" face="courier new"><b>GK</b></font></th>
              
              <th><font size="2" face="courier new"><b>DRAWING</b></font></th>
              <th><font size="2" face="courier new"><b>HANDICRAFT</b></font></th>
              <th><font size="2" face="courier new"><b>DANCE<br>MUSIC</b></font></th>
             
              <th><font size="2" face="courier new"><b>OBTAINED<br>MARKS</b></font></th>
              <th><font size="2" face="courier new"><b>TOTAL<br>MARKS</b></font></th>
              <th><font size="2" face="courier new"><b>%<br>(100%)</b></font></th>
            </tr>
            
            <%
            while(res.next())
            {
            
            
              String name = res.getString(2);
              int hindi = res.getInt(3);
              int eng = res.getInt(4);
              int maths = res.getInt(5);
              int gk = res.getInt(6);
              int hwd = res.getInt(7);
                  int ewd = res.getInt(8);
                  int draw = res.getInt(9);
                  int handi = res.getInt(10);
                  int dance = res.getInt(11);
                  int sci = res.getInt(12);
                  int scip = res.getInt(13);
                  int social = res.getInt(14);
                  int hist = res.getInt(15);
                  int geo = res.getInt(16);
                  int civics = res.getInt(17);
                  int home = res.getInt(18);
                  int sans = res.getInt(19);
                  int compt = res.getInt(20);
                  int compp = res.getInt(21);
              int obt = eng+hindi+maths+gk+draw+handi+dance;
              int tot = 550;
              double per = ((double)obt/(double)tot)*100;
              per = Math.round(per* 100.0) / 100.0;

              %>
              <tr>
              <td><font size="2" face="courier new"><%out.print(c++);%></font></td>
              <td><b><font size="2" face="courier new"><%out.print(name.toUpperCase());%></b></font></td>
              <td><font size="2" face="courier new"><%out.print(eng);%></font></td>
              <td><font size="2" face="courier new"><%out.print(hindi);%></font></td>
              <td><font size="2" face="courier new"><%out.print(maths);%></font></td>
              <td><font size="2" face="courier new"><%out.print(gk);%></font></td>
              <td><font size="2" face="courier new"><%out.print(draw);%></font></td>
              <td><font size="2" face="courier new"><%out.print(handi);%></font></td>
              <td><font size="2" face="courier new"><%out.print(dance);%></font></td>
              <td><b><font size="2" face="courier new"><%out.print(obt);%></b></font></td>
              <td><font size="2" face="courier new"><%out.print(tot);%></font></td>
              <td><b><font size="2" face="courier new"><%out.print(per);%></b></font></td>
              </tr><%
              
            }
            %>
            
            </table>
          </div></div><br>
          <!--------------TERM3 ENDS------------------------------->

          <!-----------------------END_TERM BEGINS---------------------------->
             <button type="button" class="btn btn-primary bt-lg" data-toggle="collapse" data-target="#pc_24">END_TERM</button><br>
              <div id="pc_2t4_acc">

                <div id="pc_24" class="collapse">
                  <br><font size="2" face="courier new"><b>END_TERM_RESULT</b></font><br>
              <%
              res = stmt.executeQuery("select * from marks_END where class='NUR'");
              c = 1;
              %>

            <table class = "table table-sm table-striped table-bordered table-responsive w-auto">
            <tr class="active">
              <th><font size="2" face="courier new"><b>SNO</b></th>
              <th><font size="2" face="courier new"><b>NAME</b></th>
              <th><font size="2" face="courier new"><b>ENG</b></th>
              <th><font size="2" face="courier new"><b>HINDI</b></th>
              <th><font size="2" face="courier new"><b>MATHS</b></th>
              <th><font size="2" face="courier new"><b>GK</b></font></th>
              
              <th><font size="2" face="courier new"><b>DRAWING</b></font></th>
              <th><font size="2" face="courier new"><b>HANDICRAFT</b></font></th>
              <th><font size="2" face="courier new"><b>DANCE<br>MUSIC</b></font></th>
             
              <th><font size="2" face="courier new"><b>OBTAINED<br>MARKS</b></font></th>
              <th><font size="2" face="courier new"><b>TOTAL<br>MARKS</b></font></th>
              <th><font size="2" face="courier new"><b>%<br>(100%)</b></font></th>
            </tr>
            
            <%
            while(res.next())
            {
            
            
              String name = res.getString(2);
              int hindi = res.getInt(3);
              int eng = res.getInt(4);
              int maths = res.getInt(5);
              int gk = res.getInt(6);
              int hwd = res.getInt(7);
                  int ewd = res.getInt(8);
                  int draw = res.getInt(9);
                  int handi = res.getInt(10);
                  int dance = res.getInt(11);
                  int sci = res.getInt(12);
                  int scip = res.getInt(13);
                  int social = res.getInt(14);
                  int hist = res.getInt(15);
                  int geo = res.getInt(16);
                  int civics = res.getInt(17);
                  int home = res.getInt(18);
                  int sans = res.getInt(19);
                  int compt = res.getInt(20);
                  int compp = res.getInt(21);
              int obt = eng+hindi+maths+gk+draw+handi+dance;
              int tot = 550;
              double per = ((double)obt/(double)tot)*100;
              per = Math.round(per* 100.0) / 100.0;

              %>
              <tr>
              <td><font size="2" face="courier new"><%out.print(c++);%></font></td>
              <td><b><font size="2" face="courier new"><%out.print(name.toUpperCase());%></b></font></td>
              <td><font size="2" face="courier new"><%out.print(eng);%></font></td>
              <td><font size="2" face="courier new"><%out.print(hindi);%></font></td>
              <td><font size="2" face="courier new"><%out.print(maths);%></font></td>
              <td><font size="2" face="courier new"><%out.print(gk);%></font></td>
              <td><font size="2" face="courier new"><%out.print(draw);%></font></td>
              <td><font size="2" face="courier new"><%out.print(handi);%></font></td>
              <td><font size="2" face="courier new"><%out.print(dance);%></font></td>
              <td><b><font size="2" face="courier new"><%out.print(obt);%></b></font></td>
              <td><font size="2" face="courier new"><%out.print(tot);%></font></td>
              <td><b><font size="2" face="courier new"><%out.print(per);%></b></font></td>
              </tr><%
              
            }
            %>
            
            </table>
          </div></div><br>
          <!--------------END_TERM ENDS------------------------------->

      </div>


      <div id="pc_1" style="display: none;">
        <!--INNER ACCORDIONS FOR DIFFERENT TERMINAL-->
        <%
       
            %>
            <font size="6" face="courier new"><b>L.K.G_RESULT</b></font><br>
            <!-----------------------TERM1 BEGINS---------------------------->
             <button type="button" class="btn btn-primary bt-lg" data-toggle="collapse" data-target="#pc_11">TERM 1</button><br>
              <div id="pc_1t1_acc">
                
                <div id="pc_11" class="collapse">
                  <br><font size="2" face="courier new"><b>TERM_1_RESULT</b></font><br>
              <%
              res = stmt.executeQuery("select * from marksT1 where class='LKG'");
              c = 1;
              %>

            <table class = "table table-sm table-striped table-bordered table-responsive w-auto">
            <tr class="active">
              <th><font size="2" face="courier new"><b>SNO</b></th>
              <th><font size="2" face="courier new"><b>NAME</b></th>
              <th><font size="2" face="courier new"><b>ENG<br>(100)</b></th>
              <th><font size="2" face="courier new"><b>HINDI<br>(100)</b></th>
              <th><font size="2" face="courier new"><b>MATHS<br>(100)</b></th>
              <th><font size="2" face="courier new"><b>GK<br>(100)</b></font></th>
              
              <th><font size="2" face="courier new"><b>DRAWING<br>(50)</b></font></th>
              <th><font size="2" face="courier new"><b>HANDICRAFT<br>(50)</b></font></th>
              <th><font size="2" face="courier new"><b>DANCE<br>MUSIC<br>(50)</b></font></th>
              <th><font size="2" face="courier new"><b>HWD<br>(50)</b></font></th>
              <th><font size="2" face="courier new"><b>EWD<br>(50)</b></font></th>
              <th><font size="2" face="courier new"><b>OBTAINED<br>MARKS</b></font></th>
              <th><font size="2" face="courier new"><b>TOTAL<br>MARKS</b></font></th>
              <th><font size="2" face="courier new"><b>%<br>(100%)</b></font></th>
            </tr>
            
            <%
            while(res.next())
            {
            
            
              String name = res.getString(2);
              int hindi = res.getInt(3);
              int eng = res.getInt(4);
              int maths = res.getInt(5);
              int gk = res.getInt(6);
              int hwd = res.getInt(7);
                  int ewd = res.getInt(8);
                  int draw = res.getInt(9);
                  int handi = res.getInt(10);
                  int dance = res.getInt(11);
                  int sci = res.getInt(12);
                  int scip = res.getInt(13);
                  int social = res.getInt(14);
                  int hist = res.getInt(15);
                  int geo = res.getInt(16);
                  int civics = res.getInt(17);
                  int home = res.getInt(18);
                  int sans = res.getInt(19);
                  int compt = res.getInt(20);
                  int compp = res.getInt(21);
              int obt = eng+hindi+maths+gk+draw+handi+dance+hwd+ewd;
              int tot = 650;
              double per = ((double)obt/(double)tot)*100;
              per = Math.round(per* 100.0) / 100.0;

              %>
              <tr>
              <td><font size="2" face="courier new"><%out.print(c++);%></font></td>
              <td><b><font size="2" face="courier new"><%out.print(name.toUpperCase());%></b></font></td>
              <td><font size="2" face="courier new"><%out.print(eng);%></font></td>
              <td><font size="2" face="courier new"><%out.print(hindi);%></font></td>
              <td><font size="2" face="courier new"><%out.print(maths);%></font></td>
              <td><font size="2" face="courier new"><%out.print(gk);%></font></td>
              <td><font size="2" face="courier new"><%out.print(draw);%></font></td>
              <td><font size="2" face="courier new"><%out.print(handi);%></font></td>
              <td><font size="2" face="courier new"><%out.print(dance);%></font></td>
              <td><font size="2" face="courier new"><%out.print(hwd);%></font></td>
              <td><font size="2" face="courier new"><%out.print(ewd);%></font></td>
              <td><b><font size="2" face="courier new"><%out.print(obt);%></b></font></td>
              <td><font size="2" face="courier new"><%out.print(tot);%></font></td>
              <td><b><font size="2" face="courier new"><%out.print(per);%></b></font></td>
              </tr><%
              
            }
            %>
            
            </table>
          </div></div><br>
          <!--------------TERM1 ENDS------------------------------->


          <!-----------------------HALF_YEARLY BEGINS---------------------------->
             <button type="button" class="btn btn-primary bt-lg" data-toggle="collapse" data-target="#pc_12">HALF_YEARLY</button><br>
              <div id="pc_1t2_acc">
                
                <div id="pc_12" class="collapse">
                  <br><font size="2" face="courier new"><b>HALF_YEARLY_RESULT</b></font><br>
              <%
              res = stmt.executeQuery("select * from marks_HALF where class='LKG'");
              c = 1;
              %>

            <table class = "table table-sm table-striped table-bordered table-responsive w-auto">
            <tr class="active">
              <th><font size="2" face="courier new"><b>SNO</b></th>
              <th><font size="2" face="courier new"><b>NAME</b></th>
              <th><font size="2" face="courier new"><b>ENG<br>(100)</b></th>
              <th><font size="2" face="courier new"><b>HINDI<br>(100)</b></th>
              <th><font size="2" face="courier new"><b>MATHS<br>(100)</b></th>
              <th><font size="2" face="courier new"><b>GK<br>(100)</b></font></th>
              
              <th><font size="2" face="courier new"><b>DRAWING<br>(50)</b></font></th>
              <th><font size="2" face="courier new"><b>HANDICRAFT<br>(50)</b></font></th>
              <th><font size="2" face="courier new"><b>DANCE<br>MUSIC<br>(50)</b></font></th>
              <th><font size="2" face="courier new"><b>HWD<br>(50)</b></font></th>
              <th><font size="2" face="courier new"><b>EWD<br>(50)</b></font></th>
              <th><font size="2" face="courier new"><b>OBTAINED<br>MARKS</b></font></th>
              <th><font size="2" face="courier new"><b>TOTAL<br>MARKS</b></font></th>
              <th><font size="2" face="courier new"><b>%<br>(100%)</b></font></th>
            </tr>
            
            <%
            while(res.next())
            {
            
            
              String name = res.getString(2);
              int hindi = res.getInt(3);
              int eng = res.getInt(4);
              int maths = res.getInt(5);
              int gk = res.getInt(6);
              int hwd = res.getInt(7);
                  int ewd = res.getInt(8);
                  int draw = res.getInt(9);
                  int handi = res.getInt(10);
                  int dance = res.getInt(11);
                  int sci = res.getInt(12);
                  int scip = res.getInt(13);
                  int social = res.getInt(14);
                  int hist = res.getInt(15);
                  int geo = res.getInt(16);
                  int civics = res.getInt(17);
                  int home = res.getInt(18);
                  int sans = res.getInt(19);
                  int compt = res.getInt(20);
                  int compp = res.getInt(21);
              int obt = eng+hindi+maths+gk+draw+handi+dance+hwd+ewd;
              int tot = 650;
              double per = ((double)obt/(double)tot)*100;
              per = Math.round(per* 100.0) / 100.0;

              %>
              <tr>
              <td><font size="2" face="courier new"><%out.print(c++);%></font></td>
              <td><b><font size="2" face="courier new"><%out.print(name.toUpperCase());%></b></font></td>
              <td><font size="2" face="courier new"><%out.print(eng);%></font></td>
              <td><font size="2" face="courier new"><%out.print(hindi);%></font></td>
              <td><font size="2" face="courier new"><%out.print(maths);%></font></td>
              <td><font size="2" face="courier new"><%out.print(gk);%></font></td>
              <td><font size="2" face="courier new"><%out.print(draw);%></font></td>
              <td><font size="2" face="courier new"><%out.print(handi);%></font></td>
              <td><font size="2" face="courier new"><%out.print(dance);%></font></td>
              <td><font size="2" face="courier new"><%out.print(hwd);%></font></td>
              <td><font size="2" face="courier new"><%out.print(ewd);%></font></td>
              <td><b><font size="2" face="courier new"><%out.print(obt);%></b></font></td>
              <td><font size="2" face="courier new"><%out.print(tot);%></font></td>
              <td><b><font size="2" face="courier new"><%out.print(per);%></b></font></td>
              </tr><%
              
            }
            %>
            
            </table>
          </div></div><br>
          <!--------------HALF_YEARLY ENDS------------------------------->

          <!-----------------------TERM3 BEGINS---------------------------->
             <button type="button" class="btn btn-primary bt-lg" data-toggle="collapse" data-target="#pc_13">TERM 3</button><br>
              <div id="pc_1t3_acc">
                
                <div id="pc_13" class="collapse">
                  <br><font size="2" face="courier new"><b>TERM_3_RESULT</b></font><br>
              <%
              res = stmt.executeQuery("select * from marks_T3 where class='LKG'");
              c = 1;
              %>

            <table class = "table table-sm table-striped table-bordered table-responsive w-auto">
            <tr class="active">
              <th><font size="2" face="courier new"><b>SNO</b></th>
              <th><font size="2" face="courier new"><b>NAME</b></th>
              <th><font size="2" face="courier new"><b>ENG<br>(100)</b></th>
              <th><font size="2" face="courier new"><b>HINDI<br>(100)</b></th>
              <th><font size="2" face="courier new"><b>MATHS<br>(100)</b></th>
              <th><font size="2" face="courier new"><b>GK<br>(100)</b></font></th>
              
              <th><font size="2" face="courier new"><b>DRAWING<br>(50)</b></font></th>
              <th><font size="2" face="courier new"><b>HANDICRAFT<br>(50)</b></font></th>
              <th><font size="2" face="courier new"><b>DANCE<br>MUSIC<br>(50)</b></font></th>
              <th><font size="2" face="courier new"><b>HWD<br>(50)</b></font></th>
              <th><font size="2" face="courier new"><b>EWD<br>(50)</b></font></th>
              <th><font size="2" face="courier new"><b>OBTAINED<br>MARKS</b></font></th>
              <th><font size="2" face="courier new"><b>TOTAL<br>MARKS</b></font></th>
              <th><font size="2" face="courier new"><b>%<br>(100%)</b></font></th>
            </tr>
            
            <%
            while(res.next())
            {
            
            
              String name = res.getString(2);
              int hindi = res.getInt(3);
              int eng = res.getInt(4);
              int maths = res.getInt(5);
              int gk = res.getInt(6);
              int hwd = res.getInt(7);
                  int ewd = res.getInt(8);
                  int draw = res.getInt(9);
                  int handi = res.getInt(10);
                  int dance = res.getInt(11);
                  int sci = res.getInt(12);
                  int scip = res.getInt(13);
                  int social = res.getInt(14);
                  int hist = res.getInt(15);
                  int geo = res.getInt(16);
                  int civics = res.getInt(17);
                  int home = res.getInt(18);
                  int sans = res.getInt(19);
                  int compt = res.getInt(20);
                  int compp = res.getInt(21);
              int obt = eng+hindi+maths+gk+draw+handi+dance+hwd+ewd;
              int tot = 650;
              double per = ((double)obt/(double)tot)*100;
              per = Math.round(per* 100.0) / 100.0;

              %>
              <tr>
              <td><font size="2" face="courier new"><%out.print(c++);%></font></td>
              <td><b><font size="2" face="courier new"><%out.print(name.toUpperCase());%></b></font></td>
              <td><font size="2" face="courier new"><%out.print(eng);%></font></td>
              <td><font size="2" face="courier new"><%out.print(hindi);%></font></td>
              <td><font size="2" face="courier new"><%out.print(maths);%></font></td>
              <td><font size="2" face="courier new"><%out.print(gk);%></font></td>
              <td><font size="2" face="courier new"><%out.print(draw);%></font></td>
              <td><font size="2" face="courier new"><%out.print(handi);%></font></td>
              <td><font size="2" face="courier new"><%out.print(dance);%></font></td>
              <td><font size="2" face="courier new"><%out.print(hwd);%></font></td>
              <td><font size="2" face="courier new"><%out.print(ewd);%></font></td>
              <td><b><font size="2" face="courier new"><%out.print(obt);%></b></font></td>
              <td><font size="2" face="courier new"><%out.print(tot);%></font></td>
              <td><b><font size="2" face="courier new"><%out.print(per);%></b></font></td>
              </tr><%
              
            }
            %>
            
            </table>
          </div></div><br>
          <!--------------TERM3 ENDS------------------------------->

          <!-----------------------END_TERM BEGINS---------------------------->
             <button type="button" class="btn btn-primary bt-lg" data-toggle="collapse" data-target="#pc_14">END_TERM</button><br>
              <div id="pc_1t4_acc">

                <div id="pc_14" class="collapse">
                  <br><font size="2" face="courier new"><b>END_TERM_RESULT</b></font><br>
              <%
              res = stmt.executeQuery("select * from marks_END where class='LKG'");
              c = 1;
              %>

            <table class = "table table-sm table-striped table-bordered table-responsive w-auto">
            <tr class="active">
              <th><font size="2" face="courier new"><b>SNO</b></th>
              <th><font size="2" face="courier new"><b>NAME</b></th>
              <th><font size="2" face="courier new"><b>ENG<br>(100)</b></th>
              <th><font size="2" face="courier new"><b>HINDI<br>(100)</b></th>
              <th><font size="2" face="courier new"><b>MATHS<br>(100)</b></th>
              <th><font size="2" face="courier new"><b>GK<br>(100)</b></font></th>
              
              <th><font size="2" face="courier new"><b>DRAWING<br>(50)</b></font></th>
              <th><font size="2" face="courier new"><b>HANDICRAFT<br>(50)</b></font></th>
              <th><font size="2" face="courier new"><b>DANCE<br>MUSIC<br>(50)</b></font></th>
              <th><font size="2" face="courier new"><b>HWD<br>(50)</b></font></th>
              <th><font size="2" face="courier new"><b>EWD<br>(50)</b></font></th>
              <th><font size="2" face="courier new"><b>OBTAINED<br>MARKS</b></font></th>
              <th><font size="2" face="courier new"><b>TOTAL<br>MARKS</b></font></th>
              <th><font size="2" face="courier new"><b>%<br>(100%)</b></font></th>
            </tr>
            
            <%
            while(res.next())
            {
            
            
              String name = res.getString(2);
              int hindi = res.getInt(3);
              int eng = res.getInt(4);
              int maths = res.getInt(5);
              int gk = res.getInt(6);
              int hwd = res.getInt(7);
                  int ewd = res.getInt(8);
                  int draw = res.getInt(9);
                  int handi = res.getInt(10);
                  int dance = res.getInt(11);
                  int sci = res.getInt(12);
                  int scip = res.getInt(13);
                  int social = res.getInt(14);
                  int hist = res.getInt(15);
                  int geo = res.getInt(16);
                  int civics = res.getInt(17);
                  int home = res.getInt(18);
                  int sans = res.getInt(19);
                  int compt = res.getInt(20);
                  int compp = res.getInt(21);
              int obt = eng+hindi+maths+gk+draw+handi+dance+hwd+ewd;
              int tot = 650;
              double per = ((double)obt/(double)tot)*100;
              per = Math.round(per* 100.0) / 100.0;

              %>
              <tr>
              <td><font size="2" face="courier new"><%out.print(c++);%></font></td>
              <td><b><font size="2" face="courier new"><%out.print(name.toUpperCase());%></b></font></td>
              <td><font size="2" face="courier new"><%out.print(eng);%></font></td>
              <td><font size="2" face="courier new"><%out.print(hindi);%></font></td>
              <td><font size="2" face="courier new"><%out.print(maths);%></font></td>
              <td><font size="2" face="courier new"><%out.print(gk);%></font></td>
              <td><font size="2" face="courier new"><%out.print(draw);%></font></td>
              <td><font size="2" face="courier new"><%out.print(handi);%></font></td>
              <td><font size="2" face="courier new"><%out.print(dance);%></font></td>
              <td><font size="2" face="courier new"><%out.print(hwd);%></font></td>
              <td><font size="2" face="courier new"><%out.print(ewd);%></font></td>
              <td><b><font size="2" face="courier new"><%out.print(obt);%></b></font></td>
              <td><font size="2" face="courier new"><%out.print(tot);%></font></td>
              <td><b><font size="2" face="courier new"><%out.print(per);%></b></font></td>
              </tr><%
              
            }
            %>
            
            </table>
          </div></div><br>
          <!--------------END_TERM ENDS------------------------------->

      </div>

      <div id="pc_0" style="display: none;">
        <!--INNER ACCORDIONS FOR DIFFERENT TERMINAL-->
        <%
       
            %>
            <font size="6" face="courier new"><b>U.K.G_RESULT</b></font><br>
            <!-----------------------TERM1 BEGINS---------------------------->
             <button type="button" class="btn btn-primary bt-lg" data-toggle="collapse" data-target="#pc_01">TERM 1</button><br>
              <div id="pc_0t1_acc">
                
                <div id="pc_01" class="collapse">
                  <br><font size="2" face="courier new"><b>TERM_1_RESULT</b></font><br>
              <%
              res = stmt.executeQuery("select * from marksT1 where class='UKG'");
              c = 1;
              %>

            <table class = "table table-sm table-striped table-bordered table-responsive w-auto">
            <tr class="active">
              <th><font size="2" face="courier new"><b>SNO</b></th>
              <th><font size="2" face="courier new"><b>NAME</b></th>
              <th><font size="2" face="courier new"><b>ENG<br>(100)</b></th>
              <th><font size="2" face="courier new"><b>HINDI<br>(100)</b></th>
              <th><font size="2" face="courier new"><b>MATHS<br>(100)</b></th>
              <th><font size="2" face="courier new"><b>GK<br>(100)</b></font></th>
              
              <th><font size="2" face="courier new"><b>DRAWING<br>(50)</b></font></th>
              <th><font size="2" face="courier new"><b>HANDICRAFT<br>(50)</b></font></th>
              <th><font size="2" face="courier new"><b>DANCE<br>MUSIC<br>(50)</b></font></th>
              <th><font size="2" face="courier new"><b>HWD<br>(50)</b></font></th>
              <th><font size="2" face="courier new"><b>EWD<br>(50)</b></font></th>
              <th><font size="2" face="courier new"><b>OBTAINED<br>MARKS</b></font></th>
              <th><font size="2" face="courier new"><b>TOTAL<br>MARKS</b></font></th>
              <th><font size="2" face="courier new"><b>%<br>(100%)</b></font></th>
            </tr>
            
            <%
            while(res.next())
            {
            
            
              String name = res.getString(2);
              int hindi = res.getInt(3);
              int eng = res.getInt(4);
              int maths = res.getInt(5);
              int gk = res.getInt(6);
              int hwd = res.getInt(7);
                  int ewd = res.getInt(8);
                  int draw = res.getInt(9);
                  int handi = res.getInt(10);
                  int dance = res.getInt(11);
                  int sci = res.getInt(12);
                  int scip = res.getInt(13);
                  int social = res.getInt(14);
                  int hist = res.getInt(15);
                  int geo = res.getInt(16);
                  int civics = res.getInt(17);
                  int home = res.getInt(18);
                  int sans = res.getInt(19);
                  int compt = res.getInt(20);
                  int compp = res.getInt(21);
              int obt = eng+hindi+maths+gk+draw+handi+dance+hwd+ewd;
              int tot = 650;
              double per = ((double)obt/(double)tot)*100;
              per = Math.round(per* 100.0) / 100.0;

              %>
              <tr>
              <td><font size="2" face="courier new"><%out.print(c++);%></font></td>
              <td><b><font size="2" face="courier new"><%out.print(name.toUpperCase());%></b></font></td>
              <td><font size="2" face="courier new"><%out.print(eng);%></font></td>
              <td><font size="2" face="courier new"><%out.print(hindi);%></font></td>
              <td><font size="2" face="courier new"><%out.print(maths);%></font></td>
              <td><font size="2" face="courier new"><%out.print(gk);%></font></td>
              <td><font size="2" face="courier new"><%out.print(draw);%></font></td>
              <td><font size="2" face="courier new"><%out.print(handi);%></font></td>
              <td><font size="2" face="courier new"><%out.print(dance);%></font></td>
              <td><font size="2" face="courier new"><%out.print(hwd);%></font></td>
              <td><font size="2" face="courier new"><%out.print(ewd);%></font></td>
              <td><b><font size="2" face="courier new"><%out.print(obt);%></b></font></td>
              <td><font size="2" face="courier new"><%out.print(tot);%></font></td>
              <td><b><font size="2" face="courier new"><%out.print(per);%></b></font></td>
              </tr><%
              
            }
            %>
            
            </table>
          </div></div><br>
          <!--------------TERM1 ENDS------------------------------->


          <!-----------------------HALF_YEARLY BEGINS---------------------------->
             <button type="button" class="btn btn-primary bt-lg" data-toggle="collapse" data-target="#pc_02">HALF_YEARLY</button><br>
              <div id="pc_0t2_acc">
                
                <div id="pc_02" class="collapse">
                  <br><font size="2" face="courier new"><b>HALF_YEARLY_RESULT</b></font><br>
              <%
              res = stmt.executeQuery("select * from marks_HALF where class='UKG'");
              c = 1;
              %>

            <table class = "table table-sm table-striped table-bordered table-responsive w-auto">
            <tr class="active">
              <th><font size="2" face="courier new"><b>SNO</b></th>
              <th><font size="2" face="courier new"><b>NAME</b></th>
              <th><font size="2" face="courier new"><b>ENG<br>(100)</b></th>
              <th><font size="2" face="courier new"><b>HINDI<br>(100)</b></th>
              <th><font size="2" face="courier new"><b>MATHS<br>(100)</b></th>
              <th><font size="2" face="courier new"><b>GK<br>(100)</b></font></th>
              
              <th><font size="2" face="courier new"><b>DRAWING<br>(50)</b></font></th>
              <th><font size="2" face="courier new"><b>HANDICRAFT<br>(50)</b></font></th>
              <th><font size="2" face="courier new"><b>DANCE<br>MUSIC<br>(50)</b></font></th>
              <th><font size="2" face="courier new"><b>HWD<br>(50)</b></font></th>
              <th><font size="2" face="courier new"><b>EWD<br>(50)</b></font></th>
              <th><font size="2" face="courier new"><b>OBTAINED<br>MARKS</b></font></th>
              <th><font size="2" face="courier new"><b>TOTAL<br>MARKS</b></font></th>
              <th><font size="2" face="courier new"><b>%<br>(100%)</b></font></th>
            </tr>
            
            <%
            while(res.next())
            {
            
            
              String name = res.getString(2);
              int hindi = res.getInt(3);
              int eng = res.getInt(4);
              int maths = res.getInt(5);
              int gk = res.getInt(6);
              int hwd = res.getInt(7);
                  int ewd = res.getInt(8);
                  int draw = res.getInt(9);
                  int handi = res.getInt(10);
                  int dance = res.getInt(11);
                  int sci = res.getInt(12);
                  int scip = res.getInt(13);
                  int social = res.getInt(14);
                  int hist = res.getInt(15);
                  int geo = res.getInt(16);
                  int civics = res.getInt(17);
                  int home = res.getInt(18);
                  int sans = res.getInt(19);
                  int compt = res.getInt(20);
                  int compp = res.getInt(21);
              int obt = eng+hindi+maths+gk+draw+handi+dance+hwd+ewd;
              int tot = 650;
              double per = ((double)obt/(double)tot)*100;
              per = Math.round(per* 100.0) / 100.0;

              %>
              <tr>
              <td><font size="2" face="courier new"><%out.print(c++);%></font></td>
              <td><b><font size="2" face="courier new"><%out.print(name.toUpperCase());%></b></font></td>
              <td><font size="2" face="courier new"><%out.print(eng);%></font></td>
              <td><font size="2" face="courier new"><%out.print(hindi);%></font></td>
              <td><font size="2" face="courier new"><%out.print(maths);%></font></td>
              <td><font size="2" face="courier new"><%out.print(gk);%></font></td>
              <td><font size="2" face="courier new"><%out.print(draw);%></font></td>
              <td><font size="2" face="courier new"><%out.print(handi);%></font></td>
              <td><font size="2" face="courier new"><%out.print(dance);%></font></td>
              <td><font size="2" face="courier new"><%out.print(hwd);%></font></td>
              <td><font size="2" face="courier new"><%out.print(ewd);%></font></td>
              <td><b><font size="2" face="courier new"><%out.print(obt);%></b></font></td>
              <td><font size="2" face="courier new"><%out.print(tot);%></font></td>
              <td><b><font size="2" face="courier new"><%out.print(per);%></b></font></td>
              </tr><%
              
            }
            %>
            
            </table>
          </div></div><br>
          <!--------------HALF_YEARLY ENDS------------------------------->

          <!-----------------------TERM3 BEGINS---------------------------->
             <button type="button" class="btn btn-primary bt-lg" data-toggle="collapse" data-target="#pc_03">TERM 3</button><br>
              <div id="pc_0t3_acc">
                
                <div id="pc_03" class="collapse">
                  <br><font size="2" face="courier new"><b>TERM_3_RESULT</b></font><br>
              <%
              res = stmt.executeQuery("select * from marks_T3 where class='UKG'");
              c = 1;
              %>

            <table class = "table table-sm table-striped table-bordered table-responsive w-auto">
            <tr class="active">
              <th><font size="2" face="courier new"><b>SNO</b></th>
              <th><font size="2" face="courier new"><b>NAME</b></th>
              <th><font size="2" face="courier new"><b>ENG<br>(100)</b></th>
              <th><font size="2" face="courier new"><b>HINDI<br>(100)</b></th>
              <th><font size="2" face="courier new"><b>MATHS<br>(100)</b></th>
              <th><font size="2" face="courier new"><b>GK<br>(100)</b></font></th>
              
              <th><font size="2" face="courier new"><b>DRAWING<br>(50)</b></font></th>
              <th><font size="2" face="courier new"><b>HANDICRAFT<br>(50)</b></font></th>
              <th><font size="2" face="courier new"><b>DANCE<br>MUSIC<br>(50)</b></font></th>
              <th><font size="2" face="courier new"><b>HWD<br>(50)</b></font></th>
              <th><font size="2" face="courier new"><b>EWD<br>(50)</b></font></th>
              <th><font size="2" face="courier new"><b>OBTAINED<br>MARKS</b></font></th>
              <th><font size="2" face="courier new"><b>TOTAL<br>MARKS</b></font></th>
              <th><font size="2" face="courier new"><b>%<br>(100%)</b></font></th>
            </tr>
            
            <%
            while(res.next())
            {
            
            
              String name = res.getString(2);
              int hindi = res.getInt(3);
              int eng = res.getInt(4);
              int maths = res.getInt(5);
              int gk = res.getInt(6);
              int hwd = res.getInt(7);
                  int ewd = res.getInt(8);
                  int draw = res.getInt(9);
                  int handi = res.getInt(10);
                  int dance = res.getInt(11);
                  int sci = res.getInt(12);
                  int scip = res.getInt(13);
                  int social = res.getInt(14);
                  int hist = res.getInt(15);
                  int geo = res.getInt(16);
                  int civics = res.getInt(17);
                  int home = res.getInt(18);
                  int sans = res.getInt(19);
                  int compt = res.getInt(20);
                  int compp = res.getInt(21);
              int obt = eng+hindi+maths+gk+draw+handi+dance+hwd+ewd;
              int tot = 650;
              double per = ((double)obt/(double)tot)*100;
              per = Math.round(per* 100.0) / 100.0;

              %>
              <tr>
              <td><font size="2" face="courier new"><%out.print(c++);%></font></td>
              <td><b><font size="2" face="courier new"><%out.print(name.toUpperCase());%></b></font></td>
              <td><font size="2" face="courier new"><%out.print(eng);%></font></td>
              <td><font size="2" face="courier new"><%out.print(hindi);%></font></td>
              <td><font size="2" face="courier new"><%out.print(maths);%></font></td>
              <td><font size="2" face="courier new"><%out.print(gk);%></font></td>
              <td><font size="2" face="courier new"><%out.print(draw);%></font></td>
              <td><font size="2" face="courier new"><%out.print(handi);%></font></td>
              <td><font size="2" face="courier new"><%out.print(dance);%></font></td>
              <td><font size="2" face="courier new"><%out.print(hwd);%></font></td>
              <td><font size="2" face="courier new"><%out.print(ewd);%></font></td>
              <td><b><font size="2" face="courier new"><%out.print(obt);%></b></font></td>
              <td><font size="2" face="courier new"><%out.print(tot);%></font></td>
              <td><b><font size="2" face="courier new"><%out.print(per);%></b></font></td>
              </tr><%
              
            }
            %>
            
            </table>
          </div></div><br>
          <!--------------TERM3 ENDS------------------------------->

          <!-----------------------END_TERM BEGINS---------------------------->
             <button type="button" class="btn btn-primary bt-lg" data-toggle="collapse" data-target="#pc_04">END_TERM</button><br>
              <div id="pc_0t4_acc">

                <div id="pc_04" class="collapse">
                  <br><font size="2" face="courier new"><b>END_TERM_RESULT</b></font><br>
              <%
              res = stmt.executeQuery("select * from marks_END where class='UKG'");
              c = 1;
              %>

            <table class = "table table-sm table-striped table-bordered table-responsive w-auto">
            <tr class="active">
              <th><font size="2" face="courier new"><b>SNO</b></th>
              <th><font size="2" face="courier new"><b>NAME</b></th>
              <th><font size="2" face="courier new"><b>ENG<br>(100)</b></th>
              <th><font size="2" face="courier new"><b>HINDI<br>(100)</b></th>
              <th><font size="2" face="courier new"><b>MATHS<br>(100)</b></th>
              <th><font size="2" face="courier new"><b>GK<br>(100)</b></font></th>
              
              <th><font size="2" face="courier new"><b>DRAWING<br>(50)</b></font></th>
              <th><font size="2" face="courier new"><b>HANDICRAFT<br>(50)</b></font></th>
              <th><font size="2" face="courier new"><b>DANCE<br>MUSIC<br>(50)</b></font></th>
              <th><font size="2" face="courier new"><b>HWD<br>(50)</b></font></th>
              <th><font size="2" face="courier new"><b>EWD<br>(50)</b></font></th>
              <th><font size="2" face="courier new"><b>OBTAINED<br>MARKS</b></font></th>
              <th><font size="2" face="courier new"><b>TOTAL<br>MARKS</b></font></th>
              <th><font size="2" face="courier new"><b>%<br>(100%)</b></font></th>
            </tr>
            
            <%
            while(res.next())
            {
            
            
              String name = res.getString(2);
              int hindi = res.getInt(3);
              int eng = res.getInt(4);
              int maths = res.getInt(5);
              int gk = res.getInt(6);
              int hwd = res.getInt(7);
                  int ewd = res.getInt(8);
                  int draw = res.getInt(9);
                  int handi = res.getInt(10);
                  int dance = res.getInt(11);
                  int sci = res.getInt(12);
                  int scip = res.getInt(13);
                  int social = res.getInt(14);
                  int hist = res.getInt(15);
                  int geo = res.getInt(16);
                  int civics = res.getInt(17);
                  int home = res.getInt(18);
                  int sans = res.getInt(19);
                  int compt = res.getInt(20);
                  int compp = res.getInt(21);
              int obt = eng+hindi+maths+gk+draw+handi+dance+hwd+ewd;
              int tot = 650;
              double per = ((double)obt/(double)tot)*100;
              per = Math.round(per* 100.0) / 100.0;

              %>
              <tr>
              <td><font size="2" face="courier new"><%out.print(c++);%></font></td>
              <td><b><font size="2" face="courier new"><%out.print(name.toUpperCase());%></b></font></td>
              <td><font size="2" face="courier new"><%out.print(eng);%></font></td>
              <td><font size="2" face="courier new"><%out.print(hindi);%></font></td>
              <td><font size="2" face="courier new"><%out.print(maths);%></font></td>
              <td><font size="2" face="courier new"><%out.print(gk);%></font></td>
              <td><font size="2" face="courier new"><%out.print(draw);%></font></td>
              <td><font size="2" face="courier new"><%out.print(handi);%></font></td>
              <td><font size="2" face="courier new"><%out.print(dance);%></font></td>
              <td><font size="2" face="courier new"><%out.print(hwd);%></font></td>
              <td><font size="2" face="courier new"><%out.print(ewd);%></font></td>
              <td><b><font size="2" face="courier new"><%out.print(obt);%></b></font></td>
              <td><font size="2" face="courier new"><%out.print(tot);%></font></td>
              <td><b><font size="2" face="courier new"><%out.print(per);%></b></font></td>
              </tr><%
              
            }
            %>
            
            </table>
          </div></div><br>
          <!--------------END_TERM ENDS------------------------------->

      </div>

      <div id="pc1" style="display: none;">
        <!--INNER ACCORDIONS FOR DIFFERENT TERMINAL-->
        <%
       
            %>
            <font size="6" face="courier new"><b>CLASS_I_RESULT</b></font><br>
            <!-----------------------TERM1 BEGINS---------------------------->
             <button type="button" class="btn btn-primary bt-lg" data-toggle="collapse" data-target="#pc11">TERM 1</button><br>
              <div id="pc1t1_acc">
                
                <div id="pc11" class="collapse">
                  <br><font size="2" face="courier new"><b>TERM_1_RESULT</b></font><br>
              <%
              res = stmt.executeQuery("select * from marksT1 where class='I'");
              c = 1;
              %>

            <table class = "table table-sm table-striped table-bordered table-responsive w-auto">
            <tr class="active">
              <th><font size="2" face="courier new"><b>SNO</b></th>
              <th><font size="2" face="courier new"><b>NAME</b></th>
              <th><font size="2" face="courier new"><b>ENG<br>(100)</b></th>
              <th><font size="2" face="courier new"><b>HINDI<br>(100)</b></th>
              <th><font size="2" face="courier new"><b>MATHS<br>(100)</b></th>
              <th><font size="2" face="courier new"><b>GK<br>(100)</b></font></th>
              
              <th><font size="2" face="courier new"><b>DRAWING<br>(50)</b></font></th>
              <th><font size="2" face="courier new"><b>HANDICRAFT<br>(50)</b></font></th>
              <th><font size="2" face="courier new"><b>DANCE<br>MUSIC<br>(50)</b></font></th>
              <th><font size="2" face="courier new"><b>HWD<br>(50)</b></font></th>
              <th><font size="2" face="courier new"><b>EWD<br>(50)</b></font></th>
              <th><font size="2" face="courier new"><b>SOCIAL<br>SCIENCE<br>(100)</b></font></th>
              <th><font size="2" face="courier new"><b>SCIENCE<br>(90)</b></font></th>
              <th><font size="2" face="courier new"><b>SCIENCE<br>PRAC.<br>(10)</b></font></th>
              <th><font size="2" face="courier new"><b>SANSKRIT<br>(100)</b></font></th>
              <th><font size="2" face="courier new"><b>OBTAINED<br>MARKS</b></font></th>
              <th><font size="2" face="courier new"><b>TOTAL<br>MARKS</b></font></th>
              <th><font size="2" face="courier new"><b>%<br>(100%)</b></font></th>
            </tr>
            
            <%
            while(res.next())
            {
            
            
              String name = res.getString(2);
              int hindi = res.getInt(3);
              int eng = res.getInt(4);
              int maths = res.getInt(5);
              int gk = res.getInt(6);
              int hwd = res.getInt(7);
                  int ewd = res.getInt(8);
                  int draw = res.getInt(9);
                  int handi = res.getInt(10);
                  int dance = res.getInt(11);
                  int sci = res.getInt(12);
                  int scip = res.getInt(13);
                  int social = res.getInt(14);
                  int hist = res.getInt(15);
                  int geo = res.getInt(16);
                  int civics = res.getInt(17);
                  int home = res.getInt(18);
                  int sans = res.getInt(19);
                  int compt = res.getInt(20);
                  int compp = res.getInt(21);
              int obt = eng+hindi+maths+gk+draw+handi+dance+hwd+ewd+sci+scip+social+sans;
              int tot = 950;
              double per = ((double)obt/(double)tot)*100;
              per = Math.round(per* 100.0) / 100.0;

              %>
              <tr>
              <td><font size="2" face="courier new"><%out.print(c++);%></font></td>
              <td><b><font size="2" face="courier new"><%out.print(name.toUpperCase());%></b></font></td>
              <td><font size="2" face="courier new"><%out.print(eng);%></font></td>
              <td><font size="2" face="courier new"><%out.print(hindi);%></font></td>
              <td><font size="2" face="courier new"><%out.print(maths);%></font></td>
              <td><font size="2" face="courier new"><%out.print(gk);%></font></td>
              <td><font size="2" face="courier new"><%out.print(draw);%></font></td>
              <td><font size="2" face="courier new"><%out.print(handi);%></font></td>
              <td><font size="2" face="courier new"><%out.print(dance);%></font></td>
              <td><font size="2" face="courier new"><%out.print(hwd);%></font></td>
              <td><font size="2" face="courier new"><%out.print(ewd);%></font></td>
              <td><font size="2" face="courier new"><%out.print(social);%></font></td>
              <td><font size="2" face="courier new"><%out.print(sci);%></font></td>
              <td><font size="2" face="courier new"><%out.print(scip);%></font></td>
              <td><font size="2" face="courier new"><%out.print(sans);%></font></td>
              <td><b><font size="2" face="courier new"><%out.print(obt);%></b></font></td>
              <td><font size="2" face="courier new"><%out.print(tot);%></font></td>
              <td><b><font size="2" face="courier new"><%out.print(per);%></b></font></td>
              </tr><%
              
            }
            %>
            
            </table>
          </div></div><br>
          <!--------------TERM1 ENDS------------------------------->


          <!-----------------------HALF_YEARLY BEGINS---------------------------->
             <button type="button" class="btn btn-primary bt-lg" data-toggle="collapse" data-target="#pc12">HALF_YEARLY</button><br>
              <div id="pc1t2_acc">
                
                <div id="pc12" class="collapse">
                  <br><font size="2" face="courier new"><b>HALF_YEARLY_RESULT</b></font><br>
              <%
              res = stmt.executeQuery("select * from marks_HALF where class='I'");
              c = 1;
              %>

            <table class = "table table-sm table-striped table-bordered table-responsive w-auto">
            <tr class="active">
              <th><font size="2" face="courier new"><b>SNO</b></th>
              <th><font size="2" face="courier new"><b>NAME</b></th>
              <th><font size="2" face="courier new"><b>ENG<br>(100)</b></th>
              <th><font size="2" face="courier new"><b>HINDI<br>(100)</b></th>
              <th><font size="2" face="courier new"><b>MATHS<br>(100)</b></th>
              <th><font size="2" face="courier new"><b>GK<br>(100)</b></font></th>
              
              <th><font size="2" face="courier new"><b>DRAWING<br>(50)</b></font></th>
              <th><font size="2" face="courier new"><b>HANDICRAFT<br>(50)</b></font></th>
              <th><font size="2" face="courier new"><b>DANCE<br>MUSIC<br>(50)</b></font></th>
              <th><font size="2" face="courier new"><b>HWD<br>(50)</b></font></th>
              <th><font size="2" face="courier new"><b>EWD<br>(50)</b></font></th>
              <th><font size="2" face="courier new"><b>SOCIAL<br>SCIENCE<br>(100)</b></font></th>
              <th><font size="2" face="courier new"><b>SCIENCE<br>(90)</b></font></th>
              <th><font size="2" face="courier new"><b>SCIENCE<br>PRAC.<br>(10)</b></font></th>
              <th><font size="2" face="courier new"><b>SANSKRIT<br>(100)</b></font></th>
              <th><font size="2" face="courier new"><b>OBTAINED<br>MARKS</b></font></th>
              <th><font size="2" face="courier new"><b>TOTAL<br>MARKS</b></font></th>
              <th><font size="2" face="courier new"><b>%<br>(100%)</b></font></th>
            </tr>
            
            <%
            while(res.next())
            {
            
            
              String name = res.getString(2);
              int hindi = res.getInt(3);
              int eng = res.getInt(4);
              int maths = res.getInt(5);
              int gk = res.getInt(6);
              int hwd = res.getInt(7);
                  int ewd = res.getInt(8);
                  int draw = res.getInt(9);
                  int handi = res.getInt(10);
                  int dance = res.getInt(11);
                  int sci = res.getInt(12);
                  int scip = res.getInt(13);
                  int social = res.getInt(14);
                  int hist = res.getInt(15);
                  int geo = res.getInt(16);
                  int civics = res.getInt(17);
                  int home = res.getInt(18);
                  int sans = res.getInt(19);
                  int compt = res.getInt(20);
                  int compp = res.getInt(21);
              int obt = eng+hindi+maths+gk+draw+handi+dance+hwd+ewd+social+sci+scip+sans;
              int tot = 950;
              double per = ((double)obt/(double)tot)*100;
              per = Math.round(per* 100.0) / 100.0;

              %>
              <tr>
              <td><font size="2" face="courier new"><%out.print(c++);%></font></td>
              <td><b><font size="2" face="courier new"><%out.print(name.toUpperCase());%></b></font></td>
              <td><font size="2" face="courier new"><%out.print(eng);%></font></td>
              <td><font size="2" face="courier new"><%out.print(hindi);%></font></td>
              <td><font size="2" face="courier new"><%out.print(maths);%></font></td>
              <td><font size="2" face="courier new"><%out.print(gk);%></font></td>
              <td><font size="2" face="courier new"><%out.print(draw);%></font></td>
              <td><font size="2" face="courier new"><%out.print(handi);%></font></td>
              <td><font size="2" face="courier new"><%out.print(dance);%></font></td>
              <td><font size="2" face="courier new"><%out.print(hwd);%></font></td>
              <td><font size="2" face="courier new"><%out.print(ewd);%></font></td>
              <td><font size="2" face="courier new"><%out.print(social);%></font></td>
              <td><font size="2" face="courier new"><%out.print(sci);%></font></td>
              <td><font size="2" face="courier new"><%out.print(scip);%></font></td>
              <td><font size="2" face="courier new"><%out.print(sans);%></font></td>
              <td><b><font size="2" face="courier new"><%out.print(obt);%></b></font></td>
              <td><font size="2" face="courier new"><%out.print(tot);%></font></td>
              <td><b><font size="2" face="courier new"><%out.print(per);%></b></font></td>
              </tr><%
              
            }
            %>
            
            </table>
          </div></div><br>
          <!--------------HALF_YEARLY ENDS------------------------------->

          <!-----------------------TERM3 BEGINS---------------------------->
             <button type="button" class="btn btn-primary bt-lg" data-toggle="collapse" data-target="#pc13">TERM 3</button><br>
              <div id="pc1t3_acc">
                
                <div id="pc13" class="collapse">
                  <br><font size="2" face="courier new"><b>TERM_3_RESULT</b></font><br>
              <%
              res = stmt.executeQuery("select * from marks_T3 where class='I'");
              c = 1;
              %>

            <table class = "table table-sm table-striped table-bordered table-responsive w-auto">
            <tr class="active">
              <th><font size="2" face="courier new"><b>SNO</b></th>
              <th><font size="2" face="courier new"><b>NAME</b></th>
              <th><font size="2" face="courier new"><b>ENG<br>(100)</b></th>
              <th><font size="2" face="courier new"><b>HINDI<br>(100)</b></th>
              <th><font size="2" face="courier new"><b>MATHS<br>(100)</b></th>
              <th><font size="2" face="courier new"><b>GK<br>(100)</b></font></th>
              
              <th><font size="2" face="courier new"><b>DRAWING<br>(50)</b></font></th>
              <th><font size="2" face="courier new"><b>HANDICRAFT<br>(50)</b></font></th>
              <th><font size="2" face="courier new"><b>DANCE<br>MUSIC<br>(50)</b></font></th>
              <th><font size="2" face="courier new"><b>HWD<br>(50)</b></font></th>
              <th><font size="2" face="courier new"><b>EWD<br>(50)</b></font></th>
              <th><font size="2" face="courier new"><b>SOCIAL<br>SCIENCE<br>(100)</b></font></th>
              <th><font size="2" face="courier new"><b>SCIENCE<br>(90)</b></font></th>
              <th><font size="2" face="courier new"><b>SCIENCE<br>PRAC.<br>(10)</b></font></th>
              <th><font size="2" face="courier new"><b>SANSKRIT<br>(100)</b></font></th>
              <th><font size="2" face="courier new"><b>OBTAINED<br>MARKS</b></font></th>
              <th><font size="2" face="courier new"><b>TOTAL<br>MARKS</b></font></th>
              <th><font size="2" face="courier new"><b>%<br>(100%)</b></font></th>
            </tr>
            
            <%
            while(res.next())
            {
            
            
              String name = res.getString(2);
              int hindi = res.getInt(3);
              int eng = res.getInt(4);
              int maths = res.getInt(5);
              int gk = res.getInt(6);
              int hwd = res.getInt(7);
                  int ewd = res.getInt(8);
                  int draw = res.getInt(9);
                  int handi = res.getInt(10);
                  int dance = res.getInt(11);
                  int sci = res.getInt(12);
                  int scip = res.getInt(13);
                  int social = res.getInt(14);
                  int hist = res.getInt(15);
                  int geo = res.getInt(16);
                  int civics = res.getInt(17);
                  int home = res.getInt(18);
                  int sans = res.getInt(19);
                  int compt = res.getInt(20);
                  int compp = res.getInt(21);
              int obt = eng+hindi+maths+gk+draw+handi+dance+hwd+ewd+sci+scip+social+sans;
              int tot = 950;
              double per = ((double)obt/(double)tot)*100;
              per = Math.round(per* 100.0) / 100.0;

              %>
              <tr>
              <td><font size="2" face="courier new"><%out.print(c++);%></font></td>
              <td><b><font size="2" face="courier new"><%out.print(name.toUpperCase());%></b></font></td>
              <td><font size="2" face="courier new"><%out.print(eng);%></font></td>
              <td><font size="2" face="courier new"><%out.print(hindi);%></font></td>
              <td><font size="2" face="courier new"><%out.print(maths);%></font></td>
              <td><font size="2" face="courier new"><%out.print(gk);%></font></td>
              <td><font size="2" face="courier new"><%out.print(draw);%></font></td>
              <td><font size="2" face="courier new"><%out.print(handi);%></font></td>
              <td><font size="2" face="courier new"><%out.print(dance);%></font></td>
              <td><font size="2" face="courier new"><%out.print(hwd);%></font></td>
              <td><font size="2" face="courier new"><%out.print(ewd);%></font></td>
              <td><font size="2" face="courier new"><%out.print(social);%></font></td>
              <td><font size="2" face="courier new"><%out.print(sci);%></font></td>
              <td><font size="2" face="courier new"><%out.print(scip);%></font></td>
              <td><font size="2" face="courier new"><%out.print(sans);%></font></td>
              <td><b><font size="2" face="courier new"><%out.print(obt);%></b></font></td>
              <td><font size="2" face="courier new"><%out.print(tot);%></font></td>
              <td><b><font size="2" face="courier new"><%out.print(per);%></b></font></td>
              </tr><%
              
            }
            %>
            
            </table>
          </div></div><br>
          <!--------------TERM3 ENDS------------------------------->

          <!-----------------------END_TERM BEGINS---------------------------->
             <button type="button" class="btn btn-primary bt-lg" data-toggle="collapse" data-target="#pc14">END_TERM</button><br>
              <div id="pc1t4_acc">

                <div id="pc14" class="collapse">
                  <br><font size="2" face="courier new"><b>END_TERM_RESULT</b></font><br>
              <%
              res = stmt.executeQuery("select * from marks_END where class='I'");
              c = 1;
              %>

            <table class = "table table-sm table-striped table-bordered table-responsive w-auto">
            <tr class="active">
              <th><font size="2" face="courier new"><b>SNO</b></th>
              <th><font size="2" face="courier new"><b>NAME</b></th>
              <th><font size="2" face="courier new"><b>ENG<br>(100)</b></th>
              <th><font size="2" face="courier new"><b>HINDI<br>(100)</b></th>
              <th><font size="2" face="courier new"><b>MATHS<br>(100)</b></th>
              <th><font size="2" face="courier new"><b>GK<br>(100)</b></font></th>
              
              <th><font size="2" face="courier new"><b>DRAWING<br>(50)</b></font></th>
              <th><font size="2" face="courier new"><b>HANDICRAFT<br>(50)</b></font></th>
              <th><font size="2" face="courier new"><b>DANCE<br>MUSIC<br>(50)</b></font></th>
              <th><font size="2" face="courier new"><b>HWD<br>(50)</b></font></th>
              <th><font size="2" face="courier new"><b>EWD<br>(50)</b></font></th>
              <th><font size="2" face="courier new"><b>SOCIAL<br>SCIENCE<br>(100)</b></font></th>
              <th><font size="2" face="courier new"><b>SCIENCE<br>(90)</b></font></th>
              <th><font size="2" face="courier new"><b>SCIENCE<br>PRAC.<br>(10)</b></font></th>
              <th><font size="2" face="courier new"><b>SANSKRIT<br>(100)</b></font></th>
              <th><font size="2" face="courier new"><b>OBTAINED<br>MARKS</b></font></th>
              <th><font size="2" face="courier new"><b>TOTAL<br>MARKS</b></font></th>
              <th><font size="2" face="courier new"><b>%<br>(100%)</b></font></th>
            </tr>
            
            <%
            while(res.next())
            {
            
            
              String name = res.getString(2);
              int hindi = res.getInt(3);
              int eng = res.getInt(4);
              int maths = res.getInt(5);
              int gk = res.getInt(6);
              int hwd = res.getInt(7);
                  int ewd = res.getInt(8);
                  int draw = res.getInt(9);
                  int handi = res.getInt(10);
                  int dance = res.getInt(11);
                  int sci = res.getInt(12);
                  int scip = res.getInt(13);
                  int social = res.getInt(14);
                  int hist = res.getInt(15);
                  int geo = res.getInt(16);
                  int civics = res.getInt(17);
                  int home = res.getInt(18);
                  int sans = res.getInt(19);
                  int compt = res.getInt(20);
                  int compp = res.getInt(21);
              int obt = eng+hindi+maths+gk+draw+handi+dance+hwd+ewd+sci+scip+social+sans;
              int tot = 950;
              double per = ((double)obt/(double)tot)*100;
              per = Math.round(per* 100.0) / 100.0;

              %>
              <tr>
              <td><font size="2" face="courier new"><%out.print(c++);%></font></td>
              <td><b><font size="2" face="courier new"><%out.print(name.toUpperCase());%></b></font></td>
              <td><font size="2" face="courier new"><%out.print(eng);%></font></td>
              <td><font size="2" face="courier new"><%out.print(hindi);%></font></td>
              <td><font size="2" face="courier new"><%out.print(maths);%></font></td>
              <td><font size="2" face="courier new"><%out.print(gk);%></font></td>
              <td><font size="2" face="courier new"><%out.print(draw);%></font></td>
              <td><font size="2" face="courier new"><%out.print(handi);%></font></td>
              <td><font size="2" face="courier new"><%out.print(dance);%></font></td>
              <td><font size="2" face="courier new"><%out.print(hwd);%></font></td>
              <td><font size="2" face="courier new"><%out.print(ewd);%></font></td>
              <td><font size="2" face="courier new"><%out.print(social);%></font></td>
              <td><font size="2" face="courier new"><%out.print(sci);%></font></td>
              <td><font size="2" face="courier new"><%out.print(scip);%></font></td>
              <td><font size="2" face="courier new"><%out.print(sans);%></font></td>
              <td><b><font size="2" face="courier new"><%out.print(obt);%></b></font></td>
              <td><font size="2" face="courier new"><%out.print(tot);%></font></td>
              <td><b><font size="2" face="courier new"><%out.print(per);%></b></font></td>
              </tr><%
              
            }
            %>
            
            </table>
          </div></div><br>
          <!--------------END_TERM ENDS------------------------------->

      </div>

      <div id="pc2" style="display: none;">

        <!--INNER ACCORDIONS FOR DIFFERENT TERMINAL-->
        <%
       
            %>
            <font size="6" face="courier new"><b>CLASS_II_RESULT</b></font><br>
            <!-----------------------TERM1 BEGINS---------------------------->
             <button type="button" class="btn btn-primary bt-lg" data-toggle="collapse" data-target="#pc21">TERM 1</button><br>
              <div id="pc2t1_acc">
                
                <div id="pc21" class="collapse">
                  <br><font size="2" face="courier new"><b>TERM_1_RESULT</b></font><br>
              <%
              res = stmt.executeQuery("select * from marksT1 where class='II'");
              c = 1;
              %>

            <table class = "table table-sm table-striped table-bordered table-responsive w-auto">
            <tr class="active">
              <th><font size="2" face="courier new"><b>SNO</b></th>
              <th><font size="2" face="courier new"><b>NAME</b></th>
              <th><font size="2" face="courier new"><b>ENG<br>(100)</b></th>
              <th><font size="2" face="courier new"><b>HINDI<br>(100)</b></th>
              <th><font size="2" face="courier new"><b>MATHS<br>(100)</b></th>
              <th><font size="2" face="courier new"><b>GK<br>(100)</b></font></th>
              
              <th><font size="2" face="courier new"><b>DRAWING<br>(50)</b></font></th>
              <th><font size="2" face="courier new"><b>HANDICRAFT<br>(50)</b></font></th>
              <th><font size="2" face="courier new"><b>DANCE<br>MUSIC<br>(50)</b></font></th>
              <th><font size="2" face="courier new"><b>HWD<br>(50)</b></font></th>
              <th><font size="2" face="courier new"><b>EWD<br>(50)</b></font></th>
              <th><font size="2" face="courier new"><b>SOCIAL<br>SCIENCE<br>(100)</b></font></th>
              <th><font size="2" face="courier new"><b>SCIENCE<br>(90)</b></font></th>
              <th><font size="2" face="courier new"><b>SCIENCE<br>PRAC.<br>(10)</b></font></th>
              <th><font size="2" face="courier new"><b>SANSKRIT<br>(100)</b></font></th>
              <th><font size="2" face="courier new"><b>COMPUTER<br>THEORY<br>(50)</b></font></th>
              <th><font size="2" face="courier new"><b>COMPUTER<br>PRAC.<br>(50)</b></font></th>
              <th><font size="2" face="courier new"><b>OBTAINED<br>MARKS</b></font></th>
              <th><font size="2" face="courier new"><b>TOTAL<br>MARKS</b></font></th>
              <th><font size="2" face="courier new"><b>%<br>(100%)</b></font></th>
            </tr>
            
            <%
            while(res.next())
            {
            
            
              String name = res.getString(2);
              int hindi = res.getInt(3);
              int eng = res.getInt(4);
              int maths = res.getInt(5);
              int gk = res.getInt(6);
              int hwd = res.getInt(7);
                  int ewd = res.getInt(8);
                  int draw = res.getInt(9);
                  int handi = res.getInt(10);
                  int dance = res.getInt(11);
                  int sci = res.getInt(12);
                  int scip = res.getInt(13);
                  int social = res.getInt(14);
                  int hist = res.getInt(15);
                  int geo = res.getInt(16);
                  int civics = res.getInt(17);
                  int home = res.getInt(18);
                  int sans = res.getInt(19);
                  int compt = res.getInt(20);
                  int compp = res.getInt(21);
              int obt = eng+hindi+maths+gk+draw+handi+dance+hwd+ewd+sci+scip+social+sans+compt+compp;
              int tot = 1050;
              double per = ((double)obt/(double)tot)*100;
              per = Math.round(per* 100.0) / 100.0;

              %>
              <tr>
              <td><font size="2" face="courier new"><%out.print(c++);%></font></td>
              <td><b><font size="2" face="courier new"><%out.print(name.toUpperCase());%></b></font></td>
              <td><font size="2" face="courier new"><%out.print(eng);%></font></td>
              <td><font size="2" face="courier new"><%out.print(hindi);%></font></td>
              <td><font size="2" face="courier new"><%out.print(maths);%></font></td>
              <td><font size="2" face="courier new"><%out.print(gk);%></font></td>
              <td><font size="2" face="courier new"><%out.print(draw);%></font></td>
              <td><font size="2" face="courier new"><%out.print(handi);%></font></td>
              <td><font size="2" face="courier new"><%out.print(dance);%></font></td>
              <td><font size="2" face="courier new"><%out.print(hwd);%></font></td>
              <td><font size="2" face="courier new"><%out.print(ewd);%></font></td>
              <td><font size="2" face="courier new"><%out.print(social);%></font></td>
              <td><font size="2" face="courier new"><%out.print(sci);%></font></td>
              <td><font size="2" face="courier new"><%out.print(scip);%></font></td>
              <td><font size="2" face="courier new"><%out.print(sans);%></font></td>
              <td><font size="2" face="courier new"><%out.print(compt);%></font></td>
              <td><font size="2" face="courier new"><%out.print(compp);%></font></td>
              <td><b><font size="2" face="courier new"><%out.print(obt);%></b></font></td>
              <td><font size="2" face="courier new"><%out.print(tot);%></font></td>
              <td><b><font size="2" face="courier new"><%out.print(per);%></b></font></td>
              </tr><%
              
            }
            %>
            
            </table>
          </div></div><br>
          <!--------------TERM1 ENDS------------------------------->


          <!-----------------------HALF_YEARLY BEGINS---------------------------->
             <button type="button" class="btn btn-primary bt-lg" data-toggle="collapse" data-target="#pc22">HALF_YEARLY</button><br>
              <div id="pc2t2_acc">
                
                <div id="pc22" class="collapse">
                  <br><font size="2" face="courier new"><b>HALF_YEARLY_RESULT</b></font><br>
              <%
              res = stmt.executeQuery("select * from marks_HALF where class='II'");
              c = 1;
              %>

            <table class = "table table-sm table-striped table-bordered table-responsive w-auto">
            <tr class="active">
              <th><font size="2" face="courier new"><b>SNO</b></th>
              <th><font size="2" face="courier new"><b>NAME</b></th>
              <th><font size="2" face="courier new"><b>ENG<br>(100)</b></th>
              <th><font size="2" face="courier new"><b>HINDI<br>(100)</b></th>
              <th><font size="2" face="courier new"><b>MATHS<br>(100)</b></th>
              <th><font size="2" face="courier new"><b>GK<br>(100)</b></font></th>
              
              <th><font size="2" face="courier new"><b>DRAWING<br>(50)</b></font></th>
              <th><font size="2" face="courier new"><b>HANDICRAFT<br>(50)</b></font></th>
              <th><font size="2" face="courier new"><b>DANCE<br>MUSIC<br>(50)</b></font></th>
              <th><font size="2" face="courier new"><b>HWD<br>(50)</b></font></th>
              <th><font size="2" face="courier new"><b>EWD<br>(50)</b></font></th>
              <th><font size="2" face="courier new"><b>SOCIAL<br>SCIENCE<br>(100)</b></font></th>
              <th><font size="2" face="courier new"><b>SCIENCE<br>(90)</b></font></th>
              <th><font size="2" face="courier new"><b>SCIENCE<br>PRAC.<br>(10)</b></font></th>
              <th><font size="2" face="courier new"><b>SANSKRIT<br>(100)</b></font></th>
              <th><font size="2" face="courier new"><b>COMPUTER<br>THEORY<br>(50)</b></font></th>
              <th><font size="2" face="courier new"><b>COMPUTER<br>PRAC.<br>(50)</b></font></th>
              <th><font size="2" face="courier new"><b>OBTAINED<br>MARKS</b></font></th>
              <th><font size="2" face="courier new"><b>TOTAL<br>MARKS</b></font></th>
              <th><font size="2" face="courier new"><b>%<br>(100%)</b></font></th>
            </tr>
            
            <%
            while(res.next())
            {
            
            
              String name = res.getString(2);
              int hindi = res.getInt(3);
              int eng = res.getInt(4);
              int maths = res.getInt(5);
              int gk = res.getInt(6);
              int hwd = res.getInt(7);
                  int ewd = res.getInt(8);
                  int draw = res.getInt(9);
                  int handi = res.getInt(10);
                  int dance = res.getInt(11);
                  int sci = res.getInt(12);
                  int scip = res.getInt(13);
                  int social = res.getInt(14);
                  int hist = res.getInt(15);
                  int geo = res.getInt(16);
                  int civics = res.getInt(17);
                  int home = res.getInt(18);
                  int sans = res.getInt(19);
                  int compt = res.getInt(20);
                  int compp = res.getInt(21);
              int obt = eng+hindi+maths+gk+draw+handi+dance+hwd+ewd+social+sci+scip+sans+compp+compt;
              int tot = 1050;
              double per = ((double)obt/(double)tot)*100;
              per = Math.round(per* 100.0) / 100.0;

              %>
              <tr>
              <td><font size="2" face="courier new"><%out.print(c++);%></font></td>
              <td><b><font size="2" face="courier new"><%out.print(name.toUpperCase());%></b></font></td>
              <td><font size="2" face="courier new"><%out.print(eng);%></font></td>
              <td><font size="2" face="courier new"><%out.print(hindi);%></font></td>
              <td><font size="2" face="courier new"><%out.print(maths);%></font></td>
              <td><font size="2" face="courier new"><%out.print(gk);%></font></td>
              <td><font size="2" face="courier new"><%out.print(draw);%></font></td>
              <td><font size="2" face="courier new"><%out.print(handi);%></font></td>
              <td><font size="2" face="courier new"><%out.print(dance);%></font></td>
              <td><font size="2" face="courier new"><%out.print(hwd);%></font></td>
              <td><font size="2" face="courier new"><%out.print(ewd);%></font></td>
              <td><font size="2" face="courier new"><%out.print(social);%></font></td>
              <td><font size="2" face="courier new"><%out.print(sci);%></font></td>
              <td><font size="2" face="courier new"><%out.print(scip);%></font></td>
              <td><font size="2" face="courier new"><%out.print(sans);%></font></td>
              <td><font size="2" face="courier new"><%out.print(compt);%></font></td>
              <td><font size="2" face="courier new"><%out.print(compp);%></font></td>
              <td><b><font size="2" face="courier new"><%out.print(obt);%></b></font></td>
              <td><font size="2" face="courier new"><%out.print(tot);%></font></td>
              <td><b><font size="2" face="courier new"><%out.print(per);%></b></font></td>
              </tr><%
              
            }
            %>
            
            </table>
          </div></div><br>
          <!--------------HALF_YEARLY ENDS------------------------------->

          <!-----------------------TERM3 BEGINS---------------------------->
             <button type="button" class="btn btn-primary bt-lg" data-toggle="collapse" data-target="#pc23">TERM 3</button><br>
              <div id="pc2t3_acc">
                
                <div id="pc23" class="collapse">
                  <br><font size="2" face="courier new"><b>TERM_3_RESULT</b></font><br>
              <%
              res = stmt.executeQuery("select * from marks_T3 where class='II'");
              c = 1;
              %>

            <table class = "table table-sm table-striped table-bordered table-responsive w-auto">
            <tr class="active">
              <th><font size="2" face="courier new"><b>SNO</b></th>
              <th><font size="2" face="courier new"><b>NAME</b></th>
              <th><font size="2" face="courier new"><b>ENG<br>(100)</b></th>
              <th><font size="2" face="courier new"><b>HINDI<br>(100)</b></th>
              <th><font size="2" face="courier new"><b>MATHS<br>(100)</b></th>
              <th><font size="2" face="courier new"><b>GK<br>(100)</b></font></th>
              
              <th><font size="2" face="courier new"><b>DRAWING<br>(50)</b></font></th>
              <th><font size="2" face="courier new"><b>HANDICRAFT<br>(50)</b></font></th>
              <th><font size="2" face="courier new"><b>DANCE<br>MUSIC<br>(50)</b></font></th>
              <th><font size="2" face="courier new"><b>HWD<br>(50)</b></font></th>
              <th><font size="2" face="courier new"><b>EWD<br>(50)</b></font></th>
              <th><font size="2" face="courier new"><b>SOCIAL<br>SCIENCE<br>(100)</b></font></th>
              <th><font size="2" face="courier new"><b>SCIENCE<br>(90)</b></font></th>
              <th><font size="2" face="courier new"><b>SCIENCE<br>PRAC.<br>(10)</b></font></th>
              <th><font size="2" face="courier new"><b>SANSKRIT<br>(100)</b></font></th>
              <th><font size="2" face="courier new"><b>COMPUTER<br>THEORY<br>(50)</b></font></th>
              <th><font size="2" face="courier new"><b>COMPUTER<br>PRAC.<br>(50)</b></font></th>
              <th><font size="2" face="courier new"><b>OBTAINED<br>MARKS</b></font></th>
              <th><font size="2" face="courier new"><b>TOTAL<br>MARKS</b></font></th>
              <th><font size="2" face="courier new"><b>%<br>(100%)</b></font></th>
            </tr>
            
            <%
            while(res.next())
            {
            
            
              String name = res.getString(2);
              int hindi = res.getInt(3);
              int eng = res.getInt(4);
              int maths = res.getInt(5);
              int gk = res.getInt(6);
              int hwd = res.getInt(7);
                  int ewd = res.getInt(8);
                  int draw = res.getInt(9);
                  int handi = res.getInt(10);
                  int dance = res.getInt(11);
                  int sci = res.getInt(12);
                  int scip = res.getInt(13);
                  int social = res.getInt(14);
                  int hist = res.getInt(15);
                  int geo = res.getInt(16);
                  int civics = res.getInt(17);
                  int home = res.getInt(18);
                  int sans = res.getInt(19);
                  int compt = res.getInt(20);
                  int compp = res.getInt(21);
              int obt = eng+hindi+maths+gk+draw+handi+dance+hwd+ewd+sci+scip+social+sans+compp+compt;
              int tot = 1050;
              double per = ((double)obt/(double)tot)*100;
              per = Math.round(per* 100.0) / 100.0;

              %>
              <tr>
              <td><font size="2" face="courier new"><%out.print(c++);%></font></td>
              <td><b><font size="2" face="courier new"><%out.print(name.toUpperCase());%></b></font></td>
              <td><font size="2" face="courier new"><%out.print(eng);%></font></td>
              <td><font size="2" face="courier new"><%out.print(hindi);%></font></td>
              <td><font size="2" face="courier new"><%out.print(maths);%></font></td>
              <td><font size="2" face="courier new"><%out.print(gk);%></font></td>
              <td><font size="2" face="courier new"><%out.print(draw);%></font></td>
              <td><font size="2" face="courier new"><%out.print(handi);%></font></td>
              <td><font size="2" face="courier new"><%out.print(dance);%></font></td>
              <td><font size="2" face="courier new"><%out.print(hwd);%></font></td>
              <td><font size="2" face="courier new"><%out.print(ewd);%></font></td>
              <td><font size="2" face="courier new"><%out.print(social);%></font></td>
              <td><font size="2" face="courier new"><%out.print(sci);%></font></td>
              <td><font size="2" face="courier new"><%out.print(scip);%></font></td>
              <td><font size="2" face="courier new"><%out.print(sans);%></font></td>
              <td><font size="2" face="courier new"><%out.print(compt);%></font></td>
              <td><font size="2" face="courier new"><%out.print(compp);%></font></td>
              <td><b><font size="2" face="courier new"><%out.print(obt);%></b></font></td>
              <td><font size="2" face="courier new"><%out.print(tot);%></font></td>
              <td><b><font size="2" face="courier new"><%out.print(per);%></b></font></td>
              </tr><%
              
            }
            %>
            
            </table>
          </div></div><br>
          <!--------------TERM3 ENDS------------------------------->

          <!-----------------------END_TERM BEGINS---------------------------->
             <button type="button" class="btn btn-primary bt-lg" data-toggle="collapse" data-target="#pc24">END_TERM</button><br>
              <div id="pc2t4_acc">

                <div id="pc24" class="collapse">
                  <br><font size="2" face="courier new"><b>END_TERM_RESULT</b></font><br>
              <%
              res = stmt.executeQuery("select * from marks_END where class='II'");
              c = 1;
              %>

            <table class = "table table-sm table-striped table-bordered table-responsive w-auto">
            <tr class="active">
              <th><font size="2" face="courier new"><b>SNO</b></th>
              <th><font size="2" face="courier new"><b>NAME</b></th>
              <th><font size="2" face="courier new"><b>ENG<br>(100)</b></th>
              <th><font size="2" face="courier new"><b>HINDI<br>(100)</b></th>
              <th><font size="2" face="courier new"><b>MATHS<br>(100)</b></th>
              <th><font size="2" face="courier new"><b>GK<br>(100)</b></font></th>
              
              <th><font size="2" face="courier new"><b>DRAWING<br>(50)</b></font></th>
              <th><font size="2" face="courier new"><b>HANDICRAFT<br>(50)</b></font></th>
              <th><font size="2" face="courier new"><b>DANCE<br>MUSIC<br>(50)</b></font></th>
              <th><font size="2" face="courier new"><b>HWD<br>(50)</b></font></th>
              <th><font size="2" face="courier new"><b>EWD<br>(50)</b></font></th>
              <th><font size="2" face="courier new"><b>SOCIAL<br>SCIENCE<br>(100)</b></font></th>
              <th><font size="2" face="courier new"><b>SCIENCE<br>(90)</b></font></th>
              <th><font size="2" face="courier new"><b>SCIENCE<br>PRAC.<br>(10)</b></font></th>
              <th><font size="2" face="courier new"><b>SANSKRIT<br>(100)</b></font></th>
              <th><font size="2" face="courier new"><b>COMPUTER<br>THEORY<br>(50)</b></font></th>
              <th><font size="2" face="courier new"><b>COMPUTER<br>PRAC.<br>(50)</b></font></th>
              <th><font size="2" face="courier new"><b>OBTAINED<br>MARKS</b></font></th>
              <th><font size="2" face="courier new"><b>TOTAL<br>MARKS</b></font></th>
              <th><font size="2" face="courier new"><b>%<br>(100%)</b></font></th>
            </tr>
            
            <%
            while(res.next())
            {
            
            
              String name = res.getString(2);
              int hindi = res.getInt(3);
              int eng = res.getInt(4);
              int maths = res.getInt(5);
              int gk = res.getInt(6);
              int hwd = res.getInt(7);
                  int ewd = res.getInt(8);
                  int draw = res.getInt(9);
                  int handi = res.getInt(10);
                  int dance = res.getInt(11);
                  int sci = res.getInt(12);
                  int scip = res.getInt(13);
                  int social = res.getInt(14);
                  int hist = res.getInt(15);
                  int geo = res.getInt(16);
                  int civics = res.getInt(17);
                  int home = res.getInt(18);
                  int sans = res.getInt(19);
                  int compt = res.getInt(20);
                  int compp = res.getInt(21);
              int obt = eng+hindi+maths+gk+draw+handi+dance+hwd+ewd+sci+scip+social+sans+compp+compt;
              int tot = 1050;
              double per = ((double)obt/(double)tot)*100;
              per = Math.round(per* 100.0) / 100.0;

              %>
              <tr>
              <td><font size="2" face="courier new"><%out.print(c++);%></font></td>
              <td><b><font size="2" face="courier new"><%out.print(name.toUpperCase());%></b></font></td>
              <td><font size="2" face="courier new"><%out.print(eng);%></font></td>
              <td><font size="2" face="courier new"><%out.print(hindi);%></font></td>
              <td><font size="2" face="courier new"><%out.print(maths);%></font></td>
              <td><font size="2" face="courier new"><%out.print(gk);%></font></td>
              <td><font size="2" face="courier new"><%out.print(draw);%></font></td>
              <td><font size="2" face="courier new"><%out.print(handi);%></font></td>
              <td><font size="2" face="courier new"><%out.print(dance);%></font></td>
              <td><font size="2" face="courier new"><%out.print(hwd);%></font></td>
              <td><font size="2" face="courier new"><%out.print(ewd);%></font></td>
              <td><font size="2" face="courier new"><%out.print(social);%></font></td>
              <td><font size="2" face="courier new"><%out.print(sci);%></font></td>
              <td><font size="2" face="courier new"><%out.print(scip);%></font></td>
              <td><font size="2" face="courier new"><%out.print(sans);%></font></td>
              <td><font size="2" face="courier new"><%out.print(compt);%></font></td>
              <td><font size="2" face="courier new"><%out.print(compp);%></font></td>
              <td><b><font size="2" face="courier new"><%out.print(obt);%></b></font></td>
              <td><font size="2" face="courier new"><%out.print(tot);%></font></td>
              <td><b><font size="2" face="courier new"><%out.print(per);%></b></font></td>
              </tr><%
              
            }
            %>
            
            </table>
          </div></div><br>
          <!--------------END_TERM ENDS------------------------------->

      </div>

      <div id="pc3" style="display: none;">

        <!--INNER ACCORDIONS FOR DIFFERENT TERMINAL-->
        <%
       
            %>
            <font size="6" face="courier new"><b>CLASS_III_RESULT</b></font><br>
            <!-----------------------TERM1 BEGINS---------------------------->
             <button type="button" class="btn btn-primary bt-lg" data-toggle="collapse" data-target="#pc31">TERM 1</button><br>
              <div id="pc3t1_acc">
                
                <div id="pc31" class="collapse">
                  <br><font size="2" face="courier new"><b>TERM_1_RESULT</b></font><br>
              <%
              res = stmt.executeQuery("select * from marksT1 where class='III'");
              c = 1;
              %>

            <table class = "table table-sm table-striped table-bordered table-responsive w-auto">
            <tr class="active">
              <th><font size="2" face="courier new"><b>SNO</b></th>
              <th><font size="2" face="courier new"><b>NAME</b></th>
              <th><font size="2" face="courier new"><b>ENG<br>(100)</b></th>
              <th><font size="2" face="courier new"><b>HINDI<br>(100)</b></th>
              <th><font size="2" face="courier new"><b>MATHS<br>(100)</b></th>
              <th><font size="2" face="courier new"><b>GK<br>(100)</b></font></th>
              
              <th><font size="2" face="courier new"><b>DRAWING<br>(50)</b></font></th>
              <th><font size="2" face="courier new"><b>HANDICRAFT<br>(50)</b></font></th>
              <th><font size="2" face="courier new"><b>DANCE<br>MUSIC<br>(50)</b></font></th>
              <th><font size="2" face="courier new"><b>HWD<br>(50)</b></font></th>
              <th><font size="2" face="courier new"><b>EWD<br>(50)</b></font></th>
              <th><font size="2" face="courier new"><b>SOCIAL<br>SCIENCE<br>(100)</b></font></th>
              <th><font size="2" face="courier new"><b>SCIENCE<br>(90)</b></font></th>
              <th><font size="2" face="courier new"><b>SCIENCE<br>PRAC.<br>(10)</b></font></th>
              <th><font size="2" face="courier new"><b>SANSKRIT<br>(100)</b></font></th>
              <th><font size="2" face="courier new"><b>COMPUTER<br>THEORY<br>(50)</b></font></th>
              <th><font size="2" face="courier new"><b>COMPUTER<br>PRAC.<br>(50)</b></font></th>
              <th><font size="2" face="courier new"><b>OBTAINED<br>MARKS</b></font></th>
              <th><font size="2" face="courier new"><b>TOTAL<br>MARKS</b></font></th>
              <th><font size="2" face="courier new"><b>%<br>(100%)</b></font></th>
            </tr>
            
            <%
            while(res.next())
            {
            
            
              String name = res.getString(2);
              int hindi = res.getInt(3);
              int eng = res.getInt(4);
              int maths = res.getInt(5);
              int gk = res.getInt(6);
              int hwd = res.getInt(7);
                  int ewd = res.getInt(8);
                  int draw = res.getInt(9);
                  int handi = res.getInt(10);
                  int dance = res.getInt(11);
                  int sci = res.getInt(12);
                  int scip = res.getInt(13);
                  int social = res.getInt(14);
                  int hist = res.getInt(15);
                  int geo = res.getInt(16);
                  int civics = res.getInt(17);
                  int home = res.getInt(18);
                  int sans = res.getInt(19);
                  int compt = res.getInt(20);
                  int compp = res.getInt(21);
              int obt = eng+hindi+maths+gk+draw+handi+dance+hwd+ewd+sci+scip+social+sans+compt+compp;
              int tot = 1050;
              double per = ((double)obt/(double)tot)*100;
              per = Math.round(per* 100.0) / 100.0;

              %>
              <tr>
              <td><font size="2" face="courier new"><%out.print(c++);%></font></td>
              <td><b><font size="2" face="courier new"><%out.print(name.toUpperCase());%></b></font></td>
              <td><font size="2" face="courier new"><%out.print(eng);%></font></td>
              <td><font size="2" face="courier new"><%out.print(hindi);%></font></td>
              <td><font size="2" face="courier new"><%out.print(maths);%></font></td>
              <td><font size="2" face="courier new"><%out.print(gk);%></font></td>
              <td><font size="2" face="courier new"><%out.print(draw);%></font></td>
              <td><font size="2" face="courier new"><%out.print(handi);%></font></td>
              <td><font size="2" face="courier new"><%out.print(dance);%></font></td>
              <td><font size="2" face="courier new"><%out.print(hwd);%></font></td>
              <td><font size="2" face="courier new"><%out.print(ewd);%></font></td>
              <td><font size="2" face="courier new"><%out.print(social);%></font></td>
              <td><font size="2" face="courier new"><%out.print(sci);%></font></td>
              <td><font size="2" face="courier new"><%out.print(scip);%></font></td>
              <td><font size="2" face="courier new"><%out.print(sans);%></font></td>
              <td><font size="2" face="courier new"><%out.print(compt);%></font></td>
              <td><font size="2" face="courier new"><%out.print(compp);%></font></td>
              <td><b><font size="2" face="courier new"><%out.print(obt);%></b></font></td>
              <td><font size="2" face="courier new"><%out.print(tot);%></font></td>
              <td><b><font size="2" face="courier new"><%out.print(per);%></b></font></td>
              </tr><%
              
            }
            %>
            
            </table>
          </div></div><br>
          <!--------------TERM1 ENDS------------------------------->


          <!-----------------------HALF_YEARLY BEGINS---------------------------->
             <button type="button" class="btn btn-primary bt-lg" data-toggle="collapse" data-target="#pc32">HALF_YEARLY</button><br>
              <div id="pc3t2_acc">
                
                <div id="pc32" class="collapse">
                  <br><font size="2" face="courier new"><b>HALF_YEARLY_RESULT</b></font><br>
              <%
              res = stmt.executeQuery("select * from marks_HALF where class='III'");
              c = 1;
              %>

            <table class = "table table-sm table-striped table-bordered table-responsive w-auto">
            <tr class="active">
              <th><font size="2" face="courier new"><b>SNO</b></th>
              <th><font size="2" face="courier new"><b>NAME</b></th>
              <th><font size="2" face="courier new"><b>ENG<br>(100)</b></th>
              <th><font size="2" face="courier new"><b>HINDI<br>(100)</b></th>
              <th><font size="2" face="courier new"><b>MATHS<br>(100)</b></th>
              <th><font size="2" face="courier new"><b>GK<br>(100)</b></font></th>
              
              <th><font size="2" face="courier new"><b>DRAWING<br>(50)</b></font></th>
              <th><font size="2" face="courier new"><b>HANDICRAFT<br>(50)</b></font></th>
              <th><font size="2" face="courier new"><b>DANCE<br>MUSIC<br>(50)</b></font></th>
              <th><font size="2" face="courier new"><b>HWD<br>(50)</b></font></th>
              <th><font size="2" face="courier new"><b>EWD<br>(50)</b></font></th>
              <th><font size="2" face="courier new"><b>SOCIAL<br>SCIENCE<br>(100)</b></font></th>
              <th><font size="2" face="courier new"><b>SCIENCE<br>(90)</b></font></th>
              <th><font size="2" face="courier new"><b>SCIENCE<br>PRAC.<br>(10)</b></font></th>
              <th><font size="2" face="courier new"><b>SANSKRIT<br>(100)</b></font></th>
              <th><font size="2" face="courier new"><b>COMPUTER<br>THEORY<br>(50)</b></font></th>
              <th><font size="2" face="courier new"><b>COMPUTER<br>PRAC.<br>(50)</b></font></th>
              <th><font size="2" face="courier new"><b>OBTAINED<br>MARKS</b></font></th>
              <th><font size="2" face="courier new"><b>TOTAL<br>MARKS</b></font></th>
              <th><font size="2" face="courier new"><b>%<br>(100%)</b></font></th>
            </tr>
            
            <%
            while(res.next())
            {
            
            
              String name = res.getString(2);
              int hindi = res.getInt(3);
              int eng = res.getInt(4);
              int maths = res.getInt(5);
              int gk = res.getInt(6);
              int hwd = res.getInt(7);
                  int ewd = res.getInt(8);
                  int draw = res.getInt(9);
                  int handi = res.getInt(10);
                  int dance = res.getInt(11);
                  int sci = res.getInt(12);
                  int scip = res.getInt(13);
                  int social = res.getInt(14);
                  int hist = res.getInt(15);
                  int geo = res.getInt(16);
                  int civics = res.getInt(17);
                  int home = res.getInt(18);
                  int sans = res.getInt(19);
                  int compt = res.getInt(20);
                  int compp = res.getInt(21);
              int obt = eng+hindi+maths+gk+draw+handi+dance+hwd+ewd+social+sci+scip+sans+compp+compt;
              int tot = 1050;
              double per = ((double)obt/(double)tot)*100;
              per = Math.round(per* 100.0) / 100.0;

              %>
              <tr>
              <td><font size="2" face="courier new"><%out.print(c++);%></font></td>
              <td><b><font size="2" face="courier new"><%out.print(name.toUpperCase());%></b></font></td>
              <td><font size="2" face="courier new"><%out.print(eng);%></font></td>
              <td><font size="2" face="courier new"><%out.print(hindi);%></font></td>
              <td><font size="2" face="courier new"><%out.print(maths);%></font></td>
              <td><font size="2" face="courier new"><%out.print(gk);%></font></td>
              <td><font size="2" face="courier new"><%out.print(draw);%></font></td>
              <td><font size="2" face="courier new"><%out.print(handi);%></font></td>
              <td><font size="2" face="courier new"><%out.print(dance);%></font></td>
              <td><font size="2" face="courier new"><%out.print(hwd);%></font></td>
              <td><font size="2" face="courier new"><%out.print(ewd);%></font></td>
              <td><font size="2" face="courier new"><%out.print(social);%></font></td>
              <td><font size="2" face="courier new"><%out.print(sci);%></font></td>
              <td><font size="2" face="courier new"><%out.print(scip);%></font></td>
              <td><font size="2" face="courier new"><%out.print(sans);%></font></td>
              <td><font size="2" face="courier new"><%out.print(compt);%></font></td>
              <td><font size="2" face="courier new"><%out.print(compp);%></font></td>
              <td><b><font size="2" face="courier new"><%out.print(obt);%></b></font></td>
              <td><font size="2" face="courier new"><%out.print(tot);%></font></td>
              <td><b><font size="2" face="courier new"><%out.print(per);%></b></font></td>
              </tr><%
              
            }
            %>
            
            </table>
          </div></div><br>
          <!--------------HALF_YEARLY ENDS------------------------------->

          <!-----------------------TERM3 BEGINS---------------------------->
             <button type="button" class="btn btn-primary bt-lg" data-toggle="collapse" data-target="#pc33">TERM 3</button><br>
              <div id="pc3t3_acc">
                
                <div id="pc33" class="collapse">
                  <br><font size="2" face="courier new"><b>TERM_3_RESULT</b></font><br>
              <%
              res = stmt.executeQuery("select * from marks_T3 where class='III'");
              c = 1;
              %>

            <table class = "table table-sm table-striped table-bordered table-responsive w-auto">
            <tr class="active">
              <th><font size="2" face="courier new"><b>SNO</b></th>
              <th><font size="2" face="courier new"><b>NAME</b></th>
              <th><font size="2" face="courier new"><b>ENG<br>(100)</b></th>
              <th><font size="2" face="courier new"><b>HINDI<br>(100)</b></th>
              <th><font size="2" face="courier new"><b>MATHS<br>(100)</b></th>
              <th><font size="2" face="courier new"><b>GK<br>(100)</b></font></th>
              
              <th><font size="2" face="courier new"><b>DRAWING<br>(50)</b></font></th>
              <th><font size="2" face="courier new"><b>HANDICRAFT<br>(50)</b></font></th>
              <th><font size="2" face="courier new"><b>DANCE<br>MUSIC<br>(50)</b></font></th>
              <th><font size="2" face="courier new"><b>HWD<br>(50)</b></font></th>
              <th><font size="2" face="courier new"><b>EWD<br>(50)</b></font></th>
              <th><font size="2" face="courier new"><b>SOCIAL<br>SCIENCE<br>(100)</b></font></th>
              <th><font size="2" face="courier new"><b>SCIENCE<br>(90)</b></font></th>
              <th><font size="2" face="courier new"><b>SCIENCE<br>PRAC.<br>(10)</b></font></th>
              <th><font size="2" face="courier new"><b>SANSKRIT<br>(100)</b></font></th>
              <th><font size="2" face="courier new"><b>COMPUTER<br>THEORY<br>(50)</b></font></th>
              <th><font size="2" face="courier new"><b>COMPUTER<br>PRAC.<br>(50)</b></font></th>
              <th><font size="2" face="courier new"><b>OBTAINED<br>MARKS</b></font></th>
              <th><font size="2" face="courier new"><b>TOTAL<br>MARKS</b></font></th>
              <th><font size="2" face="courier new"><b>%<br>(100%)</b></font></th>
            </tr>
            
            <%
            while(res.next())
            {
            
            
              String name = res.getString(2);
              int hindi = res.getInt(3);
              int eng = res.getInt(4);
              int maths = res.getInt(5);
              int gk = res.getInt(6);
              int hwd = res.getInt(7);
                  int ewd = res.getInt(8);
                  int draw = res.getInt(9);
                  int handi = res.getInt(10);
                  int dance = res.getInt(11);
                  int sci = res.getInt(12);
                  int scip = res.getInt(13);
                  int social = res.getInt(14);
                  int hist = res.getInt(15);
                  int geo = res.getInt(16);
                  int civics = res.getInt(17);
                  int home = res.getInt(18);
                  int sans = res.getInt(19);
                  int compt = res.getInt(20);
                  int compp = res.getInt(21);
              int obt = eng+hindi+maths+gk+draw+handi+dance+hwd+ewd+sci+scip+social+sans+compp+compt;
              int tot = 1050;
              double per = ((double)obt/(double)tot)*100;
              per = Math.round(per* 100.0) / 100.0;

              %>
              <tr>
              <td><font size="2" face="courier new"><%out.print(c++);%></font></td>
              <td><b><font size="2" face="courier new"><%out.print(name.toUpperCase());%></b></font></td>
              <td><font size="2" face="courier new"><%out.print(eng);%></font></td>
              <td><font size="2" face="courier new"><%out.print(hindi);%></font></td>
              <td><font size="2" face="courier new"><%out.print(maths);%></font></td>
              <td><font size="2" face="courier new"><%out.print(gk);%></font></td>
              <td><font size="2" face="courier new"><%out.print(draw);%></font></td>
              <td><font size="2" face="courier new"><%out.print(handi);%></font></td>
              <td><font size="2" face="courier new"><%out.print(dance);%></font></td>
              <td><font size="2" face="courier new"><%out.print(hwd);%></font></td>
              <td><font size="2" face="courier new"><%out.print(ewd);%></font></td>
              <td><font size="2" face="courier new"><%out.print(social);%></font></td>
              <td><font size="2" face="courier new"><%out.print(sci);%></font></td>
              <td><font size="2" face="courier new"><%out.print(scip);%></font></td>
              <td><font size="2" face="courier new"><%out.print(sans);%></font></td>
              <td><font size="2" face="courier new"><%out.print(compt);%></font></td>
              <td><font size="2" face="courier new"><%out.print(compp);%></font></td>
              <td><b><font size="2" face="courier new"><%out.print(obt);%></b></font></td>
              <td><font size="2" face="courier new"><%out.print(tot);%></font></td>
              <td><b><font size="2" face="courier new"><%out.print(per);%></b></font></td>
              </tr><%
              
            }
            %>
            
            </table>
          </div></div><br>
          <!--------------TERM3 ENDS------------------------------->

          <!-----------------------END_TERM BEGINS---------------------------->
             <button type="button" class="btn btn-primary bt-lg" data-toggle="collapse" data-target="#pc34">END_TERM</button><br>
              <div id="pc3t4_acc">

                <div id="pc34" class="collapse">
                  <br><font size="2" face="courier new"><b>END_TERM_RESULT</b></font><br>
              <%
              res = stmt.executeQuery("select * from marks_END where class='III'");
              c = 1;
              %>

            <table class = "table table-sm table-striped table-bordered table-responsive w-auto">
            <tr class="active">
              <th><font size="2" face="courier new"><b>SNO</b></th>
              <th><font size="2" face="courier new"><b>NAME</b></th>
              <th><font size="2" face="courier new"><b>ENG<br>(100)</b></th>
              <th><font size="2" face="courier new"><b>HINDI<br>(100)</b></th>
              <th><font size="2" face="courier new"><b>MATHS<br>(100)</b></th>
              <th><font size="2" face="courier new"><b>GK<br>(100)</b></font></th>
              
              <th><font size="2" face="courier new"><b>DRAWING<br>(50)</b></font></th>
              <th><font size="2" face="courier new"><b>HANDICRAFT<br>(50)</b></font></th>
              <th><font size="2" face="courier new"><b>DANCE<br>MUSIC<br>(50)</b></font></th>
              <th><font size="2" face="courier new"><b>HWD<br>(50)</b></font></th>
              <th><font size="2" face="courier new"><b>EWD<br>(50)</b></font></th>
              <th><font size="2" face="courier new"><b>SOCIAL<br>SCIENCE<br>(100)</b></font></th>
              <th><font size="2" face="courier new"><b>SCIENCE<br>(90)</b></font></th>
              <th><font size="2" face="courier new"><b>SCIENCE<br>PRAC.<br>(10)</b></font></th>
              <th><font size="2" face="courier new"><b>SANSKRIT<br>(100)</b></font></th>
              <th><font size="2" face="courier new"><b>COMPUTER<br>THEORY<br>(50)</b></font></th>
              <th><font size="2" face="courier new"><b>COMPUTER<br>PRAC.<br>(50)</b></font></th>
              <th><font size="2" face="courier new"><b>OBTAINED<br>MARKS</b></font></th>
              <th><font size="2" face="courier new"><b>TOTAL<br>MARKS</b></font></th>
              <th><font size="2" face="courier new"><b>%<br>(100%)</b></font></th>
            </tr>
            
            <%
            while(res.next())
            {
            
            
              String name = res.getString(2);
              int hindi = res.getInt(3);
              int eng = res.getInt(4);
              int maths = res.getInt(5);
              int gk = res.getInt(6);
              int hwd = res.getInt(7);
                  int ewd = res.getInt(8);
                  int draw = res.getInt(9);
                  int handi = res.getInt(10);
                  int dance = res.getInt(11);
                  int sci = res.getInt(12);
                  int scip = res.getInt(13);
                  int social = res.getInt(14);
                  int hist = res.getInt(15);
                  int geo = res.getInt(16);
                  int civics = res.getInt(17);
                  int home = res.getInt(18);
                  int sans = res.getInt(19);
                  int compt = res.getInt(20);
                  int compp = res.getInt(21);
              int obt = eng+hindi+maths+gk+draw+handi+dance+hwd+ewd+sci+scip+social+sans+compp+compt;
              int tot = 1050;
              double per = ((double)obt/(double)tot)*100;
              per = Math.round(per* 100.0) / 100.0;

              %>
              <tr>
              <td><font size="2" face="courier new"><%out.print(c++);%></font></td>
              <td><b><font size="2" face="courier new"><%out.print(name.toUpperCase());%></b></font></td>
              <td><font size="2" face="courier new"><%out.print(eng);%></font></td>
              <td><font size="2" face="courier new"><%out.print(hindi);%></font></td>
              <td><font size="2" face="courier new"><%out.print(maths);%></font></td>
              <td><font size="2" face="courier new"><%out.print(gk);%></font></td>
              <td><font size="2" face="courier new"><%out.print(draw);%></font></td>
              <td><font size="2" face="courier new"><%out.print(handi);%></font></td>
              <td><font size="2" face="courier new"><%out.print(dance);%></font></td>
              <td><font size="2" face="courier new"><%out.print(hwd);%></font></td>
              <td><font size="2" face="courier new"><%out.print(ewd);%></font></td>
              <td><font size="2" face="courier new"><%out.print(social);%></font></td>
              <td><font size="2" face="courier new"><%out.print(sci);%></font></td>
              <td><font size="2" face="courier new"><%out.print(scip);%></font></td>
              <td><font size="2" face="courier new"><%out.print(sans);%></font></td>
              <td><font size="2" face="courier new"><%out.print(compt);%></font></td>
              <td><font size="2" face="courier new"><%out.print(compp);%></font></td>
              <td><b><font size="2" face="courier new"><%out.print(obt);%></b></font></td>
              <td><font size="2" face="courier new"><%out.print(tot);%></font></td>
              <td><b><font size="2" face="courier new"><%out.print(per);%></b></font></td>
              </tr><%
              
            }
            %>
            
            </table>
          </div></div><br>
          <!--------------END_TERM ENDS------------------------------->

      </div>


      <div id="pc4" style="display: none;">

          
        <!--INNER ACCORDIONS FOR DIFFERENT TERMINAL-->
        <%
       
            %>
            <font size="6" face="courier new"><b>CLASS_IV_RESULT</b></font><br>
            <!-----------------------TERM1 BEGINS---------------------------->
             <button type="button" class="btn btn-primary bt-lg" data-toggle="collapse" data-target="#pc41">TERM 1</button><br>
              <div id="pc4t1_acc">
                
                <div id="pc41" class="collapse">
                  <br><font size="2" face="courier new"><b>TERM_1_RESULT</b></font><br>
              <%
              res = stmt.executeQuery("select * from marksT1 where class='IV'");
              c = 1;
              %>

            <table class = "table table-sm table-striped table-bordered table-responsive w-auto" style="overflow:auto;">
            <tr class="active">
              <th><font size="2" face="courier new"><b>SNO</b></th>
              <th><font size="2" face="courier new"><b>NAME</b></th>
              <th><font size="2" face="courier new"><b>ENG<br>(100)</b></th>
              <th><font size="2" face="courier new"><b>HINDI<br>(100)</b></th>
              <th><font size="2" face="courier new"><b>MATHS<br>(100)</b></th>
              <th><font size="2" face="courier new"><b>GK<br>(100)</b></font></th>
              
              <th><font size="2" face="courier new"><b>DRAWING<br>(50)</b></font></th>
              <th><font size="2" face="courier new"><b>HANDICRAFT<br>(50)</b></font></th>
              <th><font size="2" face="courier new"><b>DANCE<br>MUSIC<br>(50)</b></font></th>
              <th><font size="2" face="courier new"><b>HWD<br>(50)</b></font></th>
              <th><font size="2" face="courier new"><b>EWD<br>(50)</b></font></th>
              <th><font size="2" face="courier new"><b>SOCIAL<br>SCIENCE<br>(100)</b></font></th>
              <th><font size="2" face="courier new"><b>SCIENCE<br>(90)</b></font></th>
              <th><font size="2" face="courier new"><b>SCIENCE<br>PRAC.<br>(10)</b></font></th>
              <th><font size="2" face="courier new"><b>SANSKRIT<br>(100)</b></font></th>
              <th><font size="2" face="courier new"><b>COMPUTER<br>THEORY<br>(50)</b></font></th>
              <th><font size="2" face="courier new"><b>COMPUTER<br>PRAC.<br>(50)</b></font></th>
              <th><font size="2" face="courier new"><b>OBTAINED<br>MARKS</b></font></th>
              <th><font size="2" face="courier new"><b>TOTAL<br>MARKS</b></font></th>
              <th><font size="2" face="courier new"><b>%<br>(100%)</b></font></th>
            </tr>
            
            <%
            while(res.next())
            {
            
            
              String name = res.getString(2);
              int hindi = res.getInt(3);
              int eng = res.getInt(4);
              int maths = res.getInt(5);
              int gk = res.getInt(6);
              int hwd = res.getInt(7);
                  int ewd = res.getInt(8);
                  int draw = res.getInt(9);
                  int handi = res.getInt(10);
                  int dance = res.getInt(11);
                  int sci = res.getInt(12);
                  int scip = res.getInt(13);
                  int social = res.getInt(14);
                  int hist = res.getInt(15);
                  int geo = res.getInt(16);
                  int civics = res.getInt(17);
                  int home = res.getInt(18);
                  int sans = res.getInt(19);
                  int compt = res.getInt(20);
                  int compp = res.getInt(21);
              int obt = eng+hindi+maths+gk+draw+handi+dance+hwd+ewd+sci+scip+social+sans+compt+compp;
              int tot = 1050;
              double per = ((double)obt/(double)tot)*100;
              per = Math.round(per* 100.0) / 100.0;

              %>
              <tr>
              <td><font size="2" face="courier new"><%out.print(c++);%></font></td>
              <td><b><font size="2" face="courier new"><%out.print(name.toUpperCase());%></b></font></td>
              <td><font size="2" face="courier new"><%out.print(eng);%></font></td>
              <td><font size="2" face="courier new"><%out.print(hindi);%></font></td>
              <td><font size="2" face="courier new"><%out.print(maths);%></font></td>
              <td><font size="2" face="courier new"><%out.print(gk);%></font></td>
              <td><font size="2" face="courier new"><%out.print(draw);%></font></td>
              <td><font size="2" face="courier new"><%out.print(handi);%></font></td>
              <td><font size="2" face="courier new"><%out.print(dance);%></font></td>
              <td><font size="2" face="courier new"><%out.print(hwd);%></font></td>
              <td><font size="2" face="courier new"><%out.print(ewd);%></font></td>
              <td><font size="2" face="courier new"><%out.print(social);%></font></td>
              <td><font size="2" face="courier new"><%out.print(sci);%></font></td>
              <td><font size="2" face="courier new"><%out.print(scip);%></font></td>
              <td><font size="2" face="courier new"><%out.print(sans);%></font></td>
              <td><font size="2" face="courier new"><%out.print(compt);%></font></td>
              <td><font size="2" face="courier new"><%out.print(compp);%></font></td>
              <td><b><font size="2" face="courier new"><%out.print(obt);%></b></font></td>
              <td><font size="2" face="courier new"><%out.print(tot);%></font></td>
              <td><b><font size="2" face="courier new"><%out.print(per);%></b></font></td>
              </tr><%
              
            }
            %>
            
            </table>
          </div></div><br>
          <!--------------TERM1 ENDS------------------------------->


          <!-----------------------HALF_YEARLY BEGINS---------------------------->
             <button type="button" class="btn btn-primary bt-lg" data-toggle="collapse" data-target="#pc42">HALF_YEARLY</button><br>
              <div id="pc4t2_acc">
                
                <div id="pc42" class="collapse">
                  <br><font size="2" face="courier new"><b>HALF_YEARLY_RESULT</b></font><br>
              <%
              res = stmt.executeQuery("select * from marks_HALF where class='IV'");
              c = 1;
              %>

            <table class = "table table-sm table-striped table-bordered table-responsive w-auto" style="overflow:auto;">
            <tr class="active">
              <th><font size="2" face="courier new"><b>SNO</b></th>
              <th><font size="2" face="courier new"><b>NAME</b></th>
              <th><font size="2" face="courier new"><b>ENG<br>(100)</b></th>
              <th><font size="2" face="courier new"><b>HINDI<br>(100)</b></th>
              <th><font size="2" face="courier new"><b>MATHS<br>(100)</b></th>
              <th><font size="2" face="courier new"><b>GK<br>(100)</b></font></th>
              
              <th><font size="2" face="courier new"><b>DRAWING<br>(50)</b></font></th>
              <th><font size="2" face="courier new"><b>HANDICRAFT<br>(50)</b></font></th>
              <th><font size="2" face="courier new"><b>DANCE<br>MUSIC<br>(50)</b></font></th>
              <th><font size="2" face="courier new"><b>HWD<br>(50)</b></font></th>
              <th><font size="2" face="courier new"><b>EWD<br>(50)</b></font></th>
              <th><font size="2" face="courier new"><b>SOCIAL<br>SCIENCE<br>(100)</b></font></th>
              <th><font size="2" face="courier new"><b>SCIENCE<br>(90)</b></font></th>
              <th><font size="2" face="courier new"><b>SCIENCE<br>PRAC.<br>(10)</b></font></th>
              <th><font size="2" face="courier new"><b>SANSKRIT<br>(100)</b></font></th>
              <th><font size="2" face="courier new"><b>COMPUTER<br>THEORY<br>(50)</b></font></th>
              <th><font size="2" face="courier new"><b>COMPUTER<br>PRAC.<br>(50)</b></font></th>
              <th><font size="2" face="courier new"><b>OBTAINED<br>MARKS</b></font></th>
              <th><font size="2" face="courier new"><b>TOTAL<br>MARKS</b></font></th>
              <th><font size="2" face="courier new"><b>%<br>(100%)</b></font></th>
            </tr>
            
            <%
            while(res.next())
            {
            
            
              String name = res.getString(2);
              int hindi = res.getInt(3);
              int eng = res.getInt(4);
              int maths = res.getInt(5);
              int gk = res.getInt(6);
              int hwd = res.getInt(7);
                  int ewd = res.getInt(8);
                  int draw = res.getInt(9);
                  int handi = res.getInt(10);
                  int dance = res.getInt(11);
                  int sci = res.getInt(12);
                  int scip = res.getInt(13);
                  int social = res.getInt(14);
                  int hist = res.getInt(15);
                  int geo = res.getInt(16);
                  int civics = res.getInt(17);
                  int home = res.getInt(18);
                  int sans = res.getInt(19);
                  int compt = res.getInt(20);
                  int compp = res.getInt(21);
              int obt = eng+hindi+maths+gk+draw+handi+dance+hwd+ewd+social+sci+scip+sans+compp+compt;
              int tot = 1050;
              double per = ((double)obt/(double)tot)*100;
              per = Math.round(per* 100.0) / 100.0;

              %>
              <tr>
              <td><font size="2" face="courier new"><%out.print(c++);%></font></td>
              <td><b><font size="2" face="courier new"><%out.print(name.toUpperCase());%></b></font></td>
              <td><font size="2" face="courier new"><%out.print(eng);%></font></td>
              <td><font size="2" face="courier new"><%out.print(hindi);%></font></td>
              <td><font size="2" face="courier new"><%out.print(maths);%></font></td>
              <td><font size="2" face="courier new"><%out.print(gk);%></font></td>
              <td><font size="2" face="courier new"><%out.print(draw);%></font></td>
              <td><font size="2" face="courier new"><%out.print(handi);%></font></td>
              <td><font size="2" face="courier new"><%out.print(dance);%></font></td>
              <td><font size="2" face="courier new"><%out.print(hwd);%></font></td>
              <td><font size="2" face="courier new"><%out.print(ewd);%></font></td>
              <td><font size="2" face="courier new"><%out.print(social);%></font></td>
              <td><font size="2" face="courier new"><%out.print(sci);%></font></td>
              <td><font size="2" face="courier new"><%out.print(scip);%></font></td>
              <td><font size="2" face="courier new"><%out.print(sans);%></font></td>
              <td><font size="2" face="courier new"><%out.print(compt);%></font></td>
              <td><font size="2" face="courier new"><%out.print(compp);%></font></td>
              <td><b><font size="2" face="courier new"><%out.print(obt);%></b></font></td>
              <td><font size="2" face="courier new"><%out.print(tot);%></font></td>
              <td><b><font size="2" face="courier new"><%out.print(per);%></b></font></td>
              </tr><%
              
            }
            %>
            
            </table>
          </div></div><br>
          <!--------------HALF_YEARLY ENDS------------------------------->

          <!-----------------------TERM3 BEGINS---------------------------->
             <button type="button" class="btn btn-primary bt-lg" data-toggle="collapse" data-target="#pc43">TERM 3</button><br>
              <div id="pc4t3_acc">
                
                <div id="pc43" class="collapse">
                  <br><font size="2" face="courier new"><b>TERM_3_RESULT</b></font><br>
              <%
              res = stmt.executeQuery("select * from marks_T3 where class='IV'");
              c = 1;
              %>

            <table class = "table table-sm table-striped table-bordered table-responsive w-auto" style="overflow:auto;">
            <tr class="active">
              <th><font size="2" face="courier new"><b>SNO</b></th>
              <th><font size="2" face="courier new"><b>NAME</b></th>
              <th><font size="2" face="courier new"><b>ENG<br>(100)</b></th>
              <th><font size="2" face="courier new"><b>HINDI<br>(100)</b></th>
              <th><font size="2" face="courier new"><b>MATHS<br>(100)</b></th>
              <th><font size="2" face="courier new"><b>GK<br>(100)</b></font></th>
              
              <th><font size="2" face="courier new"><b>DRAWING<br>(50)</b></font></th>
              <th><font size="2" face="courier new"><b>HANDICRAFT<br>(50)</b></font></th>
              <th><font size="2" face="courier new"><b>DANCE<br>MUSIC<br>(50)</b></font></th>
              <th><font size="2" face="courier new"><b>HWD<br>(50)</b></font></th>
              <th><font size="2" face="courier new"><b>EWD<br>(50)</b></font></th>
              <th><font size="2" face="courier new"><b>SOCIAL<br>SCIENCE<br>(100)</b></font></th>
              <th><font size="2" face="courier new"><b>SCIENCE<br>(90)</b></font></th>
              <th><font size="2" face="courier new"><b>SCIENCE<br>PRAC.<br>(10)</b></font></th>
              <th><font size="2" face="courier new"><b>SANSKRIT<br>(100)</b></font></th>
              <th><font size="2" face="courier new"><b>COMPUTER<br>THEORY<br>(50)</b></font></th>
              <th><font size="2" face="courier new"><b>COMPUTER<br>PRAC.<br>(50)</b></font></th>
              <th><font size="2" face="courier new"><b>OBTAINED<br>MARKS</b></font></th>
              <th><font size="2" face="courier new"><b>TOTAL<br>MARKS</b></font></th>
              <th><font size="2" face="courier new"><b>%<br>(100%)</b></font></th>
            </tr>
            
            <%
            while(res.next())
            {
            
            
              String name = res.getString(2);
              int hindi = res.getInt(3);
              int eng = res.getInt(4);
              int maths = res.getInt(5);
              int gk = res.getInt(6);
              int hwd = res.getInt(7);
                  int ewd = res.getInt(8);
                  int draw = res.getInt(9);
                  int handi = res.getInt(10);
                  int dance = res.getInt(11);
                  int sci = res.getInt(12);
                  int scip = res.getInt(13);
                  int social = res.getInt(14);
                  int hist = res.getInt(15);
                  int geo = res.getInt(16);
                  int civics = res.getInt(17);
                  int home = res.getInt(18);
                  int sans = res.getInt(19);
                  int compt = res.getInt(20);
                  int compp = res.getInt(21);
              int obt = eng+hindi+maths+gk+draw+handi+dance+hwd+ewd+sci+scip+social+sans+compp+compt;
              int tot = 1050;
              double per = ((double)obt/(double)tot)*100;
              per = Math.round(per* 100.0) / 100.0;

              %>
              <tr>
              <td><font size="2" face="courier new"><%out.print(c++);%></font></td>
              <td><b><font size="2" face="courier new"><%out.print(name.toUpperCase());%></b></font></td>
              <td><font size="2" face="courier new"><%out.print(eng);%></font></td>
              <td><font size="2" face="courier new"><%out.print(hindi);%></font></td>
              <td><font size="2" face="courier new"><%out.print(maths);%></font></td>
              <td><font size="2" face="courier new"><%out.print(gk);%></font></td>
              <td><font size="2" face="courier new"><%out.print(draw);%></font></td>
              <td><font size="2" face="courier new"><%out.print(handi);%></font></td>
              <td><font size="2" face="courier new"><%out.print(dance);%></font></td>
              <td><font size="2" face="courier new"><%out.print(hwd);%></font></td>
              <td><font size="2" face="courier new"><%out.print(ewd);%></font></td>
              <td><font size="2" face="courier new"><%out.print(social);%></font></td>
              <td><font size="2" face="courier new"><%out.print(sci);%></font></td>
              <td><font size="2" face="courier new"><%out.print(scip);%></font></td>
              <td><font size="2" face="courier new"><%out.print(sans);%></font></td>
              <td><font size="2" face="courier new"><%out.print(compt);%></font></td>
              <td><font size="2" face="courier new"><%out.print(compp);%></font></td>
              <td><b><font size="2" face="courier new"><%out.print(obt);%></b></font></td>
              <td><font size="2" face="courier new"><%out.print(tot);%></font></td>
              <td><b><font size="2" face="courier new"><%out.print(per);%></b></font></td>
              </tr><%
              
            }
            %>
            
            </table>
          </div></div><br>
          <!--------------TERM3 ENDS------------------------------->

          <!-----------------------END_TERM BEGINS---------------------------->
             <button type="button" class="btn btn-primary bt-lg" data-toggle="collapse" data-target="#pc44">END_TERM</button><br>
              <div id="pc4t4_acc">

                <div id="pc44" class="collapse">
                  <br><font size="2" face="courier new"><b>END_TERM_RESULT</b></font><br>
              <%
              res = stmt.executeQuery("select * from marks_END where class='IV'");
              c = 1;
              %>

            <table class = "table table-sm table-striped table-bordered table-responsive w-auto" style="overflow:auto;">
            <tr class="active">
              <th><font size="2" face="courier new"><b>SNO</b></th>
              <th><font size="2" face="courier new"><b>NAME</b></th>
              <th><font size="2" face="courier new"><b>ENG<br>(100)</b></th>
              <th><font size="2" face="courier new"><b>HINDI<br>(100)</b></th>
              <th><font size="2" face="courier new"><b>MATHS<br>(100)</b></th>
              <th><font size="2" face="courier new"><b>GK<br>(100)</b></font></th>
              
              <th><font size="2" face="courier new"><b>DRAWING<br>(50)</b></font></th>
              <th><font size="2" face="courier new"><b>HANDICRAFT<br>(50)</b></font></th>
              <th><font size="2" face="courier new"><b>DANCE<br>MUSIC<br>(50)</b></font></th>
              <th><font size="2" face="courier new"><b>HWD<br>(50)</b></font></th>
              <th><font size="2" face="courier new"><b>EWD<br>(50)</b></font></th>
              <th><font size="2" face="courier new"><b>SOCIAL<br>SCIENCE<br>(100)</b></font></th>
              <th><font size="2" face="courier new"><b>SCIENCE<br>(90)</b></font></th>
              <th><font size="2" face="courier new"><b>SCIENCE<br>PRAC.<br>(10)</b></font></th>
              <th><font size="2" face="courier new"><b>SANSKRIT<br>(100)</b></font></th>
              <th><font size="2" face="courier new"><b>COMPUTER<br>THEORY<br>(50)</b></font></th>
              <th><font size="2" face="courier new"><b>COMPUTER<br>PRAC.<br>(50)</b></font></th>
              <th><font size="2" face="courier new"><b>OBTAINED<br>MARKS</b></font></th>
              <th><font size="2" face="courier new"><b>TOTAL<br>MARKS</b></font></th>
              <th><font size="2" face="courier new"><b>%<br>(100%)</b></font></th>
            </tr>
            
            <%
            while(res.next())
            {
            
            
              String name = res.getString(2);
              int hindi = res.getInt(3);
              int eng = res.getInt(4);
              int maths = res.getInt(5);
              int gk = res.getInt(6);
              int hwd = res.getInt(7);
                  int ewd = res.getInt(8);
                  int draw = res.getInt(9);
                  int handi = res.getInt(10);
                  int dance = res.getInt(11);
                  int sci = res.getInt(12);
                  int scip = res.getInt(13);
                  int social = res.getInt(14);
                  int hist = res.getInt(15);
                  int geo = res.getInt(16);
                  int civics = res.getInt(17);
                  int home = res.getInt(18);
                  int sans = res.getInt(19);
                  int compt = res.getInt(20);
                  int compp = res.getInt(21);
              int obt = eng+hindi+maths+gk+draw+handi+dance+hwd+ewd+sci+scip+social+sans+compp+compt;
              int tot = 1050;
              double per = ((double)obt/(double)tot)*100;
              per = Math.round(per* 100.0) / 100.0;

              %>
              <tr>
              <td><font size="2" face="courier new"><%out.print(c++);%></font></td>
              <td><b><font size="2" face="courier new"><%out.print(name.toUpperCase());%></b></font></td>
              <td><font size="2" face="courier new"><%out.print(eng);%></font></td>
              <td><font size="2" face="courier new"><%out.print(hindi);%></font></td>
              <td><font size="2" face="courier new"><%out.print(maths);%></font></td>
              <td><font size="2" face="courier new"><%out.print(gk);%></font></td>
              <td><font size="2" face="courier new"><%out.print(draw);%></font></td>
              <td><font size="2" face="courier new"><%out.print(handi);%></font></td>
              <td><font size="2" face="courier new"><%out.print(dance);%></font></td>
              <td><font size="2" face="courier new"><%out.print(hwd);%></font></td>
              <td><font size="2" face="courier new"><%out.print(ewd);%></font></td>
              <td><font size="2" face="courier new"><%out.print(social);%></font></td>
              <td><font size="2" face="courier new"><%out.print(sci);%></font></td>
              <td><font size="2" face="courier new"><%out.print(scip);%></font></td>
              <td><font size="2" face="courier new"><%out.print(sans);%></font></td>
              <td><font size="2" face="courier new"><%out.print(compt);%></font></td>
              <td><font size="2" face="courier new"><%out.print(compp);%></font></td>
              <td><b><font size="2" face="courier new"><%out.print(obt);%></b></font></td>
              <td><font size="2" face="courier new"><%out.print(tot);%></font></td>
              <td><b><font size="2" face="courier new"><%out.print(per);%></b></font></td>
              </tr><%
              
            }
            %>
            
            </table>
          </div></div><br>
          <!--------------END_TERM ENDS------------------------------->

      </div>

      <div id="pc5" style="display: none;">

        <!--INNER ACCORDIONS FOR DIFFERENT TERMINAL-->
        <%
       
            %>
            <font size="6" face="courier new"><b>CLASS_V_RESULT</b></font><br>
            <!-----------------------TERM1 BEGINS---------------------------->
             <button type="button" class="btn btn-primary bt-lg" data-toggle="collapse" data-target="#pc51">TERM 1</button><br>
              <div id="pc5t1_acc">
                
                <div id="pc51" class="collapse">
                  <br><font size="2" face="courier new"><b>TERM_1_RESULT</b></font><br>
              <%
              res = stmt.executeQuery("select * from marksT1 where class='V'");
              c = 1;
              %>

            <table class = "table table-sm table-striped table-bordered table-responsive w-auto" style="overflow:scroll;">
            <tr class="active">
              <th><font size="2" face="courier new"><b>SNO</b></th>
              <th><font size="2" face="courier new"><b>NAME</b></th>
              <th><font size="2" face="courier new"><b>ENG<br>(100)</b></th>
              <th><font size="2" face="courier new"><b>HINDI<br>(100)</b></th>
              <th><font size="2" face="courier new"><b>MATHS<br>(100)</b></th>
              <th><font size="2" face="courier new"><b>GK<br>(100)</b></font></th>
              
              <th><font size="2" face="courier new"><b>DRAWING<br>(50)</b></font></th>
              <th><font size="2" face="courier new"><b>HANDICRAFT<br>(50)</b></font></th>
              <th><font size="2" face="courier new"><b>DANCE<br>MUSIC<br>(50)</b></font></th>
              <th><font size="2" face="courier new"><b>HWD<br>(50)</b></font></th>
              <th><font size="2" face="courier new"><b>EWD<br>(50)</b></font></th>
              <th><font size="2" face="courier new"><b>SOCIAL<br>SCIENCE<br>(100)</b></font></th>
              <th><font size="2" face="courier new"><b>SCIENCE<br>(90)</b></font></th>
              <th><font size="2" face="courier new"><b>SCIENCE<br>PRAC.<br>(10)</b></font></th>
              <th><font size="2" face="courier new"><b>SANSKRIT<br>(100)</b></font></th>
              <th><font size="2" face="courier new"><b>COMPUTER<br>THEORY<br>(50)</b></font></th>
              <th><font size="2" face="courier new"><b>COMPUTER<br>PRAC.<br>(50)</b></font></th>
              <th><font size="2" face="courier new"><b>OBTAINED<br>MARKS</b></font></th>
              <th><font size="2" face="courier new"><b>TOTAL<br>MARKS</b></font></th>
              <th><font size="2" face="courier new"><b>%<br>(100%)</b></font></th>
            </tr>
            
            <%
            while(res.next())
            {
            
            
              String name = res.getString(2);
              int hindi = res.getInt(3);
              int eng = res.getInt(4);
              int maths = res.getInt(5);
              int gk = res.getInt(6);
              int hwd = res.getInt(7);
                  int ewd = res.getInt(8);
                  int draw = res.getInt(9);
                  int handi = res.getInt(10);
                  int dance = res.getInt(11);
                  int sci = res.getInt(12);
                  int scip = res.getInt(13);
                  int social = res.getInt(14);
                  int hist = res.getInt(15);
                  int geo = res.getInt(16);
                  int civics = res.getInt(17);
                  int home = res.getInt(18);
                  int sans = res.getInt(19);
                  int compt = res.getInt(20);
                  int compp = res.getInt(21);
              int obt = eng+hindi+maths+gk+draw+handi+dance+hwd+ewd+sci+scip+social+sans+compt+compp;
              int tot = 1050;
              double per = ((double)obt/(double)tot)*100;
              per = Math.round(per* 100.0) / 100.0;

              %>
              <tr>
              <td><font size="2" face="courier new"><%out.print(c++);%></font></td>
              <td><b><font size="2" face="courier new"><%out.print(name.toUpperCase());%></b></font></td>
              <td><font size="2" face="courier new"><%out.print(eng);%></font></td>
              <td><font size="2" face="courier new"><%out.print(hindi);%></font></td>
              <td><font size="2" face="courier new"><%out.print(maths);%></font></td>
              <td><font size="2" face="courier new"><%out.print(gk);%></font></td>
              <td><font size="2" face="courier new"><%out.print(draw);%></font></td>
              <td><font size="2" face="courier new"><%out.print(handi);%></font></td>
              <td><font size="2" face="courier new"><%out.print(dance);%></font></td>
              <td><font size="2" face="courier new"><%out.print(hwd);%></font></td>
              <td><font size="2" face="courier new"><%out.print(ewd);%></font></td>
              <td><font size="2" face="courier new"><%out.print(social);%></font></td>
              <td><font size="2" face="courier new"><%out.print(sci);%></font></td>
              <td><font size="2" face="courier new"><%out.print(scip);%></font></td>
              <td><font size="2" face="courier new"><%out.print(sans);%></font></td>
              <td><font size="2" face="courier new"><%out.print(compt);%></font></td>
              <td><font size="2" face="courier new"><%out.print(compp);%></font></td>
              <td><b><font size="2" face="courier new"><%out.print(obt);%></b></font></td>
              <td><font size="2" face="courier new"><%out.print(tot);%></font></td>
              <td><b><font size="2" face="courier new"><%out.print(per);%></b></font></td>
              </tr><%
              
            }
            %>
            
            </table>
          </div></div><br>
          <!--------------TERM1 ENDS------------------------------->


          <!-----------------------HALF_YEARLY BEGINS---------------------------->
             <button type="button" class="btn btn-primary bt-lg" data-toggle="collapse" data-target="#pc52">HALF_YEARLY</button><br>
              <div id="pc5t2_acc">
                
                <div id="pc52" class="collapse">
                  <br><font size="2" face="courier new"><b>HALF_YEARLY_RESULT</b></font><br>
              <%
              res = stmt.executeQuery("select * from marks_HALF where class='V'");
              c = 1;
              %>

            <table class = "table table-sm table-striped table-bordered table-responsive w-auto" style="overflow:scroll;">
            <tr class="active">
              <th><font size="2" face="courier new"><b>SNO</b></th>
              <th><font size="2" face="courier new"><b>NAME</b></th>
              <th><font size="2" face="courier new"><b>ENG<br>(100)</b></th>
              <th><font size="2" face="courier new"><b>HINDI<br>(100)</b></th>
              <th><font size="2" face="courier new"><b>MATHS<br>(100)</b></th>
              <th><font size="2" face="courier new"><b>GK<br>(100)</b></font></th>
              
              <th><font size="2" face="courier new"><b>DRAWING<br>(50)</b></font></th>
              <th><font size="2" face="courier new"><b>HANDICRAFT<br>(50)</b></font></th>
              <th><font size="2" face="courier new"><b>DANCE<br>MUSIC<br>(50)</b></font></th>
              <th><font size="2" face="courier new"><b>HWD<br>(50)</b></font></th>
              <th><font size="2" face="courier new"><b>EWD<br>(50)</b></font></th>
              <th><font size="2" face="courier new"><b>SOCIAL<br>SCIENCE<br>(100)</b></font></th>
              <th><font size="2" face="courier new"><b>SCIENCE<br>(90)</b></font></th>
              <th><font size="2" face="courier new"><b>SCIENCE<br>PRAC.<br>(10)</b></font></th>
              <th><font size="2" face="courier new"><b>SANSKRIT<br>(100)</b></font></th>
              <th><font size="2" face="courier new"><b>COMPUTER<br>THEORY<br>(50)</b></font></th>
              <th><font size="2" face="courier new"><b>COMPUTER<br>PRAC.<br>(50)</b></font></th>
              <th><font size="2" face="courier new"><b>OBTAINED<br>MARKS</b></font></th>
              <th><font size="2" face="courier new"><b>TOTAL<br>MARKS</b></font></th>
              <th><font size="2" face="courier new"><b>%<br>(100%)</b></font></th>
            </tr>
            
            <%
            while(res.next())
            {
            
            
              String name = res.getString(2);
              int hindi = res.getInt(3);
              int eng = res.getInt(4);
              int maths = res.getInt(5);
              int gk = res.getInt(6);
              int hwd = res.getInt(7);
                  int ewd = res.getInt(8);
                  int draw = res.getInt(9);
                  int handi = res.getInt(10);
                  int dance = res.getInt(11);
                  int sci = res.getInt(12);
                  int scip = res.getInt(13);
                  int social = res.getInt(14);
                  int hist = res.getInt(15);
                  int geo = res.getInt(16);
                  int civics = res.getInt(17);
                  int home = res.getInt(18);
                  int sans = res.getInt(19);
                  int compt = res.getInt(20);
                  int compp = res.getInt(21);
              int obt = eng+hindi+maths+gk+draw+handi+dance+hwd+ewd+social+sci+scip+sans+compp+compt;
              int tot = 1050;
              double per = ((double)obt/(double)tot)*100;
              per = Math.round(per* 100.0) / 100.0;

              %>
              <tr>
              <td><font size="2" face="courier new"><%out.print(c++);%></font></td>
              <td><b><font size="2" face="courier new"><%out.print(name.toUpperCase());%></b></font></td>
              <td><font size="2" face="courier new"><%out.print(eng);%></font></td>
              <td><font size="2" face="courier new"><%out.print(hindi);%></font></td>
              <td><font size="2" face="courier new"><%out.print(maths);%></font></td>
              <td><font size="2" face="courier new"><%out.print(gk);%></font></td>
              <td><font size="2" face="courier new"><%out.print(draw);%></font></td>
              <td><font size="2" face="courier new"><%out.print(handi);%></font></td>
              <td><font size="2" face="courier new"><%out.print(dance);%></font></td>
              <td><font size="2" face="courier new"><%out.print(hwd);%></font></td>
              <td><font size="2" face="courier new"><%out.print(ewd);%></font></td>
              <td><font size="2" face="courier new"><%out.print(social);%></font></td>
              <td><font size="2" face="courier new"><%out.print(sci);%></font></td>
              <td><font size="2" face="courier new"><%out.print(scip);%></font></td>
              <td><font size="2" face="courier new"><%out.print(sans);%></font></td>
              <td><font size="2" face="courier new"><%out.print(compt);%></font></td>
              <td><font size="2" face="courier new"><%out.print(compp);%></font></td>
              <td><b><font size="2" face="courier new"><%out.print(obt);%></b></font></td>
              <td><font size="2" face="courier new"><%out.print(tot);%></font></td>
              <td><b><font size="2" face="courier new"><%out.print(per);%></b></font></td>
              </tr><%
              
            }
            %>
            
            </table>
          </div></div><br>
          <!--------------HALF_YEARLY ENDS------------------------------->

          <!-----------------------TERM3 BEGINS---------------------------->
             <button type="button" class="btn btn-primary bt-lg" data-toggle="collapse" data-target="#pc53">TERM 3</button><br>
              <div id="pc5t3_acc">
                
                <div id="pc53" class="collapse">
                  <br><font size="2" face="courier new"><b>TERM_3_RESULT</b></font><br>
              <%
              res = stmt.executeQuery("select * from marks_T3 where class='V'");
              c = 1;
              %>

            <table class = "table table-sm table-striped table-bordered table-responsive w-auto" style="overflow:scroll;">
            <tr class="active">
              <th><font size="2" face="courier new"><b>SNO</b></th>
              <th><font size="2" face="courier new"><b>NAME</b></th>
              <th><font size="2" face="courier new"><b>ENG<br>(100)</b></th>
              <th><font size="2" face="courier new"><b>HINDI<br>(100)</b></th>
              <th><font size="2" face="courier new"><b>MATHS<br>(100)</b></th>
              <th><font size="2" face="courier new"><b>GK<br>(100)</b></font></th>
              
              <th><font size="2" face="courier new"><b>DRAWING<br>(50)</b></font></th>
              <th><font size="2" face="courier new"><b>HANDICRAFT<br>(50)</b></font></th>
              <th><font size="2" face="courier new"><b>DANCE<br>MUSIC<br>(50)</b></font></th>
              <th><font size="2" face="courier new"><b>HWD<br>(50)</b></font></th>
              <th><font size="2" face="courier new"><b>EWD<br>(50)</b></font></th>
              <th><font size="2" face="courier new"><b>SOCIAL<br>SCIENCE<br>(100)</b></font></th>
              <th><font size="2" face="courier new"><b>SCIENCE<br>(90)</b></font></th>
              <th><font size="2" face="courier new"><b>SCIENCE<br>PRAC.<br>(10)</b></font></th>
              <th><font size="2" face="courier new"><b>SANSKRIT<br>(100)</b></font></th>
              <th><font size="2" face="courier new"><b>COMPUTER<br>THEORY<br>(50)</b></font></th>
              <th><font size="2" face="courier new"><b>COMPUTER<br>PRAC.<br>(50)</b></font></th>
              <th><font size="2" face="courier new"><b>OBTAINED<br>MARKS</b></font></th>
              <th><font size="2" face="courier new"><b>TOTAL<br>MARKS</b></font></th>
              <th><font size="2" face="courier new"><b>%<br>(100%)</b></font></th>
            </tr>
            
            <%
            while(res.next())
            {
            
            
              String name = res.getString(2);
              int hindi = res.getInt(3);
              int eng = res.getInt(4);
              int maths = res.getInt(5);
              int gk = res.getInt(6);
              int hwd = res.getInt(7);
                  int ewd = res.getInt(8);
                  int draw = res.getInt(9);
                  int handi = res.getInt(10);
                  int dance = res.getInt(11);
                  int sci = res.getInt(12);
                  int scip = res.getInt(13);
                  int social = res.getInt(14);
                  int hist = res.getInt(15);
                  int geo = res.getInt(16);
                  int civics = res.getInt(17);
                  int home = res.getInt(18);
                  int sans = res.getInt(19);
                  int compt = res.getInt(20);
                  int compp = res.getInt(21);
              int obt = eng+hindi+maths+gk+draw+handi+dance+hwd+ewd+sci+scip+social+sans+compp+compt;
              int tot = 1050;
              double per = ((double)obt/(double)tot)*100;
              per = Math.round(per* 100.0) / 100.0;

              %>
              <tr>
              <td><font size="2" face="courier new"><%out.print(c++);%></font></td>
              <td><b><font size="2" face="courier new"><%out.print(name.toUpperCase());%></b></font></td>
              <td><font size="2" face="courier new"><%out.print(eng);%></font></td>
              <td><font size="2" face="courier new"><%out.print(hindi);%></font></td>
              <td><font size="2" face="courier new"><%out.print(maths);%></font></td>
              <td><font size="2" face="courier new"><%out.print(gk);%></font></td>
              <td><font size="2" face="courier new"><%out.print(draw);%></font></td>
              <td><font size="2" face="courier new"><%out.print(handi);%></font></td>
              <td><font size="2" face="courier new"><%out.print(dance);%></font></td>
              <td><font size="2" face="courier new"><%out.print(hwd);%></font></td>
              <td><font size="2" face="courier new"><%out.print(ewd);%></font></td>
              <td><font size="2" face="courier new"><%out.print(social);%></font></td>
              <td><font size="2" face="courier new"><%out.print(sci);%></font></td>
              <td><font size="2" face="courier new"><%out.print(scip);%></font></td>
              <td><font size="2" face="courier new"><%out.print(sans);%></font></td>
              <td><font size="2" face="courier new"><%out.print(compt);%></font></td>
              <td><font size="2" face="courier new"><%out.print(compp);%></font></td>
              <td><b><font size="2" face="courier new"><%out.print(obt);%></b></font></td>
              <td><font size="2" face="courier new"><%out.print(tot);%></font></td>
              <td><b><font size="2" face="courier new"><%out.print(per);%></b></font></td>
              </tr><%
              
            }
            %>
            
            </table>
          </div></div><br>
          <!--------------TERM3 ENDS------------------------------->

          <!-----------------------END_TERM BEGINS---------------------------->
             <button type="button" class="btn btn-primary bt-lg" data-toggle="collapse" data-target="#pc54">END_TERM</button><br>
              <div id="pc5t4_acc">

                <div id="pc54" class="collapse">
                  <br><font size="2" face="courier new"><b>END_TERM_RESULT</b></font><br>
              <%
              res = stmt.executeQuery("select * from marks_END where class='V'");
              c = 1;
              %>

            <table class = "table table-sm table-striped table-bordered table-responsive w-auto" style="overflow:scroll;">
            <tr class="active">
              <th><font size="2" face="courier new"><b>SNO</b></th>
              <th><font size="2" face="courier new"><b>NAME</b></th>
              <th><font size="2" face="courier new"><b>ENG<br>(100)</b></th>
              <th><font size="2" face="courier new"><b>HINDI<br>(100)</b></th>
              <th><font size="2" face="courier new"><b>MATHS<br>(100)</b></th>
              <th><font size="2" face="courier new"><b>GK<br>(100)</b></font></th>
              
              <th><font size="2" face="courier new"><b>DRAWING<br>(50)</b></font></th>
              <th><font size="2" face="courier new"><b>HANDICRAFT<br>(50)</b></font></th>
              <th><font size="2" face="courier new"><b>DANCE<br>MUSIC<br>(50)</b></font></th>
              <th><font size="2" face="courier new"><b>HWD<br>(50)</b></font></th>
              <th><font size="2" face="courier new"><b>EWD<br>(50)</b></font></th>
              <th><font size="2" face="courier new"><b>SOCIAL<br>SCIENCE<br>(100)</b></font></th>
              <th><font size="2" face="courier new"><b>SCIENCE<br>(90)</b></font></th>
              <th><font size="2" face="courier new"><b>SCIENCE<br>PRAC.<br>(10)</b></font></th>
              <th><font size="2" face="courier new"><b>SANSKRIT<br>(100)</b></font></th>
              <th><font size="2" face="courier new"><b>COMPUTER<br>THEORY<br>(50)</b></font></th>
              <th><font size="2" face="courier new"><b>COMPUTER<br>PRAC.<br>(50)</b></font></th>
              <th><font size="2" face="courier new"><b>OBTAINED<br>MARKS</b></font></th>
              <th><font size="2" face="courier new"><b>TOTAL<br>MARKS</b></font></th>
              <th><font size="2" face="courier new"><b>%<br>(100%)</b></font></th>
            </tr>
            
            <%
            while(res.next())
            {
            
            
              String name = res.getString(2);
              int hindi = res.getInt(3);
              int eng = res.getInt(4);
              int maths = res.getInt(5);
              int gk = res.getInt(6);
              int hwd = res.getInt(7);
                  int ewd = res.getInt(8);
                  int draw = res.getInt(9);
                  int handi = res.getInt(10);
                  int dance = res.getInt(11);
                  int sci = res.getInt(12);
                  int scip = res.getInt(13);
                  int social = res.getInt(14);
                  int hist = res.getInt(15);
                  int geo = res.getInt(16);
                  int civics = res.getInt(17);
                  int home = res.getInt(18);
                  int sans = res.getInt(19);
                  int compt = res.getInt(20);
                  int compp = res.getInt(21);
              int obt = eng+hindi+maths+gk+draw+handi+dance+hwd+ewd+sci+scip+social+sans+compp+compt;
              int tot = 1050;
              double per = ((double)obt/(double)tot)*100;
              per = Math.round(per* 100.0) / 100.0;

              %>
              <tr>
              <td><font size="2" face="courier new"><%out.print(c++);%></font></td>
              <td><b><font size="2" face="courier new"><%out.print(name.toUpperCase());%></b></font></td>
              <td><font size="2" face="courier new"><%out.print(eng);%></font></td>
              <td><font size="2" face="courier new"><%out.print(hindi);%></font></td>
              <td><font size="2" face="courier new"><%out.print(maths);%></font></td>
              <td><font size="2" face="courier new"><%out.print(gk);%></font></td>
              <td><font size="2" face="courier new"><%out.print(draw);%></font></td>
              <td><font size="2" face="courier new"><%out.print(handi);%></font></td>
              <td><font size="2" face="courier new"><%out.print(dance);%></font></td>
              <td><font size="2" face="courier new"><%out.print(hwd);%></font></td>
              <td><font size="2" face="courier new"><%out.print(ewd);%></font></td>
              <td><font size="2" face="courier new"><%out.print(social);%></font></td>
              <td><font size="2" face="courier new"><%out.print(sci);%></font></td>
              <td><font size="2" face="courier new"><%out.print(scip);%></font></td>
              <td><font size="2" face="courier new"><%out.print(sans);%></font></td>
              <td><font size="2" face="courier new"><%out.print(compt);%></font></td>
              <td><font size="2" face="courier new"><%out.print(compp);%></font></td>
              <td><b><font size="2" face="courier new"><%out.print(obt);%></b></font></td>
              <td><font size="2" face="courier new"><%out.print(tot);%></font></td>
              <td><b><font size="2" face="courier new"><%out.print(per);%></b></font></td>
              </tr><%
              
            }
            %>
            
            </table>
          </div></div><br>
          <!--------------END_TERM ENDS------------------------------->

      </div>

      <div id="pc6" style="display: none;">
        <!--INNER ACCORDIONS FOR DIFFERENT TERMINAL-->
        <%
       
            %>
            <font size="6" face="courier new"><b>CLASS_VI_RESULT</b></font><br>
            <!-----------------------TERM1 BEGINS---------------------------->
             <button type="button" class="btn btn-primary bt-lg" data-toggle="collapse" data-target="#pc61">TERM 1</button><br>
              <div id="pc6t1_acc">
                
                <div id="pc61" class="collapse">
                  <br><font size="2" face="courier new"><b>TERM_1_RESULT</b></font><br>
              <%
              res = stmt.executeQuery("select * from marksT1 where class='VI'");
              c = 1;
              %>

            <table class = "table table-sm table-striped table-bordered table-responsive w-auto" style="overflow:scroll;">
            <tr class="active">
              <th><font size="2" face="courier new"><b>SNO</b></th>
              <th><font size="2" face="courier new"><b>NAME</b></th>
              <th><font size="2" face="courier new"><b>ENG<br>(100)</b></th>
              <th><font size="2" face="courier new"><b>HINDI<br>(100)</b></th>
              <th><font size="2" face="courier new"><b>MATHS<br>(100)</b></th>
              <th><font size="2" face="courier new"><b>GK<br>(100)</b></font></th>
              
              <th><font size="2" face="courier new"><b>DRAWING<br>(50)</b></font></th>
              <th><font size="2" face="courier new"><b>HANDICRAFT<br>(50)</b></font></th>
              <th><font size="2" face="courier new"><b>DANCE<br>MUSIC<br>(50)</b></font></th>
              <th><font size="2" face="courier new"><b>HWD<br>(50)</b></font></th>
              <th><font size="2" face="courier new"><b>EWD<br>(50)</b></font></th>
              <th><font size="2" face="courier new"><b>SOCIAL<br>SCIENCE<br>(100)</b></font></th>
              <th><font size="2" face="courier new"><b>SCIENCE<br>(90)</b></font></th>
              <th><font size="2" face="courier new"><b>SCIENCE<br>PRAC.<br>(10)</b></font></th>
              <th><font size="2" face="courier new"><b>SANSKRIT<br>(100)</b></font></th>
              <th><font size="2" face="courier new"><b>COMPUTER<br>THEORY<br>(50)</b></font></th>
              <th><font size="2" face="courier new"><b>COMPUTER<br>PRAC.<br>(50)</b></font></th>
              <th><font size="2" face="courier new"><b>OBTAINED<br>MARKS</b></font></th>
              <th><font size="2" face="courier new"><b>TOTAL<br>MARKS</b></font></th>
              <th><font size="2" face="courier new"><b>%<br>(100%)</b></font></th>
            </tr>
            
            <%
            while(res.next())
            {
            
            
              String name = res.getString(2);
              int hindi = res.getInt(3);
              int eng = res.getInt(4);
              int maths = res.getInt(5);
              int gk = res.getInt(6);
              int hwd = res.getInt(7);
                  int ewd = res.getInt(8);
                  int draw = res.getInt(9);
                  int handi = res.getInt(10);
                  int dance = res.getInt(11);
                  int sci = res.getInt(12);
                  int scip = res.getInt(13);
                  int social = res.getInt(14);
                  int hist = res.getInt(15);
                  int geo = res.getInt(16);
                  int civics = res.getInt(17);
                  int home = res.getInt(18);
                  int sans = res.getInt(19);
                  int compt = res.getInt(20);
                  int compp = res.getInt(21);
              int obt = eng+hindi+maths+gk+draw+handi+dance+hwd+ewd+sci+scip+social+sans+compt+compp;
              int tot = 1050;
              double per = ((double)obt/(double)tot)*100;
              per = Math.round(per* 100.0) / 100.0;

              %>
              <tr>
              <td><font size="2" face="courier new"><%out.print(c++);%></font></td>
              <td><b><font size="2" face="courier new"><%out.print(name.toUpperCase());%></b></font></td>
              <td><font size="2" face="courier new"><%out.print(eng);%></font></td>
              <td><font size="2" face="courier new"><%out.print(hindi);%></font></td>
              <td><font size="2" face="courier new"><%out.print(maths);%></font></td>
              <td><font size="2" face="courier new"><%out.print(gk);%></font></td>
              <td><font size="2" face="courier new"><%out.print(draw);%></font></td>
              <td><font size="2" face="courier new"><%out.print(handi);%></font></td>
              <td><font size="2" face="courier new"><%out.print(dance);%></font></td>
              <td><font size="2" face="courier new"><%out.print(hwd);%></font></td>
              <td><font size="2" face="courier new"><%out.print(ewd);%></font></td>
              <td><font size="2" face="courier new"><%out.print(social);%></font></td>
              <td><font size="2" face="courier new"><%out.print(sci);%></font></td>
              <td><font size="2" face="courier new"><%out.print(scip);%></font></td>
              <td><font size="2" face="courier new"><%out.print(sans);%></font></td>
              <td><font size="2" face="courier new"><%out.print(compt);%></font></td>
              <td><font size="2" face="courier new"><%out.print(compp);%></font></td>
              <td><b><font size="2" face="courier new"><%out.print(obt);%></b></font></td>
              <td><font size="2" face="courier new"><%out.print(tot);%></font></td>
              <td><b><font size="2" face="courier new"><%out.print(per);%></b></font></td>
              </tr><%
              
            }
            %>
            
            </table>
          </div></div><br>
          <!--------------TERM1 ENDS------------------------------->


          <!-----------------------HALF_YEARLY BEGINS---------------------------->
             <button type="button" class="btn btn-primary bt-lg" data-toggle="collapse" data-target="#pc62">HALF_YEARLY</button><br>
              <div id="pc6t2_acc">
                
                <div id="pc62" class="collapse">
                  <br><font size="2" face="courier new"><b>HALF_YEARLY_RESULT</b></font><br>
              <%
              res = stmt.executeQuery("select * from marks_HALF where class='VI'");
              c = 1;
              %>

            <table class = "table table-sm table-striped table-bordered table-responsive w-auto" style="overflow:scroll;">
            <tr class="active">
              <th><font size="2" face="courier new"><b>SNO</b></th>
              <th><font size="2" face="courier new"><b>NAME</b></th>
              <th><font size="2" face="courier new"><b>ENG<br>(100)</b></th>
              <th><font size="2" face="courier new"><b>HINDI<br>(100)</b></th>
              <th><font size="2" face="courier new"><b>MATHS<br>(100)</b></th>
              <th><font size="2" face="courier new"><b>GK<br>(100)</b></font></th>
              
              <th><font size="2" face="courier new"><b>DRAWING<br>(50)</b></font></th>
              <th><font size="2" face="courier new"><b>HANDICRAFT<br>(50)</b></font></th>
              <th><font size="2" face="courier new"><b>DANCE<br>MUSIC<br>(50)</b></font></th>
              <th><font size="2" face="courier new"><b>HWD<br>(50)</b></font></th>
              <th><font size="2" face="courier new"><b>EWD<br>(50)</b></font></th>
              <th><font size="2" face="courier new"><b>SOCIAL<br>SCIENCE<br>(100)</b></font></th>
              <th><font size="2" face="courier new"><b>SCIENCE<br>(90)</b></font></th>
              <th><font size="2" face="courier new"><b>SCIENCE<br>PRAC.<br>(10)</b></font></th>
              <th><font size="2" face="courier new"><b>SANSKRIT<br>(100)</b></font></th>
              <th><font size="2" face="courier new"><b>COMPUTER<br>THEORY<br>(50)</b></font></th>
              <th><font size="2" face="courier new"><b>COMPUTER<br>PRAC.<br>(50)</b></font></th>
              <th><font size="2" face="courier new"><b>OBTAINED<br>MARKS</b></font></th>
              <th><font size="2" face="courier new"><b>TOTAL<br>MARKS</b></font></th>
              <th><font size="2" face="courier new"><b>%<br>(100%)</b></font></th>
            </tr>
            
            <%
            while(res.next())
            {
            
            
              String name = res.getString(2);
              int hindi = res.getInt(3);
              int eng = res.getInt(4);
              int maths = res.getInt(5);
              int gk = res.getInt(6);
              int hwd = res.getInt(7);
                  int ewd = res.getInt(8);
                  int draw = res.getInt(9);
                  int handi = res.getInt(10);
                  int dance = res.getInt(11);
                  int sci = res.getInt(12);
                  int scip = res.getInt(13);
                  int social = res.getInt(14);
                  int hist = res.getInt(15);
                  int geo = res.getInt(16);
                  int civics = res.getInt(17);
                  int home = res.getInt(18);
                  int sans = res.getInt(19);
                  int compt = res.getInt(20);
                  int compp = res.getInt(21);
              int obt = eng+hindi+maths+gk+draw+handi+dance+hwd+ewd+social+sci+scip+sans+compp+compt;
              int tot = 1050;
              double per = ((double)obt/(double)tot)*100;
              per = Math.round(per* 100.0) / 100.0;

              %>
              <tr>
              <td><font size="2" face="courier new"><%out.print(c++);%></font></td>
              <td><b><font size="2" face="courier new"><%out.print(name.toUpperCase());%></b></font></td>
              <td><font size="2" face="courier new"><%out.print(eng);%></font></td>
              <td><font size="2" face="courier new"><%out.print(hindi);%></font></td>
              <td><font size="2" face="courier new"><%out.print(maths);%></font></td>
              <td><font size="2" face="courier new"><%out.print(gk);%></font></td>
              <td><font size="2" face="courier new"><%out.print(draw);%></font></td>
              <td><font size="2" face="courier new"><%out.print(handi);%></font></td>
              <td><font size="2" face="courier new"><%out.print(dance);%></font></td>
              <td><font size="2" face="courier new"><%out.print(hwd);%></font></td>
              <td><font size="2" face="courier new"><%out.print(ewd);%></font></td>
              <td><font size="2" face="courier new"><%out.print(social);%></font></td>
              <td><font size="2" face="courier new"><%out.print(sci);%></font></td>
              <td><font size="2" face="courier new"><%out.print(scip);%></font></td>
              <td><font size="2" face="courier new"><%out.print(sans);%></font></td>
              <td><font size="2" face="courier new"><%out.print(compt);%></font></td>
              <td><font size="2" face="courier new"><%out.print(compp);%></font></td>
              <td><b><font size="2" face="courier new"><%out.print(obt);%></b></font></td>
              <td><font size="2" face="courier new"><%out.print(tot);%></font></td>
              <td><b><font size="2" face="courier new"><%out.print(per);%></b></font></td>
              </tr><%
              
            }
            %>
            
            </table>
          </div></div><br>
          <!--------------HALF_YEARLY ENDS------------------------------->

          <!-----------------------TERM3 BEGINS---------------------------->
             <button type="button" class="btn btn-primary bt-lg" data-toggle="collapse" data-target="#pc63">TERM 3</button><br>
              <div id="pc6t3_acc">
                
                <div id="pc63" class="collapse">
                  <br><font size="2" face="courier new"><b>TERM_3_RESULT</b></font><br>
              <%
              res = stmt.executeQuery("select * from marks_T3 where class='VI'");
              c = 1;
              %>

            <table class = "table table-sm table-striped table-bordered table-responsive w-auto" style="overflow:scroll;">
            <tr class="active">
              <th><font size="2" face="courier new"><b>SNO</b></th>
              <th><font size="2" face="courier new"><b>NAME</b></th>
              <th><font size="2" face="courier new"><b>ENG<br>(100)</b></th>
              <th><font size="2" face="courier new"><b>HINDI<br>(100)</b></th>
              <th><font size="2" face="courier new"><b>MATHS<br>(100)</b></th>
              <th><font size="2" face="courier new"><b>GK<br>(100)</b></font></th>
              
              <th><font size="2" face="courier new"><b>DRAWING<br>(50)</b></font></th>
              <th><font size="2" face="courier new"><b>HANDICRAFT<br>(50)</b></font></th>
              <th><font size="2" face="courier new"><b>DANCE<br>MUSIC<br>(50)</b></font></th>
              <th><font size="2" face="courier new"><b>HWD<br>(50)</b></font></th>
              <th><font size="2" face="courier new"><b>EWD<br>(50)</b></font></th>
              <th><font size="2" face="courier new"><b>SOCIAL<br>SCIENCE<br>(100)</b></font></th>
              <th><font size="2" face="courier new"><b>SCIENCE<br>(90)</b></font></th>
              <th><font size="2" face="courier new"><b>SCIENCE<br>PRAC.<br>(10)</b></font></th>
              <th><font size="2" face="courier new"><b>SANSKRIT<br>(100)</b></font></th>
              <th><font size="2" face="courier new"><b>COMPUTER<br>THEORY<br>(50)</b></font></th>
              <th><font size="2" face="courier new"><b>COMPUTER<br>PRAC.<br>(50)</b></font></th>
              <th><font size="2" face="courier new"><b>OBTAINED<br>MARKS</b></font></th>
              <th><font size="2" face="courier new"><b>TOTAL<br>MARKS</b></font></th>
              <th><font size="2" face="courier new"><b>%<br>(100%)</b></font></th>
            </tr>
            
            <%
            while(res.next())
            {
            
            
              String name = res.getString(2);
              int hindi = res.getInt(3);
              int eng = res.getInt(4);
              int maths = res.getInt(5);
              int gk = res.getInt(6);
              int hwd = res.getInt(7);
                  int ewd = res.getInt(8);
                  int draw = res.getInt(9);
                  int handi = res.getInt(10);
                  int dance = res.getInt(11);
                  int sci = res.getInt(12);
                  int scip = res.getInt(13);
                  int social = res.getInt(14);
                  int hist = res.getInt(15);
                  int geo = res.getInt(16);
                  int civics = res.getInt(17);
                  int home = res.getInt(18);
                  int sans = res.getInt(19);
                  int compt = res.getInt(20);
                  int compp = res.getInt(21);
              int obt = eng+hindi+maths+gk+draw+handi+dance+hwd+ewd+sci+scip+social+sans+compp+compt;
              int tot = 1050;
              double per = ((double)obt/(double)tot)*100;
              per = Math.round(per* 100.0) / 100.0;

              %>
              <tr>
              <td><font size="2" face="courier new"><%out.print(c++);%></font></td>
              <td><b><font size="2" face="courier new"><%out.print(name.toUpperCase());%></b></font></td>
              <td><font size="2" face="courier new"><%out.print(eng);%></font></td>
              <td><font size="2" face="courier new"><%out.print(hindi);%></font></td>
              <td><font size="2" face="courier new"><%out.print(maths);%></font></td>
              <td><font size="2" face="courier new"><%out.print(gk);%></font></td>
              <td><font size="2" face="courier new"><%out.print(draw);%></font></td>
              <td><font size="2" face="courier new"><%out.print(handi);%></font></td>
              <td><font size="2" face="courier new"><%out.print(dance);%></font></td>
              <td><font size="2" face="courier new"><%out.print(hwd);%></font></td>
              <td><font size="2" face="courier new"><%out.print(ewd);%></font></td>
              <td><font size="2" face="courier new"><%out.print(social);%></font></td>
              <td><font size="2" face="courier new"><%out.print(sci);%></font></td>
              <td><font size="2" face="courier new"><%out.print(scip);%></font></td>
              <td><font size="2" face="courier new"><%out.print(sans);%></font></td>
              <td><font size="2" face="courier new"><%out.print(compt);%></font></td>
              <td><font size="2" face="courier new"><%out.print(compp);%></font></td>
              <td><b><font size="2" face="courier new"><%out.print(obt);%></b></font></td>
              <td><font size="2" face="courier new"><%out.print(tot);%></font></td>
              <td><b><font size="2" face="courier new"><%out.print(per);%></b></font></td>
              </tr><%
              
            }
            %>
            
            </table>
          </div></div><br>
          <!--------------TERM3 ENDS------------------------------->

          <!-----------------------END_TERM BEGINS---------------------------->
             <button type="button" class="btn btn-primary bt-lg" data-toggle="collapse" data-target="#pc64">END_TERM</button><br>
              <div id="pc6t4_acc">

                <div id="pc64" class="collapse">
                  <br><font size="2" face="courier new"><b>END_TERM_RESULT</b></font><br>
              <%
              res = stmt.executeQuery("select * from marks_END where class='VI'");
              c = 1;
              %>

            <table class = "table table-sm table-striped table-bordered table-responsive w-auto" style="overflow:scroll;">
            <tr class="active">
              <th><font size="2" face="courier new"><b>SNO</b></th>
              <th><font size="2" face="courier new"><b>NAME</b></th>
              <th><font size="2" face="courier new"><b>ENG<br>(100)</b></th>
              <th><font size="2" face="courier new"><b>HINDI<br>(100)</b></th>
              <th><font size="2" face="courier new"><b>MATHS<br>(100)</b></th>
              <th><font size="2" face="courier new"><b>GK<br>(100)</b></font></th>
              
              <th><font size="2" face="courier new"><b>DRAWING<br>(50)</b></font></th>
              <th><font size="2" face="courier new"><b>HANDICRAFT<br>(50)</b></font></th>
              <th><font size="2" face="courier new"><b>DANCE<br>MUSIC<br>(50)</b></font></th>
              <th><font size="2" face="courier new"><b>HWD<br>(50)</b></font></th>
              <th><font size="2" face="courier new"><b>EWD<br>(50)</b></font></th>
              <th><font size="2" face="courier new"><b>SOCIAL<br>SCIENCE<br>(100)</b></font></th>
              <th><font size="2" face="courier new"><b>SCIENCE<br>(90)</b></font></th>
              <th><font size="2" face="courier new"><b>SCIENCE<br>PRAC.<br>(10)</b></font></th>
              <th><font size="2" face="courier new"><b>SANSKRIT<br>(100)</b></font></th>
              <th><font size="2" face="courier new"><b>COMPUTER<br>THEORY<br>(50)</b></font></th>
              <th><font size="2" face="courier new"><b>COMPUTER<br>PRAC.<br>(50)</b></font></th>
              <th><font size="2" face="courier new"><b>OBTAINED<br>MARKS</b></font></th>
              <th><font size="2" face="courier new"><b>TOTAL<br>MARKS</b></font></th>
              <th><font size="2" face="courier new"><b>%<br>(100%)</b></font></th>
            </tr>
            
            <%
            while(res.next())
            {
            
            
              String name = res.getString(2);
              int hindi = res.getInt(3);
              int eng = res.getInt(4);
              int maths = res.getInt(5);
              int gk = res.getInt(6);
              int hwd = res.getInt(7);
                  int ewd = res.getInt(8);
                  int draw = res.getInt(9);
                  int handi = res.getInt(10);
                  int dance = res.getInt(11);
                  int sci = res.getInt(12);
                  int scip = res.getInt(13);
                  int social = res.getInt(14);
                  int hist = res.getInt(15);
                  int geo = res.getInt(16);
                  int civics = res.getInt(17);
                  int home = res.getInt(18);
                  int sans = res.getInt(19);
                  int compt = res.getInt(20);
                  int compp = res.getInt(21);
              int obt = eng+hindi+maths+gk+draw+handi+dance+hwd+ewd+sci+scip+social+sans+compp+compt;
              int tot = 1050;
              double per = ((double)obt/(double)tot)*100;
              per = Math.round(per* 100.0) / 100.0;

              %>
              <tr>
              <td><font size="2" face="courier new"><%out.print(c++);%></font></td>
              <td><b><font size="2" face="courier new"><%out.print(name.toUpperCase());%></b></font></td>
              <td><font size="2" face="courier new"><%out.print(eng);%></font></td>
              <td><font size="2" face="courier new"><%out.print(hindi);%></font></td>
              <td><font size="2" face="courier new"><%out.print(maths);%></font></td>
              <td><font size="2" face="courier new"><%out.print(gk);%></font></td>
              <td><font size="2" face="courier new"><%out.print(draw);%></font></td>
              <td><font size="2" face="courier new"><%out.print(handi);%></font></td>
              <td><font size="2" face="courier new"><%out.print(dance);%></font></td>
              <td><font size="2" face="courier new"><%out.print(hwd);%></font></td>
              <td><font size="2" face="courier new"><%out.print(ewd);%></font></td>
              <td><font size="2" face="courier new"><%out.print(social);%></font></td>
              <td><font size="2" face="courier new"><%out.print(sci);%></font></td>
              <td><font size="2" face="courier new"><%out.print(scip);%></font></td>
              <td><font size="2" face="courier new"><%out.print(sans);%></font></td>
              <td><font size="2" face="courier new"><%out.print(compt);%></font></td>
              <td><font size="2" face="courier new"><%out.print(compp);%></font></td>
              <td><b><font size="2" face="courier new"><%out.print(obt);%></b></font></td>
              <td><font size="2" face="courier new"><%out.print(tot);%></font></td>
              <td><b><font size="2" face="courier new"><%out.print(per);%></b></font></td>
              </tr><%
              
            }
            %>
            
            </table>
          </div></div><br>
          <!--------------END_TERM ENDS------------------------------->

      </div>

      <div id="pc7" style="display: none;">

        <!--INNER ACCORDIONS FOR DIFFERENT TERMINAL-->
        <%
       
            %>
            <font size="6" face="courier new"><b>CLASS_VII_RESULT</b></font><br>
            <!-----------------------TERM1 BEGINS---------------------------->
             <button type="button" class="btn btn-primary bt-lg" data-toggle="collapse" data-target="#pc71">TERM 1</button><br>
              <div id="pc7t1_acc">
                
                <div id="pc71" class="collapse">
                  <br><font size="2" face="courier new"><b>TERM_1_RESULT</b></font><br>
              <%
              res = stmt.executeQuery("select * from marksT1 where class='VII'");
              c = 1;
              %>

            <table class = "table table-sm table-striped table-bordered table-responsive w-auto" style="overflow:scroll;">
            <tr class="active">
              <th><font size="2" face="courier new"><b>SNO</b></th>
              <th><font size="2" face="courier new"><b>NAME</b></th>
              <th><font size="2" face="courier new"><b>ENG<br>(100)</b></th>
              <th><font size="2" face="courier new"><b>HINDI<br>(100)</b></th>
              <th><font size="2" face="courier new"><b>MATHS<br>(100)</b></th>
              <th><font size="2" face="courier new"><b>GK<br>(100)</b></font></th>
              
              <th><font size="2" face="courier new"><b>DRAWING<br>(50)</b></font></th>
              <th><font size="2" face="courier new"><b>HANDICRAFT<br>(50)</b></font></th>
              <th><font size="2" face="courier new"><b>DANCE<br>MUSIC<br>(50)</b></font></th>
              <th><font size="2" face="courier new"><b>HWD<br>(50)</b></font></th>
              <th><font size="2" face="courier new"><b>EWD<br>(50)</b></font></th>
              <th><font size="2" face="courier new"><b>SOCIAL<br>SCIENCE<br>(100)</b></font></th>
              <th><font size="2" face="courier new"><b>SCIENCE<br>(90)</b></font></th>
              <th><font size="2" face="courier new"><b>SCIENCE<br>PRAC.<br>(10)</b></font></th>
              <th><font size="2" face="courier new"><b>SANSKRIT<br>(100)</b></font></th>
              <th><font size="2" face="courier new"><b>COMPUTER<br>THEORY<br>(50)</b></font></th>
              <th><font size="2" face="courier new"><b>COMPUTER<br>PRAC.<br>(50)</b></font></th>
              <th><font size="2" face="courier new"><b>OBTAINED<br>MARKS</b></font></th>
              <th><font size="2" face="courier new"><b>TOTAL<br>MARKS</b></font></th>
              <th><font size="2" face="courier new"><b>%<br>(100%)</b></font></th>
            </tr>
            
            <%
            while(res.next())
            {
            
            
              String name = res.getString(2);
              int hindi = res.getInt(3);
              int eng = res.getInt(4);
              int maths = res.getInt(5);
              int gk = res.getInt(6);
              int hwd = res.getInt(7);
                  int ewd = res.getInt(8);
                  int draw = res.getInt(9);
                  int handi = res.getInt(10);
                  int dance = res.getInt(11);
                  int sci = res.getInt(12);
                  int scip = res.getInt(13);
                  int social = res.getInt(14);
                  int hist = res.getInt(15);
                  int geo = res.getInt(16);
                  int civics = res.getInt(17);
                  int home = res.getInt(18);
                  int sans = res.getInt(19);
                  int compt = res.getInt(20);
                  int compp = res.getInt(21);
              int obt = eng+hindi+maths+gk+draw+handi+dance+hwd+ewd+sci+scip+social+sans+compt+compp;
              int tot = 1050;
              double per = ((double)obt/(double)tot)*100;
              per = Math.round(per* 100.0) / 100.0;

              %>
              <tr>
              <td><font size="2" face="courier new"><%out.print(c++);%></font></td>
              <td><b><font size="2" face="courier new"><%out.print(name.toUpperCase());%></b></font></td>
              <td><font size="2" face="courier new"><%out.print(eng);%></font></td>
              <td><font size="2" face="courier new"><%out.print(hindi);%></font></td>
              <td><font size="2" face="courier new"><%out.print(maths);%></font></td>
              <td><font size="2" face="courier new"><%out.print(gk);%></font></td>
              <td><font size="2" face="courier new"><%out.print(draw);%></font></td>
              <td><font size="2" face="courier new"><%out.print(handi);%></font></td>
              <td><font size="2" face="courier new"><%out.print(dance);%></font></td>
              <td><font size="2" face="courier new"><%out.print(hwd);%></font></td>
              <td><font size="2" face="courier new"><%out.print(ewd);%></font></td>
              <td><font size="2" face="courier new"><%out.print(social);%></font></td>
              <td><font size="2" face="courier new"><%out.print(sci);%></font></td>
              <td><font size="2" face="courier new"><%out.print(scip);%></font></td>
              <td><font size="2" face="courier new"><%out.print(sans);%></font></td>
              <td><font size="2" face="courier new"><%out.print(compt);%></font></td>
              <td><font size="2" face="courier new"><%out.print(compp);%></font></td>
              <td><b><font size="2" face="courier new"><%out.print(obt);%></b></font></td>
              <td><font size="2" face="courier new"><%out.print(tot);%></font></td>
              <td><b><font size="2" face="courier new"><%out.print(per);%></b></font></td>
              </tr><%
              
            }
            %>
            
            </table>
          </div></div><br>
          <!--------------TERM1 ENDS------------------------------->


          <!-----------------------HALF_YEARLY BEGINS---------------------------->
             <button type="button" class="btn btn-primary bt-lg" data-toggle="collapse" data-target="#pc72">HALF_YEARLY</button><br>
              <div id="pc7t2_acc">
                
                <div id="pc72" class="collapse">
                  <br><font size="2" face="courier new"><b>HALF_YEARLY_RESULT</b></font><br>
              <%
              res = stmt.executeQuery("select * from marks_HALF where class='VII'");
              c = 1;
              %>

            <table class = "table table-sm table-striped table-bordered table-responsive w-auto" style="overflow:scroll;">
            <tr class="active">
              <th><font size="2" face="courier new"><b>SNO</b></th>
              <th><font size="2" face="courier new"><b>NAME</b></th>
              <th><font size="2" face="courier new"><b>ENG<br>(100)</b></th>
              <th><font size="2" face="courier new"><b>HINDI<br>(100)</b></th>
              <th><font size="2" face="courier new"><b>MATHS<br>(100)</b></th>
              <th><font size="2" face="courier new"><b>GK<br>(100)</b></font></th>
              
              <th><font size="2" face="courier new"><b>DRAWING<br>(50)</b></font></th>
              <th><font size="2" face="courier new"><b>HANDICRAFT<br>(50)</b></font></th>
              <th><font size="2" face="courier new"><b>DANCE<br>MUSIC<br>(50)</b></font></th>
              <th><font size="2" face="courier new"><b>HWD<br>(50)</b></font></th>
              <th><font size="2" face="courier new"><b>EWD<br>(50)</b></font></th>
              <th><font size="2" face="courier new"><b>SOCIAL<br>SCIENCE<br>(100)</b></font></th>
              <th><font size="2" face="courier new"><b>SCIENCE<br>(90)</b></font></th>
              <th><font size="2" face="courier new"><b>SCIENCE<br>PRAC.<br>(10)</b></font></th>
              <th><font size="2" face="courier new"><b>SANSKRIT<br>(100)</b></font></th>
              <th><font size="2" face="courier new"><b>COMPUTER<br>THEORY<br>(50)</b></font></th>
              <th><font size="2" face="courier new"><b>COMPUTER<br>PRAC.<br>(50)</b></font></th>
              <th><font size="2" face="courier new"><b>OBTAINED<br>MARKS</b></font></th>
              <th><font size="2" face="courier new"><b>TOTAL<br>MARKS</b></font></th>
              <th><font size="2" face="courier new"><b>%<br>(100%)</b></font></th>
            </tr>
            
            <%
            while(res.next())
            {
            
            
              String name = res.getString(2);
              int hindi = res.getInt(3);
              int eng = res.getInt(4);
              int maths = res.getInt(5);
              int gk = res.getInt(6);
              int hwd = res.getInt(7);
                  int ewd = res.getInt(8);
                  int draw = res.getInt(9);
                  int handi = res.getInt(10);
                  int dance = res.getInt(11);
                  int sci = res.getInt(12);
                  int scip = res.getInt(13);
                  int social = res.getInt(14);
                  int hist = res.getInt(15);
                  int geo = res.getInt(16);
                  int civics = res.getInt(17);
                  int home = res.getInt(18);
                  int sans = res.getInt(19);
                  int compt = res.getInt(20);
                  int compp = res.getInt(21);
              int obt = eng+hindi+maths+gk+draw+handi+dance+hwd+ewd+social+sci+scip+sans+compp+compt;
              int tot = 1050;
              double per = ((double)obt/(double)tot)*100;
              per = Math.round(per* 100.0) / 100.0;

              %>
              <tr>
              <td><font size="2" face="courier new"><%out.print(c++);%></font></td>
              <td><b><font size="2" face="courier new"><%out.print(name.toUpperCase());%></b></font></td>
              <td><font size="2" face="courier new"><%out.print(eng);%></font></td>
              <td><font size="2" face="courier new"><%out.print(hindi);%></font></td>
              <td><font size="2" face="courier new"><%out.print(maths);%></font></td>
              <td><font size="2" face="courier new"><%out.print(gk);%></font></td>
              <td><font size="2" face="courier new"><%out.print(draw);%></font></td>
              <td><font size="2" face="courier new"><%out.print(handi);%></font></td>
              <td><font size="2" face="courier new"><%out.print(dance);%></font></td>
              <td><font size="2" face="courier new"><%out.print(hwd);%></font></td>
              <td><font size="2" face="courier new"><%out.print(ewd);%></font></td>
              <td><font size="2" face="courier new"><%out.print(social);%></font></td>
              <td><font size="2" face="courier new"><%out.print(sci);%></font></td>
              <td><font size="2" face="courier new"><%out.print(scip);%></font></td>
              <td><font size="2" face="courier new"><%out.print(sans);%></font></td>
              <td><font size="2" face="courier new"><%out.print(compt);%></font></td>
              <td><font size="2" face="courier new"><%out.print(compp);%></font></td>
              <td><b><font size="2" face="courier new"><%out.print(obt);%></b></font></td>
              <td><font size="2" face="courier new"><%out.print(tot);%></font></td>
              <td><b><font size="2" face="courier new"><%out.print(per);%></b></font></td>
              </tr><%
              
            }
            %>
            
            </table>
          </div></div><br>
          <!--------------HALF_YEARLY ENDS------------------------------->

          <!-----------------------TERM3 BEGINS---------------------------->
             <button type="button" class="btn btn-primary bt-lg" data-toggle="collapse" data-target="#pc73">TERM 3</button><br>
              <div id="pc7t3_acc">
                
                <div id="pc73" class="collapse">
                  <br><font size="2" face="courier new"><b>TERM_3_RESULT</b></font><br>
              <%
              res = stmt.executeQuery("select * from marks_T3 where class='VII'");
              c = 1;
              %>

            <table class = "table table-sm table-striped table-bordered table-responsive w-auto" style="overflow:scroll;">
            <tr class="active">
              <th><font size="2" face="courier new"><b>SNO</b></th>
              <th><font size="2" face="courier new"><b>NAME</b></th>
              <th><font size="2" face="courier new"><b>ENG<br>(100)</b></th>
              <th><font size="2" face="courier new"><b>HINDI<br>(100)</b></th>
              <th><font size="2" face="courier new"><b>MATHS<br>(100)</b></th>
              <th><font size="2" face="courier new"><b>GK<br>(100)</b></font></th>
              
              <th><font size="2" face="courier new"><b>DRAWING<br>(50)</b></font></th>
              <th><font size="2" face="courier new"><b>HANDICRAFT<br>(50)</b></font></th>
              <th><font size="2" face="courier new"><b>DANCE<br>MUSIC<br>(50)</b></font></th>
              <th><font size="2" face="courier new"><b>HWD<br>(50)</b></font></th>
              <th><font size="2" face="courier new"><b>EWD<br>(50)</b></font></th>
              <th><font size="2" face="courier new"><b>SOCIAL<br>SCIENCE<br>(100)</b></font></th>
              <th><font size="2" face="courier new"><b>SCIENCE<br>(90)</b></font></th>
              <th><font size="2" face="courier new"><b>SCIENCE<br>PRAC.<br>(10)</b></font></th>
              <th><font size="2" face="courier new"><b>SANSKRIT<br>(100)</b></font></th>
              <th><font size="2" face="courier new"><b>COMPUTER<br>THEORY<br>(50)</b></font></th>
              <th><font size="2" face="courier new"><b>COMPUTER<br>PRAC.<br>(50)</b></font></th>
              <th><font size="2" face="courier new"><b>OBTAINED<br>MARKS</b></font></th>
              <th><font size="2" face="courier new"><b>TOTAL<br>MARKS</b></font></th>
              <th><font size="2" face="courier new"><b>%<br>(100%)</b></font></th>
            </tr>
            
            <%
            while(res.next())
            {
            
            
              String name = res.getString(2);
              int hindi = res.getInt(3);
              int eng = res.getInt(4);
              int maths = res.getInt(5);
              int gk = res.getInt(6);
              int hwd = res.getInt(7);
                  int ewd = res.getInt(8);
                  int draw = res.getInt(9);
                  int handi = res.getInt(10);
                  int dance = res.getInt(11);
                  int sci = res.getInt(12);
                  int scip = res.getInt(13);
                  int social = res.getInt(14);
                  int hist = res.getInt(15);
                  int geo = res.getInt(16);
                  int civics = res.getInt(17);
                  int home = res.getInt(18);
                  int sans = res.getInt(19);
                  int compt = res.getInt(20);
                  int compp = res.getInt(21);
              int obt = eng+hindi+maths+gk+draw+handi+dance+hwd+ewd+sci+scip+social+sans+compp+compt;
              int tot = 1050;
              double per = ((double)obt/(double)tot)*100;
              per = Math.round(per* 100.0) / 100.0;

              %>
              <tr>
              <td><font size="2" face="courier new"><%out.print(c++);%></font></td>
              <td><b><font size="2" face="courier new"><%out.print(name.toUpperCase());%></b></font></td>
              <td><font size="2" face="courier new"><%out.print(eng);%></font></td>
              <td><font size="2" face="courier new"><%out.print(hindi);%></font></td>
              <td><font size="2" face="courier new"><%out.print(maths);%></font></td>
              <td><font size="2" face="courier new"><%out.print(gk);%></font></td>
              <td><font size="2" face="courier new"><%out.print(draw);%></font></td>
              <td><font size="2" face="courier new"><%out.print(handi);%></font></td>
              <td><font size="2" face="courier new"><%out.print(dance);%></font></td>
              <td><font size="2" face="courier new"><%out.print(hwd);%></font></td>
              <td><font size="2" face="courier new"><%out.print(ewd);%></font></td>
              <td><font size="2" face="courier new"><%out.print(social);%></font></td>
              <td><font size="2" face="courier new"><%out.print(sci);%></font></td>
              <td><font size="2" face="courier new"><%out.print(scip);%></font></td>
              <td><font size="2" face="courier new"><%out.print(sans);%></font></td>
              <td><font size="2" face="courier new"><%out.print(compt);%></font></td>
              <td><font size="2" face="courier new"><%out.print(compp);%></font></td>
              <td><b><font size="2" face="courier new"><%out.print(obt);%></b></font></td>
              <td><font size="2" face="courier new"><%out.print(tot);%></font></td>
              <td><b><font size="2" face="courier new"><%out.print(per);%></b></font></td>
              </tr><%
              
            }
            %>
            
            </table>
          </div></div><br>
          <!--------------TERM3 ENDS------------------------------->

          <!-----------------------END_TERM BEGINS---------------------------->
             <button type="button" class="btn btn-primary bt-lg" data-toggle="collapse" data-target="#pc74">END_TERM</button><br>
              <div id="pc7t4_acc">

                <div id="pc74" class="collapse">
                  <br><font size="2" face="courier new"><b>END_TERM_RESULT</b></font><br>
              <%
              res = stmt.executeQuery("select * from marks_END where class='VII'");
              c = 1;
              %>

            <table class = "table table-sm table-striped table-bordered table-responsive w-auto" style="overflow:scroll;">
            <tr class="active">
              <th><font size="2" face="courier new"><b>SNO</b></th>
              <th><font size="2" face="courier new"><b>NAME</b></th>
              <th><font size="2" face="courier new"><b>ENG<br>(100)</b></th>
              <th><font size="2" face="courier new"><b>HINDI<br>(100)</b></th>
              <th><font size="2" face="courier new"><b>MATHS<br>(100)</b></th>
              <th><font size="2" face="courier new"><b>GK<br>(100)</b></font></th>
              
              <th><font size="2" face="courier new"><b>DRAWING<br>(50)</b></font></th>
              <th><font size="2" face="courier new"><b>HANDICRAFT<br>(50)</b></font></th>
              <th><font size="2" face="courier new"><b>DANCE<br>MUSIC<br>(50)</b></font></th>
              <th><font size="2" face="courier new"><b>HWD<br>(50)</b></font></th>
              <th><font size="2" face="courier new"><b>EWD<br>(50)</b></font></th>
              <th><font size="2" face="courier new"><b>SOCIAL<br>SCIENCE<br>(100)</b></font></th>
              <th><font size="2" face="courier new"><b>SCIENCE<br>(90)</b></font></th>
              <th><font size="2" face="courier new"><b>SCIENCE<br>PRAC.<br>(10)</b></font></th>
              <th><font size="2" face="courier new"><b>SANSKRIT<br>(100)</b></font></th>
              <th><font size="2" face="courier new"><b>COMPUTER<br>THEORY<br>(50)</b></font></th>
              <th><font size="2" face="courier new"><b>COMPUTER<br>PRAC.<br>(50)</b></font></th>
              <th><font size="2" face="courier new"><b>OBTAINED<br>MARKS</b></font></th>
              <th><font size="2" face="courier new"><b>TOTAL<br>MARKS</b></font></th>
              <th><font size="2" face="courier new"><b>%<br>(100%)</b></font></th>
            </tr>
            
            <%
            while(res.next())
            {
            
            
              String name = res.getString(2);
              int hindi = res.getInt(3);
              int eng = res.getInt(4);
              int maths = res.getInt(5);
              int gk = res.getInt(6);
              int hwd = res.getInt(7);
                  int ewd = res.getInt(8);
                  int draw = res.getInt(9);
                  int handi = res.getInt(10);
                  int dance = res.getInt(11);
                  int sci = res.getInt(12);
                  int scip = res.getInt(13);
                  int social = res.getInt(14);
                  int hist = res.getInt(15);
                  int geo = res.getInt(16);
                  int civics = res.getInt(17);
                  int home = res.getInt(18);
                  int sans = res.getInt(19);
                  int compt = res.getInt(20);
                  int compp = res.getInt(21);
              int obt = eng+hindi+maths+gk+draw+handi+dance+hwd+ewd+sci+scip+social+sans+compp+compt;
              int tot = 1050;
              double per = ((double)obt/(double)tot)*100;
              per = Math.round(per* 100.0) / 100.0;

              %>
              <tr>
              <td><font size="2" face="courier new"><%out.print(c++);%></font></td>
              <td><b><font size="2" face="courier new"><%out.print(name.toUpperCase());%></b></font></td>
              <td><font size="2" face="courier new"><%out.print(eng);%></font></td>
              <td><font size="2" face="courier new"><%out.print(hindi);%></font></td>
              <td><font size="2" face="courier new"><%out.print(maths);%></font></td>
              <td><font size="2" face="courier new"><%out.print(gk);%></font></td>
              <td><font size="2" face="courier new"><%out.print(draw);%></font></td>
              <td><font size="2" face="courier new"><%out.print(handi);%></font></td>
              <td><font size="2" face="courier new"><%out.print(dance);%></font></td>
              <td><font size="2" face="courier new"><%out.print(hwd);%></font></td>
              <td><font size="2" face="courier new"><%out.print(ewd);%></font></td>
              <td><font size="2" face="courier new"><%out.print(social);%></font></td>
              <td><font size="2" face="courier new"><%out.print(sci);%></font></td>
              <td><font size="2" face="courier new"><%out.print(scip);%></font></td>
              <td><font size="2" face="courier new"><%out.print(sans);%></font></td>
              <td><font size="2" face="courier new"><%out.print(compt);%></font></td>
              <td><font size="2" face="courier new"><%out.print(compp);%></font></td>
              <td><b><font size="2" face="courier new"><%out.print(obt);%></b></font></td>
              <td><font size="2" face="courier new"><%out.print(tot);%></font></td>
              <td><b><font size="2" face="courier new"><%out.print(per);%></b></font></td>
              </tr><%
              
            }
            %>
            
            </table>
          </div></div><br>
          <!--------------END_TERM ENDS------------------------------->

      </div>


      <div id="pc8" style="display: none;">
        <!--INNER ACCORDIONS FOR DIFFERENT TERMINAL-->
        <%
       
            %>
            <font size="6" face="courier new"><b>CLASS_VIII_RESULT</b></font><br>
            <!-----------------------TERM1 BEGINS---------------------------->
             <button type="button" class="btn btn-primary bt-lg" data-toggle="collapse" data-target="#pc81">TERM 1</button><br>
              <div id="pc8t1_acc">
                
                <div id="pc81" class="collapse">
                  <br><font size="2" face="courier new"><b>TERM_1_RESULT</b></font><br>
              <%
              res = stmt.executeQuery("select * from marksT1 where class='VIII'");
              c = 1;
              %>

            <table class = "table table-sm table-striped table-bordered table-responsive w-auto" style="overflow:scroll;">
            <tr class="active">
              <th><font size="2" face="courier new"><b>SNO</b></th>
              <th><font size="2" face="courier new"><b>NAME</b></th>
              <th><font size="2" face="courier new"><b>ENG<br>(100)</b></th>
              <th><font size="2" face="courier new"><b>HINDI<br>(100)</b></th>
              <th><font size="2" face="courier new"><b>MATHS<br>(100)</b></th>
              <th><font size="2" face="courier new"><b>GK<br>(100)</b></font></th>
              
              <th><font size="2" face="courier new"><b>DRAWING<br>(50)</b></font></th>
              <th><font size="2" face="courier new"><b>HANDICRAFT<br>(50)</b></font></th>
              <th><font size="2" face="courier new"><b>DANCE<br>MUSIC<br>(50)</b></font></th>
              <th><font size="2" face="courier new"><b>HWD<br>(50)</b></font></th>
              <th><font size="2" face="courier new"><b>EWD<br>(50)</b></font></th>
              <th><font size="2" face="courier new"><b>SOCIAL<br>SCIENCE<br>(100)</b></font></th>
              <th><font size="2" face="courier new"><b>SCIENCE<br>(90)</b></font></th>
              <th><font size="2" face="courier new"><b>SCIENCE<br>PRAC.<br>(10)</b></font></th>
              <th><font size="2" face="courier new"><b>SANSKRIT<br>(100)</b></font></th>
              
              <th><font size="2" face="courier new"><b>OBTAINED<br>MARKS</b></font></th>
              <th><font size="2" face="courier new"><b>TOTAL<br>MARKS</b></font></th>
              <th><font size="2" face="courier new"><b>%<br>(100%)</b></font></th>
            </tr>
            
            <%
            while(res.next())
            {
            
            
              String name = res.getString(2);
              int hindi = res.getInt(3);
              int eng = res.getInt(4);
              int maths = res.getInt(5);
              int gk = res.getInt(6);
              int hwd = res.getInt(7);
                  int ewd = res.getInt(8);
                  int draw = res.getInt(9);
                  int handi = res.getInt(10);
                  int dance = res.getInt(11);
                  int sci = res.getInt(12);
                  int scip = res.getInt(13);
                  int social = res.getInt(14);
                  int hist = res.getInt(15);
                  int geo = res.getInt(16);
                  int civics = res.getInt(17);
                  int home = res.getInt(18);
                  int sans = res.getInt(19);
                  int compt = res.getInt(20);
                  int compp = res.getInt(21);
              int obt = eng+hindi+maths+gk+draw+handi+dance+hwd+ewd+sci+scip+social+sans;
              int tot = 950;
              double per = ((double)obt/(double)tot)*100;
              per = Math.round(per* 100.0) / 100.0;

              %>
              <tr>
              <td><font size="2" face="courier new"><%out.print(c++);%></font></td>
              <td><b><font size="2" face="courier new"><%out.print(name.toUpperCase());%></b></font></td>
              <td><font size="2" face="courier new"><%out.print(eng);%></font></td>
              <td><font size="2" face="courier new"><%out.print(hindi);%></font></td>
              <td><font size="2" face="courier new"><%out.print(maths);%></font></td>
              <td><font size="2" face="courier new"><%out.print(gk);%></font></td>
              <td><font size="2" face="courier new"><%out.print(draw);%></font></td>
              <td><font size="2" face="courier new"><%out.print(handi);%></font></td>
              <td><font size="2" face="courier new"><%out.print(dance);%></font></td>
              <td><font size="2" face="courier new"><%out.print(hwd);%></font></td>
              <td><font size="2" face="courier new"><%out.print(ewd);%></font></td>
              <td><font size="2" face="courier new"><%out.print(social);%></font></td>
              <td><font size="2" face="courier new"><%out.print(sci);%></font></td>
              <td><font size="2" face="courier new"><%out.print(scip);%></font></td>
              <td><font size="2" face="courier new"><%out.print(sans);%></font></td>
              
              <td><b><font size="2" face="courier new"><%out.print(obt);%></b></font></td>
              <td><font size="2" face="courier new"><%out.print(tot);%></font></td>
              <td><b><font size="2" face="courier new"><%out.print(per);%></b></font></td>
              </tr><%
              
            }
            %>
            
            </table>
          </div></div><br>
          <!--------------TERM1 ENDS------------------------------->


          <!-----------------------HALF_YEARLY BEGINS---------------------------->
             <button type="button" class="btn btn-primary bt-lg" data-toggle="collapse" data-target="#pc82">HALF_YEARLY</button><br>
              <div id="pc8t2_acc">
                
                <div id="pc82" class="collapse">
                  <br><font size="2" face="courier new"><b>HALF_YEARLY_RESULT</b></font><br>
              <%
              res = stmt.executeQuery("select * from marks_HALF where class='VIII'");
              c = 1;
              %>

            <table class = "table table-sm table-striped table-bordered table-responsive w-auto" style="overflow:scroll;">
            <tr class="active">
              <th><font size="2" face="courier new"><b>SNO</b></th>
              <th><font size="2" face="courier new"><b>NAME</b></th>
              <th><font size="2" face="courier new"><b>ENG<br>(100)</b></th>
              <th><font size="2" face="courier new"><b>HINDI<br>(100)</b></th>
              <th><font size="2" face="courier new"><b>MATHS<br>(100)</b></th>
              <th><font size="2" face="courier new"><b>GK<br>(100)</b></font></th>
              
              <th><font size="2" face="courier new"><b>DRAWING<br>(50)</b></font></th>
              <th><font size="2" face="courier new"><b>HANDICRAFT<br>(50)</b></font></th>
              <th><font size="2" face="courier new"><b>DANCE<br>MUSIC<br>(50)</b></font></th>
              <th><font size="2" face="courier new"><b>HWD<br>(50)</b></font></th>
              <th><font size="2" face="courier new"><b>EWD<br>(50)</b></font></th>
              <th><font size="2" face="courier new"><b>SOCIAL<br>SCIENCE<br>(100)</b></font></th>
              <th><font size="2" face="courier new"><b>SCIENCE<br>(90)</b></font></th>
              <th><font size="2" face="courier new"><b>SCIENCE<br>PRAC.<br>(10)</b></font></th>
              <th><font size="2" face="courier new"><b>SANSKRIT<br>(100)</b></font></th>
              
              <th><font size="2" face="courier new"><b>OBTAINED<br>MARKS</b></font></th>
              <th><font size="2" face="courier new"><b>TOTAL<br>MARKS</b></font></th>
              <th><font size="2" face="courier new"><b>%<br>(100%)</b></font></th>
            </tr>
            
            <%
            while(res.next())
            {
            
            
              String name = res.getString(2);
              int hindi = res.getInt(3);
              int eng = res.getInt(4);
              int maths = res.getInt(5);
              int gk = res.getInt(6);
              int hwd = res.getInt(7);
                  int ewd = res.getInt(8);
                  int draw = res.getInt(9);
                  int handi = res.getInt(10);
                  int dance = res.getInt(11);
                  int sci = res.getInt(12);
                  int scip = res.getInt(13);
                  int social = res.getInt(14);
                  int hist = res.getInt(15);
                  int geo = res.getInt(16);
                  int civics = res.getInt(17);
                  int home = res.getInt(18);
                  int sans = res.getInt(19);
                  int compt = res.getInt(20);
                  int compp = res.getInt(21);
              int obt = eng+hindi+maths+gk+draw+handi+dance+hwd+ewd+social+sci+scip+sans;
              int tot = 950;
              double per = ((double)obt/(double)tot)*100;
              per = Math.round(per* 100.0) / 100.0;

              %>
              <tr>
              <td><font size="2" face="courier new"><%out.print(c++);%></font></td>
              <td><b><font size="2" face="courier new"><%out.print(name.toUpperCase());%></b></font></td>
              <td><font size="2" face="courier new"><%out.print(eng);%></font></td>
              <td><font size="2" face="courier new"><%out.print(hindi);%></font></td>
              <td><font size="2" face="courier new"><%out.print(maths);%></font></td>
              <td><font size="2" face="courier new"><%out.print(gk);%></font></td>
              <td><font size="2" face="courier new"><%out.print(draw);%></font></td>
              <td><font size="2" face="courier new"><%out.print(handi);%></font></td>
              <td><font size="2" face="courier new"><%out.print(dance);%></font></td>
              <td><font size="2" face="courier new"><%out.print(hwd);%></font></td>
              <td><font size="2" face="courier new"><%out.print(ewd);%></font></td>
              <td><font size="2" face="courier new"><%out.print(social);%></font></td>
              <td><font size="2" face="courier new"><%out.print(sci);%></font></td>
              <td><font size="2" face="courier new"><%out.print(scip);%></font></td>
              <td><font size="2" face="courier new"><%out.print(sans);%></font></td>
              
              <td><b><font size="2" face="courier new"><%out.print(obt);%></b></font></td>
              <td><font size="2" face="courier new"><%out.print(tot);%></font></td>
              <td><b><font size="2" face="courier new"><%out.print(per);%></b></font></td>
              </tr><%
              
            }
            %>
            
            </table>
          </div></div><br>
          <!--------------HALF_YEARLY ENDS------------------------------->

          <!-----------------------TERM3 BEGINS---------------------------->
             <button type="button" class="btn btn-primary bt-lg" data-toggle="collapse" data-target="#pc83">TERM 3</button><br>
              <div id="pc8t3_acc">
                
                <div id="pc83" class="collapse">
                  <br><font size="2" face="courier new"><b>TERM_3_RESULT</b></font><br>
              <%
              res = stmt.executeQuery("select * from marks_T3 where class='VIII'");
              c = 1;
              %>

            <table class = "table table-sm table-striped table-bordered table-responsive w-auto" style="overflow:scroll;">
            <tr class="active">
              <th><font size="2" face="courier new"><b>SNO</b></th>
              <th><font size="2" face="courier new"><b>NAME</b></th>
              <th><font size="2" face="courier new"><b>ENG<br>(100)</b></th>
              <th><font size="2" face="courier new"><b>HINDI<br>(100)</b></th>
              <th><font size="2" face="courier new"><b>MATHS<br>(100)</b></th>
              <th><font size="2" face="courier new"><b>GK<br>(100)</b></font></th>
              
              <th><font size="2" face="courier new"><b>DRAWING<br>(50)</b></font></th>
              <th><font size="2" face="courier new"><b>HANDICRAFT<br>(50)</b></font></th>
              <th><font size="2" face="courier new"><b>DANCE<br>MUSIC<br>(50)</b></font></th>
              <th><font size="2" face="courier new"><b>HWD<br>(50)</b></font></th>
              <th><font size="2" face="courier new"><b>EWD<br>(50)</b></font></th>
              <th><font size="2" face="courier new"><b>SOCIAL<br>SCIENCE<br>(100)</b></font></th>
              <th><font size="2" face="courier new"><b>SCIENCE<br>(90)</b></font></th>
              <th><font size="2" face="courier new"><b>SCIENCE<br>PRAC.<br>(10)</b></font></th>
              <th><font size="2" face="courier new"><b>SANSKRIT<br>(100)</b></font></th>
              
              <th><font size="2" face="courier new"><b>OBTAINED<br>MARKS</b></font></th>
              <th><font size="2" face="courier new"><b>TOTAL<br>MARKS</b></font></th>
              <th><font size="2" face="courier new"><b>%<br>(100%)</b></font></th>
            </tr>
            
            <%
            while(res.next())
            {
            
            
              String name = res.getString(2);
              int hindi = res.getInt(3);
              int eng = res.getInt(4);
              int maths = res.getInt(5);
              int gk = res.getInt(6);
              int hwd = res.getInt(7);
                  int ewd = res.getInt(8);
                  int draw = res.getInt(9);
                  int handi = res.getInt(10);
                  int dance = res.getInt(11);
                  int sci = res.getInt(12);
                  int scip = res.getInt(13);
                  int social = res.getInt(14);
                  int hist = res.getInt(15);
                  int geo = res.getInt(16);
                  int civics = res.getInt(17);
                  int home = res.getInt(18);
                  int sans = res.getInt(19);
                  int compt = res.getInt(20);
                  int compp = res.getInt(21);
              int obt = eng+hindi+maths+gk+draw+handi+dance+hwd+ewd+sci+scip+social+sans;
              int tot = 950;
              double per = ((double)obt/(double)tot)*100;
              per = Math.round(per* 100.0) / 100.0;

              %>
              <tr>
              <td><font size="2" face="courier new"><%out.print(c++);%></font></td>
              <td><b><font size="2" face="courier new"><%out.print(name.toUpperCase());%></b></font></td>
              <td><font size="2" face="courier new"><%out.print(eng);%></font></td>
              <td><font size="2" face="courier new"><%out.print(hindi);%></font></td>
              <td><font size="2" face="courier new"><%out.print(maths);%></font></td>
              <td><font size="2" face="courier new"><%out.print(gk);%></font></td>
              <td><font size="2" face="courier new"><%out.print(draw);%></font></td>
              <td><font size="2" face="courier new"><%out.print(handi);%></font></td>
              <td><font size="2" face="courier new"><%out.print(dance);%></font></td>
              <td><font size="2" face="courier new"><%out.print(hwd);%></font></td>
              <td><font size="2" face="courier new"><%out.print(ewd);%></font></td>
              <td><font size="2" face="courier new"><%out.print(social);%></font></td>
              <td><font size="2" face="courier new"><%out.print(sci);%></font></td>
              <td><font size="2" face="courier new"><%out.print(scip);%></font></td>
              <td><font size="2" face="courier new"><%out.print(sans);%></font></td>
              
              <td><b><font size="2" face="courier new"><%out.print(obt);%></b></font></td>
              <td><font size="2" face="courier new"><%out.print(tot);%></font></td>
              <td><b><font size="2" face="courier new"><%out.print(per);%></b></font></td>
              </tr><%
              
            }
            %>
            
            </table>
          </div></div><br>
          <!--------------TERM3 ENDS------------------------------->

          <!-----------------------END_TERM BEGINS---------------------------->
             <button type="button" class="btn btn-primary bt-lg" data-toggle="collapse" data-target="#pc84">END_TERM</button><br>
              <div id="pc8t4_acc">

                <div id="pc84" class="collapse">
                  <br><font size="2" face="courier new"><b>END_TERM_RESULT</b></font><br>
              <%
              res = stmt.executeQuery("select * from marks_END where class='VIII'");
              c = 1;
              %>

            <table class = "table table-sm table-striped table-bordered table-responsive w-auto" style="overflow:scroll;">
            <tr class="active">
              <th><font size="2" face="courier new"><b>SNO</b></th>
              <th><font size="2" face="courier new"><b>NAME</b></th>
              <th><font size="2" face="courier new"><b>ENG<br>(100)</b></th>
              <th><font size="2" face="courier new"><b>HINDI<br>(100)</b></th>
              <th><font size="2" face="courier new"><b>MATHS<br>(100)</b></th>
              <th><font size="2" face="courier new"><b>GK<br>(100)</b></font></th>
              
              <th><font size="2" face="courier new"><b>DRAWING<br>(50)</b></font></th>
              <th><font size="2" face="courier new"><b>HANDICRAFT<br>(50)</b></font></th>
              <th><font size="2" face="courier new"><b>DANCE<br>MUSIC<br>(50)</b></font></th>
              <th><font size="2" face="courier new"><b>HWD<br>(50)</b></font></th>
              <th><font size="2" face="courier new"><b>EWD<br>(50)</b></font></th>
              <th><font size="2" face="courier new"><b>SOCIAL<br>SCIENCE<br>(100)</b></font></th>
              <th><font size="2" face="courier new"><b>SCIENCE<br>(90)</b></font></th>
              <th><font size="2" face="courier new"><b>SCIENCE<br>PRAC.<br>(10)</b></font></th>
              <th><font size="2" face="courier new"><b>SANSKRIT<br>(100)</b></font></th>
             
              <th><font size="2" face="courier new"><b>OBTAINED<br>MARKS</b></font></th>
              <th><font size="2" face="courier new"><b>TOTAL<br>MARKS</b></font></th>
              <th><font size="2" face="courier new"><b>%<br>(100%)</b></font></th>
            </tr>
            
            <%
            while(res.next())
            {
            
            
              String name = res.getString(2);
              int hindi = res.getInt(3);
              int eng = res.getInt(4);
              int maths = res.getInt(5);
              int gk = res.getInt(6);
              int hwd = res.getInt(7);
                  int ewd = res.getInt(8);
                  int draw = res.getInt(9);
                  int handi = res.getInt(10);
                  int dance = res.getInt(11);
                  int sci = res.getInt(12);
                  int scip = res.getInt(13);
                  int social = res.getInt(14);
                  int hist = res.getInt(15);
                  int geo = res.getInt(16);
                  int civics = res.getInt(17);
                  int home = res.getInt(18);
                  int sans = res.getInt(19);
                  int compt = res.getInt(20);
                  int compp = res.getInt(21);
              int obt = eng+hindi+maths+gk+draw+handi+dance+hwd+ewd+sci+scip+social+sans;
              int tot = 950;
              double per = ((double)obt/(double)tot)*100;
              per = Math.round(per* 100.0) / 100.0;

              %>
              <tr>
              <td><font size="2" face="courier new"><%out.print(c++);%></font></td>
              <td><b><font size="2" face="courier new"><%out.print(name.toUpperCase());%></b></font></td>
              <td><font size="2" face="courier new"><%out.print(eng);%></font></td>
              <td><font size="2" face="courier new"><%out.print(hindi);%></font></td>
              <td><font size="2" face="courier new"><%out.print(maths);%></font></td>
              <td><font size="2" face="courier new"><%out.print(gk);%></font></td>
              <td><font size="2" face="courier new"><%out.print(draw);%></font></td>
              <td><font size="2" face="courier new"><%out.print(handi);%></font></td>
              <td><font size="2" face="courier new"><%out.print(dance);%></font></td>
              <td><font size="2" face="courier new"><%out.print(hwd);%></font></td>
              <td><font size="2" face="courier new"><%out.print(ewd);%></font></td>
              <td><font size="2" face="courier new"><%out.print(social);%></font></td>
              <td><font size="2" face="courier new"><%out.print(sci);%></font></td>
              <td><font size="2" face="courier new"><%out.print(scip);%></font></td>
              <td><font size="2" face="courier new"><%out.print(sans);%></font></td>
              
              <td><b><font size="2" face="courier new"><%out.print(obt);%></b></font></td>
              <td><font size="2" face="courier new"><%out.print(tot);%></font></td>
              <td><b><font size="2" face="courier new"><%out.print(per);%></b></font></td>
              </tr><%
              
            }
            %>
            
            </table>
          </div></div><br>
          <!--------------END_TERM ENDS------------------------------->

      </div>

      <div id="pc9" style="display: none;">

        <!--INNER ACCORDIONS FOR DIFFERENT TERMINAL-->
        <%
       
            %>
            <font size="6" face="courier new"><b>CLASS_IX_RESULT</b></font><br>
            <!-----------------------TERM1 BEGINS---------------------------->
             <button type="button" class="btn btn-primary bt-lg" data-toggle="collapse" data-target="#pc91">TERM 1</button><br>
              <div id="pc9t1_acc">
                
                <div id="pc91" class="collapse">
                  <br><font size="2" face="courier new"><b>TERM_1_RESULT</b></font><br>
              <%
              res = stmt.executeQuery("select * from marksT1 where class='IX'");
              c = 1;
              %>

            <table class = "table table-sm table-striped table-bordered table-responsive w-auto" style="overflow:scroll;">
            <tr class="active">
              <th><font size="2" face="courier new"><b>SNO</b></th>
              <th><font size="2" face="courier new"><b>NAME</b></th>
              <th><font size="2" face="courier new"><b>ENG<br>(100)</b></th>
              <th><font size="2" face="courier new"><b>HINDI<br>(100)</b></th>
              <th><font size="2" face="courier new"><b>MATHS<br>(100)</b></th>
              <th><font size="2" face="courier new"><b>GK<br>(100)</b></font></th>
              
              <th><font size="2" face="courier new"><b>DRAWING<br>(50)</b></font></th>
              <th><font size="2" face="courier new"><b>HANDICRAFT<br>(50)</b></font></th>
              <th><font size="2" face="courier new"><b>DANCE<br>MUSIC<br>(50)</b></font></th>
              <th><font size="2" face="courier new"><b>HWD<br>(50)</b></font></th>
              <th><font size="2" face="courier new"><b>EWD<br>(50)</b></font></th>
              <th><font size="2" face="courier new"><b>SOCIAL<br>SCIENCE<br>(100)</b></font></th>
              <th><font size="2" face="courier new"><b>SCIENCE<br>(90)</b></font></th>
              <th><font size="2" face="courier new"><b>SCIENCE<br>PRAC.<br>(10)</b></font></th>
              <th><font size="2" face="courier new"><b>SANSKRIT<br>(100)</b></font></th>
              
              <th><font size="2" face="courier new"><b>OBTAINED<br>MARKS</b></font></th>
              <th><font size="2" face="courier new"><b>TOTAL<br>MARKS</b></font></th>
              <th><font size="2" face="courier new"><b>%<br>(100%)</b></font></th>
            </tr>
            
            <%
            while(res.next())
            {
            
            
              String name = res.getString(2);
              int hindi = res.getInt(3);
              int eng = res.getInt(4);
              int maths = res.getInt(5);
              int gk = res.getInt(6);
              int hwd = res.getInt(7);
                  int ewd = res.getInt(8);
                  int draw = res.getInt(9);
                  int handi = res.getInt(10);
                  int dance = res.getInt(11);
                  int sci = res.getInt(12);
                  int scip = res.getInt(13);
                  int social = res.getInt(14);
                  int hist = res.getInt(15);
                  int geo = res.getInt(16);
                  int civics = res.getInt(17);
                  int home = res.getInt(18);
                  int sans = res.getInt(19);
                  int compt = res.getInt(20);
                  int compp = res.getInt(21);
              int obt = eng+hindi+maths+gk+draw+handi+dance+hwd+ewd+sci+scip+social+sans;
              int tot = 950;
              double per = ((double)obt/(double)tot)*100;
              per = Math.round(per* 100.0) / 100.0;

              %>
              <tr>
              <td><font size="2" face="courier new"><%out.print(c++);%></font></td>
              <td><b><font size="2" face="courier new"><%out.print(name.toUpperCase());%></b></font></td>
              <td><font size="2" face="courier new"><%out.print(eng);%></font></td>
              <td><font size="2" face="courier new"><%out.print(hindi);%></font></td>
              <td><font size="2" face="courier new"><%out.print(maths);%></font></td>
              <td><font size="2" face="courier new"><%out.print(gk);%></font></td>
              <td><font size="2" face="courier new"><%out.print(draw);%></font></td>
              <td><font size="2" face="courier new"><%out.print(handi);%></font></td>
              <td><font size="2" face="courier new"><%out.print(dance);%></font></td>
              <td><font size="2" face="courier new"><%out.print(hwd);%></font></td>
              <td><font size="2" face="courier new"><%out.print(ewd);%></font></td>
              <td><font size="2" face="courier new"><%out.print(social);%></font></td>
              <td><font size="2" face="courier new"><%out.print(sci);%></font></td>
              <td><font size="2" face="courier new"><%out.print(scip);%></font></td>
              <td><font size="2" face="courier new"><%out.print(sans);%></font></td>
              
              <td><b><font size="2" face="courier new"><%out.print(obt);%></b></font></td>
              <td><font size="2" face="courier new"><%out.print(tot);%></font></td>
              <td><b><font size="2" face="courier new"><%out.print(per);%></b></font></td>
              </tr><%
              
            }
            %>
            
            </table>
          </div></div><br>
          <!--------------TERM1 ENDS------------------------------->


          <!-----------------------HALF_YEARLY BEGINS---------------------------->
             <button type="button" class="btn btn-primary bt-lg" data-toggle="collapse" data-target="#pc92">HALF_YEARLY</button><br>
              <div id="pc9t2_acc">
                
                <div id="pc92" class="collapse">
                  <br><font size="2" face="courier new"><b>HALF_YEARLY_RESULT</b></font><br>
              <%
              res = stmt.executeQuery("select * from marks_HALF where class='IX'");
              c = 1;
              %>

            <table class = "table table-sm table-striped table-bordered table-responsive w-auto" style="overflow:scroll;">
            <tr class="active">
              <th><font size="2" face="courier new"><b>SNO</b></th>
              <th><font size="2" face="courier new"><b>NAME</b></th>
              <th><font size="2" face="courier new"><b>ENG<br>(100)</b></th>
              <th><font size="2" face="courier new"><b>HINDI<br>(100)</b></th>
              <th><font size="2" face="courier new"><b>MATHS<br>(100)</b></th>
              <th><font size="2" face="courier new"><b>GK<br>(100)</b></font></th>
              
              <th><font size="2" face="courier new"><b>DRAWING<br>(50)</b></font></th>
              <th><font size="2" face="courier new"><b>HANDICRAFT<br>(50)</b></font></th>
              <th><font size="2" face="courier new"><b>DANCE<br>MUSIC<br>(50)</b></font></th>
              <th><font size="2" face="courier new"><b>HWD<br>(50)</b></font></th>
              <th><font size="2" face="courier new"><b>EWD<br>(50)</b></font></th>
              <th><font size="2" face="courier new"><b>SOCIAL<br>SCIENCE<br>(100)</b></font></th>
              <th><font size="2" face="courier new"><b>SCIENCE<br>(90)</b></font></th>
              <th><font size="2" face="courier new"><b>SCIENCE<br>PRAC.<br>(10)</b></font></th>
              <th><font size="2" face="courier new"><b>SANSKRIT<br>(100)</b></font></th>
              
              <th><font size="2" face="courier new"><b>OBTAINED<br>MARKS</b></font></th>
              <th><font size="2" face="courier new"><b>TOTAL<br>MARKS</b></font></th>
              <th><font size="2" face="courier new"><b>%<br>(100%)</b></font></th>
            </tr>
            
            <%
            while(res.next())
            {
            
            
              String name = res.getString(2);
              int hindi = res.getInt(3);
              int eng = res.getInt(4);
              int maths = res.getInt(5);
              int gk = res.getInt(6);
              int hwd = res.getInt(7);
                  int ewd = res.getInt(8);
                  int draw = res.getInt(9);
                  int handi = res.getInt(10);
                  int dance = res.getInt(11);
                  int sci = res.getInt(12);
                  int scip = res.getInt(13);
                  int social = res.getInt(14);
                  int hist = res.getInt(15);
                  int geo = res.getInt(16);
                  int civics = res.getInt(17);
                  int home = res.getInt(18);
                  int sans = res.getInt(19);
                  int compt = res.getInt(20);
                  int compp = res.getInt(21);
              int obt = eng+hindi+maths+gk+draw+handi+dance+hwd+ewd+social+sci+scip+sans;
              int tot = 950;
              double per = ((double)obt/(double)tot)*100;
              per = Math.round(per* 100.0) / 100.0;

              %>
              <tr>
              <td><font size="2" face="courier new"><%out.print(c++);%></font></td>
              <td><b><font size="2" face="courier new"><%out.print(name.toUpperCase());%></b></font></td>
              <td><font size="2" face="courier new"><%out.print(eng);%></font></td>
              <td><font size="2" face="courier new"><%out.print(hindi);%></font></td>
              <td><font size="2" face="courier new"><%out.print(maths);%></font></td>
              <td><font size="2" face="courier new"><%out.print(gk);%></font></td>
              <td><font size="2" face="courier new"><%out.print(draw);%></font></td>
              <td><font size="2" face="courier new"><%out.print(handi);%></font></td>
              <td><font size="2" face="courier new"><%out.print(dance);%></font></td>
              <td><font size="2" face="courier new"><%out.print(hwd);%></font></td>
              <td><font size="2" face="courier new"><%out.print(ewd);%></font></td>
              <td><font size="2" face="courier new"><%out.print(social);%></font></td>
              <td><font size="2" face="courier new"><%out.print(sci);%></font></td>
              <td><font size="2" face="courier new"><%out.print(scip);%></font></td>
              <td><font size="2" face="courier new"><%out.print(sans);%></font></td>
              
              <td><b><font size="2" face="courier new"><%out.print(obt);%></b></font></td>
              <td><font size="2" face="courier new"><%out.print(tot);%></font></td>
              <td><b><font size="2" face="courier new"><%out.print(per);%></b></font></td>
              </tr><%
              
            }
            %>
            
            </table>
          </div></div><br>
          <!--------------HALF_YEARLY ENDS------------------------------->

          <!-----------------------TERM3 BEGINS---------------------------->
             <button type="button" class="btn btn-primary bt-lg" data-toggle="collapse" data-target="#pc93">TERM 3</button><br>
              <div id="pc9t3_acc">
                
                <div id="pc93" class="collapse">
                  <br><font size="2" face="courier new"><b>TERM_3_RESULT</b></font><br>
              <%
              res = stmt.executeQuery("select * from marks_T3 where class='IX'");
              c = 1;
              %>

            <table class = "table table-sm table-striped table-bordered table-responsive w-auto" style="overflow:scroll;">
            <tr class="active">
              <th><font size="2" face="courier new"><b>SNO</b></th>
              <th><font size="2" face="courier new"><b>NAME</b></th>
              <th><font size="2" face="courier new"><b>ENG<br>(100)</b></th>
              <th><font size="2" face="courier new"><b>HINDI<br>(100)</b></th>
              <th><font size="2" face="courier new"><b>MATHS<br>(100)</b></th>
              <th><font size="2" face="courier new"><b>GK<br>(100)</b></font></th>
              
              <th><font size="2" face="courier new"><b>DRAWING<br>(50)</b></font></th>
              <th><font size="2" face="courier new"><b>HANDICRAFT<br>(50)</b></font></th>
              <th><font size="2" face="courier new"><b>DANCE<br>MUSIC<br>(50)</b></font></th>
              <th><font size="2" face="courier new"><b>HWD<br>(50)</b></font></th>
              <th><font size="2" face="courier new"><b>EWD<br>(50)</b></font></th>
              <th><font size="2" face="courier new"><b>SOCIAL<br>SCIENCE<br>(100)</b></font></th>
              <th><font size="2" face="courier new"><b>SCIENCE<br>(90)</b></font></th>
              <th><font size="2" face="courier new"><b>SCIENCE<br>PRAC.<br>(10)</b></font></th>
              <th><font size="2" face="courier new"><b>SANSKRIT<br>(100)</b></font></th>
              
              <th><font size="2" face="courier new"><b>OBTAINED<br>MARKS</b></font></th>
              <th><font size="2" face="courier new"><b>TOTAL<br>MARKS</b></font></th>
              <th><font size="2" face="courier new"><b>%<br>(100%)</b></font></th>
            </tr>
            
            <%
            while(res.next())
            {
            
            
              String name = res.getString(2);
              int hindi = res.getInt(3);
              int eng = res.getInt(4);
              int maths = res.getInt(5);
              int gk = res.getInt(6);
              int hwd = res.getInt(7);
                  int ewd = res.getInt(8);
                  int draw = res.getInt(9);
                  int handi = res.getInt(10);
                  int dance = res.getInt(11);
                  int sci = res.getInt(12);
                  int scip = res.getInt(13);
                  int social = res.getInt(14);
                  int hist = res.getInt(15);
                  int geo = res.getInt(16);
                  int civics = res.getInt(17);
                  int home = res.getInt(18);
                  int sans = res.getInt(19);
                  int compt = res.getInt(20);
                  int compp = res.getInt(21);
              int obt = eng+hindi+maths+gk+draw+handi+dance+hwd+ewd+sci+scip+social+sans;
              int tot = 950;
              double per = ((double)obt/(double)tot)*100;
              per = Math.round(per* 100.0) / 100.0;

              %>
              <tr>
              <td><font size="2" face="courier new"><%out.print(c++);%></font></td>
              <td><b><font size="2" face="courier new"><%out.print(name.toUpperCase());%></b></font></td>
              <td><font size="2" face="courier new"><%out.print(eng);%></font></td>
              <td><font size="2" face="courier new"><%out.print(hindi);%></font></td>
              <td><font size="2" face="courier new"><%out.print(maths);%></font></td>
              <td><font size="2" face="courier new"><%out.print(gk);%></font></td>
              <td><font size="2" face="courier new"><%out.print(draw);%></font></td>
              <td><font size="2" face="courier new"><%out.print(handi);%></font></td>
              <td><font size="2" face="courier new"><%out.print(dance);%></font></td>
              <td><font size="2" face="courier new"><%out.print(hwd);%></font></td>
              <td><font size="2" face="courier new"><%out.print(ewd);%></font></td>
              <td><font size="2" face="courier new"><%out.print(social);%></font></td>
              <td><font size="2" face="courier new"><%out.print(sci);%></font></td>
              <td><font size="2" face="courier new"><%out.print(scip);%></font></td>
              <td><font size="2" face="courier new"><%out.print(sans);%></font></td>
              
              <td><b><font size="2" face="courier new"><%out.print(obt);%></b></font></td>
              <td><font size="2" face="courier new"><%out.print(tot);%></font></td>
              <td><b><font size="2" face="courier new"><%out.print(per);%></b></font></td>
              </tr><%
              
            }
            %>
            
            </table>
          </div></div><br>
          <!--------------TERM3 ENDS------------------------------->

          <!-----------------------END_TERM BEGINS---------------------------->
             <button type="button" class="btn btn-primary bt-lg" data-toggle="collapse" data-target="#pc94">END_TERM</button><br>
              <div id="pc9t4_acc">

                <div id="pc94" class="collapse">
                  <br><font size="2" face="courier new"><b>END_TERM_RESULT</b></font><br>
              <%
              res = stmt.executeQuery("select * from marks_END where class='IX'");
              c = 1;
              %>

            <table class = "table table-sm table-striped table-bordered table-responsive w-auto" style="overflow:scroll;">
            <tr class="active">
              <th><font size="2" face="courier new"><b>SNO</b></th>
              <th><font size="2" face="courier new"><b>NAME</b></th>
              <th><font size="2" face="courier new"><b>ENG<br>(100)</b></th>
              <th><font size="2" face="courier new"><b>HINDI<br>(100)</b></th>
              <th><font size="2" face="courier new"><b>MATHS<br>(100)</b></th>
              <th><font size="2" face="courier new"><b>GK<br>(100)</b></font></th>
              
              <th><font size="2" face="courier new"><b>DRAWING<br>(50)</b></font></th>
              <th><font size="2" face="courier new"><b>HANDICRAFT<br>(50)</b></font></th>
              <th><font size="2" face="courier new"><b>DANCE<br>MUSIC<br>(50)</b></font></th>
              <th><font size="2" face="courier new"><b>HWD<br>(50)</b></font></th>
              <th><font size="2" face="courier new"><b>EWD<br>(50)</b></font></th>
              <th><font size="2" face="courier new"><b>SOCIAL<br>SCIENCE<br>(100)</b></font></th>
              <th><font size="2" face="courier new"><b>SCIENCE<br>(90)</b></font></th>
              <th><font size="2" face="courier new"><b>SCIENCE<br>PRAC.<br>(10)</b></font></th>
              <th><font size="2" face="courier new"><b>SANSKRIT<br>(100)</b></font></th>
             
              <th><font size="2" face="courier new"><b>OBTAINED<br>MARKS</b></font></th>
              <th><font size="2" face="courier new"><b>TOTAL<br>MARKS</b></font></th>
              <th><font size="2" face="courier new"><b>%<br>(100%)</b></font></th>
            </tr>
            
            <%
            while(res.next())
            {
            
            
              String name = res.getString(2);
              int hindi = res.getInt(3);
              int eng = res.getInt(4);
              int maths = res.getInt(5);
              int gk = res.getInt(6);
              int hwd = res.getInt(7);
                  int ewd = res.getInt(8);
                  int draw = res.getInt(9);
                  int handi = res.getInt(10);
                  int dance = res.getInt(11);
                  int sci = res.getInt(12);
                  int scip = res.getInt(13);
                  int social = res.getInt(14);
                  int hist = res.getInt(15);
                  int geo = res.getInt(16);
                  int civics = res.getInt(17);
                  int home = res.getInt(18);
                  int sans = res.getInt(19);
                  int compt = res.getInt(20);
                  int compp = res.getInt(21);
              int obt = eng+hindi+maths+gk+draw+handi+dance+hwd+ewd+sci+scip+social+sans;
              int tot = 950;
              double per = ((double)obt/(double)tot)*100;
              per = Math.round(per* 100.0) / 100.0;

              %>
              <tr>
              <td><font size="2" face="courier new"><%out.print(c++);%></font></td>
              <td><b><font size="2" face="courier new"><%out.print(name.toUpperCase());%></b></font></td>
              <td><font size="2" face="courier new"><%out.print(eng);%></font></td>
              <td><font size="2" face="courier new"><%out.print(hindi);%></font></td>
              <td><font size="2" face="courier new"><%out.print(maths);%></font></td>
              <td><font size="2" face="courier new"><%out.print(gk);%></font></td>
              <td><font size="2" face="courier new"><%out.print(draw);%></font></td>
              <td><font size="2" face="courier new"><%out.print(handi);%></font></td>
              <td><font size="2" face="courier new"><%out.print(dance);%></font></td>
              <td><font size="2" face="courier new"><%out.print(hwd);%></font></td>
              <td><font size="2" face="courier new"><%out.print(ewd);%></font></td>
              <td><font size="2" face="courier new"><%out.print(social);%></font></td>
              <td><font size="2" face="courier new"><%out.print(sci);%></font></td>
              <td><font size="2" face="courier new"><%out.print(scip);%></font></td>
              <td><font size="2" face="courier new"><%out.print(sans);%></font></td>
              
              <td><b><font size="2" face="courier new"><%out.print(obt);%></b></font></td>
              <td><font size="2" face="courier new"><%out.print(tot);%></font></td>
              <td><b><font size="2" face="courier new"><%out.print(per);%></b></font></td>
              </tr><%
              
            }
            %>
            
            </table>
          </div></div><br>
          <!--------------END_TERM ENDS------------------------------->

      </div>

      <div id="pc10" style="display: none;">

        <!--INNER ACCORDIONS FOR DIFFERENT TERMINAL-->
        <%
       
            %>
            <font size="6" face="courier new"><b>CLASS_X_RESULT</b></font><br>
            <!-----------------------TERM1 BEGINS---------------------------->
             <button type="button" class="btn btn-primary bt-lg" data-toggle="collapse" data-target="#pc101">TERM 1</button><br>
              <div id="pc10t1_acc">
                
                <div id="pc101" class="collapse">
                  <br><font size="2" face="courier new"><b>TERM_1_RESULT</b></font><br>
              <%
              res = stmt.executeQuery("select * from marksT1 where class='X'");
              c = 1;
              %>

            <table class = "table table-sm table-striped table-bordered table-responsive w-auto" style="overflow:scroll;">
            <tr class="active">
              <th><font size="2" face="courier new"><b>SNO</b></th>
              <th><font size="2" face="courier new"><b>NAME</b></th>
              <th><font size="2" face="courier new"><b>ENG<br>(100)</b></th>
              <th><font size="2" face="courier new"><b>HINDI<br>(100)</b></th>
              <th><font size="2" face="courier new"><b>MATHS<br>(100)</b></th>
              <th><font size="2" face="courier new"><b>GK<br>(100)</b></font></th>
              
              <th><font size="2" face="courier new"><b>DRAWING<br>(50)</b></font></th>
              <th><font size="2" face="courier new"><b>HANDICRAFT<br>(50)</b></font></th>
              <th><font size="2" face="courier new"><b>DANCE<br>MUSIC<br>(50)</b></font></th>
              <th><font size="2" face="courier new"><b>HWD<br>(50)</b></font></th>
              <th><font size="2" face="courier new"><b>EWD<br>(50)</b></font></th>
              <th><font size="2" face="courier new"><b>SOCIAL<br>SCIENCE<br>(100)</b></font></th>
              <th><font size="2" face="courier new"><b>SCIENCE<br>(90)</b></font></th>
              <th><font size="2" face="courier new"><b>SCIENCE<br>PRAC.<br>(10)</b></font></th>
              <th><font size="2" face="courier new"><b>SANSKRIT<br>(100)</b></font></th>
              
              <th><font size="2" face="courier new"><b>OBTAINED<br>MARKS</b></font></th>
              <th><font size="2" face="courier new"><b>TOTAL<br>MARKS</b></font></th>
              <th><font size="2" face="courier new"><b>%<br>(100%)</b></font></th>
            </tr>
            
            <%
            while(res.next())
            {
            
            
              String name = res.getString(2);
              int hindi = res.getInt(3);
              int eng = res.getInt(4);
              int maths = res.getInt(5);
              int gk = res.getInt(6);
              int hwd = res.getInt(7);
                  int ewd = res.getInt(8);
                  int draw = res.getInt(9);
                  int handi = res.getInt(10);
                  int dance = res.getInt(11);
                  int sci = res.getInt(12);
                  int scip = res.getInt(13);
                  int social = res.getInt(14);
                  int hist = res.getInt(15);
                  int geo = res.getInt(16);
                  int civics = res.getInt(17);
                  int home = res.getInt(18);
                  int sans = res.getInt(19);
                  int compt = res.getInt(20);
                  int compp = res.getInt(21);
              int obt = eng+hindi+maths+gk+draw+handi+dance+hwd+ewd+sci+scip+social+sans;
              int tot = 950;
              double per = ((double)obt/(double)tot)*100;
              per = Math.round(per* 100.0) / 100.0;

              %>
              <tr>
              <td><font size="2" face="courier new"><%out.print(c++);%></font></td>
              <td><b><font size="2" face="courier new"><%out.print(name.toUpperCase());%></b></font></td>
              <td><font size="2" face="courier new"><%out.print(eng);%></font></td>
              <td><font size="2" face="courier new"><%out.print(hindi);%></font></td>
              <td><font size="2" face="courier new"><%out.print(maths);%></font></td>
              <td><font size="2" face="courier new"><%out.print(gk);%></font></td>
              <td><font size="2" face="courier new"><%out.print(draw);%></font></td>
              <td><font size="2" face="courier new"><%out.print(handi);%></font></td>
              <td><font size="2" face="courier new"><%out.print(dance);%></font></td>
              <td><font size="2" face="courier new"><%out.print(hwd);%></font></td>
              <td><font size="2" face="courier new"><%out.print(ewd);%></font></td>
              <td><font size="2" face="courier new"><%out.print(social);%></font></td>
              <td><font size="2" face="courier new"><%out.print(sci);%></font></td>
              <td><font size="2" face="courier new"><%out.print(scip);%></font></td>
              <td><font size="2" face="courier new"><%out.print(sans);%></font></td>
              
              <td><b><font size="2" face="courier new"><%out.print(obt);%></b></font></td>
              <td><font size="2" face="courier new"><%out.print(tot);%></font></td>
              <td><b><font size="2" face="courier new"><%out.print(per);%></b></font></td>
              </tr><%
              
            }
            %>
            
            </table>
          </div></div><br>
          <!--------------TERM1 ENDS------------------------------->


          <!-----------------------HALF_YEARLY BEGINS---------------------------->
             <button type="button" class="btn btn-primary bt-lg" data-toggle="collapse" data-target="#pc102">HALF_YEARLY</button><br>
              <div id="pc10t2_acc">
                
                <div id="pc102" class="collapse">
                  <br><font size="2" face="courier new"><b>HALF_YEARLY_RESULT</b></font><br>
              <%
              res = stmt.executeQuery("select * from marks_HALF where class='X'");
              c = 1;
              %>

            <table class = "table table-sm table-striped table-bordered table-responsive w-auto" style="overflow:scroll;">
            <tr class="active">
              <th><font size="2" face="courier new"><b>SNO</b></th>
              <th><font size="2" face="courier new"><b>NAME</b></th>
              <th><font size="2" face="courier new"><b>ENG<br>(100)</b></th>
              <th><font size="2" face="courier new"><b>HINDI<br>(100)</b></th>
              <th><font size="2" face="courier new"><b>MATHS<br>(100)</b></th>
              <th><font size="2" face="courier new"><b>GK<br>(100)</b></font></th>
              
              <th><font size="2" face="courier new"><b>DRAWING<br>(50)</b></font></th>
              <th><font size="2" face="courier new"><b>HANDICRAFT<br>(50)</b></font></th>
              <th><font size="2" face="courier new"><b>DANCE<br>MUSIC<br>(50)</b></font></th>
              <th><font size="2" face="courier new"><b>HWD<br>(50)</b></font></th>
              <th><font size="2" face="courier new"><b>EWD<br>(50)</b></font></th>
              <th><font size="2" face="courier new"><b>SOCIAL<br>SCIENCE<br>(100)</b></font></th>
              <th><font size="2" face="courier new"><b>SCIENCE<br>(90)</b></font></th>
              <th><font size="2" face="courier new"><b>SCIENCE<br>PRAC.<br>(10)</b></font></th>
              <th><font size="2" face="courier new"><b>SANSKRIT<br>(100)</b></font></th>
              
              <th><font size="2" face="courier new"><b>OBTAINED<br>MARKS</b></font></th>
              <th><font size="2" face="courier new"><b>TOTAL<br>MARKS</b></font></th>
              <th><font size="2" face="courier new"><b>%<br>(100%)</b></font></th>
            </tr>
            
            <%
            while(res.next())
            {
            
            
              String name = res.getString(2);
              int hindi = res.getInt(3);
              int eng = res.getInt(4);
              int maths = res.getInt(5);
              int gk = res.getInt(6);
              int hwd = res.getInt(7);
                  int ewd = res.getInt(8);
                  int draw = res.getInt(9);
                  int handi = res.getInt(10);
                  int dance = res.getInt(11);
                  int sci = res.getInt(12);
                  int scip = res.getInt(13);
                  int social = res.getInt(14);
                  int hist = res.getInt(15);
                  int geo = res.getInt(16);
                  int civics = res.getInt(17);
                  int home = res.getInt(18);
                  int sans = res.getInt(19);
                  int compt = res.getInt(20);
                  int compp = res.getInt(21);
              int obt = eng+hindi+maths+gk+draw+handi+dance+hwd+ewd+social+sci+scip+sans;
              int tot = 950;
              double per = ((double)obt/(double)tot)*100;
              per = Math.round(per* 100.0) / 100.0;

              %>
              <tr>
              <td><font size="2" face="courier new"><%out.print(c++);%></font></td>
              <td><b><font size="2" face="courier new"><%out.print(name.toUpperCase());%></b></font></td>
              <td><font size="2" face="courier new"><%out.print(eng);%></font></td>
              <td><font size="2" face="courier new"><%out.print(hindi);%></font></td>
              <td><font size="2" face="courier new"><%out.print(maths);%></font></td>
              <td><font size="2" face="courier new"><%out.print(gk);%></font></td>
              <td><font size="2" face="courier new"><%out.print(draw);%></font></td>
              <td><font size="2" face="courier new"><%out.print(handi);%></font></td>
              <td><font size="2" face="courier new"><%out.print(dance);%></font></td>
              <td><font size="2" face="courier new"><%out.print(hwd);%></font></td>
              <td><font size="2" face="courier new"><%out.print(ewd);%></font></td>
              <td><font size="2" face="courier new"><%out.print(social);%></font></td>
              <td><font size="2" face="courier new"><%out.print(sci);%></font></td>
              <td><font size="2" face="courier new"><%out.print(scip);%></font></td>
              <td><font size="2" face="courier new"><%out.print(sans);%></font></td>
              
              <td><b><font size="2" face="courier new"><%out.print(obt);%></b></font></td>
              <td><font size="2" face="courier new"><%out.print(tot);%></font></td>
              <td><b><font size="2" face="courier new"><%out.print(per);%></b></font></td>
              </tr><%
              
            }
            %>
            
            </table>
          </div></div><br>
          <!--------------HALF_YEARLY ENDS------------------------------->

          <!-----------------------TERM3 BEGINS---------------------------->
             <button type="button" class="btn btn-primary bt-lg" data-toggle="collapse" data-target="#pc103">TERM 3</button><br>
              <div id="pc10t3_acc">
                
                <div id="pc103" class="collapse">
                  <br><font size="2" face="courier new"><b>TERM_3_RESULT</b></font><br>
              <%
              res = stmt.executeQuery("select * from marks_T3 where class='X'");
              c = 1;
              %>

            <table class = "table table-sm table-striped table-bordered table-responsive w-auto" style="overflow:scroll;">
            <tr class="active">
              <th><font size="2" face="courier new"><b>SNO</b></th>
              <th><font size="2" face="courier new"><b>NAME</b></th>
              <th><font size="2" face="courier new"><b>ENG<br>(100)</b></th>
              <th><font size="2" face="courier new"><b>HINDI<br>(100)</b></th>
              <th><font size="2" face="courier new"><b>MATHS<br>(100)</b></th>
              <th><font size="2" face="courier new"><b>GK<br>(100)</b></font></th>
              
              <th><font size="2" face="courier new"><b>DRAWING<br>(50)</b></font></th>
              <th><font size="2" face="courier new"><b>HANDICRAFT<br>(50)</b></font></th>
              <th><font size="2" face="courier new"><b>DANCE<br>MUSIC<br>(50)</b></font></th>
              <th><font size="2" face="courier new"><b>HWD<br>(50)</b></font></th>
              <th><font size="2" face="courier new"><b>EWD<br>(50)</b></font></th>
              <th><font size="2" face="courier new"><b>SOCIAL<br>SCIENCE<br>(100)</b></font></th>
              <th><font size="2" face="courier new"><b>SCIENCE<br>(90)</b></font></th>
              <th><font size="2" face="courier new"><b>SCIENCE<br>PRAC.<br>(10)</b></font></th>
              <th><font size="2" face="courier new"><b>SANSKRIT<br>(100)</b></font></th>
              
              <th><font size="2" face="courier new"><b>OBTAINED<br>MARKS</b></font></th>
              <th><font size="2" face="courier new"><b>TOTAL<br>MARKS</b></font></th>
              <th><font size="2" face="courier new"><b>%<br>(100%)</b></font></th>
            </tr>
            
            <%
            while(res.next())
            {
            
            
              String name = res.getString(2);
              int hindi = res.getInt(3);
              int eng = res.getInt(4);
              int maths = res.getInt(5);
              int gk = res.getInt(6);
              int hwd = res.getInt(7);
                  int ewd = res.getInt(8);
                  int draw = res.getInt(9);
                  int handi = res.getInt(10);
                  int dance = res.getInt(11);
                  int sci = res.getInt(12);
                  int scip = res.getInt(13);
                  int social = res.getInt(14);
                  int hist = res.getInt(15);
                  int geo = res.getInt(16);
                  int civics = res.getInt(17);
                  int home = res.getInt(18);
                  int sans = res.getInt(19);
                  int compt = res.getInt(20);
                  int compp = res.getInt(21);
              int obt = eng+hindi+maths+gk+draw+handi+dance+hwd+ewd+sci+scip+social+sans;
              int tot = 950;
              double per = ((double)obt/(double)tot)*100;
              per = Math.round(per* 100.0) / 100.0;

              %>
              <tr>
              <td><font size="2" face="courier new"><%out.print(c++);%></font></td>
              <td><b><font size="2" face="courier new"><%out.print(name.toUpperCase());%></b></font></td>
              <td><font size="2" face="courier new"><%out.print(eng);%></font></td>
              <td><font size="2" face="courier new"><%out.print(hindi);%></font></td>
              <td><font size="2" face="courier new"><%out.print(maths);%></font></td>
              <td><font size="2" face="courier new"><%out.print(gk);%></font></td>
              <td><font size="2" face="courier new"><%out.print(draw);%></font></td>
              <td><font size="2" face="courier new"><%out.print(handi);%></font></td>
              <td><font size="2" face="courier new"><%out.print(dance);%></font></td>
              <td><font size="2" face="courier new"><%out.print(hwd);%></font></td>
              <td><font size="2" face="courier new"><%out.print(ewd);%></font></td>
              <td><font size="2" face="courier new"><%out.print(social);%></font></td>
              <td><font size="2" face="courier new"><%out.print(sci);%></font></td>
              <td><font size="2" face="courier new"><%out.print(scip);%></font></td>
              <td><font size="2" face="courier new"><%out.print(sans);%></font></td>
              
              <td><b><font size="2" face="courier new"><%out.print(obt);%></b></font></td>
              <td><font size="2" face="courier new"><%out.print(tot);%></font></td>
              <td><b><font size="2" face="courier new"><%out.print(per);%></b></font></td>
              </tr><%
              
            }
            %>
            
            </table>
          </div></div><br>
          <!--------------TERM3 ENDS------------------------------->

          <!-----------------------END_TERM BEGINS---------------------------->
             <button type="button" class="btn btn-primary bt-lg" data-toggle="collapse" data-target="#pc104">END_TERM</button><br>
              <div id="pc10t4_acc">

                <div id="pc104" class="collapse">
                  <br><font size="2" face="courier new"><b>END_TERM_RESULT</b></font><br>
              <%
              res = stmt.executeQuery("select * from marks_END where class='X'");
              c = 1;
              %>

            <table class = "table table-sm table-striped table-bordered table-responsive w-auto" style="overflow:scroll;">
            <tr class="active">
              <th><font size="2" face="courier new"><b>SNO</b></th>
              <th><font size="2" face="courier new"><b>NAME</b></th>
              <th><font size="2" face="courier new"><b>ENG<br>(100)</b></th>
              <th><font size="2" face="courier new"><b>HINDI<br>(100)</b></th>
              <th><font size="2" face="courier new"><b>MATHS<br>(100)</b></th>
              <th><font size="2" face="courier new"><b>GK<br>(100)</b></font></th>
              
              <th><font size="2" face="courier new"><b>DRAWING<br>(50)</b></font></th>
              <th><font size="2" face="courier new"><b>HANDICRAFT<br>(50)</b></font></th>
              <th><font size="2" face="courier new"><b>DANCE<br>MUSIC<br>(50)</b></font></th>
              <th><font size="2" face="courier new"><b>HWD<br>(50)</b></font></th>
              <th><font size="2" face="courier new"><b>EWD<br>(50)</b></font></th>
              <th><font size="2" face="courier new"><b>SOCIAL<br>SCIENCE<br>(100)</b></font></th>
              <th><font size="2" face="courier new"><b>SCIENCE<br>(90)</b></font></th>
              <th><font size="2" face="courier new"><b>SCIENCE<br>PRAC.<br>(10)</b></font></th>
              <th><font size="2" face="courier new"><b>SANSKRIT<br>(100)</b></font></th>
             
              <th><font size="2" face="courier new"><b>OBTAINED<br>MARKS</b></font></th>
              <th><font size="2" face="courier new"><b>TOTAL<br>MARKS</b></font></th>
              <th><font size="2" face="courier new"><b>%<br>(100%)</b></font></th>
            </tr>
            
            <%
            while(res.next())
            {
            
            
              String name = res.getString(2);
              int hindi = res.getInt(3);
              int eng = res.getInt(4);
              int maths = res.getInt(5);
              int gk = res.getInt(6);
              int hwd = res.getInt(7);
                  int ewd = res.getInt(8);
                  int draw = res.getInt(9);
                  int handi = res.getInt(10);
                  int dance = res.getInt(11);
                  int sci = res.getInt(12);
                  int scip = res.getInt(13);
                  int social = res.getInt(14);
                  int hist = res.getInt(15);
                  int geo = res.getInt(16);
                  int civics = res.getInt(17);
                  int home = res.getInt(18);
                  int sans = res.getInt(19);
                  int compt = res.getInt(20);
                  int compp = res.getInt(21);
              int obt = eng+hindi+maths+gk+draw+handi+dance+hwd+ewd+sci+scip+social+sans;
              int tot = 950;
              double per = ((double)obt/(double)tot)*100;
              per = Math.round(per* 100.0) / 100.0;

              %>
              <tr>
              <td><font size="2" face="courier new"><%out.print(c++);%></font></td>
              <td><b><font size="2" face="courier new"><%out.print(name.toUpperCase());%></b></font></td>
              <td><font size="2" face="courier new"><%out.print(eng);%></font></td>
              <td><font size="2" face="courier new"><%out.print(hindi);%></font></td>
              <td><font size="2" face="courier new"><%out.print(maths);%></font></td>
              <td><font size="2" face="courier new"><%out.print(gk);%></font></td>
              <td><font size="2" face="courier new"><%out.print(draw);%></font></td>
              <td><font size="2" face="courier new"><%out.print(handi);%></font></td>
              <td><font size="2" face="courier new"><%out.print(dance);%></font></td>
              <td><font size="2" face="courier new"><%out.print(hwd);%></font></td>
              <td><font size="2" face="courier new"><%out.print(ewd);%></font></td>
              <td><font size="2" face="courier new"><%out.print(social);%></font></td>
              <td><font size="2" face="courier new"><%out.print(sci);%></font></td>
              <td><font size="2" face="courier new"><%out.print(scip);%></font></td>
              <td><font size="2" face="courier new"><%out.print(sans);%></font></td>
              
              <td><b><font size="2" face="courier new"><%out.print(obt);%></b></font></td>
              <td><font size="2" face="courier new"><%out.print(tot);%></font></td>
              <td><b><font size="2" face="courier new"><%out.print(per);%></b></font></td>
              </tr><%
              
            }
            %>
            
            </table>
          </div></div><br>
          <!--------------END_TERM ENDS------------------------------->

      </div>

      <!--PERFORMANCE ENDS-->    
      <!------------------------------------------------------------------------------->
      <%
      stmt.close();
      stmt2.close();
      stmt3.close(); 

      %>            
                           
</body>
</html>