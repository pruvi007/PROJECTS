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
              .button{
                background-color: black;
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
     
                        background-color: #B22222;
                  }


                  .modal-backdrop {
                    z-index: -1;
                  }
                  #princi
                  {
                    position: relative;
                    top:5px;
                    left:77%;
                  }
                  #view_div
                  {
                      position: absolute;
                      left:3%;
                      top:40%;
                     
                  }
                  #view_acc,#marks_acc
                  {
                      position: absolute;
                      top:15%;
                      left:18%;
                       z-index:10;
                      background-color: white;
                  }

                  #marks_div
                  {
                      position: absolute;
                      top:60%;
                      left:3%;

                  }
                  #add_div
                  {
                      position: absolute;
                      left:3%;
                      top:50%;
                  }
                  #update_div
                  {
                      position: absolute;
                      left:3%;
                      top:70%;
                  }
                  #c1,#c2,#c3,#c4,#c5,#c6,#c7,#c8,#c9,#c10,#c_2,#c_1,#c_0
                  {
                      border: 3px solid black;
                      padding: 20px; 
                      width: 800px;
                      resize: both;
                      overflow: auto;
                      position:absolute;
                      top:20%;
                      left:35%;
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
                  #add_stu
                  {
                     position: absolute;
                     padding: 30px; 
                     border: 3px solid black;
                     width: 1000px;
                     top:30%;
                     left:35%;
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
                  .btn>font{
                    color:white;
                  }
                  .btn
                  {
                      background-color: #323232;
                      font-color:white;
                      color:white;
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
                      height: 100%;
                      
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
                  #back
                  {
                      position: absolute;
                      left:3%;
                      top:48%;
                  }
                  #log
                  {
                    position: fixed;
                    right:2%;
                    top:2%;
                    z-index:10000;
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

<!--RESPONSIVE VOICE API-->
<script>
        responsiveVoice.speak("student profile section", "UK English Female");

        function say_menu2(){
          responsiveVoice.speak("WELCOME TO Student Corner. The Records of Students are managed Here!", "UK English Female");
        }
</script>
<!--VOICE API END-->

      <div id="log">
       <a href="index.jsp" class="btn btn-danger">
        <span class="glyphicon glyphicon-log-out"></span><font size="3" face="courier new">&nbspLog out</font>
      </a>
    </div>
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

      
      

                        <div id="fixside">
                          <div id="view_div">
                               <button type="button" class="btn btn-primary bt-lg" data-toggle="collapse" data-target="#demo"><font size="3" face="courier new">VIEW STUDENTS</button>
                             </div>
                              <div id="back">
                                    <a href="http://localhost:8080/School/school_spa.jsp#menu1">
                                    <button class="btn btn-danger"><font size="3" face="courier new">GO BACK</font>
                                    </button></a>
                                </div>
                        </div>
                                  <div id="view_acc">
                                    <div id="demo" class="collapse">
                                      <table class="table table-striped">
                                        <tr><th colspan="3"><center></center><font size="3" face="courier new"><b>VIEW STUDENTS</b></font></center></th></tr>
                                        <tr>
                                        <th> <font size="3" face="courier new"><b>NURSERY</b></font></th>
                                        <th><button class="btn btn-primary btn-sm" onclick="myFunction_2()">SHOW</button></th>
                                      </tr>
                                      <tr>
                                        <th> <font size="3" face="courier new"><b>L.K.G.</b></font></th>
                                        <th><button class="btn btn-primary btn-sm" onclick="myFunction_1()">SHOW</button></th>
                                      </tr>
                                      <tr>
                                        <tr>
                                        <th> <font size="3" face="courier new"><b>U.K.G.</b></font></th>
                                        <th><button class="btn btn-primary btn-sm" onclick="myFunction_0()">SHOW</button></th>
                                      </tr>
                                      <tr>
                                      <tr>
                                        <tr>
                                        <th><font size="3" face="courier new"><b>CLASS I</b></font></th>
                                        <th> <button class="btn btn-primary btn-sm" onclick="myFunction1()">SHOW</button></th>
                                      </tr>
                                      <tr>
                                        <th> <font size="3" face="courier new"><b>CLASS II</b></font></th>
                                        <th><button class="btn btn-primary btn-sm" onclick="myFunction2()">SHOW</button></th>
                                      </tr>
                                      <tr>
                                        <th> <font size="3" face="courier new"><b>CLASS III</b></font></th>
                                        <th> <button class="btn btn-primary btn-sm" onclick="myFunction3()">SHOW</button></th>
                                      </tr>
                                      <tr>
                                        <th> <font size="3" face="courier new"><b>CLASS IV</b></font></th>
                                        <th> <button class="btn btn-primary btn-sm" onclick="myFunction4()">SHOW</button></th>
                                      </tr>
                                      <tr>
                                        <th> <font size="3" face="courier new"><b>CLASS V</b></font></th>
                                        <th> <button class="btn btn-primary btn-sm" onclick="myFunction5()">SHOW</button></th>
                                      </tr><tr>
                                        <th> <font size="3" face="courier new"><b>CLASS VI</b></font></th>
                                        <th> <button class="btn btn-primary btn-sm" onclick="myFunction6()">SHOW</button></th>
                                      </tr><tr>
                                        <th> <font size="3" face="courier new"><b>CLASS VII</b></font></th>
                                        <th> <button class="btn btn-primary btn-sm" onclick="myFunction7()">SHOW</button></th>
                                      </tr><tr>
                                        <th> <font size="3" face="courier new"><b>CLASS VIII</b></font></th>
                                        <th> <button class="btn btn-primary btn-sm" onclick="myFunction8()">SHOW</button></th>
                                      </tr><tr>
                                        <th> <font size="3" face="courier new"><b>CLASS IX</b></font></th>
                                        <th> <button class="btn btn-primary btn-sm" onclick="myFunction9()">SHOW</button></th>
                                      </tr>
                                      <tr>
                                        <th> <font size="3" face="courier new"><b>CLASS X</b></font></th>
                                        <th> <button class="btn btn-primary btn-sm" onclick="myFunction10()">SHOW</button></th>
                                      </tr>
                                     
                                    </table>

                                    </div>
                                  </div>
                             <!--SCRIPT FOR VIEW STUDENTS-->   
                            <script>
                                    function myFunction_2() {
                                        var x = document.getElementById("c_2");
                                        if (x.style.display === "none") {
                                            x.style.display = "block";
                                        } else {
                                            x.style.display = "none";
                                        }
                                    } 
                                    function myFunction_1() {
                                        var x = document.getElementById("c_1");
                                        if (x.style.display === "none") {
                                            x.style.display = "block";
                                        } else {
                                            x.style.display = "none";
                                        }
                                    } 
                                    function myFunction_0() {
                                        var x = document.getElementById("c_0");
                                        if (x.style.display === "none") {
                                            x.style.display = "block";
                                        } else {
                                            x.style.display = "none";
                                        }
                                    } 
                                    function myFunction1() {
                                        var x = document.getElementById("c1");
                                        if (x.style.display === "none") {
                                            x.style.display = "block";
                                        } else {
                                            x.style.display = "none";
                                        }
                                    } 
                                    function myFunction2() {
                                        var y = document.getElementById("c2");
                                        if (y.style.display === "none") {
                                            y.style.display = "block";
                                        } else {
                                            y.style.display = "none";
                                        }
                                    } 
                                    function myFunction3() {
                                        var x = document.getElementById("c3");
                                        if (x.style.display === "none") {
                                            x.style.display = "block";
                                        } else {
                                            x.style.display = "none";
                                        }
                                    } 
                                    function myFunction4() {
                                        var x = document.getElementById("c4");
                                        if (x.style.display === "none") {
                                            x.style.display = "block";
                                        } else {
                                            x.style.display = "none";
                                        }
                                    } 
                                    function myFunction5() {
                                        var x = document.getElementById("c5");
                                        if (x.style.display === "none") {
                                            x.style.display = "block";
                                        } else {
                                            x.style.display = "none";
                                        }
                                    } 
                                    function myFunction6() {
                                        var x = document.getElementById("c6");
                                        if (x.style.display === "none") {
                                            x.style.display = "block";
                                        } else {
                                            x.style.display = "none";
                                        }
                                    } 
                                    function myFunction7() {
                                        var x = document.getElementById("c7");
                                        if (x.style.display === "none") {
                                            x.style.display = "block";
                                        } else {
                                            x.style.display = "none";
                                        }
                                    } 
                                    function myFunction8() {
                                        var x = document.getElementById("c8");
                                        if (x.style.display === "none") {
                                            x.style.display = "block";
                                        } else {
                                            x.style.display = "none";
                                        }
                                    } 
                                    function myFunction9() {
                                        var x = document.getElementById("c9");
                                        if (x.style.display === "none") {
                                            x.style.display = "block";
                                        } else {
                                            x.style.display = "none";
                                        }
                                    } 
                                    function myFunction10() {
                                        var x = document.getElementById("c10");
                                        if (x.style.display === "none") {
                                            x.style.display = "block";
                                        } else {
                                            x.style.display = "none";
                                        }
                                    } 
                                </script>

                               

   <!----------------------------------------------------------------------------->
      <!--VIEW STUDENTS DATABSE-->

      <div id ="c_2" style="display:none;">

        <%
        res = stmt.executeQuery("select * from student where CLASS='NUR'");
        int c = 1;
        %>
        <font size="5" face="courier new"><b>NURSERY</b></font><br><br>
        <table class = "table table-striped table-bordered table-responsive w-auto" width="20%">
        <tr class="active">
          <th><font size="2" face="courier new">SNO</font></th>
         
          <th><font size="2" face="courier new">NAME</font></th>
          <th><font size="2" face="courier new">FATHER'S NAME</font></th>
          <th><font size="2" face="courier new">MOTHER'S NAME</font></th>
        </tr>
        
        <%
        int mod = 200;
        Blob image = null;
        byte[] imgData = null;
        while(res.next())
        {
        
           
                         String mod_id = "#"+"myModal"+mod;
                         String mod_id2 = "myModal"+mod;
                                    
          int roll = res.getInt(6);
          
          String name = res.getString(2);

          String fat = res.getString(3);
          String mom = res.getString(4);
          String dob = res.getString(9);
          String cl = res.getString(5);
          String phone = res.getString(11);
          String aadhar = res.getString(10);
          String addr = res.getString(8);
          String img  = res.getString(12);
          img = "'"+img+"'";
          //out.println(img);
          /*image = res.getBlob(12);
          imgData = image.getBytes(1,(int)image.length());

          response.setContentType("image/jpg");
          OutputStream o = response.getOutputStream();
          o.write(imgData);
          o.flush();
          o.close();*/
          %>
          
          <tr>
          <td><font size="2" face="courier new"><b><%out.print(c++);%></b></td>
          
          <td>

            <!--MODAL ON EACH NAME-->
            <button type="button" class="btn btn-outline-success btn-sm" data-toggle="modal" data-target="<%out.print(mod_id);%>">
                            <font size="2" color="Black" face="Courier New"><b>
                                          <%out.print(name);%>
                                                
                           </b></font>
                        </button>

                         <div id="<%out.print(mod_id2);%>" class="modal fade" role="dialog">
                                <div class="modal-dialog">

                                     <!-- Modal content-->
                                     <div class="modal-content">
                                     <div class="modal-header">
                                     <button type="button" class="close" data-dismiss="modal">&times;</button>
                                     <h4 class="modal-title">
                                     <center><font size="4" color="White" face="Courier New"><b>WELCOME<br><%out.print(name);%></b></font><br>
                                     </h4>
                                     </div>
                                     <!---MODAL BODY-->
                                     <div class="modal-body">
                                      <table class="w3-table" border-width="0">
                                        <tr>
                                       
                                       <th><font size="3" color="Black" face="Courier New">NAME<br></th>
                                        <th><font size="3" color="Black" face="Courier New"><b><%out.print(name);%></font></b></th>
                                      </tr>
                                      <div id = "img9">
                                          <img src=<%out.print(img);%>/>
                                        </div>
                                         <tr>
                                        
                                      <th><font size="3" color="Black" face="Courier New">FATHER'S NAME</font></b><br></th> 
                                       
                                       <th><font size="3" color="Black" face="Courier New"><b><%out.print(fat.toUpperCase());%></b></font></th>
                                     </tr>
                                        
                                        
                                      <tr>
                                      <th><font size="3" color="Black" face="Courier New">MOTHER'S NAME</font><br></th>
                                      <th><font size="3" color="Black" face="Courier New"><b><%out.print(mom.toUpperCase());%></b></font></th>
                                      </tr>
                                       
                                        
                                       <tr>
                                        <th><font size="3" color="Black" face="Courier New">DATE OF BIRTH</font><br></th>
                                        <th><font size="3" color="Black" face="Courier New"><b><%out.print(dob);%></b></font></th>
                                      </tr>
                                        
                                        <tr>
                                        <th><font size="3" color="Black" face="Courier New">CLASS</font></b><br></th>
                                        <th><font size="3" color="Black" face="Courier New"><b><%out.print(cl);%></b></font></th>
                                        </tr>

                                        <tr>
                                        
                                        <th><font size="3" color="Black" face="Courier New">PHONE</font><br></th>   
                                        <th><font size="3" color="Black" face="Courier New"><b><%out.print(phone);%></b></font></th>
                                      </tr>

                                         <tr>
                                        
                                        <th><font size="3" color="Black" face="Courier New">AADHAR NO</font></b><br></th>
                                        <th><font size="3" color="Black" face="Courier New"><b><%out.print(aadhar);%></b></font></th>
                                      </tr>

                                        <tr>
                                        
                                      <th><font size="3" color="Black" face="Courier New">ADDRESS</font></th>
                                      <th><font size="3" color="Black" face="Courier New"><b><%out.print(addr);%></b></font></th>
                                      </tr>
                                      <tr>
                                      <th><a href="printf.jsp?name=<%out.print(name);%>&father=<%out.print(fat);%>&class=<%out.print(cl);%>"><button class="btn btn-success"><font size='2' face='courier new'>FEE<br>DETAILS</font></button></a></th></tr>
                                       
                                      </table>
                                        <center>
                                          <font size="5" color="Black" face="Courier New"><b>MARKS OVERVIEW</b></font>
                                      

                                          <!--FETCHING MARKS-->
                                           <table class="table table-striped table-bordered">
                                            <tr>
                                              <th><font size="2" color="Black" face="Courier New"><b>EXAM_No.</b></font></th>
                                              <th><font size="2" color="Black" face="Courier New"><b>ENGLISH<br>(100)</b></font></th>
                                              <th><font size="2" color="Black" face="Courier New"><b>HINDI<br>(100)</b></font></th>
                                              <th><font size="2" color="Black" face="Courier New"><b>MATHS<br>(100)</b></font></th>
                                              <th><font size="2" color="Black" face="Courier New"><b>GK<br>(100)</b></font></th>
                                              <th><font size="2" color="Black" face="Courier New"><b>DRAWING<br>(50)</b></font></th>
                                              <th><font size="2" color="Black" face="Courier New"><b>DANCE<br>MUSIC<br>(50)</b></font></th>
                                              <th><font size="2" color="Black" face="Courier New"><b>HANDICRAFT<br>(50)</b></font></th>
                                              <th><font size="2" color="Black" face="Courier New"><b>MAX_MARKS</b></font></th>
                                              <th><font size="2" color="Black" face="Courier New"><b>PERCENTAGE</b></font></th>
                                              <th><font size='2' face='courier new'>PRINT</font></th>
                                              
                                            </tr>

                                      <%
                                        String fet = "'"+name+"'";

                                        //term 1 marks of that student
                                        res2 = stmt2.executeQuery("select * from marksT1 where CLASS = 'NUR' and NAME="+fet+" and father='"+fat+"'");
                                        while(res2.next())
                                        {
                                          int hindi = res2.getInt(3);
                                          int eng = res2.getInt(4);
                                          int maths = res2.getInt(5);
                                          int gk = res2.getInt(6);
                                          int hwd = res2.getInt(7);
                                              int ewd = res2.getInt(8);
                                              int draw = res2.getInt(9);
                                              int handi = res2.getInt(10);
                                              int dance = res2.getInt(11);
                                              int sci = res2.getInt(12);
                                              int scip = res2.getInt(13);
                                              int social = res2.getInt(14);
                                              int hist = res2.getInt(15);
                                              int geo = res2.getInt(16);
                                              int civics = res2.getInt(17);
                                              int home = res2.getInt(18);
                                              int sans = res2.getInt(19);
                                              int compt = res2.getInt(20);
                                              int compp = res2.getInt(21);
                                          int tot = eng + hindi + maths + gk + draw+handi+dance;
                                          double max = 550;
                                          double per = ((double)tot/max)*100;
                                          per = Math.round(per* 100.0) / 100.0;
                                          %>
                                         
                                            <tr>
                                              <td><font size="2" color="Black" face="Courier New">TERM_1</td>
                                              <td><font size="2" color="Black" face="Courier New"><b><%out.print(eng);%></b></td>
                                              <td><font size="2" color="Black" face="Courier New"><b><%out.print(hindi);%></b></td>
                                              <td><font size="2" color="Black" face="Courier New"><b><%out.print(maths);%></b></td>
                                              <td><font size="2" color="Black" face="Courier New"><b><%out.print(gk);%></b></td>
                                              <td><font size="2" color="Black" face="Courier New"><b><%out.print(draw);%></b></td>
                                              <td><font size="2" color="Black" face="Courier New"><b><%out.print(dance);%></b></td>
                                              <td><font size="2" color="Black" face="Courier New"><b><%out.print(handi);%></b></td>
                                              <td><font size="2" color="Black" face="Courier New"><b><%out.print(max);%></b></td>
                                              <td><font size="2" color="Black" face="Courier New"><b><%out.print(per);%></b></td>
                                                <td><a href="print.jsp?name=<%out.print(name);%>&class=<%out.print(cl);%>&term=I&fat=<%out.print(fat);%>"><button class="btn btn-success"><font size="2" face="Courier New"><b>TERM 1</b></font></button></a></td>
                                            </tr>
                                            <%
                                        }

                                        //half_yearly marks of that student
                                        res2 = stmt2.executeQuery("select * from marks_HALF where CLASS = 'NUR' and NAME="+fet+" and father='"+fat+"'");
                                        while(res2.next())
                                        {
                                              int hindi = res2.getInt(3);
                                          int eng = res2.getInt(4);
                                          int maths = res2.getInt(5);
                                          int gk = res2.getInt(6);
                                          int hwd = res2.getInt(7);
                                              int ewd = res2.getInt(8);
                                              int draw = res2.getInt(9);
                                              int handi = res2.getInt(10);
                                              int dance = res2.getInt(11);
                                              int sci = res2.getInt(12);
                                              int scip = res2.getInt(13);
                                              int social = res2.getInt(14);
                                              int hist = res2.getInt(15);
                                              int geo = res2.getInt(16);
                                              int civics = res2.getInt(17);
                                              int home = res2.getInt(18);
                                              int sans = res2.getInt(19);
                                              int compt = res2.getInt(20);
                                              int compp = res2.getInt(21);
                                          int tot = eng + hindi + maths + gk + draw+handi+dance;
                                          double max = 550;
                                          double per = ((double)tot/max)*100;
                                          per = Math.round(per* 100.0) / 100.0;
                                          %>
                                            <tr>
                                              <td><font size="2" color="Black" face="Courier New">HALF_YEARLY</td>
                                              <td><font size="2" color="Black" face="Courier New"><b><%out.print(eng);%></b></td>
                                              <td><font size="2" color="Black" face="Courier New"><b><%out.print(hindi);%></b></td>
                                              <td><font size="2" color="Black" face="Courier New"><b><%out.print(maths);%></b></td>
                                              <td><font size="2" color="Black" face="Courier New"><b><%out.print(gk);%></b></td>
                                              <td><font size="2" color="Black" face="Courier New"><b><%out.print(draw);%></b></td>
                                              <td><font size="2" color="Black" face="Courier New"><b><%out.print(dance);%></b></td>
                                              <td><font size="2" color="Black" face="Courier New"><b><%out.print(handi);%></b></td>
                                              <td><font size="2" color="Black" face="Courier New"><b><%out.print(max);%></b></td>
                                              <td><font size="2" color="Black" face="Courier New"><b><%out.print(per);%></b></td>
                                                <td><a href="print.jsp?name=<%out.print(name);%>&class=<%out.print(cl);%>&term=II&fat=<%out.print(fat);%>"><button class="btn btn-success"><font size="2" face="Courier New"><b>HALF_YEARLY</b></font></button></a></td>
                                            </tr>
                                            <%
                                        }

                                        //term3 marks
                                        //half_yearly marks of that student
                                        res2 = stmt2.executeQuery("select * from marks_T3 where CLASS = 'NUR' and NAME="+fet+" and father='"+fat+"'");
                                        while(res2.next())
                                        {
                                              int hindi = res2.getInt(3);
                                          int eng = res2.getInt(4);
                                          int maths = res2.getInt(5);
                                          int gk = res2.getInt(6);
                                          int hwd = res2.getInt(7);
                                              int ewd = res2.getInt(8);
                                              int draw = res2.getInt(9);
                                              int handi = res2.getInt(10);
                                              int dance = res2.getInt(11);
                                              int sci = res2.getInt(12);
                                              int scip = res2.getInt(13);
                                              int social = res2.getInt(14);
                                              int hist = res2.getInt(15);
                                              int geo = res2.getInt(16);
                                              int civics = res2.getInt(17);
                                              int home = res2.getInt(18);
                                              int sans = res2.getInt(19);
                                              int compt = res2.getInt(20);
                                              int compp = res2.getInt(21);
                                          int tot = eng + hindi + maths + gk + draw+handi+dance;
                                          double max = 550;
                                          double per = ((double)tot/max)*100;
                                          per = Math.round(per* 100.0) / 100.0;
                                          %>
                                            <tr>
                                              <td><font size="2" color="Black" face="Courier New">TERM_3</td>
                                              <td><font size="2" color="Black" face="Courier New"><b><%out.print(eng);%></b></td>
                                              <td><font size="2" color="Black" face="Courier New"><b><%out.print(hindi);%></b></td>
                                              <td><font size="2" color="Black" face="Courier New"><b><%out.print(maths);%></b></td>
                                              <td><font size="2" color="Black" face="Courier New"><b><%out.print(gk);%></b></td>
                                              <td><font size="2" color="Black" face="Courier New"><b><%out.print(draw);%></b></td>
                                              <td><font size="2" color="Black" face="Courier New"><b><%out.print(dance);%></b></td>
                                              <td><font size="2" color="Black" face="Courier New"><b><%out.print(handi);%></b></td>
                                              <td><font size="2" color="Black" face="Courier New"><b><%out.print(max);%></b></td>
                                              <td><font size="2" color="Black" face="Courier New"><b><%out.print(per);%></b></td>
                                                <td><a href="print.jsp?name=<%out.print(name);%>&class=<%out.print(cl);%>&term=III&fat=<%out.print(fat);%>"><button class="btn btn-success"><font size="2" face="Courier New"><b>TERM 3</b></font></button></a></td>
                                            </tr>
                                            <%
                                        }

                                        //END_TERM marks of that student
                                        res2 = stmt2.executeQuery("select * from marks_END where CLASS = 'NUR' and NAME="+fet+" and father='"+fat+"'");
                                        while(res2.next())
                                        {
                                              int hindi = res2.getInt(3);
                                          int eng = res2.getInt(4);
                                          int maths = res2.getInt(5);
                                          int gk = res2.getInt(6);
                                          int hwd = res2.getInt(7);
                                              int ewd = res2.getInt(8);
                                              int draw = res2.getInt(9);
                                              int handi = res2.getInt(10);
                                              int dance = res2.getInt(11);
                                              int sci = res2.getInt(12);
                                              int scip = res2.getInt(13);
                                              int social = res2.getInt(14);
                                              int hist = res2.getInt(15);
                                              int geo = res2.getInt(16);
                                              int civics = res2.getInt(17);
                                              int home = res2.getInt(18);
                                              int sans = res2.getInt(19);
                                              int compt = res2.getInt(20);
                                              int compp = res2.getInt(21);
                                          int tot = eng + hindi + maths + gk + draw+handi+dance;
                                          double max = 550;
                                          double per = ((double)tot/max)*100;
                                          per = Math.round(per* 100.0) / 100.0;
                                          %>
                                            <tr>
                                              <td><font size="2" color="Black" face="Courier New">END_TERM</td>
                                              <td><font size="2" color="Black" face="Courier New"><b><%out.print(eng);%></b></td>
                                              <td><font size="2" color="Black" face="Courier New"><b><%out.print(hindi);%></b></td>
                                              <td><font size="2" color="Black" face="Courier New"><b><%out.print(maths);%></b></td>
                                              <td><font size="2" color="Black" face="Courier New"><b><%out.print(gk);%></b></td>
                                              <td><font size="2" color="Black" face="Courier New"><b><%out.print(draw);%></b></td>
                                              <td><font size="2" color="Black" face="Courier New"><b><%out.print(dance);%></b></td>
                                              <td><font size="2" color="Black" face="Courier New"><b><%out.print(handi);%></b></td>
                                              <td><font size="2" color="Black" face="Courier New"><b><%out.print(max);%></b></td>
                                              <td><font size="2" color="Black" face="Courier New"><b><%out.print(per);%></b></td>
                                                <td><a href="print.jsp?name=<%out.print(name);%>&class=<%out.print(cl);%>&term=IV&fat=<%out.print(fat);%>"><button class="btn btn-success"><font size="2" face="Courier New"><b>END_TERM</b></font></button></a></td>
                                            </tr>
                                            <%
                                        }
                                        %></table><%

                                        mod++;
                                      %>
                                      </center>

              </div>
            </center>
          </h4></div></div></div>

          </td>
          <td><font size="2" face="courier new"><b><%out.print(fat.toUpperCase());%></b></font></td>
          <td><font size="2" face="courier new"><b><%out.print(mom.toUpperCase());%></b></font></td>
          </tr><%
          
        }
        %>
        
        </table>
      </div>

      <div id ="c_1" style="display:none;">

        <%
        res = stmt.executeQuery("select * from student where CLASS='LKG'");
        c = 1;
        %>
        <font size="5" face="courier new"><b>LKG</b></font><br><br>
        <table class = "table table-striped table-bordered table-responsive w-auto" width="20%">
        <tr class="active">
          <th><font size="2" face="courier new">SNO</font></th>
         
          <th><font size="2" face="courier new">NAME</font></th>
          <th><font size="2" face="courier new">FATHER'S NAME</font></th>
          <th><font size="2" face="courier new">MOTHER'S NAME</font></th>
        </tr>
        
        <%
        mod = 220;
        
        while(res.next())
        {
        
           
                         String mod_id = "#"+"myModal"+mod;
                         String mod_id2 = "myModal"+mod;
                                    
          int roll = res.getInt(6);
          
          String name = res.getString(2);

          String fat = res.getString(3);
          String mom = res.getString(4);
          String dob = res.getString(9);
          String cl = res.getString(5);
          String phone = res.getString(11);
          String aadhar = res.getString(10);
          String addr = res.getString(8);
          String img  = res.getString(12);
          img = "'"+img+"'";
          //out.println(img);
          /*image = res.getBlob(12);
          imgData = image.getBytes(1,(int)image.length());

          response.setContentType("image/jpg");
          OutputStream o = response.getOutputStream();
          o.write(imgData);
          o.flush();
          o.close();*/
          %>
          
          <tr>
          <td><font size="2" face="courier new"><b><%out.print(c++);%></b></td>
         
          <td>

            <!--MODAL ON EACH NAME-->
            <button type="button" class="btn btn-dark btn-sm" data-toggle="modal" data-target="<%out.print(mod_id);%>">
                            <font size="2" color="Black" face="Courier New"><b>
                                          <%out.print(name);%>
                                                
                           </b></font>
                        </button>

                         <div id="<%out.print(mod_id2);%>" class="modal fade" role="dialog">
                                <div class="modal-dialog">

                                     <!-- Modal content-->
                                     <div class="modal-content">
                                     <div class="modal-header">
                                     <button type="button" class="close" data-dismiss="modal">&times;</button>
                                     <h4 class="modal-title">
                                     <center><font size="4" color="White" face="Courier New"><b>WELCOME<br><%out.print(name);%></b></font><br>
                                     </h4>
                                     </div>
                                     <!---MODAL BODY-->
                                     <div class="modal-body">
                                      <table class="w3-table" border-width="0">
                                        <tr>
                                       
                                       <th><font size="3" color="Black" face="Courier New">NAME<br></th>
                                        <th><font size="3" color="Black" face="Courier New"><b><%out.print(name);%></font></b></th>
                                      </tr>
                                      <div id = "img9">
                                          <img src=<%out.print(img);%>/>
                                        </div>
                                         <tr>
                                        
                                      <th><font size="3" color="Black" face="Courier New">FATHER'S NAME</font></b><br></th> 
                                       
                                       <th><font size="3" color="Black" face="Courier New"><b><%out.print(fat.toUpperCase());%></b></font></th>
                                     </tr>
                                        
                                        
                                      <tr>
                                      <th><font size="3" color="Black" face="Courier New">MOTHER'S NAME</font><br></th>
                                      <th><font size="3" color="Black" face="Courier New"><b><%out.print(mom.toUpperCase());%></b></font></th>
                                      </tr>
                                       
                                        
                                       <tr>
                                        <th><font size="3" color="Black" face="Courier New">DATE OF BIRTH</font><br></th>
                                        <th><font size="3" color="Black" face="Courier New"><b><%out.print(dob);%></b></font></th>
                                      </tr>
                                        
                                        <tr>
                                        <th><font size="3" color="Black" face="Courier New">CLASS</font></b><br></th>
                                        <th><font size="3" color="Black" face="Courier New"><b><%out.print(cl);%></b></font></th>
                                        </tr>

                                        <tr>
                                        
                                        <th><font size="3" color="Black" face="Courier New">PHONE</font><br></th>   
                                        <th><font size="3" color="Black" face="Courier New"><b><%out.print(phone);%></b></font></th>
                                      </tr>

                                         <tr>
                                        
                                        <th><font size="3" color="Black" face="Courier New">AADHAR NO</font></b><br></th>
                                        <th><font size="3" color="Black" face="Courier New"><b><%out.print(aadhar);%></b></font></th>
                                      </tr>

                                        <tr>
                                        
                                      <th><font size="3" color="Black" face="Courier New">ADDRESS</font></th>
                                      <th><font size="3" color="Black" face="Courier New"><b><%out.print(addr);%></b></font></th>
                                      </tr>
                                      
                                      <tr>
                                         <th><a href="printf.jsp?name=<%out.print(name);%>&father=<%out.print(fat);%>&class=<%out.print(cl);%>"><button class="btn btn-success"><font size='2' face='courier new'>FEE<br>DETAILS</font></button></a></th>
                                       </tr>
                                       
                                      </table>
                                        <center>
                                          <font size="5" color="Black" face="Courier New"><b>MARKS OVERVIEW</b></font>
                                      

                                         

                                       <!--FETCHING MARKS-->
                                           <table class="table table-striped table-bordered">
                                            <tr>
                                              <th><font size="2" color="Black" face="Courier New"><b>EXAM_No.</b></font></th>
                                              <th><font size="2" color="Black" face="Courier New"><b>ENGLISH<br>(100)</b></font></th>
                                              <th><font size="2" color="Black" face="Courier New"><b>HINDI<br>(100)</b></font></th>
                                              <th><font size="2" color="Black" face="Courier New"><b>MATHS<br>(100)</b></font></th>
                                              <th><font size="2" color="Black" face="Courier New"><b>GK<br>(100)</b></font></th>
                                              <th><font size="2" color="Black" face="Courier New"><b>DRAWING<br>(50)</b></font></th>
                                              <th><font size="2" color="Black" face="Courier New"><b>DANCE<br>MUSIC<br>(50)</b></font></th>
                                              <th><font size="2" color="Black" face="Courier New"><b>HANDICRAFT<br>(50)</b></font></th>
                                              <th><font size="2" color="Black" face="Courier New"><b>H.W.D.<br>(50)</b></font></th>
                                              <th><font size="2" color="Black" face="Courier New"><b>E.W.D.<br>(50)</b></font></th>
                                              <th><font size="2" color="Black" face="Courier New"><b>MAX_MARKS</b></font></th>
                                              <th><font size="2" color="Black" face="Courier New"><b>PERCENTAGE</b></font></th>
                                              <th><font size='2' face='courier new'>PRINT</font></th>
                                              
                                            </tr>

                                      <%
                                        String fet = "'"+name+"'";

                                        //term 1 marks of that student
                                        res2 = stmt2.executeQuery("select * from marksT1 where CLASS='LKG' and NAME="+fet+" and father='"+fat+"'");
                                        while(res2.next())
                                        {
                                          int hindi = res2.getInt(3);
                                          int eng = res2.getInt(4);
                                          int maths = res2.getInt(5);
                                          int gk = res2.getInt(6);
                                          int hwd = res2.getInt(7);
                                              int ewd = res2.getInt(8);
                                              int draw = res2.getInt(9);
                                              int handi = res2.getInt(10);
                                              int dance = res2.getInt(11);
                                              int sci = res2.getInt(12);
                                              int scip = res2.getInt(13);
                                              int social = res2.getInt(14);
                                              int hist = res2.getInt(15);
                                              int geo = res2.getInt(16);
                                              int civics = res2.getInt(17);
                                              int home = res2.getInt(18);
                                              int sans = res2.getInt(19);
                                              int compt = res2.getInt(20);
                                              int compp = res2.getInt(21);
                                          int tot = eng + hindi + maths + gk + draw+handi+dance+hwd+ewd;
                                          double max = 650;
                                          double per = ((double)tot/max)*100;
                                          per = Math.round(per* 100.0) / 100.0;
                                          %>
                                         
                                            <tr>
                                              <td><font size="2" color="Black" face="Courier New">TERM_1</td>
                                              <td><font size="2" color="Black" face="Courier New"><b><%out.print(eng);%></b></td>
                                              <td><font size="2" color="Black" face="Courier New"><b><%out.print(hindi);%></b></td>
                                              <td><font size="2" color="Black" face="Courier New"><b><%out.print(maths);%></b></td>
                                              <td><font size="2" color="Black" face="Courier New"><b><%out.print(gk);%></b></td>
                                              <td><font size="2" color="Black" face="Courier New"><b><%out.print(draw);%></b></td>
                                              <td><font size="2" color="Black" face="Courier New"><b><%out.print(dance);%></b></td>
                                              <td><font size="2" color="Black" face="Courier New"><b><%out.print(handi);%></b></td>
                                               <td><font size="2" color="Black" face="Courier New"><b><%out.print(hwd);%></b></td> 
                                               <td><font size="2" color="Black" face="Courier New"><b><%out.print(ewd);%></b></td> 
                                              <td><font size="2" color="Black" face="Courier New"><b><%out.print(max);%></b></td>
                                              <td><font size="2" color="Black" face="Courier New"><b><%out.print(per);%></b></td>
                                              <td><a href="print.jsp?name=<%out.print(name);%>&class=<%out.print(cl);%>&term=I&fat=<%out.print(fat);%>"><button class="btn btn-success"><font size="2" face="Courier New"><b>TERM 1</b></font></button></a></td>
                                            </tr>
                                            <%
                                        }

                                        //half_yearly marks of that student
                                        res2 = stmt2.executeQuery("select * from marks_HALF where CLASS = 'LKG' and NAME="+fet+" and father='"+fat+"'");
                                        while(res2.next())
                                        {
                                              int hindi = res2.getInt(3);
                                          int eng = res2.getInt(4);
                                          int maths = res2.getInt(5);
                                          int gk = res2.getInt(6);
                                          int hwd = res2.getInt(7);
                                              int ewd = res2.getInt(8);
                                              int draw = res2.getInt(9);
                                              int handi = res2.getInt(10);
                                              int dance = res2.getInt(11);
                                              int sci = res2.getInt(12);
                                              int scip = res2.getInt(13);
                                              int social = res2.getInt(14);
                                              int hist = res2.getInt(15);
                                              int geo = res2.getInt(16);
                                              int civics = res2.getInt(17);
                                              int home = res2.getInt(18);
                                              int sans = res2.getInt(19);
                                              int compt = res2.getInt(20);
                                              int compp = res2.getInt(21);
                                          int tot = eng + hindi + maths + gk + draw+handi+dance+hwd+ewd;
                                          double max = 650;
                                          double per = ((double)tot/max)*100;
                                          per = Math.round(per* 100.0) / 100.0;
                                          %>
                                            <tr>
                                              <td><font size="2" color="Black" face="Courier New">HALF_YEARLY</td>
                                              <td><font size="2" color="Black" face="Courier New"><b><%out.print(eng);%></b></td>
                                              <td><font size="2" color="Black" face="Courier New"><b><%out.print(hindi);%></b></td>
                                              <td><font size="2" color="Black" face="Courier New"><b><%out.print(maths);%></b></td>
                                              <td><font size="2" color="Black" face="Courier New"><b><%out.print(gk);%></b></td>
                                              <td><font size="2" color="Black" face="Courier New"><b><%out.print(draw);%></b></td>
                                              <td><font size="2" color="Black" face="Courier New"><b><%out.print(dance);%></b></td>
                                              <td><font size="2" color="Black" face="Courier New"><b><%out.print(handi);%></b></td>
                                              <td><font size="2" color="Black" face="Courier New"><b><%out.print(hwd);%></b></td> 
                                              <td><font size="2" color="Black" face="Courier New"><b><%out.print(ewd);%></b></td> 
                                              <td><font size="2" color="Black" face="Courier New"><b><%out.print(max);%></b></td>
                                              <td><font size="2" color="Black" face="Courier New"><b><%out.print(per);%></b></td>
                                              <td><a href="print.jsp?name=<%out.print(name);%>&class=<%out.print(cl);%>&term=II&fat=<%out.print(fat);%>"><button class="btn btn-success"><font size="2" face="Courier New"><b>HALF_YEARLY</b></font></button></a></td>
                                            </tr>
                                            <%
                                        }

                                        //term3 marks
                                        //half_yearly marks of that student
                                        res2 = stmt2.executeQuery("select * from marks_T3 where CLASS = 'LKG' and NAME="+fet+" and father='"+fat+"'");
                                        while(res2.next())
                                        {
                                              int hindi = res2.getInt(3);
                                          int eng = res2.getInt(4);
                                          int maths = res2.getInt(5);
                                          int gk = res2.getInt(6);
                                          int hwd = res2.getInt(7);
                                              int ewd = res2.getInt(8);
                                              int draw = res2.getInt(9);
                                              int handi = res2.getInt(10);
                                              int dance = res2.getInt(11);
                                              int sci = res2.getInt(12);
                                              int scip = res2.getInt(13);
                                              int social = res2.getInt(14);
                                              int hist = res2.getInt(15);
                                              int geo = res2.getInt(16);
                                              int civics = res2.getInt(17);
                                              int home = res2.getInt(18);
                                              int sans = res2.getInt(19);
                                              int compt = res2.getInt(20);
                                              int compp = res2.getInt(21);
                                          int tot = eng + hindi + maths + gk + draw+handi+dance+hwd+ewd;
                                          double max = 650;
                                          double per = ((double)tot/max)*100;
                                          per = Math.round(per* 100.0) / 100.0;
                                          %>
                                            <tr>
                                              <td><font size="2" color="Black" face="Courier New">TERM_3</td>
                                              <td><font size="2" color="Black" face="Courier New"><b><%out.print(eng);%></b></td>
                                              <td><font size="2" color="Black" face="Courier New"><b><%out.print(hindi);%></b></td>
                                              <td><font size="2" color="Black" face="Courier New"><b><%out.print(maths);%></b></td>
                                              <td><font size="2" color="Black" face="Courier New"><b><%out.print(gk);%></b></td>
                                              <td><font size="2" color="Black" face="Courier New"><b><%out.print(draw);%></b></td>
                                              <td><font size="2" color="Black" face="Courier New"><b><%out.print(dance);%></b></td>
                                              <td><font size="2" color="Black" face="Courier New"><b><%out.print(handi);%></b></td>
                                                 <td><font size="2" color="Black" face="Courier New"><b><%out.print(hwd);%></b></td> 
                                              <td><font size="2" color="Black" face="Courier New"><b><%out.print(ewd);%></b></td> 
                                              <td><font size="2" color="Black" face="Courier New"><b><%out.print(max);%></b></td>
                                              <td><font size="2" color="Black" face="Courier New"><b><%out.print(per);%></b></td>
                                                <td><a href="print.jsp?name=<%out.print(name);%>&class=<%out.print(cl);%>&term=III&fat=<%out.print(fat);%>"><button class="btn btn-success"><font size="2" face="Courier New"><b>TERM_3</b></font></button></a></td>
                                            </tr>
                                            <%
                                        }

                                        //END_TERM marks of that student
                                        res2 = stmt2.executeQuery("select * from marks_END where CLASS = 'LKG' and NAME="+fet+" and father='"+fat+"'");
                                        while(res2.next())
                                        {
                                              int hindi = res2.getInt(3);
                                          int eng = res2.getInt(4);
                                          int maths = res2.getInt(5);
                                          int gk = res2.getInt(6);
                                          int hwd = res2.getInt(7);
                                              int ewd = res2.getInt(8);
                                              int draw = res2.getInt(9);
                                              int handi = res2.getInt(10);
                                              int dance = res2.getInt(11);
                                              int sci = res2.getInt(12);
                                              int scip = res2.getInt(13);
                                              int social = res2.getInt(14);
                                              int hist = res2.getInt(15);
                                              int geo = res2.getInt(16);
                                              int civics = res2.getInt(17);
                                              int home = res2.getInt(18);
                                              int sans = res2.getInt(19);
                                              int compt = res2.getInt(20);
                                              int compp = res2.getInt(21);
                                          int tot = eng + hindi + maths + gk + draw+handi+dance+hwd+ewd;
                                          double max = 650;
                                          double per = ((double)tot/max)*100;
                                          per = Math.round(per* 100.0) / 100.0;
                                          %>
                                            <tr>
                                              <td><font size="2" color="Black" face="Courier New">END_TERM</td>
                                              <td><font size="2" color="Black" face="Courier New"><b><%out.print(eng);%></b></td>
                                              <td><font size="2" color="Black" face="Courier New"><b><%out.print(hindi);%></b></td>
                                              <td><font size="2" color="Black" face="Courier New"><b><%out.print(maths);%></b></td>
                                              <td><font size="2" color="Black" face="Courier New"><b><%out.print(gk);%></b></td>
                                              <td><font size="2" color="Black" face="Courier New"><b><%out.print(draw);%></b></td>
                                              <td><font size="2" color="Black" face="Courier New"><b><%out.print(dance);%></b></td>
                                              <td><font size="2" color="Black" face="Courier New"><b><%out.print(handi);%></b></td>
                                                <td><font size="2" color="Black" face="Courier New"><b><%out.print(hwd);%></b></td> 
                                              <td><font size="2" color="Black" face="Courier New"><b><%out.print(ewd);%></b></td>
                                              <td><font size="2" color="Black" face="Courier New"><b><%out.print(max);%></b></td>
                                              <td><font size="2" color="Black" face="Courier New"><b><%out.print(per);%></b></td>
                                                <td><a href="print.jsp?name=<%out.print(name);%>&class=<%out.print(cl);%>&term=IV&fat=<%out.print(fat);%>"><button class="btn btn-success"><font size="2" face="Courier New"><b>END_TERM</b></font></button></a></td>
                                            </tr>
                                            <%
                                        }
                                        %></table><%

                                        mod++;
                                      %>
                                      </center>

              </div>
            </center>
          </h4></div></div></div>

          </td>
          <td><font size="2" face="courier new"><b><%out.print(fat.toUpperCase());%></b></font></td>
          <td><font size="2" face="courier new"><b><%out.print(mom.toUpperCase());%></b></font></td>
          </tr><%
          
        }
        %>
        
        </table>
      </div>

      <div id ="c_0" style="display:none;">

        <%
        res = stmt.executeQuery("select * from student where CLASS='UKG'");
        c = 1;
        %>
        <font size="5" face="courier new"><b>UKG</b></font><br><br>
        <table class = "table table-striped table-bordered table-responsive w-auto" width="20%">
        <tr class="active">
          <th><font size="2" face="courier new">SNO</font></th>
         
          <th><font size="2" face="courier new">NAME</font></th>
          <th><font size="2" face="courier new">FATHER'S NAME</font></th>
          <th><font size="2" face="courier new">MOTHER'S NAME</font></th>
        </tr>
        
        <%
        mod = 240;
        
        while(res.next())
        {
        
           
                         String mod_id = "#"+"myModal"+mod;
                         String mod_id2 = "myModal"+mod;
                                    
          int roll = res.getInt(6);
          
          String name = res.getString(2);

          String fat = res.getString(3);
          String mom = res.getString(4);
          String dob = res.getString(9);
          String cl = res.getString(5);
          String phone = res.getString(11);
          String aadhar = res.getString(10);
          String addr = res.getString(8);
          String img  = res.getString(12);
          img = "'"+img+"'";
          //out.println(img);
          /*image = res.getBlob(12);
          imgData = image.getBytes(1,(int)image.length());

          response.setContentType("image/jpg");
          OutputStream o = response.getOutputStream();
          o.write(imgData);
          o.flush();
          o.close();*/
          %>
          
          <tr>
          <td><font size="2" face="courier new"><b><%out.print(c++);%></b></td>
          
          <td>

            <!--MODAL ON EACH NAME-->
            <button type="button" class="btn btn-outline-success btn-sm" data-toggle="modal" data-target="<%out.print(mod_id);%>">
                            <font size="2" color="Black" face="Courier New"><b>
                                          <%out.print(name);%>
                                                
                           </b></font>
                        </button>

                         <div id="<%out.print(mod_id2);%>" class="modal fade" role="dialog">
                                <div class="modal-dialog">

                                     <!-- Modal content-->
                                     <div class="modal-content">
                                     <div class="modal-header">
                                     <button type="button" class="close" data-dismiss="modal">&times;</button>
                                     <h4 class="modal-title">
                                     <center><font size="4" color="White" face="Courier New"><b>WELCOME<br><%out.print(name);%></b></font><br>
                                     </h4>
                                     </div>
                                     <!---MODAL BODY-->
                                     <div class="modal-body">
                                      <table class="w3-table" border-width="0">
                                        <tr>
                                       
                                       <th><font size="3" color="Black" face="Courier New">NAME<br></th>
                                        <th><font size="3" color="Black" face="Courier New"><b><%out.print(name);%></font></b></th>
                                      </tr>
                                      <div id = "img9">
                                          <img src=<%out.print(img);%>/>
                                        </div>
                                         <tr>
                                        
                                      <th><font size="3" color="Black" face="Courier New">FATHER'S NAME</font></b><br></th> 
                                       
                                       <th><font size="3" color="Black" face="Courier New"><b><%out.print(fat.toUpperCase());%></b></font></th>
                                     </tr>
                                        
                                        
                                      <tr>
                                      <th><font size="3" color="Black" face="Courier New">MOTHER'S NAME</font><br></th>
                                      <th><font size="3" color="Black" face="Courier New"><b><%out.print(mom.toUpperCase());%></b></font></th>
                                      </tr>
                                       
                                        
                                       <tr>
                                        <th><font size="3" color="Black" face="Courier New">DATE OF BIRTH</font><br></th>
                                        <th><font size="3" color="Black" face="Courier New"><b><%out.print(dob);%></b></font></th>
                                      </tr>
                                        
                                        <tr>
                                        <th><font size="3" color="Black" face="Courier New">CLASS</font></b><br></th>
                                        <th><font size="3" color="Black" face="Courier New"><b><%out.print(cl);%></b></font></th>
                                        </tr>

                                        <tr>
                                        
                                        <th><font size="3" color="Black" face="Courier New">PHONE</font><br></th>   
                                        <th><font size="3" color="Black" face="Courier New"><b><%out.print(phone);%></b></font></th>
                                      </tr>

                                         <tr>
                                        
                                        <th><font size="3" color="Black" face="Courier New">AADHAR NO</font></b><br></th>
                                        <th><font size="3" color="Black" face="Courier New"><b><%out.print(aadhar);%></b></font></th>
                                      </tr>

                                        <tr>
                                        
                                      <th><font size="3" color="Black" face="Courier New">ADDRESS</font></th>
                                      <th><font size="3" color="Black" face="Courier New"><b><%out.print(addr);%></b></font></th>
                                      </tr>
                                      
                                      <tr>
                                         <th><a href="printf.jsp?name=<%out.print(name);%>&father=<%out.print(fat);%>&class=<%out.print(cl);%>"><button class="btn btn-success"><font size='2' face='courier new'>FEE<br>DETAILS</font></button></a></th>
                                       </tr>
                                       
                                      </table>
                                        <center>
                                          <font size="5" color="Black" face="Courier New"><b>MARKS OVERVIEW</b></font>
                                      

                                            <!--FETCHING MARKS-->
                                           <table class="table table-striped table-bordered">
                                            <tr>
                                              <th><font size="2" color="Black" face="Courier New"><b>EXAM_No.</b></font></th>
                                              <th><font size="2" color="Black" face="Courier New"><b>ENGLISH<br>(100)</b></font></th>
                                              <th><font size="2" color="Black" face="Courier New"><b>HINDI<br>(100)</b></font></th>
                                              <th><font size="2" color="Black" face="Courier New"><b>MATHS<br>(100)</b></font></th>
                                              <th><font size="2" color="Black" face="Courier New"><b>GK<br>(100)</b></font></th>
                                              <th><font size="2" color="Black" face="Courier New"><b>DRAWING<br>(50)</b></font></th>
                                              <th><font size="2" color="Black" face="Courier New"><b>DANCE<br>MUSIC<br>(50)</b></font></th>
                                              <th><font size="2" color="Black" face="Courier New"><b>HANDICRAFT<br>(50)</b></font></th>
                                              <th><font size="2" color="Black" face="Courier New"><b>H.W.D.<br>(50)</b></font></th>
                                              <th><font size="2" color="Black" face="Courier New"><b>E.W.D.<br>(50)</b></font></th>
                                              <th><font size="2" color="Black" face="Courier New"><b>MAX_MARKS</b></font></th>
                                              <th><font size="2" color="Black" face="Courier New"><b>PERCENTAGE</b></font></th>
                                              <th><font size='2' face='courier new'>PRINT</font></th>
                                              
                                            </tr>

                                      <%
                                        String fet = "'"+name+"'";

                                        //term 1 marks of that student
                                        res2 = stmt2.executeQuery("select * from marksT1 where CLASS = 'UKG' and NAME="+fet+" and father='"+fat+"'");
                                        while(res2.next())
                                        {
                                          int hindi = res2.getInt(3);
                                          int eng = res2.getInt(4);
                                          int maths = res2.getInt(5);
                                          int gk = res2.getInt(6);
                                          int hwd = res2.getInt(7);
                                              int ewd = res2.getInt(8);
                                              int draw = res2.getInt(9);
                                              int handi = res2.getInt(10);
                                              int dance = res2.getInt(11);
                                              int sci = res2.getInt(12);
                                              int scip = res2.getInt(13);
                                              int social = res2.getInt(14);
                                              int hist = res2.getInt(15);
                                              int geo = res2.getInt(16);
                                              int civics = res2.getInt(17);
                                              int home = res2.getInt(18);
                                              int sans = res2.getInt(19);
                                              int compt = res2.getInt(20);
                                              int compp = res2.getInt(21);
                                          int tot = eng + hindi + maths + gk + draw+handi+dance+hwd+ewd;
                                          double max = 650;
                                          double per = ((double)tot/max)*100;
                                          per = Math.round(per* 100.0) / 100.0;
                                          %>
                                         
                                            <tr>
                                              <td><font size="2" color="Black" face="Courier New">TERM_1</td>
                                              <td><font size="2" color="Black" face="Courier New"><b><%out.print(eng);%></b></td>
                                              <td><font size="2" color="Black" face="Courier New"><b><%out.print(hindi);%></b></td>
                                              <td><font size="2" color="Black" face="Courier New"><b><%out.print(maths);%></b></td>
                                              <td><font size="2" color="Black" face="Courier New"><b><%out.print(gk);%></b></td>
                                              <td><font size="2" color="Black" face="Courier New"><b><%out.print(draw);%></b></td>
                                              <td><font size="2" color="Black" face="Courier New"><b><%out.print(dance);%></b></td>
                                              <td><font size="2" color="Black" face="Courier New"><b><%out.print(handi);%></b></td>
                                               <td><font size="2" color="Black" face="Courier New"><b><%out.print(hwd);%></b></td> 
                                               <td><font size="2" color="Black" face="Courier New"><b><%out.print(ewd);%></b></td> 
                                              <td><font size="2" color="Black" face="Courier New"><b><%out.print(max);%></b></td>
                                              <td><font size="2" color="Black" face="Courier New"><b><%out.print(per);%></b></td>
                                              <td><a href="print.jsp?name=<%out.print(name);%>&class=<%out.print(cl);%>&term=I&fat=<%out.print(fat);%>"><button class="btn btn-success"><font size="2" face="Courier New"><b>TERM_1</b></font></button></a></td>
                                            </tr>
                                            <%
                                        }

                                        //half_yearly marks of that student
                                        res2 = stmt2.executeQuery("select * from marks_HALF where CLASS = 'UKG' and NAME="+fet+" and father='"+fat+"'");
                                        while(res2.next())
                                        {
                                              int hindi = res2.getInt(3);
                                          int eng = res2.getInt(4);
                                          int maths = res2.getInt(5);
                                          int gk = res2.getInt(6);
                                          int hwd = res2.getInt(7);
                                              int ewd = res2.getInt(8);
                                              int draw = res2.getInt(9);
                                              int handi = res2.getInt(10);
                                              int dance = res2.getInt(11);
                                              int sci = res2.getInt(12);
                                              int scip = res2.getInt(13);
                                              int social = res2.getInt(14);
                                              int hist = res2.getInt(15);
                                              int geo = res2.getInt(16);
                                              int civics = res2.getInt(17);
                                              int home = res2.getInt(18);
                                              int sans = res2.getInt(19);
                                              int compt = res2.getInt(20);
                                              int compp = res2.getInt(21);
                                          int tot = eng + hindi + maths + gk + draw+handi+dance+hwd+ewd;
                                          double max = 650;
                                          double per = ((double)tot/max)*100;
                                          per = Math.round(per* 100.0) / 100.0;
                                          %>
                                            <tr>
                                              <td><font size="2" color="Black" face="Courier New">HALF_YEARLY</td>
                                              <td><font size="2" color="Black" face="Courier New"><b><%out.print(eng);%></b></td>
                                              <td><font size="2" color="Black" face="Courier New"><b><%out.print(hindi);%></b></td>
                                              <td><font size="2" color="Black" face="Courier New"><b><%out.print(maths);%></b></td>
                                              <td><font size="2" color="Black" face="Courier New"><b><%out.print(gk);%></b></td>
                                              <td><font size="2" color="Black" face="Courier New"><b><%out.print(draw);%></b></td>
                                              <td><font size="2" color="Black" face="Courier New"><b><%out.print(dance);%></b></td>
                                              <td><font size="2" color="Black" face="Courier New"><b><%out.print(handi);%></b></td>
                                              <td><font size="2" color="Black" face="Courier New"><b><%out.print(hwd);%></b></td> 
                                              <td><font size="2" color="Black" face="Courier New"><b><%out.print(ewd);%></b></td> 
                                              <td><font size="2" color="Black" face="Courier New"><b><%out.print(max);%></b></td>
                                              <td><font size="2" color="Black" face="Courier New"><b><%out.print(per);%></b></td>
                                              <td><a href="print.jsp?name=<%out.print(name);%>&class=<%out.print(cl);%>&term=II&fat=<%out.print(fat);%>"><button class="btn btn-success"><font size="2" face="Courier New"><b>HALF_YEARLY</b></font></button></a></td>
                                            </tr>
                                            <%
                                        }

                                        //term3 marks
                                        //half_yearly marks of that student
                                        res2 = stmt2.executeQuery("select * from marks_T3 where CLASS = 'UKG' and NAME="+fet+" and father='"+fat+"'");
                                        while(res2.next())
                                        {
                                              int hindi = res2.getInt(3);
                                          int eng = res2.getInt(4);
                                          int maths = res2.getInt(5);
                                          int gk = res2.getInt(6);
                                          int hwd = res2.getInt(7);
                                              int ewd = res2.getInt(8);
                                              int draw = res2.getInt(9);
                                              int handi = res2.getInt(10);
                                              int dance = res2.getInt(11);
                                              int sci = res2.getInt(12);
                                              int scip = res2.getInt(13);
                                              int social = res2.getInt(14);
                                              int hist = res2.getInt(15);
                                              int geo = res2.getInt(16);
                                              int civics = res2.getInt(17);
                                              int home = res2.getInt(18);
                                              int sans = res2.getInt(19);
                                              int compt = res2.getInt(20);
                                              int compp = res2.getInt(21);
                                          int tot = eng + hindi + maths + gk + draw+handi+dance+hwd+ewd;
                                          double max = 650;
                                          double per = ((double)tot/max)*100;
                                          per = Math.round(per* 100.0) / 100.0;
                                          %>
                                            <tr>
                                              <td><font size="2" color="Black" face="Courier New">TERM_3</td>
                                              <td><font size="2" color="Black" face="Courier New"><b><%out.print(eng);%></b></td>
                                              <td><font size="2" color="Black" face="Courier New"><b><%out.print(hindi);%></b></td>
                                              <td><font size="2" color="Black" face="Courier New"><b><%out.print(maths);%></b></td>
                                              <td><font size="2" color="Black" face="Courier New"><b><%out.print(gk);%></b></td>
                                              <td><font size="2" color="Black" face="Courier New"><b><%out.print(draw);%></b></td>
                                              <td><font size="2" color="Black" face="Courier New"><b><%out.print(dance);%></b></td>
                                              <td><font size="2" color="Black" face="Courier New"><b><%out.print(handi);%></b></td>
                                                 <td><font size="2" color="Black" face="Courier New"><b><%out.print(hwd);%></b></td> 
                                              <td><font size="2" color="Black" face="Courier New"><b><%out.print(ewd);%></b></td> 
                                              <td><font size="2" color="Black" face="Courier New"><b><%out.print(max);%></b></td>
                                              <td><font size="2" color="Black" face="Courier New"><b><%out.print(per);%></b></td>
                                              <td><a href="print.jsp?name=<%out.print(name);%>&class=<%out.print(cl);%>&term=III&fat=<%out.print(fat);%>"><button class="btn btn-success"><font size="2" face="Courier New"><b>TERM_3</b></font></button></a></td>
                                            </tr>
                                            <%
                                        }

                                        //END_TERM marks of that student
                                        res2 = stmt2.executeQuery("select * from marks_END where CLASS = 'UKG' and NAME="+fet+" and father='"+fat+"'");
                                        while(res2.next())
                                        {
                                              int hindi = res2.getInt(3);
                                          int eng = res2.getInt(4);
                                          int maths = res2.getInt(5);
                                          int gk = res2.getInt(6);
                                          int hwd = res2.getInt(7);
                                              int ewd = res2.getInt(8);
                                              int draw = res2.getInt(9);
                                              int handi = res2.getInt(10);
                                              int dance = res2.getInt(11);
                                              int sci = res2.getInt(12);
                                              int scip = res2.getInt(13);
                                              int social = res2.getInt(14);
                                              int hist = res2.getInt(15);
                                              int geo = res2.getInt(16);
                                              int civics = res2.getInt(17);
                                              int home = res2.getInt(18);
                                              int sans = res2.getInt(19);
                                              int compt = res2.getInt(20);
                                              int compp = res2.getInt(21);
                                          int tot = eng + hindi + maths + gk + draw+handi+dance+hwd+ewd;
                                          double max = 650;
                                          double per = ((double)tot/max)*100;
                                          per = Math.round(per* 100.0) / 100.0;
                                          %>
                                            <tr>
                                              <td><font size="2" color="Black" face="Courier New">END_TERM</td>
                                              <td><font size="2" color="Black" face="Courier New"><b><%out.print(eng);%></b></td>
                                              <td><font size="2" color="Black" face="Courier New"><b><%out.print(hindi);%></b></td>
                                              <td><font size="2" color="Black" face="Courier New"><b><%out.print(maths);%></b></td>
                                              <td><font size="2" color="Black" face="Courier New"><b><%out.print(gk);%></b></td>
                                              <td><font size="2" color="Black" face="Courier New"><b><%out.print(draw);%></b></td>
                                              <td><font size="2" color="Black" face="Courier New"><b><%out.print(dance);%></b></td>
                                              <td><font size="2" color="Black" face="Courier New"><b><%out.print(handi);%></b></td>
                                                <td><font size="2" color="Black" face="Courier New"><b><%out.print(hwd);%></b></td> 
                                              <td><font size="2" color="Black" face="Courier New"><b><%out.print(ewd);%></b></td>
                                              <td><font size="2" color="Black" face="Courier New"><b><%out.print(max);%></b></td>
                                              <td><font size="2" color="Black" face="Courier New"><b><%out.print(per);%></b></td>
                                              <td><a href="print.jsp?name=<%out.print(name);%>&class=<%out.print(cl);%>&term=IV&fat=<%out.print(fat);%>"><button class="btn btn-success"><font size="2" face="Courier New"><b>END_TERM</b></font></button></a></td>
                                            </tr>
                                            <%
                                        }
                                        %></table><%

                                        mod++;
                                      %>
                                      </center>

              </div>
            </center>
          </h4></div></div></div>

          </td>
          <td><font size="2" face="courier new"><b><%out.print(fat.toUpperCase());%></b></font></td>
          <td><font size="2" face="courier new"><b><%out.print(mom.toUpperCase());%></b></font></td>
          </tr><%
          
        }
        %>
        
        </table>
      </div>

      <div id ="c1" style="display:none;">

        <%
        res = stmt.executeQuery("select * from student where class='I'");
        c = 1;
        %>
        <font size="5" face="courier new"><b>CLASS I</b></font><br><br>
        <table class = "table table-striped table-bordered table-responsive w-auto" width="20%">
        <tr class="active">
          <th><font size="2" face="courier new">SNO</font></th>
         
          <th><font size="2" face="courier new">NAME</font></th>
          <th><font size="2" face="courier new">FATHER'S NAME</font></th>
          <th><font size="2" face="courier new">MOTHER'S NAME</font></th>
        </tr>
        
        <%
        mod = 0;
        
        while(res.next())
        {
        
           
                         String mod_id = "#"+"myModal"+mod;
                         String mod_id2 = "myModal"+mod;
                                    
          int roll = res.getInt(6);
          
          String name = res.getString(2);

          String fat = res.getString(3);
          String mom = res.getString(4);
          String dob = res.getString(9);
          String cl = res.getString(5);
          String phone = res.getString(11);
          String aadhar = res.getString(10);
          String addr = res.getString(8);
          String img  = res.getString(12);
          img = "'"+img+"'";
          //out.println(img);
          /*image = res.getBlob(12);
          imgData = image.getBytes(1,(int)image.length());

          response.setContentType("image/jpg");
          OutputStream o = response.getOutputStream();
          o.write(imgData);
          o.flush();
          o.close();*/
          %>
          
          <tr>
          <td><font size="2" face="courier new"><b><%out.print(c++);%></b></td>
         
          <td>

            <!--MODAL ON EACH NAME-->
            <button type="button" class="btn btn-outline-success btn-sm" data-toggle="modal" data-target="<%out.print(mod_id);%>">
                            <font size="2" color="Black" face="Courier New"><b>
                                          <%out.print(name);%>
                                                
                           </b></font>
                        </button>

                         <div id="<%out.print(mod_id2);%>" class="modal fade" role="dialog">
                                <div class="modal-dialog">

                                     <!-- Modal content-->
                                     <div class="modal-content">
                                     <div class="modal-header">
                                     <button type="button" class="close" data-dismiss="modal">&times;</button>
                                     <h4 class="modal-title">
                                     <center><font size="4" color="White" face="Courier New"><b>WELCOME<br><%out.print(name);%></b></font><br>
                                     </h4>
                                     </div>
                                     <!---MODAL BODY-->
                                     <div class="modal-body">
                                      <table class="w3-table" border-width="0">
                                        <tr>
                                       
                                       <th><font size="3" color="Black" face="Courier New">NAME<br></th>
                                        <th><font size="3" color="Black" face="Courier New"><b><%out.print(name);%></font></b></th>
                                      </tr>
                                      <div id = "img9">
                                          <img src=<%out.print(img);%>/>
                                        </div>
                                         <tr>
                                        
                                      <th><font size="3" color="Black" face="Courier New">FATHER'S NAME</font></b><br></th> 
                                       
                                       <th><font size="3" color="Black" face="Courier New"><b><%out.print(fat.toUpperCase());%></b></font></th>
                                     </tr>
                                        
                                        
                                      <tr>
                                      <th><font size="3" color="Black" face="Courier New">MOTHER'S NAME</font><br></th>
                                      <th><font size="3" color="Black" face="Courier New"><b><%out.print(mom.toUpperCase());%></b></font></th>
                                      </tr>
                                       
                                        
                                       <tr>
                                        <th><font size="3" color="Black" face="Courier New">DATE OF BIRTH</font><br></th>
                                        <th><font size="3" color="Black" face="Courier New"><b><%out.print(dob);%></b></font></th>
                                      </tr>
                                        
                                        <tr>
                                        <th><font size="3" color="Black" face="Courier New">CLASS</font></b><br></th>
                                        <th><font size="3" color="Black" face="Courier New"><b><%out.print(cl);%></b></font></th>
                                        </tr>

                                        <tr>
                                        
                                        <th><font size="3" color="Black" face="Courier New">PHONE</font><br></th>   
                                        <th><font size="3" color="Black" face="Courier New"><b><%out.print(phone);%></b></font></th>
                                      </tr>

                                         <tr>
                                        
                                        <th><font size="3" color="Black" face="Courier New">AADHAR NO</font></b><br></th>
                                        <th><font size="3" color="Black" face="Courier New"><b><%out.print(aadhar);%></b></font></th>
                                      </tr>

                                        <tr>
                                        
                                      <th><font size="3" color="Black" face="Courier New">ADDRESS</font></th>
                                      <th><font size="3" color="Black" face="Courier New"><b><%out.print(addr);%></b></font></th>
                                      </tr>
                                      
                                       
                                       <tr>
                                         <th><a href="printf.jsp?name=<%out.print(name);%>&father=<%out.print(fat);%>&class=<%out.print(cl);%>"><button class="btn btn-success"><font size='2' face='courier new'>FEE<br>DETAILS</font></button></a></th>
                                       </tr>

                                      </table>
                                        <center>
                                          <font size="5" color="Black" face="Courier New"><b>MARKS OVERVIEW</b></font>
                                      

                                          
                                            <!--FETCHING MARKS-->
                                            <div id="scroll">
                                           <table class="table table-striped table-bordered" style="overflow:scroll;">
                                            <tr>
                                              <th><font size="2" color="Black" face="Courier New"><b>EXAM_No.</b></font></th>
                                              <th><font size="2" color="Black" face="Courier New"><b>ENGLISH<br>(100)</b></font></th>
                                              <th><font size="2" color="Black" face="Courier New"><b>HINDI<br>(100)</b></font></th>
                                              <th><font size="2" color="Black" face="Courier New"><b>MATHS<br>(100)</b></font></th>
                                              <th><font size="2" color="Black" face="Courier New"><b>GK<br>(100)</b></font></th>
                                              <th><font size="2" color="Black" face="Courier New"><b>DRAWING<br>(50)</b></font></th>
                                              <th><font size="2" color="Black" face="Courier New"><b>DANCE<br>MUSIC<br>(50)</b></font></th>
                                              <th><font size="2" color="Black" face="Courier New"><b>HANDICRAFT<br>(50)</b></font></th>
                                              <th><font size="2" color="Black" face="Courier New"><b>H.W.D.<br>(50)</b></font></th>
                                              <th><font size="2" color="Black" face="Courier New"><b>E.W.D.<br>(50)</b></font></th>
                                              <th><font size="2" color="Black" face="Courier New"><b>SOCIAL<br>SCIENCE<br>(100)</b></font></th>
                                              <th><font size="2" color="Black" face="Courier New"><b>SCIENCE<br>(90)</b></font></th>
                                              <th><font size="2" color="Black" face="Courier New"><b>SCIENCE<br>PRAC.<br>(10)</b></font></th>
                                              <th><font size="2" color="Black" face="Courier New"><b>SANSKRIT<br>(100)</b></font></th>
                                              <th><font size="2" color="Black" face="Courier New"><b>MAX_MARKS</b></font></th>
                                              <th><font size="2" color="Black" face="Courier New"><b>PERCENTAGE</b></font></th>
                                              <th><font size='2' face='courier new'>PRINT</font></th>
                                              
                                            </tr>

                                      <%
                                        String fet = "'"+name+"'";

                                        //term 1 marks of that student
                                        res2 = stmt2.executeQuery("select * from marksT1 where CLASS = 'I' and NAME="+fet+" and father='"+fat+"'");
                                        while(res2.next())
                                        {
                                          int hindi = res2.getInt(3);
                                          int eng = res2.getInt(4);
                                          int maths = res2.getInt(5);
                                          int gk = res2.getInt(6);
                                          int hwd = res2.getInt(7);
                                              int ewd = res2.getInt(8);
                                              int draw = res2.getInt(9);
                                              int handi = res2.getInt(10);
                                              int dance = res2.getInt(11);
                                              int sci = res2.getInt(12);
                                              int scip = res2.getInt(13);
                                              int social = res2.getInt(14);
                                              int hist = res2.getInt(15);
                                              int geo = res2.getInt(16);
                                              int civics = res2.getInt(17);
                                              int home = res2.getInt(18);
                                              int sans = res2.getInt(19);
                                              int compt = res2.getInt(20);
                                              int compp = res2.getInt(21);
                                          int tot = eng + hindi + maths + gk + draw+handi+dance+hwd+ewd+social+sci+scip+sans;
                                          double max = 950;
                                          double per = ((double)tot/max)*100;
                                          per = Math.round(per* 100.0) / 100.0;
                                          %>
                                         
                                            <tr>
                                              <td><font size="2" color="Black" face="Courier New">TERM_1</td>
                                              <td><font size="2" color="Black" face="Courier New"><b><%out.print(eng);%></b></td>
                                              <td><font size="2" color="Black" face="Courier New"><b><%out.print(hindi);%></b></td>
                                              <td><font size="2" color="Black" face="Courier New"><b><%out.print(maths);%></b></td>
                                              <td><font size="2" color="Black" face="Courier New"><b><%out.print(gk);%></b></td>
                                              <td><font size="2" color="Black" face="Courier New"><b><%out.print(draw);%></b></td>
                                              <td><font size="2" color="Black" face="Courier New"><b><%out.print(dance);%></b></td>
                                              <td><font size="2" color="Black" face="Courier New"><b><%out.print(handi);%></b></td>
                                               <td><font size="2" color="Black" face="Courier New"><b><%out.print(hwd);%></b></td> 
                                               <td><font size="2" color="Black" face="Courier New"><b><%out.print(ewd);%></b></td> 
                                               <td><font size="2" color="Black" face="Courier New"><b><%out.print(social);%></b></td>
                                                <td><font size="2" color="Black" face="Courier New"><b><%out.print(sci);%></b></td>
                                                <td><font size="2" color="Black" face="Courier New"><b><%out.print(scip);%></b></td>
                                              <td><font size="2" color="Black" face="Courier New"><b><%out.print(sans);%></b></td>
                                              <td><font size="2" color="Black" face="Courier New"><b><%out.print(max);%></b></td>
                                              <td><font size="2" color="Black" face="Courier New"><b><%out.print(per);%></b></td>
                                              <td><a href="print.jsp?name=<%out.print(name);%>&class=<%out.print(cl);%>&term=I&fat=<%out.print(fat);%>"><button class="btn btn-success"><font size="2" face="Courier New"><b>TERM_1</b></font></button></a></td>
                                            </tr>
                                            <%
                                        }

                                        //half_yearly marks of that student
                                        res2 = stmt2.executeQuery("select * from marks_HALF where CLASS = 'I' and NAME="+fet+" and father='"+fat+"'");
                                        while(res2.next())
                                        {
                                              int hindi = res2.getInt(3);
                                          int eng = res2.getInt(4);
                                          int maths = res2.getInt(5);
                                          int gk = res2.getInt(6);
                                          int hwd = res2.getInt(7);
                                              int ewd = res2.getInt(8);
                                              int draw = res2.getInt(9);
                                              int handi = res2.getInt(10);
                                              int dance = res2.getInt(11);
                                              int sci = res2.getInt(12);
                                              int scip = res2.getInt(13);
                                              int social = res2.getInt(14);
                                              int hist = res2.getInt(15);
                                              int geo = res2.getInt(16);
                                              int civics = res2.getInt(17);
                                              int home = res2.getInt(18);
                                              int sans = res2.getInt(19);
                                              int compt = res2.getInt(20);
                                              int compp = res2.getInt(21);
                                          int tot = eng + hindi + maths + gk + draw+handi+dance+hwd+ewd+social+sci+scip+sans;
                                          double max = 950;
                                          double per = ((double)tot/max)*100;
                                          per = Math.round(per* 100.0) / 100.0;
                                          %>
                                            <tr>
                                              <td><font size="2" color="Black" face="Courier New">HALF_YEARLY</td>
                                              <td><font size="2" color="Black" face="Courier New"><b><%out.print(eng);%></b></td>
                                              <td><font size="2" color="Black" face="Courier New"><b><%out.print(hindi);%></b></td>
                                              <td><font size="2" color="Black" face="Courier New"><b><%out.print(maths);%></b></td>
                                              <td><font size="2" color="Black" face="Courier New"><b><%out.print(gk);%></b></td>
                                              <td><font size="2" color="Black" face="Courier New"><b><%out.print(draw);%></b></td>
                                              <td><font size="2" color="Black" face="Courier New"><b><%out.print(dance);%></b></td>
                                              <td><font size="2" color="Black" face="Courier New"><b><%out.print(handi);%></b></td>
                                              <td><font size="2" color="Black" face="Courier New"><b><%out.print(hwd);%></b></td> 
                                              <td><font size="2" color="Black" face="Courier New"><b><%out.print(ewd);%></b></td> 
                                               <td><font size="2" color="Black" face="Courier New"><b><%out.print(social);%></b></td>
                                                <td><font size="2" color="Black" face="Courier New"><b><%out.print(sci);%></b></td>
                                                <td><font size="2" color="Black" face="Courier New"><b><%out.print(scip);%></b></td>
                                              <td><font size="2" color="Black" face="Courier New"><b><%out.print(sans);%></b></td>
                                              <td><font size="2" color="Black" face="Courier New"><b><%out.print(max);%></b></td>
                                              <td><font size="2" color="Black" face="Courier New"><b><%out.print(per);%></b></td>
                                              <td><a href="print.jsp?name=<%out.print(name);%>&class=<%out.print(cl);%>&term=II&fat=<%out.print(fat);%>"><button class="btn btn-success"><font size="2" face="Courier New"><b>HALF_YEARLY</b></font></button></a></td>
                                            </tr>
                                            <%
                                        }

                                        //term3 marks
                                        //half_yearly marks of that student
                                        res2 = stmt2.executeQuery("select * from marks_T3 where CLASS = 'I' and NAME="+fet+" and father='"+fat+"'");
                                        while(res2.next())
                                        {
                                              int hindi = res2.getInt(3);
                                          int eng = res2.getInt(4);
                                          int maths = res2.getInt(5);
                                          int gk = res2.getInt(6);
                                          int hwd = res2.getInt(7);
                                              int ewd = res2.getInt(8);
                                              int draw = res2.getInt(9);
                                              int handi = res2.getInt(10);
                                              int dance = res2.getInt(11);
                                              int sci = res2.getInt(12);
                                              int scip = res2.getInt(13);
                                              int social = res2.getInt(14);
                                              int hist = res2.getInt(15);
                                              int geo = res2.getInt(16);
                                              int civics = res2.getInt(17);
                                              int home = res2.getInt(18);
                                              int sans = res2.getInt(19);
                                              int compt = res2.getInt(20);
                                              int compp = res2.getInt(21);
                                          int tot = eng + hindi + maths + gk + draw+handi+dance+hwd+ewd+social+sci+scip+sans;
                                          double max = 950;
                                          double per = ((double)tot/max)*100;
                                          per = Math.round(per* 100.0) / 100.0;
                                          %>
                                            <tr>
                                              <td><font size="2" color="Black" face="Courier New">TERM_3</td>
                                              <td><font size="2" color="Black" face="Courier New"><b><%out.print(eng);%></b></td>
                                              <td><font size="2" color="Black" face="Courier New"><b><%out.print(hindi);%></b></td>
                                              <td><font size="2" color="Black" face="Courier New"><b><%out.print(maths);%></b></td>
                                              <td><font size="2" color="Black" face="Courier New"><b><%out.print(gk);%></b></td>
                                              <td><font size="2" color="Black" face="Courier New"><b><%out.print(draw);%></b></td>
                                              <td><font size="2" color="Black" face="Courier New"><b><%out.print(dance);%></b></td>
                                              <td><font size="2" color="Black" face="Courier New"><b><%out.print(handi);%></b></td>
                                                 <td><font size="2" color="Black" face="Courier New"><b><%out.print(hwd);%></b></td> 
                                              <td><font size="2" color="Black" face="Courier New"><b><%out.print(ewd);%></b></td> 
                                              <td><font size="2" color="Black" face="Courier New"><b><%out.print(social);%></b></td>
                                                <td><font size="2" color="Black" face="Courier New"><b><%out.print(sci);%></b></td>
                                                <td><font size="2" color="Black" face="Courier New"><b><%out.print(scip);%></b></td>
                                              <td><font size="2" color="Black" face="Courier New"><b><%out.print(sans);%></b></td>
                                              <td><font size="2" color="Black" face="Courier New"><b><%out.print(max);%></b></td>
                                              <td><font size="2" color="Black" face="Courier New"><b><%out.print(per);%></b></td>
                                              <td><a href="print.jsp?name=<%out.print(name);%>&class=<%out.print(cl);%>&term=III&fat=<%out.print(fat);%>"><button class="btn btn-success"><font size="2" face="Courier New"><b>TERM_3</b></font></button></a></td>
                                            </tr>
                                            <%
                                        }

                                        //END_TERM marks of that student
                                        res2 = stmt2.executeQuery("select * from marks_END where CLASS = 'I' and NAME="+fet+" and father='"+fat+"'");
                                        while(res2.next())
                                        {
                                              int hindi = res2.getInt(3);
                                          int eng = res2.getInt(4);
                                          int maths = res2.getInt(5);
                                          int gk = res2.getInt(6);
                                          int hwd = res2.getInt(7);
                                              int ewd = res2.getInt(8);
                                              int draw = res2.getInt(9);
                                              int handi = res2.getInt(10);
                                              int dance = res2.getInt(11);
                                              int sci = res2.getInt(12);
                                              int scip = res2.getInt(13);
                                              int social = res2.getInt(14);
                                              int hist = res2.getInt(15);
                                              int geo = res2.getInt(16);
                                              int civics = res2.getInt(17);
                                              int home = res2.getInt(18);
                                              int sans = res2.getInt(19);
                                              int compt = res2.getInt(20);
                                              int compp = res2.getInt(21);
                                          int tot = eng + hindi + maths + gk + draw+handi+dance+hwd+ewd+social+sci+scip+sans;
                                          double max = 950;
                                          double per = ((double)tot/max)*100;
                                          per = Math.round(per* 100.0) / 100.0;
                                          %>
                                            <tr>
                                              <td><font size="2" color="Black" face="Courier New">END_TERM</td>
                                              <td><font size="2" color="Black" face="Courier New"><b><%out.print(eng);%></b></td>
                                              <td><font size="2" color="Black" face="Courier New"><b><%out.print(hindi);%></b></td>
                                              <td><font size="2" color="Black" face="Courier New"><b><%out.print(maths);%></b></td>
                                              <td><font size="2" color="Black" face="Courier New"><b><%out.print(gk);%></b></td>
                                              <td><font size="2" color="Black" face="Courier New"><b><%out.print(draw);%></b></td>
                                              <td><font size="2" color="Black" face="Courier New"><b><%out.print(dance);%></b></td>
                                              <td><font size="2" color="Black" face="Courier New"><b><%out.print(handi);%></b></td>
                                                <td><font size="2" color="Black" face="Courier New"><b><%out.print(hwd);%></b></td> 
                                              <td><font size="2" color="Black" face="Courier New"><b><%out.print(ewd);%></b></td>
                                                <td><font size="2" color="Black" face="Courier New"><b><%out.print(social);%></b></td>
                                                <td><font size="2" color="Black" face="Courier New"><b><%out.print(sci);%></b></td>
                                                <td><font size="2" color="Black" face="Courier New"><b><%out.print(scip);%></b></td>
                                              <td><font size="2" color="Black" face="Courier New"><b><%out.print(sans);%></b></td>
                                                <td><font size="2" color="Black" face="Courier New"><b><%out.print(max);%></b></td>
                                              <td><font size="2" color="Black" face="Courier New"><b><%out.print(per);%></b></td>
                                              <td><a href="print.jsp?name=<%out.print(name);%>&class=<%out.print(cl);%>&term=IV&fat=<%out.print(fat);%>"><button class="btn btn-success"><font size="2" face="Courier New"><b>END_TERM</b></font></button></a></td>
                                            </tr>
                                            <%
                                        }
                                        %></table></font><%

                                        mod++;
                                      %>
                                      </center>

              </div>
            </center>
          </h4></div></div></div>

          </td>
          <td><font size="2" face="courier new"><b><%out.print(fat.toUpperCase());%></b></font></td>
          <td><font size="2" face="courier new"><b><%out.print(mom.toUpperCase());%></b></font></td>
          </tr><%
          
        }
        %>
        
        </table>
      </div>

      <%
      res = null;
      res2 = null;
      %>

      <div id ="c2" style="display:none;">
       
        <%
        res = stmt.executeQuery("select * from student where class='II'");
        c = 1;
        %>
        <font size="5" face="courier new"><b>CLASS II</b></font><br><br>
        <table class = "table table-striped table-bordered table-responsive w-auto" width="20%">
        <tr class="active">
          <th><font size="2" face="courier new">SNO</font></th>
         
          <th><font size="2" face="courier new">NAME</font></th>
          <th><font size="2" face="courier new">FATHER'S NAME</font></th>
          <th><font size="2" face="courier new">MOTHER'S NAME</font></th>
        </tr>
        
        <%
        mod = 20;
        while(res.next())
        {
        
           
                         String mod_id = "#"+"myModal"+mod;
                         String mod_id2 = "myModal"+mod;
                                    
          int roll = res.getInt(6);
          
          String name = res.getString(2);

          String fat = res.getString(3);
          String mom = res.getString(4);
          String dob = res.getString(9);
          String cl = res.getString(5);
          String phone = res.getString(11);
          String aadhar = res.getString(10);
          String addr = res.getString(8);
          String img  = res.getString(12);
          img = "'"+img+"'";
          %>

          <tr>
          <td><font size="2" face="courier new"><b><%out.print(c++);%></b></td>
         
          <td>

            <!--MODAL ON EACH NAME-->
            <button type="button" class="btn btn-outline-success btn-sm" data-toggle="modal" data-target="<%out.print(mod_id);%>">
                            <font size="2" color="Black" face="Courier New"><b>
                                          <%out.print(name);%>
                                                
                           </b></font>
                        </button>

                         <div id="<%out.print(mod_id2);%>" class="modal fade" role="dialog">
                                <div class="modal-dialog">

                                     <!-- Modal content-->
                                     <div class="modal-content">
                                     <div class="modal-header">
                                     <button type="button" class="close" data-dismiss="modal">&times;</button>
                                     <h4 class="modal-title">
                                     <center><font size="4" color="White" face="Courier New"><b>WELCOME<br><%out.print(name);%></b></font><br>
                                     </h4>
                                     </div>
                                     <!---MODAL BODY-->
                                     <div class="modal-body">
                                      <table class="w3-table" border-width="0">
                                        <tr>
                                       
                                       <th><font size="3" color="Black" face="Courier New">NAME<br></th>
                                        <th><font size="3" color="Black" face="Courier New"><b><%out.print(name);%></font></b></th>
                                      </tr>
                                       <div id = "img9">
                                          <img src=<%out.print(img);%>/>
                                        </div>
                                         <tr>
                                        
                                      <th><font size="3" color="Black" face="Courier New">FATHER'S NAME</font></b><br></th> 
                                       
                                       <th><font size="3" color="Black" face="Courier New"><b><%out.print(fat.toUpperCase());%></b></font></th>
                                     </tr>
                                        
                                        
                                      <tr>
                                      <th><font size="3" color="Black" face="Courier New">MOTHER'S NAME</font><br></th>
                                      <th><font size="3" color="Black" face="Courier New"><b><%out.print(mom.toUpperCase());%></b></font></th>
                                      </tr>
                                       
                                        
                                       <tr>
                                        <th><font size="3" color="Black" face="Courier New">DATE OF BIRTH</font><br></th>
                                        <th><font size="3" color="Black" face="Courier New"><b><%out.print(dob);%></b></font></th>
                                      </tr>
                                        
                                        <tr>
                                        <th><font size="3" color="Black" face="Courier New">CLASS</font></b><br></th>
                                        <th><font size="3" color="Black" face="Courier New"><b><%out.print(cl);%></b></font></th>
                                        </tr>

                                        <tr>
                                        
                                        <th><font size="3" color="Black" face="Courier New">PHONE</font><br></th>   
                                        <th><font size="3" color="Black" face="Courier New"><b><%out.print(phone);%></b></font></th>
                                      </tr>

                                         <tr>
                                        
                                        <th><font size="3" color="Black" face="Courier New">AADHAR NO</font></b><br></th>
                                        <th><font size="3" color="Black" face="Courier New"><b><%out.print(aadhar);%></b></font></th>
                                      </tr>

                                        <tr>
                                        
                                      <th><font size="3" color="Black" face="Courier New">ADDRESS</font></th>
                                      <th><font size="3" color="Black" face="Courier New"><b><%out.print(addr);%></b></font></th>
                                      </tr>
                                      
                                       
                                       <tr>
                                         <th><a href="printf.jsp?name=<%out.print(name);%>&father=<%out.print(fat);%>&class=<%out.print(cl);%>"><button class="btn btn-success"><font size='2' face='courier new'>FEE<br>DETAILS</font></button></a></th>
                                       </tr>

                                      </table>
                                        <center>
                                          <font size="5" color="Black" face="Courier New"><b>MARKS OVERVIEW</b></font>
                                      

                                          <!--FETCHING MARKS-->
                                            <div id="scroll">
                                           <table class="table table-striped table-bordered" style="overflow:scroll;">
                                            <tr>
                                              <th><font size="2" color="Black" face="Courier New"><b>EXAM_No.</b></font></th>
                                              <th><font size="2" color="Black" face="Courier New"><b>ENGLISH<br>(100)</b></font></th>
                                              <th><font size="2" color="Black" face="Courier New"><b>HINDI<br>(100)</b></font></th>
                                              <th><font size="2" color="Black" face="Courier New"><b>MATHS<br>(100)</b></font></th>
                                              <th><font size="2" color="Black" face="Courier New"><b>GK<br>(100)</b></font></th>
                                              <th><font size="2" color="Black" face="Courier New"><b>DRAWING<br>(50)</b></font></th>
                                              <th><font size="2" color="Black" face="Courier New"><b>DANCE<br>MUSIC<br>(50)</b></font></th>
                                              <th><font size="2" color="Black" face="Courier New"><b>HANDICRAFT<br>(50)</b></font></th>
                                              <th><font size="2" color="Black" face="Courier New"><b>H.W.D.<br>(50)</b></font></th>
                                              <th><font size="2" color="Black" face="Courier New"><b>E.W.D.<br>(50)</b></font></th>
                                              <th><font size="2" color="Black" face="Courier New"><b>SOCIAL<br>SCIENCE<br>(100)</b></font></th>
                                              <th><font size="2" color="Black" face="Courier New"><b>SCIENCE<br>(90)</b></font></th>
                                              <th><font size="2" color="Black" face="Courier New"><b>SCIENCE<br>PRAC.<br>(10)</b></font></th>
                                              <th><font size="2" color="Black" face="Courier New"><b>SANSKRIT<br>(100)</b></font></th>
                                              <th><font size="2" color="Black" face="Courier New"><b>COMPUTER<br>PRAC.<br>(50)</b></font></th>
                                              <th><font size="2" color="Black" face="Courier New"><b>COMPUTER<br>THEORY<br>(50)</b></font></th>
                                              <th><font size="2" color="Black" face="Courier New"><b>MAX_MARKS</b></font></th>
                                              <th><font size="2" color="Black" face="Courier New"><b>PERCENTAGE</b></font></th>
                                              <th><font size='2' face='courier new'>PRINT</font></th>
                                               
                                            </tr>

                                      <%
                                        String fet = "'"+name+"'";

                                        //term 1 marks of that student
                                        res2 = stmt2.executeQuery("select * from marksT1 where CLASS = 'II' and NAME="+fet+" and father='"+fat+"'");
                                        while(res2.next())
                                        {
                                          int hindi = res2.getInt(3);
                                          int eng = res2.getInt(4);
                                          int maths = res2.getInt(5);
                                          int gk = res2.getInt(6);
                                          int hwd = res2.getInt(7);
                                              int ewd = res2.getInt(8);
                                              int draw = res2.getInt(9);
                                              int handi = res2.getInt(10);
                                              int dance = res2.getInt(11);
                                              int sci = res2.getInt(12);
                                              int scip = res2.getInt(13);
                                              int social = res2.getInt(14);
                                              int hist = res2.getInt(15);
                                              int geo = res2.getInt(16);
                                              int civics = res2.getInt(17);
                                              int home = res2.getInt(18);
                                              int sans = res2.getInt(19);
                                              int compt = res2.getInt(20);
                                              int compp = res2.getInt(21);
                                          int tot = eng + hindi + maths + gk + draw+handi+dance+hwd+ewd+social+sci+scip+sans+compp+compt;
                                          double max = 1050;
                                          double per = ((double)tot/max)*100;
                                          per = Math.round(per* 100.0) / 100.0;
                                          %>
                                         
                                            <tr>
                                              <td><font size="2" color="Black" face="Courier New">TERM_1</td>
                                              <td><font size="2" color="Black" face="Courier New"><b><%out.print(eng);%></b></td>
                                              <td><font size="2" color="Black" face="Courier New"><b><%out.print(hindi);%></b></td>
                                              <td><font size="2" color="Black" face="Courier New"><b><%out.print(maths);%></b></td>
                                              <td><font size="2" color="Black" face="Courier New"><b><%out.print(gk);%></b></td>
                                              <td><font size="2" color="Black" face="Courier New"><b><%out.print(draw);%></b></td>
                                              <td><font size="2" color="Black" face="Courier New"><b><%out.print(dance);%></b></td>
                                              <td><font size="2" color="Black" face="Courier New"><b><%out.print(handi);%></b></td>
                                               <td><font size="2" color="Black" face="Courier New"><b><%out.print(hwd);%></b></td> 
                                               <td><font size="2" color="Black" face="Courier New"><b><%out.print(ewd);%></b></td> 
                                               <td><font size="2" color="Black" face="Courier New"><b><%out.print(social);%></b></td>
                                                <td><font size="2" color="Black" face="Courier New"><b><%out.print(sci);%></b></td>
                                                <td><font size="2" color="Black" face="Courier New"><b><%out.print(scip);%></b></td>
                                              <td><font size="2" color="Black" face="Courier New"><b><%out.print(sans);%></b></td>
                                                <td><font size="2" color="Black" face="Courier New"><b><%out.print(compp);%></b></td>
                                              <td><font size="2" color="Black" face="Courier New"><b><%out.print(compt);%></b></td>
                                              <td><font size="2" color="Black" face="Courier New"><b><%out.print(max);%></b></td>
                                              <td><font size="2" color="Black" face="Courier New"><b><%out.print(per);%></b></td>
                                              <td><a href="print.jsp?name=<%out.print(name);%>&class=<%out.print(cl);%>&term=I&fat=<%out.print(fat);%>"><button class="btn btn-success"><font size="2" face="Courier New"><b>TERM_1</b></font></button></a></td>
                                            </tr>
                                            <%
                                        }

                                        //half_yearly marks of that student
                                        res2 = stmt2.executeQuery("select * from marks_HALF where CLASS = 'II' and NAME="+fet+" and father='"+fat+"'");
                                        while(res2.next())
                                        {
                                              int hindi = res2.getInt(3);
                                          int eng = res2.getInt(4);
                                          int maths = res2.getInt(5);
                                          int gk = res2.getInt(6);
                                          int hwd = res2.getInt(7);
                                              int ewd = res2.getInt(8);
                                              int draw = res2.getInt(9);
                                              int handi = res2.getInt(10);
                                              int dance = res2.getInt(11);
                                              int sci = res2.getInt(12);
                                              int scip = res2.getInt(13);
                                              int social = res2.getInt(14);
                                              int hist = res2.getInt(15);
                                              int geo = res2.getInt(16);
                                              int civics = res2.getInt(17);
                                              int home = res2.getInt(18);
                                              int sans = res2.getInt(19);
                                              int compt = res2.getInt(20);
                                              int compp = res2.getInt(21);
                                          int tot = eng + hindi + maths + gk + draw+handi+dance+hwd+ewd+social+sci+scip+sans+compp+compt;
                                          double max = 1050;
                                          double per = ((double)tot/max)*100;
                                          per = Math.round(per* 100.0) / 100.0;
                                          %>
                                            <tr>
                                              <td><font size="2" color="Black" face="Courier New">HALF_YEARLY</td>
                                              <td><font size="2" color="Black" face="Courier New"><b><%out.print(eng);%></b></td>
                                              <td><font size="2" color="Black" face="Courier New"><b><%out.print(hindi);%></b></td>
                                              <td><font size="2" color="Black" face="Courier New"><b><%out.print(maths);%></b></td>
                                              <td><font size="2" color="Black" face="Courier New"><b><%out.print(gk);%></b></td>
                                              <td><font size="2" color="Black" face="Courier New"><b><%out.print(draw);%></b></td>
                                              <td><font size="2" color="Black" face="Courier New"><b><%out.print(dance);%></b></td>
                                              <td><font size="2" color="Black" face="Courier New"><b><%out.print(handi);%></b></td>
                                              <td><font size="2" color="Black" face="Courier New"><b><%out.print(hwd);%></b></td> 
                                              <td><font size="2" color="Black" face="Courier New"><b><%out.print(ewd);%></b></td> 
                                               <td><font size="2" color="Black" face="Courier New"><b><%out.print(social);%></b></td>
                                                <td><font size="2" color="Black" face="Courier New"><b><%out.print(sci);%></b></td>
                                                <td><font size="2" color="Black" face="Courier New"><b><%out.print(scip);%></b></td>
                                              <td><font size="2" color="Black" face="Courier New"><b><%out.print(sans);%></b></td>
                                              <td><font size="2" color="Black" face="Courier New"><b><%out.print(compp);%></b></td>
                                              <td><font size="2" color="Black" face="Courier New"><b><%out.print(compt);%></b></td>
                                              <td><font size="2" color="Black" face="Courier New"><b><%out.print(max);%></b></td>
                                              <td><font size="2" color="Black" face="Courier New"><b><%out.print(per);%></b></td>
                                              <td><a href="print.jsp?name=<%out.print(name);%>&class=<%out.print(cl);%>&term=II&fat=<%out.print(fat);%>"><button class="btn btn-success"><font size="2" face="Courier New"><b>HALF_YEARLY</b></font></button></a></td>
                                            </tr>
                                            <%
                                        }

                                        //term3 marks
                                        //half_yearly marks of that student
                                        res2 = stmt2.executeQuery("select * from marks_T3 where CLASS = 'II' and NAME="+fet+" and father='"+fat+"'");
                                        while(res2.next())
                                        {
                                              int hindi = res2.getInt(3);
                                          int eng = res2.getInt(4);
                                          int maths = res2.getInt(5);
                                          int gk = res2.getInt(6);
                                          int hwd = res2.getInt(7);
                                              int ewd = res2.getInt(8);
                                              int draw = res2.getInt(9);
                                              int handi = res2.getInt(10);
                                              int dance = res2.getInt(11);
                                              int sci = res2.getInt(12);
                                              int scip = res2.getInt(13);
                                              int social = res2.getInt(14);
                                              int hist = res2.getInt(15);
                                              int geo = res2.getInt(16);
                                              int civics = res2.getInt(17);
                                              int home = res2.getInt(18);
                                              int sans = res2.getInt(19);
                                              int compt = res2.getInt(20);
                                              int compp = res2.getInt(21);
                                          int tot = eng + hindi + maths + gk + draw+handi+dance+hwd+ewd+social+sci+scip+sans+compp+compt;
                                          double max = 1050;
                                          double per = ((double)tot/max)*100;
                                          per = Math.round(per* 100.0) / 100.0;
                                          %>
                                            <tr>
                                              <td><font size="2" color="Black" face="Courier New">TERM_3</td>
                                              <td><font size="2" color="Black" face="Courier New"><b><%out.print(eng);%></b></td>
                                              <td><font size="2" color="Black" face="Courier New"><b><%out.print(hindi);%></b></td>
                                              <td><font size="2" color="Black" face="Courier New"><b><%out.print(maths);%></b></td>
                                              <td><font size="2" color="Black" face="Courier New"><b><%out.print(gk);%></b></td>
                                              <td><font size="2" color="Black" face="Courier New"><b><%out.print(draw);%></b></td>
                                              <td><font size="2" color="Black" face="Courier New"><b><%out.print(dance);%></b></td>
                                              <td><font size="2" color="Black" face="Courier New"><b><%out.print(handi);%></b></td>
                                                 <td><font size="2" color="Black" face="Courier New"><b><%out.print(hwd);%></b></td> 
                                              <td><font size="2" color="Black" face="Courier New"><b><%out.print(ewd);%></b></td> 
                                              <td><font size="2" color="Black" face="Courier New"><b><%out.print(social);%></b></td>
                                                <td><font size="2" color="Black" face="Courier New"><b><%out.print(sci);%></b></td>
                                                <td><font size="2" color="Black" face="Courier New"><b><%out.print(scip);%></b></td>
                                              <td><font size="2" color="Black" face="Courier New"><b><%out.print(sans);%></b></td>
                                              <td><font size="2" color="Black" face="Courier New"><b><%out.print(compp);%></b></td>
                                              <td><font size="2" color="Black" face="Courier New"><b><%out.print(compt);%></b></td>
                                              <td><font size="2" color="Black" face="Courier New"><b><%out.print(max);%></b></td>
                                              <td><font size="2" color="Black" face="Courier New"><b><%out.print(per);%></b></td>
                                              <td><a href="print.jsp?name=<%out.print(name);%>&class=<%out.print(cl);%>&term=III&fat=<%out.print(fat);%>"><button class="btn btn-success"><font size="2" face="Courier New"><b>TERM_3</b></font></button></a></td>
                                            </tr>
                                            <%
                                        }

                                        //END_TERM marks of that student
                                        res2 = stmt2.executeQuery("select * from marks_END where CLASS = 'II' and NAME="+fet+" and father='"+fat+"'");
                                        while(res2.next())
                                        {
                                              int hindi = res2.getInt(3);
                                          int eng = res2.getInt(4);
                                          int maths = res2.getInt(5);
                                          int gk = res2.getInt(6);
                                          int hwd = res2.getInt(7);
                                              int ewd = res2.getInt(8);
                                              int draw = res2.getInt(9);
                                              int handi = res2.getInt(10);
                                              int dance = res2.getInt(11);
                                              int sci = res2.getInt(12);
                                              int scip = res2.getInt(13);
                                              int social = res2.getInt(14);
                                              int hist = res2.getInt(15);
                                              int geo = res2.getInt(16);
                                              int civics = res2.getInt(17);
                                              int home = res2.getInt(18);
                                              int sans = res2.getInt(19);
                                              int compt = res2.getInt(20);
                                              int compp = res2.getInt(21);
                                          int tot = eng + hindi + maths + gk + draw+handi+dance+hwd+ewd+social+sci+scip+sans+compp+compt;
                                          double max = 1050;
                                          double per = ((double)tot/max)*100;
                                          per = Math.round(per* 100.0) / 100.0;
                                          %>
                                            <tr>
                                              <td><font size="2" color="Black" face="Courier New">END_TERM</td>
                                              <td><font size="2" color="Black" face="Courier New"><b><%out.print(eng);%></b></td>
                                              <td><font size="2" color="Black" face="Courier New"><b><%out.print(hindi);%></b></td>
                                              <td><font size="2" color="Black" face="Courier New"><b><%out.print(maths);%></b></td>
                                              <td><font size="2" color="Black" face="Courier New"><b><%out.print(gk);%></b></td>
                                              <td><font size="2" color="Black" face="Courier New"><b><%out.print(draw);%></b></td>
                                              <td><font size="2" color="Black" face="Courier New"><b><%out.print(dance);%></b></td>
                                              <td><font size="2" color="Black" face="Courier New"><b><%out.print(handi);%></b></td>
                                                <td><font size="2" color="Black" face="Courier New"><b><%out.print(hwd);%></b></td> 
                                              <td><font size="2" color="Black" face="Courier New"><b><%out.print(ewd);%></b></td>
                                                <td><font size="2" color="Black" face="Courier New"><b><%out.print(social);%></b></td>
                                                <td><font size="2" color="Black" face="Courier New"><b><%out.print(sci);%></b></td>
                                                <td><font size="2" color="Black" face="Courier New"><b><%out.print(scip);%></b></td>
                                              <td><font size="2" color="Black" face="Courier New"><b><%out.print(sans);%></b></td>
                                              <td><font size="2" color="Black" face="Courier New"><b><%out.print(compp);%></b></td>
                                              <td><font size="2" color="Black" face="Courier New"><b><%out.print(compt);%></b></td>
                                                <td><font size="2" color="Black" face="Courier New"><b><%out.print(max);%></b></td>
                                              <td><font size="2" color="Black" face="Courier New"><b><%out.print(per);%></b></td>
                                              <td><a href="print.jsp?name=<%out.print(name);%>&class=<%out.print(cl);%>&term=IV&fat=<%out.print(fat);%>"><button class="btn btn-success"><font size="2" face="Courier New"><b>END_TERM</b></font></button></a></td>
                                            </tr>
                                            <%
                                        }
                                        %></table></font><%

                                        mod++;
                                      %>
                                      </center>

              </div>
            </center>
          </h4></div></div></div>

          </td>
          <td><font size="2" face="courier new"><b><%out.print(fat.toUpperCase());%></b></font></td>
          <td><font size="2" face="courier new"><b><%out.print(mom.toUpperCase());%></b></font></td>
          </tr><%
          
        }
        %>
        
        </table>
      </div>

      <div id ="c3" style="display:none;">
        <%
        res = stmt.executeQuery("select * from student where class='III'");
         c = 1;
        %>
        <font size="5" face="courier new"><b>CLASS III</b></font><br><br>
        <table class = "table table-striped table-bordered table-responsive w-auto" width="20%">
        <tr class="active">
          <th><font size="2" face="courier new">SNO</font></th>
          
          <th><font size="2" face="courier new">NAME</font></th>
          <th><font size="2" face="courier new">FATHER'S NAME</font></th>
          <th><font size="2" face="courier new">MOTHER'S NAME</font></th>
        </tr>
        
        <%
        mod = 40;
        while(res.next())
        {
        
           
                         String mod_id = "#"+"myModal"+mod;
                         String mod_id2 = "myModal"+mod;
                                    
          int roll = res.getInt(6);
          
          String name = res.getString(2);

          String fat = res.getString(3);
          String mom = res.getString(4);
          String dob = res.getString(9);
          String cl = res.getString(5);
          String phone = res.getString(11);
          String aadhar = res.getString(10);
          String addr = res.getString(8);
          String img  = res.getString(12);
          img = "'"+img+"'";
          %>

          <tr>
          <td><font size="2" face="courier new"><b><%out.print(c++);%></b></td>
         
          <td>

            <!--MODAL ON EACH NAME-->
            <button type="button" class="btn btn-outline-success btn-sm" data-toggle="modal" data-target="<%out.print(mod_id);%>">
                            <font size="2" color="Black" face="Courier New"><b>
                                          <%out.print(name);%>
                                                
                           </b></font>
                        </button>

                         <div id="<%out.print(mod_id2);%>" class="modal fade" role="dialog">
                                <div class="modal-dialog">

                                     <!-- Modal content-->
                                     <div class="modal-content">
                                     <div class="modal-header">
                                     <button type="button" class="close" data-dismiss="modal">&times;</button>
                                     <h4 class="modal-title">
                                     <center><font size="4" color="White" face="Courier New"><b>WELCOME<br><%out.print(name);%></b></font><br>
                                     </h4>
                                     </div>
                                     <!---MODAL BODY-->
                                     <div class="modal-body">
                                      <table class="w3-table" border-width="0">
                                        <tr>
                                       
                                       <th><font size="3" color="Black" face="Courier New">NAME<br></th>
                                        <th><font size="3" color="Black" face="Courier New"><b><%out.print(name);%></font></b></th>
                                      </tr>
                                       <div id = "img9">
                                          <img src=<%out.print(img);%>/>
                                        </div>
                                         <tr>
                                        
                                      <th><font size="3" color="Black" face="Courier New">FATHER'S NAME</font></b><br></th> 
                                       
                                       <th><font size="3" color="Black" face="Courier New"><b><%out.print(fat.toUpperCase());%></b></font></th>
                                     </tr>
                                        
                                        
                                      <tr>
                                      <th><font size="3" color="Black" face="Courier New">MOTHER'S NAME</font><br></th>
                                      <th><font size="3" color="Black" face="Courier New"><b><%out.print(mom.toUpperCase());%></b></font></th>
                                      </tr>
                                       
                                        
                                       <tr>
                                        <th><font size="3" color="Black" face="Courier New">DATE OF BIRTH</font><br></th>
                                        <th><font size="3" color="Black" face="Courier New"><b><%out.print(dob);%></b></font></th>
                                      </tr>
                                        
                                        <tr>
                                        <th><font size="3" color="Black" face="Courier New">CLASS</font></b><br></th>
                                        <th><font size="3" color="Black" face="Courier New"><b><%out.print(cl);%></b></font></th>
                                        </tr>

                                        <tr>
                                        
                                        <th><font size="3" color="Black" face="Courier New">PHONE</font><br></th>   
                                        <th><font size="3" color="Black" face="Courier New"><b><%out.print(phone);%></b></font></th>
                                      </tr>

                                         <tr>
                                        
                                        <th><font size="3" color="Black" face="Courier New">AADHAR NO</font></b><br></th>
                                        <th><font size="3" color="Black" face="Courier New"><b><%out.print(aadhar);%></b></font></th>
                                      </tr>

                                        <tr>
                                        
                                      <th><font size="3" color="Black" face="Courier New">ADDRESS</font></th>
                                      <th><font size="3" color="Black" face="Courier New"><b><%out.print(addr);%></b></font></th>
                                      </tr>
                                      
                                      <tr>
                                         <th><a href="printf.jsp?name=<%out.print(name);%>&father=<%out.print(fat);%>&class=<%out.print(cl);%>"><button class="btn btn-success"><font size='2' face='courier new'>FEE<br>DETAILS</font></button></a></th>
                                       </tr>
                                       
                                      </table>
                                        <center>
                                          <font size="5" color="Black" face="Courier New"><b>MARKS OVERVIEW</b></font>
                                      

                                                                                  <!--FETCHING MARKS-->
                                            <div id="scroll">
                                           <table class="table table-striped table-bordered" style="overflow:scroll;">
                                            <tr>
                                              <th><font size="2" color="Black" face="Courier New"><b>EXAM_No.</b></font></th>
                                              <th><font size="2" color="Black" face="Courier New"><b>ENGLISH<br>(100)</b></font></th>
                                              <th><font size="2" color="Black" face="Courier New"><b>HINDI<br>(100)</b></font></th>
                                              <th><font size="2" color="Black" face="Courier New"><b>MATHS<br>(100)</b></font></th>
                                              <th><font size="2" color="Black" face="Courier New"><b>GK<br>(100)</b></font></th>
                                              <th><font size="2" color="Black" face="Courier New"><b>DRAWING<br>(50)</b></font></th>
                                              <th><font size="2" color="Black" face="Courier New"><b>DANCE<br>MUSIC<br>(50)</b></font></th>
                                              <th><font size="2" color="Black" face="Courier New"><b>HANDICRAFT<br>(50)</b></font></th>
                                              <th><font size="2" color="Black" face="Courier New"><b>H.W.D.<br>(50)</b></font></th>
                                              <th><font size="2" color="Black" face="Courier New"><b>E.W.D.<br>(50)</b></font></th>
                                              <th><font size="2" color="Black" face="Courier New"><b>SOCIAL<br>SCIENCE<br>(100)</b></font></th>
                                              <th><font size="2" color="Black" face="Courier New"><b>SCIENCE<br>(90)</b></font></th>
                                              <th><font size="2" color="Black" face="Courier New"><b>SCIENCE<br>PRAC.<br>(10)</b></font></th>
                                              <th><font size="2" color="Black" face="Courier New"><b>SANSKRIT<br>(100)</b></font></th>
                                              <th><font size="2" color="Black" face="Courier New"><b>COMPUTER<br>PRAC.<br>(50)</b></font></th>
                                              <th><font size="2" color="Black" face="Courier New"><b>COMPUTER<br>THEORY<br>(50)</b></font></th>
                                              <th><font size="2" color="Black" face="Courier New"><b>MAX_MARKS</b></font></th>
                                              <th><font size="2" color="Black" face="Courier New"><b>PERCENTAGE</b></font></th>
                                              <th><font size='2' face='courier new'>PRINT</font></th>
                                               
                                            </tr>

                                      <%
                                        String fet = "'"+name+"'";

                                        //term 1 marks of that student
                                        res2 = stmt2.executeQuery("select * from marksT1 where CLASS = 'III' and NAME="+fet+" and father='"+fat+"'");
                                        while(res2.next())
                                        {
                                          int hindi = res2.getInt(3);
                                          int eng = res2.getInt(4);
                                          int maths = res2.getInt(5);
                                          int gk = res2.getInt(6);
                                          int hwd = res2.getInt(7);
                                              int ewd = res2.getInt(8);
                                              int draw = res2.getInt(9);
                                              int handi = res2.getInt(10);
                                              int dance = res2.getInt(11);
                                              int sci = res2.getInt(12);
                                              int scip = res2.getInt(13);
                                              int social = res2.getInt(14);
                                              int hist = res2.getInt(15);
                                              int geo = res2.getInt(16);
                                              int civics = res2.getInt(17);
                                              int home = res2.getInt(18);
                                              int sans = res2.getInt(19);
                                              int compt = res2.getInt(20);
                                              int compp = res2.getInt(21);
                                          int tot = eng + hindi + maths + gk + draw+handi+dance+hwd+ewd+social+sci+scip+sans+compp+compt;
                                          double max = 1050;
                                          double per = ((double)tot/max)*100;
                                          per = Math.round(per* 100.0) / 100.0;
                                          %>
                                         
                                            <tr>
                                              <td><font size="2" color="Black" face="Courier New">TERM_1</td>
                                              <td><font size="2" color="Black" face="Courier New"><b><%out.print(eng);%></b></td>
                                              <td><font size="2" color="Black" face="Courier New"><b><%out.print(hindi);%></b></td>
                                              <td><font size="2" color="Black" face="Courier New"><b><%out.print(maths);%></b></td>
                                              <td><font size="2" color="Black" face="Courier New"><b><%out.print(gk);%></b></td>
                                              <td><font size="2" color="Black" face="Courier New"><b><%out.print(draw);%></b></td>
                                              <td><font size="2" color="Black" face="Courier New"><b><%out.print(dance);%></b></td>
                                              <td><font size="2" color="Black" face="Courier New"><b><%out.print(handi);%></b></td>
                                               <td><font size="2" color="Black" face="Courier New"><b><%out.print(hwd);%></b></td> 
                                               <td><font size="2" color="Black" face="Courier New"><b><%out.print(ewd);%></b></td> 
                                               <td><font size="2" color="Black" face="Courier New"><b><%out.print(social);%></b></td>
                                                <td><font size="2" color="Black" face="Courier New"><b><%out.print(sci);%></b></td>
                                                <td><font size="2" color="Black" face="Courier New"><b><%out.print(scip);%></b></td>
                                              <td><font size="2" color="Black" face="Courier New"><b><%out.print(sans);%></b></td>
                                                <td><font size="2" color="Black" face="Courier New"><b><%out.print(compp);%></b></td>
                                              <td><font size="2" color="Black" face="Courier New"><b><%out.print(compt);%></b></td>
                                              <td><font size="2" color="Black" face="Courier New"><b><%out.print(max);%></b></td>
                                              <td><font size="2" color="Black" face="Courier New"><b><%out.print(per);%></b></td>
                                              <td><a href="print.jsp?name=<%out.print(name);%>&class=<%out.print(cl);%>&term=I&fat=<%out.print(fat);%>"><button class="btn btn-success"><font size="2" face="Courier New"><b>TERM_1</b></font></button></a></td>
                                            </tr>
                                            <%
                                        }

                                        //half_yearly marks of that student
                                        res2 = stmt2.executeQuery("select * from marks_HALF where CLASS = 'III' and NAME="+fet+" and father='"+fat+"'");
                                        while(res2.next())
                                        {
                                              int hindi = res2.getInt(3);
                                          int eng = res2.getInt(4);
                                          int maths = res2.getInt(5);
                                          int gk = res2.getInt(6);
                                          int hwd = res2.getInt(7);
                                              int ewd = res2.getInt(8);
                                              int draw = res2.getInt(9);
                                              int handi = res2.getInt(10);
                                              int dance = res2.getInt(11);
                                              int sci = res2.getInt(12);
                                              int scip = res2.getInt(13);
                                              int social = res2.getInt(14);
                                              int hist = res2.getInt(15);
                                              int geo = res2.getInt(16);
                                              int civics = res2.getInt(17);
                                              int home = res2.getInt(18);
                                              int sans = res2.getInt(19);
                                              int compt = res2.getInt(20);
                                              int compp = res2.getInt(21);
                                          int tot = eng + hindi + maths + gk + draw+handi+dance+hwd+ewd+social+sci+scip+sans+compp+compt;
                                          double max = 1050;
                                          double per = ((double)tot/max)*100;
                                          per = Math.round(per* 100.0) / 100.0;
                                          %>
                                            <tr>
                                              <td><font size="2" color="Black" face="Courier New">HALF_YEARLY</td>
                                              <td><font size="2" color="Black" face="Courier New"><b><%out.print(eng);%></b></td>
                                              <td><font size="2" color="Black" face="Courier New"><b><%out.print(hindi);%></b></td>
                                              <td><font size="2" color="Black" face="Courier New"><b><%out.print(maths);%></b></td>
                                              <td><font size="2" color="Black" face="Courier New"><b><%out.print(gk);%></b></td>
                                              <td><font size="2" color="Black" face="Courier New"><b><%out.print(draw);%></b></td>
                                              <td><font size="2" color="Black" face="Courier New"><b><%out.print(dance);%></b></td>
                                              <td><font size="2" color="Black" face="Courier New"><b><%out.print(handi);%></b></td>
                                              <td><font size="2" color="Black" face="Courier New"><b><%out.print(hwd);%></b></td> 
                                              <td><font size="2" color="Black" face="Courier New"><b><%out.print(ewd);%></b></td> 
                                               <td><font size="2" color="Black" face="Courier New"><b><%out.print(social);%></b></td>
                                                <td><font size="2" color="Black" face="Courier New"><b><%out.print(sci);%></b></td>
                                                <td><font size="2" color="Black" face="Courier New"><b><%out.print(scip);%></b></td>
                                              <td><font size="2" color="Black" face="Courier New"><b><%out.print(sans);%></b></td>
                                              <td><font size="2" color="Black" face="Courier New"><b><%out.print(compp);%></b></td>
                                              <td><font size="2" color="Black" face="Courier New"><b><%out.print(compt);%></b></td>
                                              <td><font size="2" color="Black" face="Courier New"><b><%out.print(max);%></b></td>
                                              <td><font size="2" color="Black" face="Courier New"><b><%out.print(per);%></b></td>
                                              <td><a href="print.jsp?name=<%out.print(name);%>&class=<%out.print(cl);%>&term=II&fat=<%out.print(fat);%>"><button class="btn btn-success"><font size="2" face="Courier New"><b>HALF_YEARLY</b></font></button></a></td>
                                            </tr>
                                            <%
                                        }

                                        //term3 marks
                                        //half_yearly marks of that student
                                        res2 = stmt2.executeQuery("select * from marks_T3 where CLASS = 'III' and NAME="+fet+" and father='"+fat+"'");
                                        while(res2.next())
                                        {
                                              int hindi = res2.getInt(3);
                                          int eng = res2.getInt(4);
                                          int maths = res2.getInt(5);
                                          int gk = res2.getInt(6);
                                          int hwd = res2.getInt(7);
                                              int ewd = res2.getInt(8);
                                              int draw = res2.getInt(9);
                                              int handi = res2.getInt(10);
                                              int dance = res2.getInt(11);
                                              int sci = res2.getInt(12);
                                              int scip = res2.getInt(13);
                                              int social = res2.getInt(14);
                                              int hist = res2.getInt(15);
                                              int geo = res2.getInt(16);
                                              int civics = res2.getInt(17);
                                              int home = res2.getInt(18);
                                              int sans = res2.getInt(19);
                                              int compt = res2.getInt(20);
                                              int compp = res2.getInt(21);
                                          int tot = eng + hindi + maths + gk + draw+handi+dance+hwd+ewd+social+sci+scip+sans+compp+compt;
                                          double max = 1050;
                                          double per = ((double)tot/max)*100;
                                          per = Math.round(per* 100.0) / 100.0;
                                          %>
                                            <tr>
                                              <td><font size="2" color="Black" face="Courier New">TERM_3</td>
                                              <td><font size="2" color="Black" face="Courier New"><b><%out.print(eng);%></b></td>
                                              <td><font size="2" color="Black" face="Courier New"><b><%out.print(hindi);%></b></td>
                                              <td><font size="2" color="Black" face="Courier New"><b><%out.print(maths);%></b></td>
                                              <td><font size="2" color="Black" face="Courier New"><b><%out.print(gk);%></b></td>
                                              <td><font size="2" color="Black" face="Courier New"><b><%out.print(draw);%></b></td>
                                              <td><font size="2" color="Black" face="Courier New"><b><%out.print(dance);%></b></td>
                                              <td><font size="2" color="Black" face="Courier New"><b><%out.print(handi);%></b></td>
                                                 <td><font size="2" color="Black" face="Courier New"><b><%out.print(hwd);%></b></td> 
                                              <td><font size="2" color="Black" face="Courier New"><b><%out.print(ewd);%></b></td> 
                                              <td><font size="2" color="Black" face="Courier New"><b><%out.print(social);%></b></td>
                                                <td><font size="2" color="Black" face="Courier New"><b><%out.print(sci);%></b></td>
                                                <td><font size="2" color="Black" face="Courier New"><b><%out.print(scip);%></b></td>
                                              <td><font size="2" color="Black" face="Courier New"><b><%out.print(sans);%></b></td>
                                              <td><font size="2" color="Black" face="Courier New"><b><%out.print(compp);%></b></td>
                                              <td><font size="2" color="Black" face="Courier New"><b><%out.print(compt);%></b></td>
                                              <td><font size="2" color="Black" face="Courier New"><b><%out.print(max);%></b></td>
                                              <td><font size="2" color="Black" face="Courier New"><b><%out.print(per);%></b></td>
                                              <td><a href="print.jsp?name=<%out.print(name);%>&class=<%out.print(cl);%>&term=III&fat=<%out.print(fat);%>"><button class="btn btn-success"><font size="2" face="Courier New"><b>TERM_3</b></font></button></a></td>
                                            </tr>
                                            <%
                                        }

                                        //END_TERM marks of that student
                                        res2 = stmt2.executeQuery("select * from marks_END where CLASS = 'III' and NAME="+fet+" and father='"+fat+"'");
                                        while(res2.next())
                                        {
                                              int hindi = res2.getInt(3);
                                          int eng = res2.getInt(4);
                                          int maths = res2.getInt(5);
                                          int gk = res2.getInt(6);
                                          int hwd = res2.getInt(7);
                                              int ewd = res2.getInt(8);
                                              int draw = res2.getInt(9);
                                              int handi = res2.getInt(10);
                                              int dance = res2.getInt(11);
                                              int sci = res2.getInt(12);
                                              int scip = res2.getInt(13);
                                              int social = res2.getInt(14);
                                              int hist = res2.getInt(15);
                                              int geo = res2.getInt(16);
                                              int civics = res2.getInt(17);
                                              int home = res2.getInt(18);
                                              int sans = res2.getInt(19);
                                              int compt = res2.getInt(20);
                                              int compp = res2.getInt(21);
                                          int tot = eng + hindi + maths + gk + draw+handi+dance+hwd+ewd+social+sci+scip+sans+compp+compt;
                                          double max = 1050;
                                          double per = ((double)tot/max)*100;
                                          per = Math.round(per* 100.0) / 100.0;
                                          %>
                                            <tr>
                                              <td><font size="2" color="Black" face="Courier New">END_TERM</td>
                                              <td><font size="2" color="Black" face="Courier New"><b><%out.print(eng);%></b></td>
                                              <td><font size="2" color="Black" face="Courier New"><b><%out.print(hindi);%></b></td>
                                              <td><font size="2" color="Black" face="Courier New"><b><%out.print(maths);%></b></td>
                                              <td><font size="2" color="Black" face="Courier New"><b><%out.print(gk);%></b></td>
                                              <td><font size="2" color="Black" face="Courier New"><b><%out.print(draw);%></b></td>
                                              <td><font size="2" color="Black" face="Courier New"><b><%out.print(dance);%></b></td>
                                              <td><font size="2" color="Black" face="Courier New"><b><%out.print(handi);%></b></td>
                                                <td><font size="2" color="Black" face="Courier New"><b><%out.print(hwd);%></b></td> 
                                              <td><font size="2" color="Black" face="Courier New"><b><%out.print(ewd);%></b></td>
                                                <td><font size="2" color="Black" face="Courier New"><b><%out.print(social);%></b></td>
                                                <td><font size="2" color="Black" face="Courier New"><b><%out.print(sci);%></b></td>
                                                <td><font size="2" color="Black" face="Courier New"><b><%out.print(scip);%></b></td>
                                              <td><font size="2" color="Black" face="Courier New"><b><%out.print(sans);%></b></td>
                                              <td><font size="2" color="Black" face="Courier New"><b><%out.print(compp);%></b></td>
                                              <td><font size="2" color="Black" face="Courier New"><b><%out.print(compt);%></b></td>
                                                <td><font size="2" color="Black" face="Courier New"><b><%out.print(max);%></b></td>
                                              <td><font size="2" color="Black" face="Courier New"><b><%out.print(per);%></b></td>
                                              <td><a href="print.jsp?name=<%out.print(name);%>&class=<%out.print(cl);%>&term=IV&fat=<%out.print(fat);%>"><button class="btn btn-success"><font size="2" face="Courier New"><b>END_TERM</b></font></button></a></td>
                                            </tr>
                                            <%
                                        }
                                        %></table></font><%

                                        mod++;
                                      %>
                                      </center>

              </div>
            </center>
          </h4></div></div></div>

          </td>
          <td><font size="2" face="courier new"><b><%out.print(fat.toUpperCase());%></b></font></td>
          <td><font size="2" face="courier new"><b><%out.print(mom.toUpperCase());%></b></font></td>
          </tr><%
          
        }
        %>
        
        </table>
      </div>

      <div id ="c4" style="display:none;">
        <%
        res = stmt.executeQuery("select * from student where class='IV'");
         c = 1;
        %>
        <font size="5" face="courier new"><b>CLASS IV</b></font><br><br>
        <table class = "table table-striped table-bordered table-responsive w-auto" width="20%">
        <tr class="active">
          <th><font size="2" face="courier new">SNO</font></th>
         
          <th><font size="2" face="courier new">NAME</font></th>
          <th><font size="2" face="courier new">FATHER'S NAME</font></th>
          <th><font size="2" face="courier new">MOTHER'S NAME</font></th>
        </tr>
        
        <%
        mod = 60;
        while(res.next())
        {
        
           
                         String mod_id = "#"+"myModal"+mod;
                         String mod_id2 = "myModal"+mod;
                                    
          int roll = res.getInt(6);
          
          String name = res.getString(2);

          String fat = res.getString(3);
          String mom = res.getString(4);
          String dob = res.getString(9);
          String cl = res.getString(5);
          String phone = res.getString(11);
          String aadhar = res.getString(10);
          String addr = res.getString(8);
          String img  = res.getString(12);
          img = "'"+img+"'";
          %>

          <tr>
          <td><font size="2" face="courier new"><b><%out.print(c++);%></b></td>
          
          <td>

            <!--MODAL ON EACH NAME-->
            <button type="button" class="btn btn-outline-success btn-sm" data-toggle="modal" data-target="<%out.print(mod_id);%>">
                            <font size="2" color="Black" face="Courier New"><b>
                                          <%out.print(name);%>
                                                
                           </b></font>
                        </button>

                         <div id="<%out.print(mod_id2);%>" class="modal fade" role="dialog">
                                <div class="modal-dialog">

                                     <!-- Modal content-->
                                     <div class="modal-content">
                                     <div class="modal-header">
                                     <button type="button" class="close" data-dismiss="modal">&times;</button>
                                     <h4 class="modal-title">
                                     <center><font size="4" color="White" face="Courier New"><b>WELCOME<br><%out.print(name);%></b></font><br>
                                     </h4>
                                     </div>
                                     <!---MODAL BODY-->
                                     <div class="modal-body">
                                      <table class="w3-table" border-width="0">
                                        <tr>
                                       
                                       <th><font size="3" color="Black" face="Courier New">NAME<br></th>
                                        <th><font size="3" color="Black" face="Courier New"><b><%out.print(name);%></font></b></th>
                                      </tr>
                                       <div id = "img9">
                                          <img src=<%out.print(img);%>/>
                                        </div>
                                         <tr>
                                        
                                      <th><font size="3" color="Black" face="Courier New">FATHER'S NAME</font></b><br></th> 
                                       
                                       <th><font size="3" color="Black" face="Courier New"><b><%out.print(fat.toUpperCase());%></b></font></th>
                                     </tr>
                                        
                                        
                                      <tr>
                                      <th><font size="3" color="Black" face="Courier New">MOTHER'S NAME</font><br></th>
                                      <th><font size="3" color="Black" face="Courier New"><b><%out.print(mom.toUpperCase());%></b></font></th>
                                      </tr>
                                       
                                        
                                       <tr>
                                        <th><font size="3" color="Black" face="Courier New">DATE OF BIRTH</font><br></th>
                                        <th><font size="3" color="Black" face="Courier New"><b><%out.print(dob);%></b></font></th>
                                      </tr>
                                        
                                        <tr>
                                        <th><font size="3" color="Black" face="Courier New">CLASS</font></b><br></th>
                                        <th><font size="3" color="Black" face="Courier New"><b><%out.print(cl);%></b></font></th>
                                        </tr>

                                        <tr>
                                        
                                        <th><font size="3" color="Black" face="Courier New">PHONE</font><br></th>   
                                        <th><font size="3" color="Black" face="Courier New"><b><%out.print(phone);%></b></font></th>
                                      </tr>

                                         <tr>
                                        
                                        <th><font size="3" color="Black" face="Courier New">AADHAR NO</font></b><br></th>
                                        <th><font size="3" color="Black" face="Courier New"><b><%out.print(aadhar);%></b></font></th>
                                      </tr>

                                        <tr>
                                        
                                      <th><font size="3" color="Black" face="Courier New">ADDRESS</font></th>
                                      <th><font size="3" color="Black" face="Courier New"><b><%out.print(addr);%></b></font></th>
                                      </tr>
                                      
                                      <tr>
                                         <th><a href="printf.jsp?name=<%out.print(name);%>&father=<%out.print(fat);%>&class=<%out.print(cl);%>"><button class="btn btn-success"><font size='2' face='courier new'>FEE<br>DETAILS</font></button></a></th>
                                       </tr>
                                       
                                      </table>
                                        <center>
                                          <font size="5" color="Black" face="Courier New"><b>MARKS OVERVIEW</b></font>
                                      

                                            <!--FETCHING MARKS-->
                                            <div id="scroll">
                                           <table class="table table-striped table-bordered" style="overflow:scroll;">
                                            <tr>
                                              <th><font size="2" color="Black" face="Courier New"><b>EXAM_No.</b></font></th>
                                              <th><font size="2" color="Black" face="Courier New"><b>ENGLISH<br>(100)</b></font></th>
                                              <th><font size="2" color="Black" face="Courier New"><b>HINDI<br>(100)</b></font></th>
                                              <th><font size="2" color="Black" face="Courier New"><b>MATHS<br>(100)</b></font></th>
                                              <th><font size="2" color="Black" face="Courier New"><b>GK<br>(100)</b></font></th>
                                              <th><font size="2" color="Black" face="Courier New"><b>DRAWING<br>(50)</b></font></th>
                                              <th><font size="2" color="Black" face="Courier New"><b>DANCE<br>MUSIC<br>(50)</b></font></th>
                                              <th><font size="2" color="Black" face="Courier New"><b>HANDICRAFT<br>(50)</b></font></th>
                                              <th><font size="2" color="Black" face="Courier New"><b>H.W.D.<br>(50)</b></font></th>
                                              <th><font size="2" color="Black" face="Courier New"><b>E.W.D.<br>(50)</b></font></th>
                                              <th><font size="2" color="Black" face="Courier New"><b>SOCIAL<br>SCIENCE<br>(100)</b></font></th>
                                              <th><font size="2" color="Black" face="Courier New"><b>SCIENCE<br>(90)</b></font></th>
                                              <th><font size="2" color="Black" face="Courier New"><b>SCIENCE<br>PRAC.<br>(10)</b></font></th>
                                              <th><font size="2" color="Black" face="Courier New"><b>SANSKRIT<br>(100)</b></font></th>
                                              <th><font size="2" color="Black" face="Courier New"><b>COMPUTER<br>PRAC.<br>(50)</b></font></th>
                                              <th><font size="2" color="Black" face="Courier New"><b>COMPUTER<br>THEORY<br>(50)</b></font></th>
                                              <th><font size="2" color="Black" face="Courier New"><b>MAX_MARKS</b></font></th>
                                              <th><font size="2" color="Black" face="Courier New"><b>PERCENTAGE</b></font></th>
                                              <th><font size='2' face='courier new'>PRINT</font></th>
                                              
                                            </tr>

                                      <%
                                        String fet = "'"+name+"'";

                                        //term 1 marks of that student
                                        res2 = stmt2.executeQuery("select * from marksT1 where CLASS = 'IV' and NAME="+fet+" and father='"+fat+"'");
                                        while(res2.next())
                                        {
                                          int hindi = res2.getInt(3);
                                          int eng = res2.getInt(4);
                                          int maths = res2.getInt(5);
                                          int gk = res2.getInt(6);
                                          int hwd = res2.getInt(7);
                                              int ewd = res2.getInt(8);
                                              int draw = res2.getInt(9);
                                              int handi = res2.getInt(10);
                                              int dance = res2.getInt(11);
                                              int sci = res2.getInt(12);
                                              int scip = res2.getInt(13);
                                              int social = res2.getInt(14);
                                              int hist = res2.getInt(15);
                                              int geo = res2.getInt(16);
                                              int civics = res2.getInt(17);
                                              int home = res2.getInt(18);
                                              int sans = res2.getInt(19);
                                              int compt = res2.getInt(20);
                                              int compp = res2.getInt(21);
                                          int tot = eng + hindi + maths + gk + draw+handi+dance+hwd+ewd+social+sci+scip+sans+compp+compt;
                                          double max = 1050;
                                          double per = ((double)tot/max)*100;
                                          per = Math.round(per* 100.0) / 100.0;
                                          %>
                                         
                                            <tr>
                                              <td><font size="2" color="Black" face="Courier New">TERM_1</td>
                                              <td><font size="2" color="Black" face="Courier New"><b><%out.print(eng);%></b></td>
                                              <td><font size="2" color="Black" face="Courier New"><b><%out.print(hindi);%></b></td>
                                              <td><font size="2" color="Black" face="Courier New"><b><%out.print(maths);%></b></td>
                                              <td><font size="2" color="Black" face="Courier New"><b><%out.print(gk);%></b></td>
                                              <td><font size="2" color="Black" face="Courier New"><b><%out.print(draw);%></b></td>
                                              <td><font size="2" color="Black" face="Courier New"><b><%out.print(dance);%></b></td>
                                              <td><font size="2" color="Black" face="Courier New"><b><%out.print(handi);%></b></td>
                                               <td><font size="2" color="Black" face="Courier New"><b><%out.print(hwd);%></b></td> 
                                               <td><font size="2" color="Black" face="Courier New"><b><%out.print(ewd);%></b></td> 
                                               <td><font size="2" color="Black" face="Courier New"><b><%out.print(social);%></b></td>
                                                <td><font size="2" color="Black" face="Courier New"><b><%out.print(sci);%></b></td>
                                                <td><font size="2" color="Black" face="Courier New"><b><%out.print(scip);%></b></td>
                                              <td><font size="2" color="Black" face="Courier New"><b><%out.print(sans);%></b></td>
                                                <td><font size="2" color="Black" face="Courier New"><b><%out.print(compp);%></b></td>
                                              <td><font size="2" color="Black" face="Courier New"><b><%out.print(compt);%></b></td>
                                              <td><font size="2" color="Black" face="Courier New"><b><%out.print(max);%></b></td>
                                              <td><font size="2" color="Black" face="Courier New"><b><%out.print(per);%></b></td>
                                              <td><a href="print.jsp?name=<%out.print(name);%>&class=<%out.print(cl);%>&term=I&fat=<%out.print(fat);%>"><button class="btn btn-success"><font size="2" face="Courier New"><b>TERM_1</b></font></button></a></td>
                                            </tr>
                                            <%
                                        }

                                       
                                        //half_yearly marks of that student
                                        res2 = stmt2.executeQuery("select * from marks_HALF where CLASS = 'IV' and NAME="+fet+" and father='"+fat+"'");
                                        while(res2.next())
                                        {
                                              int hindi = res2.getInt(3);
                                          int eng = res2.getInt(4);
                                          int maths = res2.getInt(5);
                                          int gk = res2.getInt(6);
                                          int hwd = res2.getInt(7);
                                              int ewd = res2.getInt(8);
                                              int draw = res2.getInt(9);
                                              int handi = res2.getInt(10);
                                              int dance = res2.getInt(11);
                                              int sci = res2.getInt(12);
                                              int scip = res2.getInt(13);
                                              int social = res2.getInt(14);
                                              int hist = res2.getInt(15);
                                              int geo = res2.getInt(16);
                                              int civics = res2.getInt(17);
                                              int home = res2.getInt(18);
                                              int sans = res2.getInt(19);
                                              int compt = res2.getInt(20);
                                              int compp = res2.getInt(21);
                                          int tot = eng + hindi + maths + gk + draw+handi+dance+hwd+ewd+social+sci+scip+sans+compp+compt;
                                          double max = 1050;
                                          double per = ((double)tot/max)*100;
                                          per = Math.round(per* 100.0) / 100.0;
                                          %>
                                            <tr>
                                              <td><font size="2" color="Black" face="Courier New">HALF_YEARLY</td>
                                              <td><font size="2" color="Black" face="Courier New"><b><%out.print(eng);%></b></td>
                                              <td><font size="2" color="Black" face="Courier New"><b><%out.print(hindi);%></b></td>
                                              <td><font size="2" color="Black" face="Courier New"><b><%out.print(maths);%></b></td>
                                              <td><font size="2" color="Black" face="Courier New"><b><%out.print(gk);%></b></td>
                                              <td><font size="2" color="Black" face="Courier New"><b><%out.print(draw);%></b></td>
                                              <td><font size="2" color="Black" face="Courier New"><b><%out.print(dance);%></b></td>
                                              <td><font size="2" color="Black" face="Courier New"><b><%out.print(handi);%></b></td>
                                              <td><font size="2" color="Black" face="Courier New"><b><%out.print(hwd);%></b></td> 
                                              <td><font size="2" color="Black" face="Courier New"><b><%out.print(ewd);%></b></td> 
                                               <td><font size="2" color="Black" face="Courier New"><b><%out.print(social);%></b></td>
                                                <td><font size="2" color="Black" face="Courier New"><b><%out.print(sci);%></b></td>
                                                <td><font size="2" color="Black" face="Courier New"><b><%out.print(scip);%></b></td>
                                              <td><font size="2" color="Black" face="Courier New"><b><%out.print(sans);%></b></td>
                                              <td><font size="2" color="Black" face="Courier New"><b><%out.print(compp);%></b></td>
                                              <td><font size="2" color="Black" face="Courier New"><b><%out.print(compt);%></b></td>
                                              <td><font size="2" color="Black" face="Courier New"><b><%out.print(max);%></b></td>
                                              <td><font size="2" color="Black" face="Courier New"><b><%out.print(per);%></b></td>
                                              <td><a href="print.jsp?name=<%out.print(name);%>&class=<%out.print(cl);%>&term=II&fat=<%out.print(fat);%>"><button class="btn btn-success"><font size="2" face="Courier New"><b>HALF_YEARLY</b></font></button></a></td>
                                            </tr>
                                            <%
                                        }

                                        //term3 marks
                                        //half_yearly marks of that student
                                        res2 = stmt2.executeQuery("select * from marks_T3 where CLASS = 'IV' and NAME="+fet+" and father='"+fat+"'");
                                        while(res2.next())
                                        {
                                              int hindi = res2.getInt(3);
                                          int eng = res2.getInt(4);
                                          int maths = res2.getInt(5);
                                          int gk = res2.getInt(6);
                                          int hwd = res2.getInt(7);
                                              int ewd = res2.getInt(8);
                                              int draw = res2.getInt(9);
                                              int handi = res2.getInt(10);
                                              int dance = res2.getInt(11);
                                              int sci = res2.getInt(12);
                                              int scip = res2.getInt(13);
                                              int social = res2.getInt(14);
                                              int hist = res2.getInt(15);
                                              int geo = res2.getInt(16);
                                              int civics = res2.getInt(17);
                                              int home = res2.getInt(18);
                                              int sans = res2.getInt(19);
                                              int compt = res2.getInt(20);
                                              int compp = res2.getInt(21);
                                          int tot = eng + hindi + maths + gk + draw+handi+dance+hwd+ewd+social+sci+scip+sans+compp+compt;
                                          double max = 1050;
                                          double per = ((double)tot/max)*100;
                                          per = Math.round(per* 100.0) / 100.0;
                                          %>
                                            <tr>
                                              <td><font size="2" color="Black" face="Courier New">TERM_3</td>
                                              <td><font size="2" color="Black" face="Courier New"><b><%out.print(eng);%></b></td>
                                              <td><font size="2" color="Black" face="Courier New"><b><%out.print(hindi);%></b></td>
                                              <td><font size="2" color="Black" face="Courier New"><b><%out.print(maths);%></b></td>
                                              <td><font size="2" color="Black" face="Courier New"><b><%out.print(gk);%></b></td>
                                              <td><font size="2" color="Black" face="Courier New"><b><%out.print(draw);%></b></td>
                                              <td><font size="2" color="Black" face="Courier New"><b><%out.print(dance);%></b></td>
                                              <td><font size="2" color="Black" face="Courier New"><b><%out.print(handi);%></b></td>
                                                 <td><font size="2" color="Black" face="Courier New"><b><%out.print(hwd);%></b></td> 
                                              <td><font size="2" color="Black" face="Courier New"><b><%out.print(ewd);%></b></td> 
                                              <td><font size="2" color="Black" face="Courier New"><b><%out.print(social);%></b></td>
                                                <td><font size="2" color="Black" face="Courier New"><b><%out.print(sci);%></b></td>
                                                <td><font size="2" color="Black" face="Courier New"><b><%out.print(scip);%></b></td>
                                              <td><font size="2" color="Black" face="Courier New"><b><%out.print(sans);%></b></td>
                                              <td><font size="2" color="Black" face="Courier New"><b><%out.print(compp);%></b></td>
                                              <td><font size="2" color="Black" face="Courier New"><b><%out.print(compt);%></b></td>
                                              <td><font size="2" color="Black" face="Courier New"><b><%out.print(max);%></b></td>
                                              <td><font size="2" color="Black" face="Courier New"><b><%out.print(per);%></b></td>
                                              <td><a href="print.jsp?name=<%out.print(name);%>&class=<%out.print(cl);%>&term=III&fat=<%out.print(fat);%>"><button class="btn btn-success"><font size="2" face="Courier New"><b>TERM_3</b></font></button></a></td>
                                            </tr>
                                            <%
                                        }

                                        //END_TERM marks of that student
                                        res2 = stmt2.executeQuery("select * from marks_END where CLASS = 'IV' and NAME="+fet+" and father='"+fat+"'");
                                        while(res2.next())
                                        {
                                              int hindi = res2.getInt(3);
                                          int eng = res2.getInt(4);
                                          int maths = res2.getInt(5);
                                          int gk = res2.getInt(6);
                                          int hwd = res2.getInt(7);
                                              int ewd = res2.getInt(8);
                                              int draw = res2.getInt(9);
                                              int handi = res2.getInt(10);
                                              int dance = res2.getInt(11);
                                              int sci = res2.getInt(12);
                                              int scip = res2.getInt(13);
                                              int social = res2.getInt(14);
                                              int hist = res2.getInt(15);
                                              int geo = res2.getInt(16);
                                              int civics = res2.getInt(17);
                                              int home = res2.getInt(18);
                                              int sans = res2.getInt(19);
                                              int compt = res2.getInt(20);
                                              int compp = res2.getInt(21);
                                          int tot = eng + hindi + maths + gk + draw+handi+dance+hwd+ewd+social+sci+scip+sans+compp+compt;
                                          double max = 1050;
                                          double per = ((double)tot/max)*100;
                                          per = Math.round(per* 100.0) / 100.0;
                                          %>
                                            <tr>
                                              <td><font size="2" color="Black" face="Courier New">END_TERM</td>
                                              <td><font size="2" color="Black" face="Courier New"><b><%out.print(eng);%></b></td>
                                              <td><font size="2" color="Black" face="Courier New"><b><%out.print(hindi);%></b></td>
                                              <td><font size="2" color="Black" face="Courier New"><b><%out.print(maths);%></b></td>
                                              <td><font size="2" color="Black" face="Courier New"><b><%out.print(gk);%></b></td>
                                              <td><font size="2" color="Black" face="Courier New"><b><%out.print(draw);%></b></td>
                                              <td><font size="2" color="Black" face="Courier New"><b><%out.print(dance);%></b></td>
                                              <td><font size="2" color="Black" face="Courier New"><b><%out.print(handi);%></b></td>
                                                <td><font size="2" color="Black" face="Courier New"><b><%out.print(hwd);%></b></td> 
                                              <td><font size="2" color="Black" face="Courier New"><b><%out.print(ewd);%></b></td>
                                                <td><font size="2" color="Black" face="Courier New"><b><%out.print(social);%></b></td>
                                                <td><font size="2" color="Black" face="Courier New"><b><%out.print(sci);%></b></td>
                                                <td><font size="2" color="Black" face="Courier New"><b><%out.print(scip);%></b></td>
                                              <td><font size="2" color="Black" face="Courier New"><b><%out.print(sans);%></b></td>
                                              <td><font size="2" color="Black" face="Courier New"><b><%out.print(compp);%></b></td>
                                              <td><font size="2" color="Black" face="Courier New"><b><%out.print(compt);%></b></td>
                                                <td><font size="2" color="Black" face="Courier New"><b><%out.print(max);%></b></td>
                                              <td><font size="2" color="Black" face="Courier New"><b><%out.print(per);%></b></td>
                                              <td><a href="print.jsp?name=<%out.print(name);%>&class=<%out.print(cl);%>&term=IV&fat=<%out.print(fat);%>"><button class="btn btn-success"><font size="2" face="Courier New"><b>END_TERM</b></font></button></a></td>
                                            </tr>
                                            <%
                                        }
                                        %></table></font><%

                                        mod++;
                                      %>
                                      </center>

              </div>
            </center>
          </h4></div></div></div>

          </td>
          <td><font size="2" face="courier new"><b><%out.print(fat.toUpperCase());%></b></font></td>
          <td><font size="2" face="courier new"><b><%out.print(mom.toUpperCase());%></b></font></td>
          </tr><%
          
        }
        %>
        
        </table>
      </div>

      <div id ="c5" style="display:none;">
        <%
        res = stmt.executeQuery("select * from student where class='V'");
         c = 1;
        %>
        <font size="5" face="courier new"><b>CLASS V</b></font><br><br>
        <table class = "table table-striped table-bordered table-responsive w-auto" width="20%">
        <tr class="active">
          <th><font size="2" face="courier new">SNO</font></th>
         
          <th><font size="2" face="courier new">NAME</font></th>
          <th><font size="2" face="courier new">FATHER'S NAME</font></th>
          <th><font size="2" face="courier new">MOTHER'S NAME</font></th>
        </tr>
        
        <%
        mod = 80;
        while(res.next())
        {
        
           
                         String mod_id = "#"+"myModal"+mod;
                         String mod_id2 = "myModal"+mod;
                                    
          int roll = res.getInt(6);
          
          String name = res.getString(2);

          String fat = res.getString(3);
          String mom = res.getString(4);
          String dob = res.getString(9);
          String cl = res.getString(5);
          String phone = res.getString(11);
          String aadhar = res.getString(10);
          String addr = res.getString(8);
          String img  = res.getString(12);
          img = "'"+img+"'";
          %>

          <tr>
          <td><font size="2" face="courier new"><b><%out.print(c++);%></b></td>
          
          <td>

            <!--MODAL ON EACH NAME-->
            <button type="button" class="btn btn-outline-success btn-sm" data-toggle="modal" data-target="<%out.print(mod_id);%>">
                            <font size="2" color="Black" face="Courier New"><b>
                                          <%out.print(name);%>
                                                
                           </b></font>
                        </button>

                         <div id="<%out.print(mod_id2);%>" class="modal fade" role="dialog">
                                <div class="modal-dialog">

                                     <!-- Modal content-->
                                     <div class="modal-content">
                                     <div class="modal-header">
                                     <button type="button" class="close" data-dismiss="modal">&times;</button>
                                     <h4 class="modal-title">
                                     <center><font size="4" color="White" face="Courier New"><b>WELCOME<br><%out.print(name);%></b></font><br>
                                     </h4>
                                     </div>
                                     <!---MODAL BODY-->
                                     <div class="modal-body">
                                      <table class="w3-table" border-width="0">
                                        <tr>
                                       
                                       <th><font size="3" color="Black" face="Courier New">NAME<br></th>
                                        <th><font size="3" color="Black" face="Courier New"><b><%out.print(name);%></font></b></th>
                                      </tr>
                                       <div id = "img9">
                                          <img src=<%out.print(img);%>/>
                                        </div>
                                         <tr>
                                        
                                      <th><font size="3" color="Black" face="Courier New">FATHER'S NAME</font></b><br></th> 
                                       
                                       <th><font size="3" color="Black" face="Courier New"><b><%out.print(fat.toUpperCase());%></b></font></th>
                                     </tr>
                                        
                                        
                                      <tr>
                                      <th><font size="3" color="Black" face="Courier New">MOTHER'S NAME</font><br></th>
                                      <th><font size="3" color="Black" face="Courier New"><b><%out.print(mom.toUpperCase());%></b></font></th>
                                      </tr>
                                       
                                        
                                       <tr>
                                        <th><font size="3" color="Black" face="Courier New">DATE OF BIRTH</font><br></th>
                                        <th><font size="3" color="Black" face="Courier New"><b><%out.print(dob);%></b></font></th>
                                      </tr>
                                        
                                        <tr>
                                        <th><font size="3" color="Black" face="Courier New">CLASS</font></b><br></th>
                                        <th><font size="3" color="Black" face="Courier New"><b><%out.print(cl);%></b></font></th>
                                        </tr>

                                        <tr>
                                        
                                        <th><font size="3" color="Black" face="Courier New">PHONE</font><br></th>   
                                        <th><font size="3" color="Black" face="Courier New"><b><%out.print(phone);%></b></font></th>
                                      </tr>

                                         <tr>
                                        
                                        <th><font size="3" color="Black" face="Courier New">AADHAR NO</font></b><br></th>
                                        <th><font size="3" color="Black" face="Courier New"><b><%out.print(aadhar);%></b></font></th>
                                      </tr>

                                        <tr>
                                        
                                      <th><font size="3" color="Black" face="Courier New">ADDRESS</font></th>
                                      <th><font size="3" color="Black" face="Courier New"><b><%out.print(addr);%></b></font></th>
                                      </tr>
                                      
                                       
                                       <tr>
                                         <th><a href="printf.jsp?name=<%out.print(name);%>&father=<%out.print(fat);%>&class=<%out.print(cl);%>"><button class="btn btn-success"><font size='2' face='courier new'>FEE<br>DETAILS</font></button></a></th>
                                       </tr>

                                      </table>
                                        <center>
                                          <font size="5" color="Black" face="Courier New"><b>MARKS OVERVIEW</b></font>
                                      

                                                                                  <!--FETCHING MARKS-->
                                            <div id="scroll">
                                           <table class="table table-striped table-bordered" style="overflow:scroll;">
                                            <tr>
                                              <th><font size="2" color="Black" face="Courier New"><b>EXAM_No.</b></font></th>
                                              <th><font size="2" color="Black" face="Courier New"><b>ENGLISH<br>(100)</b></font></th>
                                              <th><font size="2" color="Black" face="Courier New"><b>HINDI<br>(100)</b></font></th>
                                              <th><font size="2" color="Black" face="Courier New"><b>MATHS<br>(100)</b></font></th>
                                              <th><font size="2" color="Black" face="Courier New"><b>GK<br>(100)</b></font></th>
                                              <th><font size="2" color="Black" face="Courier New"><b>DRAWING<br>(50)</b></font></th>
                                              <th><font size="2" color="Black" face="Courier New"><b>DANCE<br>MUSIC<br>(50)</b></font></th>
                                              <th><font size="2" color="Black" face="Courier New"><b>HANDICRAFT<br>(50)</b></font></th>
                                              <th><font size="2" color="Black" face="Courier New"><b>H.W.D.<br>(50)</b></font></th>
                                              <th><font size="2" color="Black" face="Courier New"><b>E.W.D.<br>(50)</b></font></th>
                                              <th><font size="2" color="Black" face="Courier New"><b>SOCIAL<br>SCIENCE<br>(100)</b></font></th>
                                              <th><font size="2" color="Black" face="Courier New"><b>SCIENCE<br>(90)</b></font></th>
                                              <th><font size="2" color="Black" face="Courier New"><b>SCIENCE<br>PRAC.<br>(10)</b></font></th>
                                              <th><font size="2" color="Black" face="Courier New"><b>SANSKRIT<br>(100)</b></font></th>
                                              <th><font size="2" color="Black" face="Courier New"><b>COMPUTER<br>PRAC.<br>(50)</b></font></th>
                                              <th><font size="2" color="Black" face="Courier New"><b>COMPUTER<br>THEORY<br>(50)</b></font></th>
                                              <th><font size="2" color="Black" face="Courier New"><b>MAX_MARKS</b></font></th>
                                              <th><font size="2" color="Black" face="Courier New"><b>PERCENTAGE</b></font></th>
                                              <th><font size='2' face='courier new'>PRINT</font></th>
                                              
                                            </tr>

                                      <%
                                        String fet = "'"+name+"'";

                                        //term 1 marks of that student
                                        res2 = stmt2.executeQuery("select * from marksT1 where CLASS = 'V' and NAME="+fet+" and father='"+fat+"'");
                                        while(res2.next())
                                        {
                                          int hindi = res2.getInt(3);
                                          int eng = res2.getInt(4);
                                          int maths = res2.getInt(5);
                                          int gk = res2.getInt(6);
                                          int hwd = res2.getInt(7);
                                              int ewd = res2.getInt(8);
                                              int draw = res2.getInt(9);
                                              int handi = res2.getInt(10);
                                              int dance = res2.getInt(11);
                                              int sci = res2.getInt(12);
                                              int scip = res2.getInt(13);
                                              int social = res2.getInt(14);
                                              int hist = res2.getInt(15);
                                              int geo = res2.getInt(16);
                                              int civics = res2.getInt(17);
                                              int home = res2.getInt(18);
                                              int sans = res2.getInt(19);
                                              int compt = res2.getInt(20);
                                              int compp = res2.getInt(21);
                                          int tot = eng + hindi + maths + gk + draw+handi+dance+hwd+ewd+social+sci+scip+sans+compp+compt;
                                          double max = 1050;
                                          double per = ((double)tot/max)*100;
                                          per = Math.round(per* 100.0) / 100.0;
                                          %>
                                         
                                            <tr>
                                              <td><font size="2" color="Black" face="Courier New">TERM_1</td>
                                              <td><font size="2" color="Black" face="Courier New"><b><%out.print(eng);%></b></td>
                                              <td><font size="2" color="Black" face="Courier New"><b><%out.print(hindi);%></b></td>
                                              <td><font size="2" color="Black" face="Courier New"><b><%out.print(maths);%></b></td>
                                              <td><font size="2" color="Black" face="Courier New"><b><%out.print(gk);%></b></td>
                                              <td><font size="2" color="Black" face="Courier New"><b><%out.print(draw);%></b></td>
                                              <td><font size="2" color="Black" face="Courier New"><b><%out.print(dance);%></b></td>
                                              <td><font size="2" color="Black" face="Courier New"><b><%out.print(handi);%></b></td>
                                               <td><font size="2" color="Black" face="Courier New"><b><%out.print(hwd);%></b></td> 
                                               <td><font size="2" color="Black" face="Courier New"><b><%out.print(ewd);%></b></td> 
                                               <td><font size="2" color="Black" face="Courier New"><b><%out.print(social);%></b></td>
                                                <td><font size="2" color="Black" face="Courier New"><b><%out.print(sci);%></b></td>
                                                <td><font size="2" color="Black" face="Courier New"><b><%out.print(scip);%></b></td>
                                              <td><font size="2" color="Black" face="Courier New"><b><%out.print(sans);%></b></td>
                                                <td><font size="2" color="Black" face="Courier New"><b><%out.print(compp);%></b></td>
                                              <td><font size="2" color="Black" face="Courier New"><b><%out.print(compt);%></b></td>
                                              <td><font size="2" color="Black" face="Courier New"><b><%out.print(max);%></b></td>
                                              <td><font size="2" color="Black" face="Courier New"><b><%out.print(per);%></b></td>
                                               <td><a href="print.jsp?name=<%out.print(name);%>&class=<%out.print(cl);%>&term=I&fat=<%out.print(fat);%>"><button class="btn btn-success"><font size="2" face="Courier New"><b>TERM_1</b></font></button></a></td>
                                            </tr>
                                            <%
                                        }

                                        //half_yearly marks of that student
                                        res2 = stmt2.executeQuery("select * from marks_HALF where CLASS = 'V' and NAME="+fet+" and father='"+fat+"'");
                                        while(res2.next())
                                        {
                                              int hindi = res2.getInt(3);
                                          int eng = res2.getInt(4);
                                          int maths = res2.getInt(5);
                                          int gk = res2.getInt(6);
                                          int hwd = res2.getInt(7);
                                              int ewd = res2.getInt(8);
                                              int draw = res2.getInt(9);
                                              int handi = res2.getInt(10);
                                              int dance = res2.getInt(11);
                                              int sci = res2.getInt(12);
                                              int scip = res2.getInt(13);
                                              int social = res2.getInt(14);
                                              int hist = res2.getInt(15);
                                              int geo = res2.getInt(16);
                                              int civics = res2.getInt(17);
                                              int home = res2.getInt(18);
                                              int sans = res2.getInt(19);
                                              int compt = res2.getInt(20);
                                              int compp = res2.getInt(21);
                                          int tot = eng + hindi + maths + gk + draw+handi+dance+hwd+ewd+social+sci+scip+sans+compp+compt;
                                          double max = 1050;
                                          double per = ((double)tot/max)*100;
                                          per = Math.round(per* 100.0) / 100.0;
                                          %>
                                            <tr>
                                              <td><font size="2" color="Black" face="Courier New">HALF_YEARLY</td>
                                              <td><font size="2" color="Black" face="Courier New"><b><%out.print(eng);%></b></td>
                                              <td><font size="2" color="Black" face="Courier New"><b><%out.print(hindi);%></b></td>
                                              <td><font size="2" color="Black" face="Courier New"><b><%out.print(maths);%></b></td>
                                              <td><font size="2" color="Black" face="Courier New"><b><%out.print(gk);%></b></td>
                                              <td><font size="2" color="Black" face="Courier New"><b><%out.print(draw);%></b></td>
                                              <td><font size="2" color="Black" face="Courier New"><b><%out.print(dance);%></b></td>
                                              <td><font size="2" color="Black" face="Courier New"><b><%out.print(handi);%></b></td>
                                              <td><font size="2" color="Black" face="Courier New"><b><%out.print(hwd);%></b></td> 
                                              <td><font size="2" color="Black" face="Courier New"><b><%out.print(ewd);%></b></td> 
                                               <td><font size="2" color="Black" face="Courier New"><b><%out.print(social);%></b></td>
                                                <td><font size="2" color="Black" face="Courier New"><b><%out.print(sci);%></b></td>
                                                <td><font size="2" color="Black" face="Courier New"><b><%out.print(scip);%></b></td>
                                              <td><font size="2" color="Black" face="Courier New"><b><%out.print(sans);%></b></td>
                                              <td><font size="2" color="Black" face="Courier New"><b><%out.print(compp);%></b></td>
                                              <td><font size="2" color="Black" face="Courier New"><b><%out.print(compt);%></b></td>
                                              <td><font size="2" color="Black" face="Courier New"><b><%out.print(max);%></b></td>
                                              <td><font size="2" color="Black" face="Courier New"><b><%out.print(per);%></b></td>
                                               <td><a href="print.jsp?name=<%out.print(name);%>&class=<%out.print(cl);%>&term=II&fat=<%out.print(fat);%>"><button class="btn btn-success"><font size="2" face="Courier New"><b>HALF_YEARLY</b></font></button></a></td>
                                            </tr>
                                            <%
                                        }

                                        //term3 marks
                                        //half_yearly marks of that student
                                        res2 = stmt2.executeQuery("select * from marks_T3 where CLASS = 'V' and NAME="+fet+" and father='"+fat+"'");
                                        while(res2.next())
                                        {
                                              int hindi = res2.getInt(3);
                                          int eng = res2.getInt(4);
                                          int maths = res2.getInt(5);
                                          int gk = res2.getInt(6);
                                          int hwd = res2.getInt(7);
                                              int ewd = res2.getInt(8);
                                              int draw = res2.getInt(9);
                                              int handi = res2.getInt(10);
                                              int dance = res2.getInt(11);
                                              int sci = res2.getInt(12);
                                              int scip = res2.getInt(13);
                                              int social = res2.getInt(14);
                                              int hist = res2.getInt(15);
                                              int geo = res2.getInt(16);
                                              int civics = res2.getInt(17);
                                              int home = res2.getInt(18);
                                              int sans = res2.getInt(19);
                                              int compt = res2.getInt(20);
                                              int compp = res2.getInt(21);
                                          int tot = eng + hindi + maths + gk + draw+handi+dance+hwd+ewd+social+sci+scip+sans+compp+compt;
                                          double max = 1050;
                                          double per = ((double)tot/max)*100;
                                          per = Math.round(per* 100.0) / 100.0;
                                          %>
                                            <tr>
                                              <td><font size="2" color="Black" face="Courier New">TERM_3</td>
                                              <td><font size="2" color="Black" face="Courier New"><b><%out.print(eng);%></b></td>
                                              <td><font size="2" color="Black" face="Courier New"><b><%out.print(hindi);%></b></td>
                                              <td><font size="2" color="Black" face="Courier New"><b><%out.print(maths);%></b></td>
                                              <td><font size="2" color="Black" face="Courier New"><b><%out.print(gk);%></b></td>
                                              <td><font size="2" color="Black" face="Courier New"><b><%out.print(draw);%></b></td>
                                              <td><font size="2" color="Black" face="Courier New"><b><%out.print(dance);%></b></td>
                                              <td><font size="2" color="Black" face="Courier New"><b><%out.print(handi);%></b></td>
                                                 <td><font size="2" color="Black" face="Courier New"><b><%out.print(hwd);%></b></td> 
                                              <td><font size="2" color="Black" face="Courier New"><b><%out.print(ewd);%></b></td> 
                                              <td><font size="2" color="Black" face="Courier New"><b><%out.print(social);%></b></td>
                                                <td><font size="2" color="Black" face="Courier New"><b><%out.print(sci);%></b></td>
                                                <td><font size="2" color="Black" face="Courier New"><b><%out.print(scip);%></b></td>
                                              <td><font size="2" color="Black" face="Courier New"><b><%out.print(sans);%></b></td>
                                              <td><font size="2" color="Black" face="Courier New"><b><%out.print(compp);%></b></td>
                                              <td><font size="2" color="Black" face="Courier New"><b><%out.print(compt);%></b></td>
                                              <td><font size="2" color="Black" face="Courier New"><b><%out.print(max);%></b></td>
                                              <td><font size="2" color="Black" face="Courier New"><b><%out.print(per);%></b></td>
                                               <td><a href="print.jsp?name=<%out.print(name);%>&class=<%out.print(cl);%>&term=III&fat=<%out.print(fat);%>"><button class="btn btn-success"><font size="2" face="Courier New"><b>TERM_3</b></font></button></a></td>
                                            </tr>
                                            <%
                                        }

                                        //END_TERM marks of that student
                                        res2 = stmt2.executeQuery("select * from marks_END where CLASS = 'V' and NAME="+fet+" and father='"+fat+"'");
                                        while(res2.next())
                                        {
                                              int hindi = res2.getInt(3);
                                          int eng = res2.getInt(4);
                                          int maths = res2.getInt(5);
                                          int gk = res2.getInt(6);
                                          int hwd = res2.getInt(7);
                                              int ewd = res2.getInt(8);
                                              int draw = res2.getInt(9);
                                              int handi = res2.getInt(10);
                                              int dance = res2.getInt(11);
                                              int sci = res2.getInt(12);
                                              int scip = res2.getInt(13);
                                              int social = res2.getInt(14);
                                              int hist = res2.getInt(15);
                                              int geo = res2.getInt(16);
                                              int civics = res2.getInt(17);
                                              int home = res2.getInt(18);
                                              int sans = res2.getInt(19);
                                              int compt = res2.getInt(20);
                                              int compp = res2.getInt(21);
                                          int tot = eng + hindi + maths + gk + draw+handi+dance+hwd+ewd+social+sci+scip+sans+compp+compt;
                                          double max = 1050;
                                          double per = ((double)tot/max)*100;
                                          per = Math.round(per* 100.0) / 100.0;
                                          %>
                                            <tr>
                                              <td><font size="2" color="Black" face="Courier New">END_TERM</td>
                                              <td><font size="2" color="Black" face="Courier New"><b><%out.print(eng);%></b></td>
                                              <td><font size="2" color="Black" face="Courier New"><b><%out.print(hindi);%></b></td>
                                              <td><font size="2" color="Black" face="Courier New"><b><%out.print(maths);%></b></td>
                                              <td><font size="2" color="Black" face="Courier New"><b><%out.print(gk);%></b></td>
                                              <td><font size="2" color="Black" face="Courier New"><b><%out.print(draw);%></b></td>
                                              <td><font size="2" color="Black" face="Courier New"><b><%out.print(dance);%></b></td>
                                              <td><font size="2" color="Black" face="Courier New"><b><%out.print(handi);%></b></td>
                                                <td><font size="2" color="Black" face="Courier New"><b><%out.print(hwd);%></b></td> 
                                              <td><font size="2" color="Black" face="Courier New"><b><%out.print(ewd);%></b></td>
                                                <td><font size="2" color="Black" face="Courier New"><b><%out.print(social);%></b></td>
                                                <td><font size="2" color="Black" face="Courier New"><b><%out.print(sci);%></b></td>
                                                <td><font size="2" color="Black" face="Courier New"><b><%out.print(scip);%></b></td>
                                              <td><font size="2" color="Black" face="Courier New"><b><%out.print(sans);%></b></td>
                                              <td><font size="2" color="Black" face="Courier New"><b><%out.print(compp);%></b></td>
                                              <td><font size="2" color="Black" face="Courier New"><b><%out.print(compt);%></b></td>
                                                <td><font size="2" color="Black" face="Courier New"><b><%out.print(max);%></b></td>
                                              <td><font size="2" color="Black" face="Courier New"><b><%out.print(per);%></b></td>
                                               <td><a href="print.jsp?name=<%out.print(name);%>&class=<%out.print(cl);%>&term=IV&fat=<%out.print(fat);%>"><button class="btn btn-success"><font size="2" face="Courier New"><b>END_TERM</b></font></button></a></td>
                                            </tr>
                                            <%
                                        }
                                        %></table></font><%

                                        mod++;
                                      %>
                                      </center>

              </div>
            </center>
          </h4></div></div></div>

          </td>
          <td><font size="2" face="courier new"><b><%out.print(fat.toUpperCase());%></b></font></td>
          <td><font size="2" face="courier new"><b><%out.print(mom.toUpperCase());%></b></font></td>
          </tr><%
          
        }
        %>
        
        </table>
      </div>

      <div id ="c6" style="display:none;">
        <%
        res = stmt.executeQuery("select * from student where class='VI'");
         c = 1;
        %>
        <font size="5" face="courier new"><b>CLASS VI</b></font><br><br>
        <table class = "table table-striped table-bordered table-responsive w-auto" width="20%">
        <tr class="active">
          <th><font size="2" face="courier new">SNO</font></th>
         
          <th><font size="2" face="courier new">NAME</font></th>
          <th><font size="2" face="courier new">FATHER'S NAME</font></th>
          <th><font size="2" face="courier new">MOTHER'S NAME</font></th>
        </tr>
        
        <%
        mod = 100;
        while(res.next())
        {
        
           
                         String mod_id = "#"+"myModal"+mod;
                         String mod_id2 = "myModal"+mod;
                                    
          int roll = res.getInt(6);
          
          String name = res.getString(2);

          String fat = res.getString(3);
          String mom = res.getString(4);
          String dob = res.getString(9);
          String cl = res.getString(5);
          String phone = res.getString(11);
          String aadhar = res.getString(10);
          String addr = res.getString(8);
          String img  = res.getString(12);
          img = "'"+img+"'";
          %>

          <tr>
          <td><font size="2" face="courier new"><b><%out.print(c++);%></b></td>
         
          <td>

            <!--MODAL ON EACH NAME-->
            <button type="button" class="btn btn-outline-success btn-sm" data-toggle="modal" data-target="<%out.print(mod_id);%>">
                            <font size="2" color="Black" face="Courier New"><b>
                                          <%out.print(name);%>
                                                
                           </b></font>
                        </button>

                         <div id="<%out.print(mod_id2);%>" class="modal fade" role="dialog">
                                <div class="modal-dialog">

                                     <!-- Modal content-->
                                     <div class="modal-content">
                                     <div class="modal-header">
                                     <button type="button" class="close" data-dismiss="modal">&times;</button>
                                     <h4 class="modal-title">
                                     <center><font size="4" color="White" face="Courier New"><b>WELCOME<br><%out.print(name);%></b></font><br>
                                     </h4>
                                     </div>
                                     <!---MODAL BODY-->
                                     <div class="modal-body">
                                      <table class="w3-table" border-width="0">
                                        <tr>
                                       
                                       <th><font size="3" color="Black" face="Courier New">NAME<br></th>
                                        <th><font size="3" color="Black" face="Courier New"><b><%out.print(name);%></font></b></th>
                                      </tr>
                                      <div id = "img9">
                                          <img src=<%out.print(img);%>/>
                                        </div>
                                         <tr>
                                        
                                      <th><font size="3" color="Black" face="Courier New">FATHER'S NAME</font></b><br></th> 
                                       
                                       <th><font size="3" color="Black" face="Courier New"><b><%out.print(fat.toUpperCase());%></b></font></th>
                                     </tr>
                                        
                                        
                                      <tr>
                                      <th><font size="3" color="Black" face="Courier New">MOTHER'S NAME</font><br></th>
                                      <th><font size="3" color="Black" face="Courier New"><b><%out.print(mom.toUpperCase());%></b></font></th>
                                      </tr>
                                       
                                        
                                       <tr>
                                        <th><font size="3" color="Black" face="Courier New">DATE OF BIRTH</font><br></th>
                                        <th><font size="3" color="Black" face="Courier New"><b><%out.print(dob);%></b></font></th>
                                      </tr>
                                        
                                        <tr>
                                        <th><font size="3" color="Black" face="Courier New">CLASS</font></b><br></th>
                                        <th><font size="3" color="Black" face="Courier New"><b><%out.print(cl);%></b></font></th>
                                        </tr>

                                        <tr>
                                        
                                        <th><font size="3" color="Black" face="Courier New">PHONE</font><br></th>   
                                        <th><font size="3" color="Black" face="Courier New"><b><%out.print(phone);%></b></font></th>
                                      </tr>

                                         <tr>
                                        
                                        <th><font size="3" color="Black" face="Courier New">AADHAR NO</font></b><br></th>
                                        <th><font size="3" color="Black" face="Courier New"><b><%out.print(aadhar);%></b></font></th>
                                      </tr>

                                        <tr>
                                        
                                      <th><font size="3" color="Black" face="Courier New">ADDRESS</font></th>
                                      <th><font size="3" color="Black" face="Courier New"><b><%out.print(addr);%></b></font></th>
                                      </tr>
                                      
                                      <tr>
                                         <th><a href="printf.jsp?name=<%out.print(name);%>&father=<%out.print(fat);%>&class=<%out.print(cl);%>"><button class="btn btn-success"><font size='2' face='courier new'>FEE<br>DETAILS</font></button></a></th>
                                       </tr>
                                       
                                      </table>
                                        <center>
                                          <font size="5" color="Black" face="Courier New"><b>MARKS OVERVIEW</b></font>
                                      

                                                                                  <!--FETCHING MARKS-->
                                            <div id="scroll">
                                           <table class="table table-striped table-bordered" style="overflow:scroll;">
                                            <tr>
                                              <th><font size="2" color="Black" face="Courier New"><b>EXAM_No.</b></font></th>
                                              <th><font size="2" color="Black" face="Courier New"><b>ENGLISH<br>(100)</b></font></th>
                                              <th><font size="2" color="Black" face="Courier New"><b>HINDI<br>(100)</b></font></th>
                                              <th><font size="2" color="Black" face="Courier New"><b>MATHS<br>(100)</b></font></th>
                                              <th><font size="2" color="Black" face="Courier New"><b>GK<br>(100)</b></font></th>
                                              <th><font size="2" color="Black" face="Courier New"><b>DRAWING<br>(50)</b></font></th>
                                              <th><font size="2" color="Black" face="Courier New"><b>DANCE<br>MUSIC<br>(50)</b></font></th>
                                              <th><font size="2" color="Black" face="Courier New"><b>HANDICRAFT<br>(50)</b></font></th>
                                              <th><font size="2" color="Black" face="Courier New"><b>H.W.D.<br>(50)</b></font></th>
                                              <th><font size="2" color="Black" face="Courier New"><b>E.W.D.<br>(50)</b></font></th>
                                              <th><font size="2" color="Black" face="Courier New"><b>SOCIAL<br>SCIENCE<br>(100)</b></font></th>
                                              <th><font size="2" color="Black" face="Courier New"><b>SCIENCE<br>(90)</b></font></th>
                                              <th><font size="2" color="Black" face="Courier New"><b>SCIENCE<br>PRAC.<br>(10)</b></font></th>
                                              <th><font size="2" color="Black" face="Courier New"><b>SANSKRIT<br>(100)</b></font></th>
                                              <th><font size="2" color="Black" face="Courier New"><b>COMPUTER<br>PRAC.<br>(50)</b></font></th>
                                              <th><font size="2" color="Black" face="Courier New"><b>COMPUTER<br>THEORY<br>(50)</b></font></th>
                                              <th><font size="2" color="Black" face="Courier New"><b>MAX_MARKS</b></font></th>
                                              <th><font size="2" color="Black" face="Courier New"><b>PERCENTAGE</b></font></th>
                                               <th><font size='2' face='courier new'>PRINT</font></th>
                                                
                                            </tr>

                                      <%
                                        String fet = "'"+name+"'";

                                        //term 1 marks of that student
                                        res2 = stmt2.executeQuery("select * from marksT1 where CLASS = 'VI' and NAME="+fet+" and father='"+fat+"'");
                                        while(res2.next())
                                        {
                                          int hindi = res2.getInt(3);
                                          int eng = res2.getInt(4);
                                          int maths = res2.getInt(5);
                                          int gk = res2.getInt(6);
                                          int hwd = res2.getInt(7);
                                              int ewd = res2.getInt(8);
                                              int draw = res2.getInt(9);
                                              int handi = res2.getInt(10);
                                              int dance = res2.getInt(11);
                                              int sci = res2.getInt(12);
                                              int scip = res2.getInt(13);
                                              int social = res2.getInt(14);
                                              int hist = res2.getInt(15);
                                              int geo = res2.getInt(16);
                                              int civics = res2.getInt(17);
                                              int home = res2.getInt(18);
                                              int sans = res2.getInt(19);
                                              int compt = res2.getInt(20);
                                              int compp = res2.getInt(21);
                                          int tot = eng + hindi + maths + gk + draw+handi+dance+hwd+ewd+social+sci+scip+sans+compp+compt;
                                          double max = 1050;
                                          double per = ((double)tot/max)*100;
                                          per = Math.round(per* 100.0) / 100.0;
                                          %>
                                         
                                            <tr>
                                              <td><font size="2" color="Black" face="Courier New">TERM_1</td>
                                              <td><font size="2" color="Black" face="Courier New"><b><%out.print(eng);%></b></td>
                                              <td><font size="2" color="Black" face="Courier New"><b><%out.print(hindi);%></b></td>
                                              <td><font size="2" color="Black" face="Courier New"><b><%out.print(maths);%></b></td>
                                              <td><font size="2" color="Black" face="Courier New"><b><%out.print(gk);%></b></td>
                                              <td><font size="2" color="Black" face="Courier New"><b><%out.print(draw);%></b></td>
                                              <td><font size="2" color="Black" face="Courier New"><b><%out.print(dance);%></b></td>
                                              <td><font size="2" color="Black" face="Courier New"><b><%out.print(handi);%></b></td>
                                               <td><font size="2" color="Black" face="Courier New"><b><%out.print(hwd);%></b></td> 
                                               <td><font size="2" color="Black" face="Courier New"><b><%out.print(ewd);%></b></td> 
                                               <td><font size="2" color="Black" face="Courier New"><b><%out.print(social);%></b></td>
                                                <td><font size="2" color="Black" face="Courier New"><b><%out.print(sci);%></b></td>
                                                <td><font size="2" color="Black" face="Courier New"><b><%out.print(scip);%></b></td>
                                              <td><font size="2" color="Black" face="Courier New"><b><%out.print(sans);%></b></td>
                                                <td><font size="2" color="Black" face="Courier New"><b><%out.print(compp);%></b></td>
                                              <td><font size="2" color="Black" face="Courier New"><b><%out.print(compt);%></b></td>
                                              <td><font size="2" color="Black" face="Courier New"><b><%out.print(max);%></b></td>
                                              <td><font size="2" color="Black" face="Courier New"><b><%out.print(per);%></b></td>
                                              <td><a href="print.jsp?name=<%out.print(name);%>&class=<%out.print(cl);%>&term=I&fat=<%out.print(fat);%>"><button class="btn btn-success"><font size="2" face="Courier New"><b>TERM_1</b></font></button></a></td>
                                            </tr>
                                            <%
                                        }

                                        //half_yearly marks of that student
                                        res2 = stmt2.executeQuery("select * from marks_HALF where CLASS = 'VI' and NAME="+fet+" and father='"+fat+"'");
                                        while(res2.next())
                                        {
                                              int hindi = res2.getInt(3);
                                          int eng = res2.getInt(4);
                                          int maths = res2.getInt(5);
                                          int gk = res2.getInt(6);
                                          int hwd = res2.getInt(7);
                                              int ewd = res2.getInt(8);
                                              int draw = res2.getInt(9);
                                              int handi = res2.getInt(10);
                                              int dance = res2.getInt(11);
                                              int sci = res2.getInt(12);
                                              int scip = res2.getInt(13);
                                              int social = res2.getInt(14);
                                              int hist = res2.getInt(15);
                                              int geo = res2.getInt(16);
                                              int civics = res2.getInt(17);
                                              int home = res2.getInt(18);
                                              int sans = res2.getInt(19);
                                              int compt = res2.getInt(20);
                                              int compp = res2.getInt(21);
                                          int tot = eng + hindi + maths + gk + draw+handi+dance+hwd+ewd+social+sci+scip+sans+compp+compt;
                                          double max = 1050;
                                          double per = ((double)tot/max)*100;
                                          per = Math.round(per* 100.0) / 100.0;
                                          %>
                                            <tr>
                                              <td><font size="2" color="Black" face="Courier New">HALF_YEARLY</td>
                                              <td><font size="2" color="Black" face="Courier New"><b><%out.print(eng);%></b></td>
                                              <td><font size="2" color="Black" face="Courier New"><b><%out.print(hindi);%></b></td>
                                              <td><font size="2" color="Black" face="Courier New"><b><%out.print(maths);%></b></td>
                                              <td><font size="2" color="Black" face="Courier New"><b><%out.print(gk);%></b></td>
                                              <td><font size="2" color="Black" face="Courier New"><b><%out.print(draw);%></b></td>
                                              <td><font size="2" color="Black" face="Courier New"><b><%out.print(dance);%></b></td>
                                              <td><font size="2" color="Black" face="Courier New"><b><%out.print(handi);%></b></td>
                                              <td><font size="2" color="Black" face="Courier New"><b><%out.print(hwd);%></b></td> 
                                              <td><font size="2" color="Black" face="Courier New"><b><%out.print(ewd);%></b></td> 
                                               <td><font size="2" color="Black" face="Courier New"><b><%out.print(social);%></b></td>
                                                <td><font size="2" color="Black" face="Courier New"><b><%out.print(sci);%></b></td>
                                                <td><font size="2" color="Black" face="Courier New"><b><%out.print(scip);%></b></td>
                                              <td><font size="2" color="Black" face="Courier New"><b><%out.print(sans);%></b></td>
                                              <td><font size="2" color="Black" face="Courier New"><b><%out.print(compp);%></b></td>
                                              <td><font size="2" color="Black" face="Courier New"><b><%out.print(compt);%></b></td>
                                              <td><font size="2" color="Black" face="Courier New"><b><%out.print(max);%></b></td>
                                              <td><font size="2" color="Black" face="Courier New"><b><%out.print(per);%></b></td>
                                              <td><a href="print.jsp?name=<%out.print(name);%>&class=<%out.print(cl);%>&term=II&fat=<%out.print(fat);%>"><button class="btn btn-success"><font size="2" face="Courier New"><b>HALF_YEALRY</b></font></button></a></td>
                                            </tr>
                                            <%
                                        }

                                        //term3 marks
                                        //half_yearly marks of that student
                                        res2 = stmt2.executeQuery("select * from marks_T3 where CLASS = 'VI' and NAME="+fet+" and father='"+fat+"'");
                                        while(res2.next())
                                        {
                                              int hindi = res2.getInt(3);
                                          int eng = res2.getInt(4);
                                          int maths = res2.getInt(5);
                                          int gk = res2.getInt(6);
                                          int hwd = res2.getInt(7);
                                              int ewd = res2.getInt(8);
                                              int draw = res2.getInt(9);
                                              int handi = res2.getInt(10);
                                              int dance = res2.getInt(11);
                                              int sci = res2.getInt(12);
                                              int scip = res2.getInt(13);
                                              int social = res2.getInt(14);
                                              int hist = res2.getInt(15);
                                              int geo = res2.getInt(16);
                                              int civics = res2.getInt(17);
                                              int home = res2.getInt(18);
                                              int sans = res2.getInt(19);
                                              int compt = res2.getInt(20);
                                              int compp = res2.getInt(21);
                                          int tot = eng + hindi + maths + gk + draw+handi+dance+hwd+ewd+social+sci+scip+sans+compp+compt;
                                          double max = 1050;
                                          double per = ((double)tot/max)*100;
                                          per = Math.round(per* 100.0) / 100.0;
                                          %>
                                            <tr>
                                              <td><font size="2" color="Black" face="Courier New">TERM_3</td>
                                              <td><font size="2" color="Black" face="Courier New"><b><%out.print(eng);%></b></td>
                                              <td><font size="2" color="Black" face="Courier New"><b><%out.print(hindi);%></b></td>
                                              <td><font size="2" color="Black" face="Courier New"><b><%out.print(maths);%></b></td>
                                              <td><font size="2" color="Black" face="Courier New"><b><%out.print(gk);%></b></td>
                                              <td><font size="2" color="Black" face="Courier New"><b><%out.print(draw);%></b></td>
                                              <td><font size="2" color="Black" face="Courier New"><b><%out.print(dance);%></b></td>
                                              <td><font size="2" color="Black" face="Courier New"><b><%out.print(handi);%></b></td>
                                                 <td><font size="2" color="Black" face="Courier New"><b><%out.print(hwd);%></b></td> 
                                              <td><font size="2" color="Black" face="Courier New"><b><%out.print(ewd);%></b></td> 
                                              <td><font size="2" color="Black" face="Courier New"><b><%out.print(social);%></b></td>
                                                <td><font size="2" color="Black" face="Courier New"><b><%out.print(sci);%></b></td>
                                                <td><font size="2" color="Black" face="Courier New"><b><%out.print(scip);%></b></td>
                                              <td><font size="2" color="Black" face="Courier New"><b><%out.print(sans);%></b></td>
                                              <td><font size="2" color="Black" face="Courier New"><b><%out.print(compp);%></b></td>
                                              <td><font size="2" color="Black" face="Courier New"><b><%out.print(compt);%></b></td>
                                              <td><font size="2" color="Black" face="Courier New"><b><%out.print(max);%></b></td>
                                              <td><font size="2" color="Black" face="Courier New"><b><%out.print(per);%></b></td>
                                              <td><a href="print.jsp?name=<%out.print(name);%>&class=<%out.print(cl);%>&term=III&fat=<%out.print(fat);%>"><button class="btn btn-success"><font size="2" face="Courier New"><b>TERM_3</b></font></button></a></td>
                                            </tr>
                                            <%
                                        }

                                        //END_TERM marks of that student
                                        res2 = stmt2.executeQuery("select * from marks_END where CLASS = 'VI' and NAME="+fet+" and father='"+fat+"'");
                                        while(res2.next())
                                        {
                                              int hindi = res2.getInt(3);
                                          int eng = res2.getInt(4);
                                          int maths = res2.getInt(5);
                                          int gk = res2.getInt(6);
                                          int hwd = res2.getInt(7);
                                              int ewd = res2.getInt(8);
                                              int draw = res2.getInt(9);
                                              int handi = res2.getInt(10);
                                              int dance = res2.getInt(11);
                                              int sci = res2.getInt(12);
                                              int scip = res2.getInt(13);
                                              int social = res2.getInt(14);
                                              int hist = res2.getInt(15);
                                              int geo = res2.getInt(16);
                                              int civics = res2.getInt(17);
                                              int home = res2.getInt(18);
                                              int sans = res2.getInt(19);
                                              int compt = res2.getInt(20);
                                              int compp = res2.getInt(21);
                                          int tot = eng + hindi + maths + gk + draw+handi+dance+hwd+ewd+social+sci+scip+sans+compp+compt;
                                          double max = 1050;
                                          double per = ((double)tot/max)*100;
                                          per = Math.round(per* 100.0) / 100.0;
                                          %>
                                            <tr>
                                              <td><font size="2" color="Black" face="Courier New">END_TERM</td>
                                              <td><font size="2" color="Black" face="Courier New"><b><%out.print(eng);%></b></td>
                                              <td><font size="2" color="Black" face="Courier New"><b><%out.print(hindi);%></b></td>
                                              <td><font size="2" color="Black" face="Courier New"><b><%out.print(maths);%></b></td>
                                              <td><font size="2" color="Black" face="Courier New"><b><%out.print(gk);%></b></td>
                                              <td><font size="2" color="Black" face="Courier New"><b><%out.print(draw);%></b></td>
                                              <td><font size="2" color="Black" face="Courier New"><b><%out.print(dance);%></b></td>
                                              <td><font size="2" color="Black" face="Courier New"><b><%out.print(handi);%></b></td>
                                                <td><font size="2" color="Black" face="Courier New"><b><%out.print(hwd);%></b></td> 
                                              <td><font size="2" color="Black" face="Courier New"><b><%out.print(ewd);%></b></td>
                                                <td><font size="2" color="Black" face="Courier New"><b><%out.print(social);%></b></td>
                                                <td><font size="2" color="Black" face="Courier New"><b><%out.print(sci);%></b></td>
                                                <td><font size="2" color="Black" face="Courier New"><b><%out.print(scip);%></b></td>
                                              <td><font size="2" color="Black" face="Courier New"><b><%out.print(sans);%></b></td>
                                              <td><font size="2" color="Black" face="Courier New"><b><%out.print(compp);%></b></td>
                                              <td><font size="2" color="Black" face="Courier New"><b><%out.print(compt);%></b></td>
                                                <td><font size="2" color="Black" face="Courier New"><b><%out.print(max);%></b></td>
                                              <td><font size="2" color="Black" face="Courier New"><b><%out.print(per);%></b></td>
                                              <td><a href="print.jsp?name=<%out.print(name);%>&class=<%out.print(cl);%>&term=IV&fat=<%out.print(fat);%>"><button class="btn btn-success"><font size="2" face="Courier New"><b>END_TERM</b></font></button></a></td>
                                            </tr>
                                            <%
                                        }
                                        %></table></font><%

                                        mod++;
                                      %>
                                      </center>

              </div>
            </center>
          </h4></div></div></div>

          </td>
          <td><font size="2" face="courier new"><b><%out.print(fat.toUpperCase());%></b></font></td>
          <td><font size="2" face="courier new"><b><%out.print(mom.toUpperCase());%></b></font></td>
          </tr><%
          
        }
        %>
        
        </table>
      </div>

      <div id ="c7" style="display:none;">
        <%
        res = stmt.executeQuery("select * from student where class='VII'");
         c = 1;
        %>
        <font size="5" face="courier new"><b>CLASS VII</b></font><br><br>
        <table class = "table table-striped table-bordered table-responsive w-auto" width="20%">
        <tr class="active">
          <th><font size="2" face="courier new">SNO</font></th>
          
          <th><font size="2" face="courier new">NAME</font></th>
          <th><font size="2" face="courier new">FATHER'S NAME</font></th>
          <th><font size="2" face="courier new">MOTHER'S NAME</font></th>
        </tr>
        
        <%
        mod = 120;
        while(res.next())
        {
        
           
                         String mod_id = "#"+"myModal"+mod;
                         String mod_id2 = "myModal"+mod;
                                    
          int roll = res.getInt(6);
          
          String name = res.getString(2);

          String fat = res.getString(3);
          String mom = res.getString(4);
          String dob = res.getString(9);
          String cl = res.getString(5);
          String phone = res.getString(11);
          String aadhar = res.getString(10);
          String addr = res.getString(8);
          String img  = res.getString(12);
          img = "'"+img+"'";
          %>

          <tr>
          <td><font size="2" face="courier new"><b><%out.print(c++);%></b></td>
         
          <td>

            <!--MODAL ON EACH NAME-->
            <button type="button" class="btn btn-outline-success btn-sm" data-toggle="modal" data-target="<%out.print(mod_id);%>">
                            <font size="2" color="Black" face="Courier New"><b>
                                          <%out.print(name);%>
                                                
                           </b></font>
                        </button>

                         <div id="<%out.print(mod_id2);%>" class="modal fade" role="dialog">
                                <div class="modal-dialog">

                                     <!-- Modal content-->
                                     <div class="modal-content">
                                     <div class="modal-header">
                                     <button type="button" class="close" data-dismiss="modal">&times;</button>
                                     <h4 class="modal-title">
                                     <center><font size="4" color="White" face="Courier New"><b>WELCOME<br><%out.print(name);%></b></font><br>
                                     </h4>
                                     </div>
                                     <!---MODAL BODY-->
                                     <div class="modal-body">
                                      <table class="w3-table" border-width="0">
                                        <tr>
                                       
                                       <th><font size="3" color="Black" face="Courier New">NAME<br></th>
                                        <th><font size="3" color="Black" face="Courier New"><b><%out.print(name);%></font></b></th>
                                      </tr>
                                      <div id = "img9">
                                          <img src=<%out.print(img);%>/>
                                        </div>
                                         <tr>
                                        
                                      <th><font size="3" color="Black" face="Courier New">FATHER'S NAME</font></b><br></th> 
                                       
                                       <th><font size="3" color="Black" face="Courier New"><b><%out.print(fat.toUpperCase());%></b></font></th>
                                     </tr>
                                        
                                        
                                      <tr>
                                      <th><font size="3" color="Black" face="Courier New">MOTHER'S NAME</font><br></th>
                                      <th><font size="3" color="Black" face="Courier New"><b><%out.print(mom.toUpperCase());%></b></font></th>
                                      </tr>
                                       
                                        
                                       <tr>
                                        <th><font size="3" color="Black" face="Courier New">DATE OF BIRTH</font><br></th>
                                        <th><font size="3" color="Black" face="Courier New"><b><%out.print(dob);%></b></font></th>
                                      </tr>
                                        
                                        <tr>
                                        <th><font size="3" color="Black" face="Courier New">CLASS</font></b><br></th>
                                        <th><font size="3" color="Black" face="Courier New"><b><%out.print(cl);%></b></font></th>
                                        </tr>

                                        <tr>
                                        
                                        <th><font size="3" color="Black" face="Courier New">PHONE</font><br></th>   
                                        <th><font size="3" color="Black" face="Courier New"><b><%out.print(phone);%></b></font></th>
                                      </tr>

                                         <tr>
                                        
                                        <th><font size="3" color="Black" face="Courier New">AADHAR NO</font></b><br></th>
                                        <th><font size="3" color="Black" face="Courier New"><b><%out.print(aadhar);%></b></font></th>
                                      </tr>

                                        <tr>
                                        
                                      <th><font size="3" color="Black" face="Courier New">ADDRESS</font></th>
                                      <th><font size="3" color="Black" face="Courier New"><b><%out.print(addr);%></b></font></th>
                                      </tr>
                                      
                                      <tr>
                                         <th><a href="printf.jsp?name=<%out.print(name);%>&father=<%out.print(fat);%>&class=<%out.print(cl);%>"><button class="btn btn-success"><font size='2' face='courier new'>FEE<br>DETAILS</font></button></a></th>
                                       </tr>

                                       
                                      </table>
                                        <center>
                                          <font size="5" color="Black" face="Courier New"><b>MARKS OVERVIEW</b></font>
                                      

                                                                                  <!--FETCHING MARKS-->
                                            <div id="scroll">
                                           <table class="table table-striped table-bordered" style="overflow:scroll;">
                                            <tr>
                                              <th><font size="2" color="Black" face="Courier New"><b>EXAM_No.</b></font></th>
                                              <th><font size="2" color="Black" face="Courier New"><b>ENGLISH<br>(100)</b></font></th>
                                              <th><font size="2" color="Black" face="Courier New"><b>HINDI<br>(100)</b></font></th>
                                              <th><font size="2" color="Black" face="Courier New"><b>MATHS<br>(100)</b></font></th>
                                              <th><font size="2" color="Black" face="Courier New"><b>GK<br>(100)</b></font></th>
                                              <th><font size="2" color="Black" face="Courier New"><b>DRAWING<br>(50)</b></font></th>
                                              <th><font size="2" color="Black" face="Courier New"><b>DANCE<br>MUSIC<br>(50)</b></font></th>
                                              <th><font size="2" color="Black" face="Courier New"><b>HANDICRAFT<br>(50)</b></font></th>
                                              <th><font size="2" color="Black" face="Courier New"><b>H.W.D.<br>(50)</b></font></th>
                                              <th><font size="2" color="Black" face="Courier New"><b>E.W.D.<br>(50)</b></font></th>
                                              <th><font size="2" color="Black" face="Courier New"><b>SOCIAL<br>SCIENCE<br>(100)</b></font></th>
                                              <th><font size="2" color="Black" face="Courier New"><b>SCIENCE<br>(90)</b></font></th>
                                              <th><font size="2" color="Black" face="Courier New"><b>SCIENCE<br>PRAC.<br>(10)</b></font></th>
                                              <th><font size="2" color="Black" face="Courier New"><b>SANSKRIT<br>(100)</b></font></th>
                                              <th><font size="2" color="Black" face="Courier New"><b>COMPUTER<br>PRAC.<br>(50)</b></font></th>
                                              <th><font size="2" color="Black" face="Courier New"><b>COMPUTER<br>THEORY<br>(50)</b></font></th>
                                              <th><font size="2" color="Black" face="Courier New"><b>MAX_MARKS</b></font></th>
                                              <th><font size="2" color="Black" face="Courier New"><b>PERCENTAGE</b></font></th>
                                              <th><font size='2' face='courier new'>PRINT</font></th>
                                              
                                            </tr>

                                      <%
                                        String fet = "'"+name+"'";

                                        //term 1 marks of that student
                                        res2 = stmt2.executeQuery("select * from marksT1 where CLASS = 'VII' and NAME="+fet+" and father='"+fat+"'");
                                        while(res2.next())
                                        {
                                          int hindi = res2.getInt(3);
                                          int eng = res2.getInt(4);
                                          int maths = res2.getInt(5);
                                          int gk = res2.getInt(6);
                                          int hwd = res2.getInt(7);
                                              int ewd = res2.getInt(8);
                                              int draw = res2.getInt(9);
                                              int handi = res2.getInt(10);
                                              int dance = res2.getInt(11);
                                              int sci = res2.getInt(12);
                                              int scip = res2.getInt(13);
                                              int social = res2.getInt(14);
                                              int hist = res2.getInt(15);
                                              int geo = res2.getInt(16);
                                              int civics = res2.getInt(17);
                                              int home = res2.getInt(18);
                                              int sans = res2.getInt(19);
                                              int compt = res2.getInt(20);
                                              int compp = res2.getInt(21);
                                          int tot = eng + hindi + maths + gk + draw+handi+dance+hwd+ewd+social+sci+scip+sans+compp+compt;
                                          double max = 1050;
                                          double per = ((double)tot/max)*100;
                                          per = Math.round(per* 100.0) / 100.0;
                                          %>
                                         
                                            <tr>
                                              <td><font size="2" color="Black" face="Courier New">TERM_1</td>
                                              <td><font size="2" color="Black" face="Courier New"><b><%out.print(eng);%></b></td>
                                              <td><font size="2" color="Black" face="Courier New"><b><%out.print(hindi);%></b></td>
                                              <td><font size="2" color="Black" face="Courier New"><b><%out.print(maths);%></b></td>
                                              <td><font size="2" color="Black" face="Courier New"><b><%out.print(gk);%></b></td>
                                              <td><font size="2" color="Black" face="Courier New"><b><%out.print(draw);%></b></td>
                                              <td><font size="2" color="Black" face="Courier New"><b><%out.print(dance);%></b></td>
                                              <td><font size="2" color="Black" face="Courier New"><b><%out.print(handi);%></b></td>
                                               <td><font size="2" color="Black" face="Courier New"><b><%out.print(hwd);%></b></td> 
                                               <td><font size="2" color="Black" face="Courier New"><b><%out.print(ewd);%></b></td> 
                                               <td><font size="2" color="Black" face="Courier New"><b><%out.print(social);%></b></td>
                                                <td><font size="2" color="Black" face="Courier New"><b><%out.print(sci);%></b></td>
                                                <td><font size="2" color="Black" face="Courier New"><b><%out.print(scip);%></b></td>
                                              <td><font size="2" color="Black" face="Courier New"><b><%out.print(sans);%></b></td>
                                                <td><font size="2" color="Black" face="Courier New"><b><%out.print(compp);%></b></td>
                                              <td><font size="2" color="Black" face="Courier New"><b><%out.print(compt);%></b></td>
                                              <td><font size="2" color="Black" face="Courier New"><b><%out.print(max);%></b></td>
                                              <td><font size="2" color="Black" face="Courier New"><b><%out.print(per);%></b></td>
                                              <td><a href="print.jsp?name=<%out.print(name);%>&class=<%out.print(cl);%>&term=I&fat=<%out.print(fat);%>"><button class="btn btn-success"><font size="2" face="Courier New"><b>TERM_1</b></font></button></a></td>
                                            </tr>
                                            <%
                                        }

                                        //half_yearly marks of that student
                                        res2 = stmt2.executeQuery("select * from marks_HALF where CLASS = 'VII' and NAME="+fet+" and father='"+fat+"'");
                                        while(res2.next())
                                        {
                                              int hindi = res2.getInt(3);
                                          int eng = res2.getInt(4);
                                          int maths = res2.getInt(5);
                                          int gk = res2.getInt(6);
                                          int hwd = res2.getInt(7);
                                              int ewd = res2.getInt(8);
                                              int draw = res2.getInt(9);
                                              int handi = res2.getInt(10);
                                              int dance = res2.getInt(11);
                                              int sci = res2.getInt(12);
                                              int scip = res2.getInt(13);
                                              int social = res2.getInt(14);
                                              int hist = res2.getInt(15);
                                              int geo = res2.getInt(16);
                                              int civics = res2.getInt(17);
                                              int home = res2.getInt(18);
                                              int sans = res2.getInt(19);
                                              int compt = res2.getInt(20);
                                              int compp = res2.getInt(21);
                                          int tot = eng + hindi + maths + gk + draw+handi+dance+hwd+ewd+social+sci+scip+sans+compp+compt;
                                          double max = 1050;
                                          double per = ((double)tot/max)*100;
                                          per = Math.round(per* 100.0) / 100.0;
                                          %>
                                            <tr>
                                              <td><font size="2" color="Black" face="Courier New">HALF_YEARLY</td>
                                              <td><font size="2" color="Black" face="Courier New"><b><%out.print(eng);%></b></td>
                                              <td><font size="2" color="Black" face="Courier New"><b><%out.print(hindi);%></b></td>
                                              <td><font size="2" color="Black" face="Courier New"><b><%out.print(maths);%></b></td>
                                              <td><font size="2" color="Black" face="Courier New"><b><%out.print(gk);%></b></td>
                                              <td><font size="2" color="Black" face="Courier New"><b><%out.print(draw);%></b></td>
                                              <td><font size="2" color="Black" face="Courier New"><b><%out.print(dance);%></b></td>
                                              <td><font size="2" color="Black" face="Courier New"><b><%out.print(handi);%></b></td>
                                              <td><font size="2" color="Black" face="Courier New"><b><%out.print(hwd);%></b></td> 
                                              <td><font size="2" color="Black" face="Courier New"><b><%out.print(ewd);%></b></td> 
                                               <td><font size="2" color="Black" face="Courier New"><b><%out.print(social);%></b></td>
                                                <td><font size="2" color="Black" face="Courier New"><b><%out.print(sci);%></b></td>
                                                <td><font size="2" color="Black" face="Courier New"><b><%out.print(scip);%></b></td>
                                              <td><font size="2" color="Black" face="Courier New"><b><%out.print(sans);%></b></td>
                                              <td><font size="2" color="Black" face="Courier New"><b><%out.print(compp);%></b></td>
                                              <td><font size="2" color="Black" face="Courier New"><b><%out.print(compt);%></b></td>
                                              <td><font size="2" color="Black" face="Courier New"><b><%out.print(max);%></b></td>
                                              <td><font size="2" color="Black" face="Courier New"><b><%out.print(per);%></b></td>
                                              <td><a href="print.jsp?name=<%out.print(name);%>&class=<%out.print(cl);%>&term=II&fat=<%out.print(fat);%>"><button class="btn btn-success"><font size="2" face="Courier New"><b>HALF-YEARLY</b></font></button></a></td>
                                            </tr>
                                            <%
                                        }

                                        //term3 marks
                                        //half_yearly marks of that student
                                        res2 = stmt2.executeQuery("select * from marks_T3 where CLASS = 'VII' and NAME="+fet+" and father='"+fat+"'");
                                        while(res2.next())
                                        {
                                              int hindi = res2.getInt(3);
                                          int eng = res2.getInt(4);
                                          int maths = res2.getInt(5);
                                          int gk = res2.getInt(6);
                                          int hwd = res2.getInt(7);
                                              int ewd = res2.getInt(8);
                                              int draw = res2.getInt(9);
                                              int handi = res2.getInt(10);
                                              int dance = res2.getInt(11);
                                              int sci = res2.getInt(12);
                                              int scip = res2.getInt(13);
                                              int social = res2.getInt(14);
                                              int hist = res2.getInt(15);
                                              int geo = res2.getInt(16);
                                              int civics = res2.getInt(17);
                                              int home = res2.getInt(18);
                                              int sans = res2.getInt(19);
                                              int compt = res2.getInt(20);
                                              int compp = res2.getInt(21);
                                          int tot = eng + hindi + maths + gk + draw+handi+dance+hwd+ewd+social+sci+scip+sans+compp+compt;
                                          double max = 1050;
                                          double per = ((double)tot/max)*100;
                                          per = Math.round(per* 100.0) / 100.0;
                                          %>
                                            <tr>
                                              <td><font size="2" color="Black" face="Courier New">TERM_3</td>
                                              <td><font size="2" color="Black" face="Courier New"><b><%out.print(eng);%></b></td>
                                              <td><font size="2" color="Black" face="Courier New"><b><%out.print(hindi);%></b></td>
                                              <td><font size="2" color="Black" face="Courier New"><b><%out.print(maths);%></b></td>
                                              <td><font size="2" color="Black" face="Courier New"><b><%out.print(gk);%></b></td>
                                              <td><font size="2" color="Black" face="Courier New"><b><%out.print(draw);%></b></td>
                                              <td><font size="2" color="Black" face="Courier New"><b><%out.print(dance);%></b></td>
                                              <td><font size="2" color="Black" face="Courier New"><b><%out.print(handi);%></b></td>
                                                 <td><font size="2" color="Black" face="Courier New"><b><%out.print(hwd);%></b></td> 
                                              <td><font size="2" color="Black" face="Courier New"><b><%out.print(ewd);%></b></td> 
                                              <td><font size="2" color="Black" face="Courier New"><b><%out.print(social);%></b></td>
                                                <td><font size="2" color="Black" face="Courier New"><b><%out.print(sci);%></b></td>
                                                <td><font size="2" color="Black" face="Courier New"><b><%out.print(scip);%></b></td>
                                              <td><font size="2" color="Black" face="Courier New"><b><%out.print(sans);%></b></td>
                                              <td><font size="2" color="Black" face="Courier New"><b><%out.print(compp);%></b></td>
                                              <td><font size="2" color="Black" face="Courier New"><b><%out.print(compt);%></b></td>
                                              <td><font size="2" color="Black" face="Courier New"><b><%out.print(max);%></b></td>
                                              <td><font size="2" color="Black" face="Courier New"><b><%out.print(per);%></b></td>
                                              <td><a href="print.jsp?name=<%out.print(name);%>&class=<%out.print(cl);%>&term=III&fat=<%out.print(fat);%>"><button class="btn btn-success"><font size="2" face="Courier New"><b>TERM_3</b></font></button></a></td>
                                            </tr>
                                            <%
                                        }

                                        //END_TERM marks of that student
                                        res2 = stmt2.executeQuery("select * from marks_END where CLASS = 'VII' and NAME="+fet+" and father='"+fat+"'");
                                        while(res2.next())
                                        {
                                              int hindi = res2.getInt(3);
                                          int eng = res2.getInt(4);
                                          int maths = res2.getInt(5);
                                          int gk = res2.getInt(6);
                                          int hwd = res2.getInt(7);
                                              int ewd = res2.getInt(8);
                                              int draw = res2.getInt(9);
                                              int handi = res2.getInt(10);
                                              int dance = res2.getInt(11);
                                              int sci = res2.getInt(12);
                                              int scip = res2.getInt(13);
                                              int social = res2.getInt(14);
                                              int hist = res2.getInt(15);
                                              int geo = res2.getInt(16);
                                              int civics = res2.getInt(17);
                                              int home = res2.getInt(18);
                                              int sans = res2.getInt(19);
                                              int compt = res2.getInt(20);
                                              int compp = res2.getInt(21);
                                          int tot = eng + hindi + maths + gk + draw+handi+dance+hwd+ewd+social+sci+scip+sans+compp+compt;
                                          double max = 1050;
                                          double per = ((double)tot/max)*100;
                                          per = Math.round(per* 100.0) / 100.0;
                                          %>
                                            <tr>
                                              <td><font size="2" color="Black" face="Courier New">END_TERM</td>
                                              <td><font size="2" color="Black" face="Courier New"><b><%out.print(eng);%></b></td>
                                              <td><font size="2" color="Black" face="Courier New"><b><%out.print(hindi);%></b></td>
                                              <td><font size="2" color="Black" face="Courier New"><b><%out.print(maths);%></b></td>
                                              <td><font size="2" color="Black" face="Courier New"><b><%out.print(gk);%></b></td>
                                              <td><font size="2" color="Black" face="Courier New"><b><%out.print(draw);%></b></td>
                                              <td><font size="2" color="Black" face="Courier New"><b><%out.print(dance);%></b></td>
                                              <td><font size="2" color="Black" face="Courier New"><b><%out.print(handi);%></b></td>
                                                <td><font size="2" color="Black" face="Courier New"><b><%out.print(hwd);%></b></td> 
                                              <td><font size="2" color="Black" face="Courier New"><b><%out.print(ewd);%></b></td>
                                                <td><font size="2" color="Black" face="Courier New"><b><%out.print(social);%></b></td>
                                                <td><font size="2" color="Black" face="Courier New"><b><%out.print(sci);%></b></td>
                                                <td><font size="2" color="Black" face="Courier New"><b><%out.print(scip);%></b></td>
                                              <td><font size="2" color="Black" face="Courier New"><b><%out.print(sans);%></b></td>
                                              <td><font size="2" color="Black" face="Courier New"><b><%out.print(compp);%></b></td>
                                              <td><font size="2" color="Black" face="Courier New"><b><%out.print(compt);%></b></td>
                                                <td><font size="2" color="Black" face="Courier New"><b><%out.print(max);%></b></td>
                                              <td><font size="2" color="Black" face="Courier New"><b><%out.print(per);%></b></td>
                                              <td><a href="print.jsp?name=<%out.print(name);%>&class=<%out.print(cl);%>&term=IV&fat=<%out.print(fat);%>"><button class="btn btn-success"><font size="2" face="Courier New"><b>END_TERM</b></font></button></a></td>
                                            </tr>
                                            <%
                                        }
                                        %></table></font><%

                                        mod++;
                                      %>
                                      </center>

              </div>
            </center>
          </h4></div></div></div>

          </td>
          <td><font size="2" face="courier new"><b><%out.print(fat.toUpperCase());%></b></font></td>
          <td><font size="2" face="courier new"><b><%out.print(mom.toUpperCase());%></b></font></td>
          </tr><%
          
        }
        %>
        
        </table>
      </div>

      <div id ="c8" style="display:none;">
        <%
        res = stmt.executeQuery("select * from student where class='VIII'");
         c = 1;
        %>
        <font size="5" face="courier new"><b>CLASS VIII</b></font><br><br>
        <table class = "table table-striped table-bordered table-responsive w-auto" width="20%">
        <tr class="active">
          <th><font size="2" face="courier new">SNO</font></th>
          
          <th><font size="2" face="courier new">NAME</font></th>
          <th><font size="2" face="courier new">FATHER'S NAME</font></th>
          <th><font size="2" face="courier new">MOTHER'S NAME</font></th>
        </tr>
        
        <%
        mod = 140;
        while(res.next())
        {
        
           
                         String mod_id = "#"+"myModal"+mod;
                         String mod_id2 = "myModal"+mod;
                                    
          int roll = res.getInt(6);
          
          String name = res.getString(2);

          String fat = res.getString(3);
          String mom = res.getString(4);
          String dob = res.getString(9);
          String cl = res.getString(5);
          String phone = res.getString(11);
          String aadhar = res.getString(10);
          String addr = res.getString(8);
          String img  = res.getString(12);
          img = "'"+img+"'";
          %>

          <tr>
          <td><font size="2" face="courier new"><b><%out.print(c++);%></b></td>
         
          <td>

            <!--MODAL ON EACH NAME-->
            <button type="button" class="btn btn-outline-success btn-sm" data-toggle="modal" data-target="<%out.print(mod_id);%>">
                            <font size="2" color="Black" face="Courier New"><b>
                                          <%out.print(name);%>
                                                
                           </b></font>
                        </button>

                         <div id="<%out.print(mod_id2);%>" class="modal fade" role="dialog">
                                <div class="modal-dialog">

                                     <!-- Modal content-->
                                     <div class="modal-content">
                                     <div class="modal-header">
                                     <button type="button" class="close" data-dismiss="modal">&times;</button>
                                     <h4 class="modal-title">
                                     <center><font size="4" color="White" face="Courier New"><b>WELCOME<br><%out.print(name);%></b></font><br>
                                     </h4>
                                     </div>
                                     <!---MODAL BODY-->
                                     <div class="modal-body">
                                      <table class="w3-table" border-width="0">
                                        <tr>
                                       
                                       <th><font size="3" color="Black" face="Courier New">NAME<br></th>
                                        <th><font size="3" color="Black" face="Courier New"><b><%out.print(name);%></font></b></th>
                                      </tr>
                                       <div id = "img9">
                                          <img src=<%out.print(img);%>/>
                                        </div>
                                         <tr>
                                        
                                      <th><font size="3" color="Black" face="Courier New">FATHER'S NAME</font></b><br></th> 
                                       
                                       <th><font size="3" color="Black" face="Courier New"><b><%out.print(fat.toUpperCase());%></b></font></th>
                                     </tr>
                                        
                                        
                                      <tr>
                                      <th><font size="3" color="Black" face="Courier New">MOTHER'S NAME</font><br></th>
                                      <th><font size="3" color="Black" face="Courier New"><b><%out.print(mom.toUpperCase());%></b></font></th>
                                      </tr>
                                       
                                        
                                       <tr>
                                        <th><font size="3" color="Black" face="Courier New">DATE OF BIRTH</font><br></th>
                                        <th><font size="3" color="Black" face="Courier New"><b><%out.print(dob);%></b></font></th>
                                      </tr>
                                        
                                        <tr>
                                        <th><font size="3" color="Black" face="Courier New">CLASS</font></b><br></th>
                                        <th><font size="3" color="Black" face="Courier New"><b><%out.print(cl);%></b></font></th>
                                        </tr>

                                        <tr>
                                        
                                        <th><font size="3" color="Black" face="Courier New">PHONE</font><br></th>   
                                        <th><font size="3" color="Black" face="Courier New"><b><%out.print(phone);%></b></font></th>
                                      </tr>

                                         <tr>
                                        
                                        <th><font size="3" color="Black" face="Courier New">AADHAR NO</font></b><br></th>
                                        <th><font size="3" color="Black" face="Courier New"><b><%out.print(aadhar);%></b></font></th>
                                      </tr>

                                        <tr>
                                        
                                      <th><font size="3" color="Black" face="Courier New">ADDRESS</font></th>
                                      <th><font size="3" color="Black" face="Courier New"><b><%out.print(addr);%></b></font></th>
                                      </tr>
                                      
                                      <tr>
                                         <th><a href="printf.jsp?name=<%out.print(name);%>&father=<%out.print(fat);%>&class=<%out.print(cl);%>"><button class="btn btn-success"><font size='2' face='courier new'>FEE<br>DETAILS</font></button></a></th>
                                       </tr>

                                       
                                      </table>
                                        <center>
                                          <font size="5" color="Black" face="Courier New"><b>MARKS OVERVIEW</b></font>
                                      

                                                                                  <!--FETCHING MARKS-->
                                            <div id="scroll">
                                           <table class="table table-striped table-bordered" style="overflow:scroll;">
                                            <tr>
                                              <th><font size="2" color="Black" face="Courier New"><b>EXAM_No.</b></font></th>
                                              <th><font size="2" color="Black" face="Courier New"><b>ENGLISH<br>(100)</b></font></th>
                                              <th><font size="2" color="Black" face="Courier New"><b>HINDI<br>(100)</b></font></th>
                                              <th><font size="2" color="Black" face="Courier New"><b>MATHS<br>(100)</b></font></th>
                                              <th><font size="2" color="Black" face="Courier New"><b>GK<br>(100)</b></font></th>
                                              <th><font size="2" color="Black" face="Courier New"><b>DRAWING<br>(50)</b></font></th>
                                              <th><font size="2" color="Black" face="Courier New"><b>DANCE<br>MUSIC<br>(50)</b></font></th>
                                              <th><font size="2" color="Black" face="Courier New"><b>HANDICRAFT<br>(50)</b></font></th>
                                              <th><font size="2" color="Black" face="Courier New"><b>H.W.D.<br>(50)</b></font></th>
                                              <th><font size="2" color="Black" face="Courier New"><b>E.W.D.<br>(50)</b></font></th>
                                              <th><font size="2" color="Black" face="Courier New"><b>SOCIAL<br>SCIENCE<br>(100)</b></font></th>
                                              <th><font size="2" color="Black" face="Courier New"><b>SCIENCE<br>(90)</b></font></th>
                                              <th><font size="2" color="Black" face="Courier New"><b>SCIENCE<br>PRAC.<br>(10)</b></font></th>
                                              <th><font size="2" color="Black" face="Courier New"><b>SANSKRIT<br>(100)</b></font></th>
                                             
                                              <th><font size="2" color="Black" face="Courier New"><b>MAX_MARKS</b></font></th>
                                              <th><font size="2" color="Black" face="Courier New"><b>PERCENTAGE</b></font></th>
                                              <th><font size='2' face='courier new'>PRINT</font></th>
                                              
                                            </tr>

                                      <%
                                        String fet = "'"+name+"'";

                                        //term 1 marks of that student
                                        res2 = stmt2.executeQuery("select * from marksT1 where CLASS = 'VIII' and NAME="+fet+" and father='"+fat+"'");
                                        while(res2.next())
                                        {
                                          int hindi = res2.getInt(3);
                                          int eng = res2.getInt(4);
                                          int maths = res2.getInt(5);
                                          int gk = res2.getInt(6);
                                          int hwd = res2.getInt(7);
                                              int ewd = res2.getInt(8);
                                              int draw = res2.getInt(9);
                                              int handi = res2.getInt(10);
                                              int dance = res2.getInt(11);
                                              int sci = res2.getInt(12);
                                              int scip = res2.getInt(13);
                                              int social = res2.getInt(14);
                                              int hist = res2.getInt(15);
                                              int geo = res2.getInt(16);
                                              int civics = res2.getInt(17);
                                              int home = res2.getInt(18);
                                              int sans = res2.getInt(19);
                                              int compt = res2.getInt(20);
                                              int compp = res2.getInt(21);
                                          int tot = eng + hindi + maths + gk + draw+handi+dance+hwd+ewd+social+sci+scip+sans;
                                          double max = 950;
                                          double per = ((double)tot/max)*100;
                                          per = Math.round(per* 100.0) / 100.0;
                                          %>
                                         
                                            <tr>
                                              <td><font size="2" color="Black" face="Courier New">TERM_1</td>
                                              <td><font size="2" color="Black" face="Courier New"><b><%out.print(eng);%></b></td>
                                              <td><font size="2" color="Black" face="Courier New"><b><%out.print(hindi);%></b></td>
                                              <td><font size="2" color="Black" face="Courier New"><b><%out.print(maths);%></b></td>
                                              <td><font size="2" color="Black" face="Courier New"><b><%out.print(gk);%></b></td>
                                              <td><font size="2" color="Black" face="Courier New"><b><%out.print(draw);%></b></td>
                                              <td><font size="2" color="Black" face="Courier New"><b><%out.print(dance);%></b></td>
                                              <td><font size="2" color="Black" face="Courier New"><b><%out.print(handi);%></b></td>
                                               <td><font size="2" color="Black" face="Courier New"><b><%out.print(hwd);%></b></td> 
                                               <td><font size="2" color="Black" face="Courier New"><b><%out.print(ewd);%></b></td> 
                                               <td><font size="2" color="Black" face="Courier New"><b><%out.print(social);%></b></td>
                                                <td><font size="2" color="Black" face="Courier New"><b><%out.print(sci);%></b></td>
                                                <td><font size="2" color="Black" face="Courier New"><b><%out.print(scip);%></b></td>
                                              <td><font size="2" color="Black" face="Courier New"><b><%out.print(sans);%></b></td>
                                               
                                              <td><font size="2" color="Black" face="Courier New"><b><%out.print(max);%></b></td>
                                              <td><font size="2" color="Black" face="Courier New"><b><%out.print(per);%></b></td>
                                              <td><a href="print.jsp?name=<%out.print(name);%>&class=<%out.print(cl);%>&term=I&fat=<%out.print(fat);%>"><button class="btn btn-success"><font size="2" face="Courier New"><b>TERM_1</b></font></button></a></td>
                                            </tr>
                                            <%
                                        }

                                        //half_yearly marks of that student
                                        res2 = stmt2.executeQuery("select * from marks_HALF where CLASS = 'VIII' and NAME="+fet+" and father='"+fat+"'");
                                        while(res2.next())
                                        {
                                              int hindi = res2.getInt(3);
                                          int eng = res2.getInt(4);
                                          int maths = res2.getInt(5);
                                          int gk = res2.getInt(6);
                                          int hwd = res2.getInt(7);
                                              int ewd = res2.getInt(8);
                                              int draw = res2.getInt(9);
                                              int handi = res2.getInt(10);
                                              int dance = res2.getInt(11);
                                              int sci = res2.getInt(12);
                                              int scip = res2.getInt(13);
                                              int social = res2.getInt(14);
                                              int hist = res2.getInt(15);
                                              int geo = res2.getInt(16);
                                              int civics = res2.getInt(17);
                                              int home = res2.getInt(18);
                                              int sans = res2.getInt(19);
                                              int compt = res2.getInt(20);
                                              int compp = res2.getInt(21);
                                          int tot = eng + hindi + maths + gk + draw+handi+dance+hwd+ewd+social+sci+scip+sans;
                                          double max = 950;
                                          double per = ((double)tot/max)*100;
                                          per = Math.round(per* 100.0) / 100.0;
                                          %>
                                            <tr>
                                              <td><font size="2" color="Black" face="Courier New">HALF_YEARLY</td>
                                              <td><font size="2" color="Black" face="Courier New"><b><%out.print(eng);%></b></td>
                                              <td><font size="2" color="Black" face="Courier New"><b><%out.print(hindi);%></b></td>
                                              <td><font size="2" color="Black" face="Courier New"><b><%out.print(maths);%></b></td>
                                              <td><font size="2" color="Black" face="Courier New"><b><%out.print(gk);%></b></td>
                                              <td><font size="2" color="Black" face="Courier New"><b><%out.print(draw);%></b></td>
                                              <td><font size="2" color="Black" face="Courier New"><b><%out.print(dance);%></b></td>
                                              <td><font size="2" color="Black" face="Courier New"><b><%out.print(handi);%></b></td>
                                              <td><font size="2" color="Black" face="Courier New"><b><%out.print(hwd);%></b></td> 
                                              <td><font size="2" color="Black" face="Courier New"><b><%out.print(ewd);%></b></td> 
                                               <td><font size="2" color="Black" face="Courier New"><b><%out.print(social);%></b></td>
                                                <td><font size="2" color="Black" face="Courier New"><b><%out.print(sci);%></b></td>
                                                <td><font size="2" color="Black" face="Courier New"><b><%out.print(scip);%></b></td>
                                              <td><font size="2" color="Black" face="Courier New"><b><%out.print(sans);%></b></td>
                                             
                                              <td><font size="2" color="Black" face="Courier New"><b><%out.print(max);%></b></td>
                                              <td><font size="2" color="Black" face="Courier New"><b><%out.print(per);%></b></td>
                                              <td><a href="print.jsp?name=<%out.print(name);%>&class=<%out.print(cl);%>&term=II&fat=<%out.print(fat);%>"><button class="btn btn-success"><font size="2" face="Courier New"><b>HALF_YEALRY</b></font></button></a></td>
                                            </tr>
                                            <%
                                        }

                                        //term3 marks
                                        //half_yearly marks of that student
                                        res2 = stmt2.executeQuery("select * from marks_T3 where CLASS = 'VIII' and NAME="+fet+" and father='"+fat+"'");
                                        while(res2.next())
                                        {
                                              int hindi = res2.getInt(3);
                                          int eng = res2.getInt(4);
                                          int maths = res2.getInt(5);
                                          int gk = res2.getInt(6);
                                          int hwd = res2.getInt(7);
                                              int ewd = res2.getInt(8);
                                              int draw = res2.getInt(9);
                                              int handi = res2.getInt(10);
                                              int dance = res2.getInt(11);
                                              int sci = res2.getInt(12);
                                              int scip = res2.getInt(13);
                                              int social = res2.getInt(14);
                                              int hist = res2.getInt(15);
                                              int geo = res2.getInt(16);
                                              int civics = res2.getInt(17);
                                              int home = res2.getInt(18);
                                              int sans = res2.getInt(19);
                                              int compt = res2.getInt(20);
                                              int compp = res2.getInt(21);
                                          int tot = eng + hindi + maths + gk + draw+handi+dance+hwd+ewd+social+sci+scip+sans;
                                          double max = 950;
                                          double per = ((double)tot/max)*100;
                                          per = Math.round(per* 100.0) / 100.0;
                                          %>
                                            <tr>
                                              <td><font size="2" color="Black" face="Courier New">TERM_3</td>
                                              <td><font size="2" color="Black" face="Courier New"><b><%out.print(eng);%></b></td>
                                              <td><font size="2" color="Black" face="Courier New"><b><%out.print(hindi);%></b></td>
                                              <td><font size="2" color="Black" face="Courier New"><b><%out.print(maths);%></b></td>
                                              <td><font size="2" color="Black" face="Courier New"><b><%out.print(gk);%></b></td>
                                              <td><font size="2" color="Black" face="Courier New"><b><%out.print(draw);%></b></td>
                                              <td><font size="2" color="Black" face="Courier New"><b><%out.print(dance);%></b></td>
                                              <td><font size="2" color="Black" face="Courier New"><b><%out.print(handi);%></b></td>
                                                 <td><font size="2" color="Black" face="Courier New"><b><%out.print(hwd);%></b></td> 
                                              <td><font size="2" color="Black" face="Courier New"><b><%out.print(ewd);%></b></td> 
                                              <td><font size="2" color="Black" face="Courier New"><b><%out.print(social);%></b></td>
                                                <td><font size="2" color="Black" face="Courier New"><b><%out.print(sci);%></b></td>
                                                <td><font size="2" color="Black" face="Courier New"><b><%out.print(scip);%></b></td>
                                              <td><font size="2" color="Black" face="Courier New"><b><%out.print(sans);%></b></td>
                                             
                                              <td><font size="2" color="Black" face="Courier New"><b><%out.print(max);%></b></td>
                                              <td><font size="2" color="Black" face="Courier New"><b><%out.print(per);%></b></td>
                                              <td><a href="print.jsp?name=<%out.print(name);%>&class=<%out.print(cl);%>&term=III&fat=<%out.print(fat);%>"><button class="btn btn-success"><font size="2" face="Courier New"><b>TERM_3</b></font></button></a></td>
                                            </tr>
                                            <%
                                        }

                                        //END_TERM marks of that student
                                        res2 = stmt2.executeQuery("select * from marks_END where CLASS = 'VIII' and NAME="+fet+" and father='"+fat+"'");
                                        while(res2.next())
                                        {
                                              int hindi = res2.getInt(3);
                                          int eng = res2.getInt(4);
                                          int maths = res2.getInt(5);
                                          int gk = res2.getInt(6);
                                          int hwd = res2.getInt(7);
                                              int ewd = res2.getInt(8);
                                              int draw = res2.getInt(9);
                                              int handi = res2.getInt(10);
                                              int dance = res2.getInt(11);
                                              int sci = res2.getInt(12);
                                              int scip = res2.getInt(13);
                                              int social = res2.getInt(14);
                                              int hist = res2.getInt(15);
                                              int geo = res2.getInt(16);
                                              int civics = res2.getInt(17);
                                              int home = res2.getInt(18);
                                              int sans = res2.getInt(19);
                                              int compt = res2.getInt(20);
                                              int compp = res2.getInt(21);
                                          int tot = eng + hindi + maths + gk + draw+handi+dance+hwd+ewd+social+sci+scip+sans;
                                          double max = 950;
                                          double per = ((double)tot/max)*100;
                                          per = Math.round(per* 100.0) / 100.0;
                                          %>
                                            <tr>
                                              <td><font size="2" color="Black" face="Courier New">END_TERM</td>
                                              <td><font size="2" color="Black" face="Courier New"><b><%out.print(eng);%></b></td>
                                              <td><font size="2" color="Black" face="Courier New"><b><%out.print(hindi);%></b></td>
                                              <td><font size="2" color="Black" face="Courier New"><b><%out.print(maths);%></b></td>
                                              <td><font size="2" color="Black" face="Courier New"><b><%out.print(gk);%></b></td>
                                              <td><font size="2" color="Black" face="Courier New"><b><%out.print(draw);%></b></td>
                                              <td><font size="2" color="Black" face="Courier New"><b><%out.print(dance);%></b></td>
                                              <td><font size="2" color="Black" face="Courier New"><b><%out.print(handi);%></b></td>
                                                <td><font size="2" color="Black" face="Courier New"><b><%out.print(hwd);%></b></td> 
                                              <td><font size="2" color="Black" face="Courier New"><b><%out.print(ewd);%></b></td>
                                                <td><font size="2" color="Black" face="Courier New"><b><%out.print(social);%></b></td>
                                                <td><font size="2" color="Black" face="Courier New"><b><%out.print(sci);%></b></td>
                                                <td><font size="2" color="Black" face="Courier New"><b><%out.print(scip);%></b></td>
                                              <td><font size="2" color="Black" face="Courier New"><b><%out.print(sans);%></b></td>
                                            
                                                <td><font size="2" color="Black" face="Courier New"><b><%out.print(max);%></b></td>
                                              <td><font size="2" color="Black" face="Courier New"><b><%out.print(per);%></b></td>
                                              <td><a href="print.jsp?name=<%out.print(name);%>&class=<%out.print(cl);%>&term=IV&fat=<%out.print(fat);%>"><button class="btn btn-success"><font size="2" face="Courier New"><b>END_TERM</b></font></button></a></td>
                                            </tr>
                                            <%
                                        }
                                        %></table></font><%

                                        mod++;
                                      %>
                                      </center>

              </div>
            </center>
          </h4></div></div></div>

          </td>
          <td><font size="2" face="courier new"><b><%out.print(fat.toUpperCase());%></b></font></td>
          <td><font size="2" face="courier new"><b><%out.print(mom.toUpperCase());%></b></font></td>
          </tr><%
          
        }
        %>
        
        </table>
      </div>

      <div id ="c9" style="display:none;">
        <%
        res = stmt.executeQuery("select * from student where class='IX'");
         c = 1;
        %>
        <font size="5" face="courier new"><b>CLASS IX</b></font><br><br>
        <table class = "table table-striped table-bordered table-responsive w-auto" width="20%">
        <tr class="active">
          <th><font size="2" face="courier new">SNO</font></th>
          
          <th><font size="2" face="courier new">NAME</font></th>
          <th><font size="2" face="courier new">FATHER'S NAME</font></th>
          <th><font size="2" face="courier new">MOTHER'S NAME</font></th>
        </tr>
        
        <%
        mod = 160;
        while(res.next())
        {
        
           
                         String mod_id = "#"+"myModal"+mod;
                         String mod_id2 = "myModal"+mod;
                                    
          int roll = res.getInt(6);
          
          String name = res.getString(2);

          String fat = res.getString(3);
          String mom = res.getString(4);
          String dob = res.getString(9);
          String cl = res.getString(5);
          String phone = res.getString(11);
          String aadhar = res.getString(10);
          String addr = res.getString(8);
          String img  = res.getString(12);
          img = "'"+img+"'";
          //out.println(img);
          %>

          <tr>
          <td><font size="2" face="courier new"><b><%out.print(c++);%></b></td>
         
          <td>

            <!--MODAL ON EACH NAME-->
            <button type="button" class="btn btn-outline-success btn-sm" data-toggle="modal" data-target="<%out.print(mod_id);%>">
                            <font size="2" color="Black" face="Courier New"><b>
                                          <%out.print(name);%>
                                                
                           </b></font>
                        </button>

                         <div id="<%out.print(mod_id2);%>" class="modal fade" role="dialog">
                                <div class="modal-dialog">

                                     <!-- Modal content-->
                                     <div class="modal-content">
                                     <div class="modal-header">
                                     <button type="button" class="close" data-dismiss="modal">&times;</button>
                                     <h4 class="modal-title">
                                     <center><font size="4" color="White" face="Courier New"><b>WELCOME<br><%out.print(name);%></b></font><br>
                                     </h4>
                                     </div>
                                     <!---MODAL BODY-->
                                     <div class="modal-body">
                                      <table class="w3-table" border-width="0">
                                        <tr>
                                        
                                       <th><font size="3" color="Black" face="Courier New">NAME<br></th>
                                        <th><font size="3" color="Black" face="Courier New"><b><%out.print(name);%></font></b></th>
                                      
                                      </tr>
                                      <div id = "img9">
                                          <img src=<%out.print(img);%>/>
                                        </div>
                                         <tr>
                                        
                                      <th><font size="3" color="Black" face="Courier New">FATHER'S NAME</font></b><br></th> 
                                       
                                       <th><font size="3" color="Black" face="Courier New"><b><%out.print(fat.toUpperCase());%></b></font></th>
                                     </tr>
                                        
                                        
                                      <tr>
                                      <th><font size="3" color="Black" face="Courier New">MOTHER'S NAME</font><br></th>
                                      <th><font size="3" color="Black" face="Courier New"><b><%out.print(mom.toUpperCase());%></b></font></th>
                                      </tr>
                                       
                                        
                                       <tr>
                                        <th><font size="3" color="Black" face="Courier New">DATE OF BIRTH</font><br></th>
                                        <th><font size="3" color="Black" face="Courier New"><b><%out.print(dob);%></b></font></th>
                                      </tr>
                                        
                                        <tr>
                                        <th><font size="3" color="Black" face="Courier New">CLASS</font></b><br></th>
                                        <th><font size="3" color="Black" face="Courier New"><b><%out.print(cl);%></b></font></th>
                                        </tr>

                                        <tr>
                                        
                                        <th><font size="3" color="Black" face="Courier New">PHONE</font><br></th>   
                                        <th><font size="3" color="Black" face="Courier New"><b><%out.print(phone);%></b></font></th>
                                      </tr>

                                         <tr>
                                        
                                        <th><font size="3" color="Black" face="Courier New">AADHAR NO</font></b><br></th>
                                        <th><font size="3" color="Black" face="Courier New"><b><%out.print(aadhar);%></b></font></th>
                                      </tr>

                                        <tr>
                                        
                                      <th><font size="3" color="Black" face="Courier New">ADDRESS</font></th>
                                      <th><font size="3" color="Black" face="Courier New"><b><%out.print(addr);%></b></font></th>
                                      </tr>
                                      
                                       
                                       <tr>
                                         <th><a href="printf.jsp?name=<%out.print(name);%>&father=<%out.print(fat);%>&class=<%out.print(cl);%>"><button class="btn btn-success"><font size='2' face='courier new'>FEE<br>DETAILS</font></button></a></th>
                                       </tr>

                                      </table>
                                        <center>
                                          <font size="5" color="Black" face="Courier New"><b>MARKS OVERVIEW</b></font>
                                      

                                          <!--FETCHING MARKS-->
                                            <div id="scroll">
                                           <table class="table table-striped table-bordered" style="overflow:scroll;">
                                            <tr>
                                              <th><font size="2" color="Black" face="Courier New"><b>EXAM_No.</b></font></th>
                                              <th><font size="2" color="Black" face="Courier New"><b>ENGLISH<br>(100)</b></font></th>
                                              <th><font size="2" color="Black" face="Courier New"><b>HINDI<br>(100)</b></font></th>
                                              <th><font size="2" color="Black" face="Courier New"><b>MATHS<br>(100)</b></font></th>
                                              <th><font size="2" color="Black" face="Courier New"><b>GK<br>(100)</b></font></th>
                                              <th><font size="2" color="Black" face="Courier New"><b>DRAWING<br>(50)</b></font></th>
                                              <th><font size="2" color="Black" face="Courier New"><b>DANCE<br>MUSIC<br>(50)</b></font></th>
                                              <th><font size="2" color="Black" face="Courier New"><b>HANDICRAFT<br>(50)</b></font></th>
                                              <th><font size="2" color="Black" face="Courier New"><b>H.W.D.<br>(50)</b></font></th>
                                              <th><font size="2" color="Black" face="Courier New"><b>E.W.D.<br>(50)</b></font></th>
                                              <th><font size="2" color="Black" face="Courier New"><b>SOCIAL<br>SCIENCE<br>(100)</b></font></th>
                                              <th><font size="2" color="Black" face="Courier New"><b>SCIENCE<br>(90)</b></font></th>
                                              <th><font size="2" color="Black" face="Courier New"><b>SCIENCE<br>PRAC.<br>(10)</b></font></th>
                                              <th><font size="2" color="Black" face="Courier New"><b>SANSKRIT<br>(100)</b></font></th>
                                             
                                              <th><font size="2" color="Black" face="Courier New"><b>MAX_MARKS</b></font></th>
                                              <th><font size="2" color="Black" face="Courier New"><b>PERCENTAGE</b></font></th>
                                              <th><font size='2' face='courier new'>PRINT</font></th>
                                              
                                            </tr>

                                      <%
                                        String fet = "'"+name+"'";

                                        //term 1 marks of that student
                                        res2 = stmt2.executeQuery("select * from marksT1 where CLASS = 'IX' and NAME="+fet+" and father='"+fat+"'");
                                        while(res2.next())
                                        {
                                          int hindi = res2.getInt(3);
                                          int eng = res2.getInt(4);
                                          int maths = res2.getInt(5);
                                          int gk = res2.getInt(6);
                                          int hwd = res2.getInt(7);
                                              int ewd = res2.getInt(8);
                                              int draw = res2.getInt(9);
                                              int handi = res2.getInt(10);
                                              int dance = res2.getInt(11);
                                              int sci = res2.getInt(12);
                                              int scip = res2.getInt(13);
                                              int social = res2.getInt(14);
                                              int hist = res2.getInt(15);
                                              int geo = res2.getInt(16);
                                              int civics = res2.getInt(17);
                                              int home = res2.getInt(18);
                                              int sans = res2.getInt(19);
                                              int compt = res2.getInt(20);
                                              int compp = res2.getInt(21);
                                          int tot = eng + hindi + maths + gk + draw+handi+dance+hwd+ewd+social+sci+scip+sans;
                                          double max = 950;
                                          double per = ((double)tot/max)*100;
                                          per = Math.round(per* 100.0) / 100.0;
                                          %>
                                         
                                            <tr>
                                              <td><font size="2" color="Black" face="Courier New">TERM_1</td>
                                              <td><font size="2" color="Black" face="Courier New"><b><%out.print(eng);%></b></td>
                                              <td><font size="2" color="Black" face="Courier New"><b><%out.print(hindi);%></b></td>
                                              <td><font size="2" color="Black" face="Courier New"><b><%out.print(maths);%></b></td>
                                              <td><font size="2" color="Black" face="Courier New"><b><%out.print(gk);%></b></td>
                                              <td><font size="2" color="Black" face="Courier New"><b><%out.print(draw);%></b></td>
                                              <td><font size="2" color="Black" face="Courier New"><b><%out.print(dance);%></b></td>
                                              <td><font size="2" color="Black" face="Courier New"><b><%out.print(handi);%></b></td>
                                               <td><font size="2" color="Black" face="Courier New"><b><%out.print(hwd);%></b></td> 
                                               <td><font size="2" color="Black" face="Courier New"><b><%out.print(ewd);%></b></td> 
                                               <td><font size="2" color="Black" face="Courier New"><b><%out.print(social);%></b></td>
                                                <td><font size="2" color="Black" face="Courier New"><b><%out.print(sci);%></b></td>
                                                <td><font size="2" color="Black" face="Courier New"><b><%out.print(scip);%></b></td>
                                              <td><font size="2" color="Black" face="Courier New"><b><%out.print(sans);%></b></td>
                                               
                                              <td><font size="2" color="Black" face="Courier New"><b><%out.print(max);%></b></td>
                                              <td><font size="2" color="Black" face="Courier New"><b><%out.print(per);%></b></td>
                                               <td><a href="print.jsp?name=<%out.print(name);%>&class=<%out.print(cl);%>&term=I&fat=<%out.print(fat);%>"><button class="btn btn-success"><font size="2" face="Courier New"><b>TERM_1</b></font></button></a></td>
                                            </tr>
                                            <%
                                        }

                                        //half_yearly marks of that student
                                        res2 = stmt2.executeQuery("select * from marks_HALF where CLASS = 'IX' and NAME="+fet+" and father='"+fat+"'");
                                        while(res2.next())
                                        {
                                              int hindi = res2.getInt(3);
                                          int eng = res2.getInt(4);
                                          int maths = res2.getInt(5);
                                          int gk = res2.getInt(6);
                                          int hwd = res2.getInt(7);
                                              int ewd = res2.getInt(8);
                                              int draw = res2.getInt(9);
                                              int handi = res2.getInt(10);
                                              int dance = res2.getInt(11);
                                              int sci = res2.getInt(12);
                                              int scip = res2.getInt(13);
                                              int social = res2.getInt(14);
                                              int hist = res2.getInt(15);
                                              int geo = res2.getInt(16);
                                              int civics = res2.getInt(17);
                                              int home = res2.getInt(18);
                                              int sans = res2.getInt(19);
                                              int compt = res2.getInt(20);
                                              int compp = res2.getInt(21);
                                          int tot = eng + hindi + maths + gk + draw+handi+dance+hwd+ewd+social+sci+scip+sans;
                                          double max = 950;
                                          double per = ((double)tot/max)*100;
                                          per = Math.round(per* 100.0) / 100.0;
                                          %>
                                            <tr>
                                              <td><font size="2" color="Black" face="Courier New">HALF_YEARLY</td>
                                              <td><font size="2" color="Black" face="Courier New"><b><%out.print(eng);%></b></td>
                                              <td><font size="2" color="Black" face="Courier New"><b><%out.print(hindi);%></b></td>
                                              <td><font size="2" color="Black" face="Courier New"><b><%out.print(maths);%></b></td>
                                              <td><font size="2" color="Black" face="Courier New"><b><%out.print(gk);%></b></td>
                                              <td><font size="2" color="Black" face="Courier New"><b><%out.print(draw);%></b></td>
                                              <td><font size="2" color="Black" face="Courier New"><b><%out.print(dance);%></b></td>
                                              <td><font size="2" color="Black" face="Courier New"><b><%out.print(handi);%></b></td>
                                              <td><font size="2" color="Black" face="Courier New"><b><%out.print(hwd);%></b></td> 
                                              <td><font size="2" color="Black" face="Courier New"><b><%out.print(ewd);%></b></td> 
                                               <td><font size="2" color="Black" face="Courier New"><b><%out.print(social);%></b></td>
                                                <td><font size="2" color="Black" face="Courier New"><b><%out.print(sci);%></b></td>
                                                <td><font size="2" color="Black" face="Courier New"><b><%out.print(scip);%></b></td>
                                              <td><font size="2" color="Black" face="Courier New"><b><%out.print(sans);%></b></td>
                                             
                                              <td><font size="2" color="Black" face="Courier New"><b><%out.print(max);%></b></td>
                                              <td><font size="2" color="Black" face="Courier New"><b><%out.print(per);%></b></td>
                                               <td><a href="print.jsp?name=<%out.print(name);%>&class=<%out.print(cl);%>&term=II&fat=<%out.print(fat);%>"><button class="btn btn-success"><font size="2" face="Courier New"><b>HALF_YEARLY</b></font></button></a></td>
                                            </tr>
                                            <%
                                        }

                                        //term3 marks
                                        //half_yearly marks of that student
                                        res2 = stmt2.executeQuery("select * from marks_T3 where CLASS = 'IX' and NAME="+fet+" and father='"+fat+"'");
                                        while(res2.next())
                                        {
                                              int hindi = res2.getInt(3);
                                          int eng = res2.getInt(4);
                                          int maths = res2.getInt(5);
                                          int gk = res2.getInt(6);
                                          int hwd = res2.getInt(7);
                                              int ewd = res2.getInt(8);
                                              int draw = res2.getInt(9);
                                              int handi = res2.getInt(10);
                                              int dance = res2.getInt(11);
                                              int sci = res2.getInt(12);
                                              int scip = res2.getInt(13);
                                              int social = res2.getInt(14);
                                              int hist = res2.getInt(15);
                                              int geo = res2.getInt(16);
                                              int civics = res2.getInt(17);
                                              int home = res2.getInt(18);
                                              int sans = res2.getInt(19);
                                              int compt = res2.getInt(20);
                                              int compp = res2.getInt(21);
                                          int tot = eng + hindi + maths + gk + draw+handi+dance+hwd+ewd+social+sci+scip+sans;
                                          double max = 950;
                                          double per = ((double)tot/max)*100;
                                          per = Math.round(per* 100.0) / 100.0;
                                          %>
                                            <tr>
                                              <td><font size="2" color="Black" face="Courier New">TERM_3</td>
                                              <td><font size="2" color="Black" face="Courier New"><b><%out.print(eng);%></b></td>
                                              <td><font size="2" color="Black" face="Courier New"><b><%out.print(hindi);%></b></td>
                                              <td><font size="2" color="Black" face="Courier New"><b><%out.print(maths);%></b></td>
                                              <td><font size="2" color="Black" face="Courier New"><b><%out.print(gk);%></b></td>
                                              <td><font size="2" color="Black" face="Courier New"><b><%out.print(draw);%></b></td>
                                              <td><font size="2" color="Black" face="Courier New"><b><%out.print(dance);%></b></td>
                                              <td><font size="2" color="Black" face="Courier New"><b><%out.print(handi);%></b></td>
                                                 <td><font size="2" color="Black" face="Courier New"><b><%out.print(hwd);%></b></td> 
                                              <td><font size="2" color="Black" face="Courier New"><b><%out.print(ewd);%></b></td> 
                                              <td><font size="2" color="Black" face="Courier New"><b><%out.print(social);%></b></td>
                                                <td><font size="2" color="Black" face="Courier New"><b><%out.print(sci);%></b></td>
                                                <td><font size="2" color="Black" face="Courier New"><b><%out.print(scip);%></b></td>
                                              <td><font size="2" color="Black" face="Courier New"><b><%out.print(sans);%></b></td>
                                             
                                              <td><font size="2" color="Black" face="Courier New"><b><%out.print(max);%></b></td>
                                              <td><font size="2" color="Black" face="Courier New"><b><%out.print(per);%></b></td>
                                               <td><a href="print.jsp?name=<%out.print(name);%>&class=<%out.print(cl);%>&term=III&fat=<%out.print(fat);%>"><button class="btn btn-success"><font size="2" face="Courier New"><b>TERM_3</b></font></button></a></td>
                                            </tr>
                                            <%
                                        }

                                        //END_TERM marks of that student
                                        res2 = stmt2.executeQuery("select * from marks_END where CLASS = 'IX' and NAME="+fet+" and father='"+fat+"'");
                                        while(res2.next())
                                        {
                                              int hindi = res2.getInt(3);
                                          int eng = res2.getInt(4);
                                          int maths = res2.getInt(5);
                                          int gk = res2.getInt(6);
                                          int hwd = res2.getInt(7);
                                              int ewd = res2.getInt(8);
                                              int draw = res2.getInt(9);
                                              int handi = res2.getInt(10);
                                              int dance = res2.getInt(11);
                                              int sci = res2.getInt(12);
                                              int scip = res2.getInt(13);
                                              int social = res2.getInt(14);
                                              int hist = res2.getInt(15);
                                              int geo = res2.getInt(16);
                                              int civics = res2.getInt(17);
                                              int home = res2.getInt(18);
                                              int sans = res2.getInt(19);
                                              int compt = res2.getInt(20);
                                              int compp = res2.getInt(21);
                                          int tot = eng + hindi + maths + gk + draw+handi+dance+hwd+ewd+social+sci+scip+sans;
                                          double max = 950;
                                          double per = ((double)tot/max)*100;
                                          per = Math.round(per* 100.0) / 100.0;
                                          %>
                                            <tr>
                                              <td><font size="2" color="Black" face="Courier New">END_TERM</td>
                                              <td><font size="2" color="Black" face="Courier New"><b><%out.print(eng);%></b></td>
                                              <td><font size="2" color="Black" face="Courier New"><b><%out.print(hindi);%></b></td>
                                              <td><font size="2" color="Black" face="Courier New"><b><%out.print(maths);%></b></td>
                                              <td><font size="2" color="Black" face="Courier New"><b><%out.print(gk);%></b></td>
                                              <td><font size="2" color="Black" face="Courier New"><b><%out.print(draw);%></b></td>
                                              <td><font size="2" color="Black" face="Courier New"><b><%out.print(dance);%></b></td>
                                              <td><font size="2" color="Black" face="Courier New"><b><%out.print(handi);%></b></td>
                                                <td><font size="2" color="Black" face="Courier New"><b><%out.print(hwd);%></b></td> 
                                              <td><font size="2" color="Black" face="Courier New"><b><%out.print(ewd);%></b></td>
                                                <td><font size="2" color="Black" face="Courier New"><b><%out.print(social);%></b></td>
                                                <td><font size="2" color="Black" face="Courier New"><b><%out.print(sci);%></b></td>
                                                <td><font size="2" color="Black" face="Courier New"><b><%out.print(scip);%></b></td>
                                              <td><font size="2" color="Black" face="Courier New"><b><%out.print(sans);%></b></td>
                                             
                                                <td><font size="2" color="Black" face="Courier New"><b><%out.print(max);%></b></td>
                                              <td><font size="2" color="Black" face="Courier New"><b><%out.print(per);%></b></td>
                                               <td><a href="print.jsp?name=<%out.print(name);%>&class=<%out.print(cl);%>&term=IV&fat=<%out.print(fat);%>"><button class="btn btn-success"><font size="2" face="Courier New"><b>END_TERM</b></font></button></a></td>
                                            </tr>
                                            <%
                                        }
                                        %></table></font><%

                                        mod++;
                                      %>
                                      </center>

              </div>
            </center>
          </h4></div></div></div>

          </td>
          <td><font size="2" face="courier new"><b><%out.print(fat.toUpperCase());%></b></font></td>
          <td><font size="2" face="courier new"><b><%out.print(mom.toUpperCase());%></b></font></td>
          </tr><%
          
        }
        %>
        
        </table>
      </div>

      <div id ="c10" style="display:none;">
        <%
        res = stmt.executeQuery("select * from student where class='X'");
         c = 1;
        %>
        <font size="5" face="courier new"><b>CLASS X</b></font><br><br>
        <table class = "table table-striped table-bordered table-responsive w-auto" width="20%">
        <tr class="active">
          <th><font size="2" face="courier new">SNO</font></th>
          
          <th><font size="2" face="courier new">NAME</font></th>
          <th><font size="2" face="courier new">FATHER'S NAME</font></th>
          <th><font size="2" face="courier new">MOTHER'S NAME</font></th>
        </tr>
        
        <%
        mod = 180;
        while(res.next())
        {
        
           
                         String mod_id = "#"+"myModal"+mod;
                         String mod_id2 = "myModal"+mod;
                                    
          int roll = res.getInt(6);
          
          String name = res.getString(2);

          String fat = res.getString(3);
          String mom = res.getString(4);
          String dob = res.getString(9);
          String cl = res.getString(5);
          String phone = res.getString(11);
          String aadhar = res.getString(10);
          String addr = res.getString(8);
          String img  = res.getString(12);
          img = "'"+img+"'";
          %>

          <tr>
          <td><font size="2" face="courier new"><b><%out.print(c++);%></b></td>
         
          <td>

            <!--MODAL ON EACH NAME-->
            <button type="button" class="btn btn-outline-success btn-sm" data-toggle="modal" data-target="<%out.print(mod_id);%>">
                            <font size="2" color="Black" face="Courier New"><b>
                                          <%out.print(name);%>
                                                
                           </b></font>
                        </button>

                         <div id="<%out.print(mod_id2);%>" class="modal fade" role="dialog">
                                <div class="modal-dialog">

                                     <!-- Modal content-->
                                     <div class="modal-content">
                                     <div class="modal-header">
                                     <button type="button" class="close" data-dismiss="modal">&times;</button>
                                     <h4 class="modal-title">
                                     <center><font size="4" color="White" face="Courier New"><b>WELCOME<br><%out.print(name);%></b></font><br>
                                     </h4>
                                     </div>
                                     <!---MODAL BODY-->
                                     <div class="modal-body">
                                      <table class="w3-table" border-width="0">
                                        <tr>
                                       
                                       <th><font size="3" color="Black" face="Courier New">NAME<br></th>
                                        <th><font size="3" color="Black" face="Courier New"><b><%out.print(name);%></font></b></th>
                                      </tr>
                                      <div id = "img9">
                                          <img src=<%out.print(img);%>/>
                                        </div>
                                         <tr>
                                        
                                      <th><font size="3" color="Black" face="Courier New">FATHER'S NAME</font></b><br></th> 
                                       
                                       <th><font size="3" color="Black" face="Courier New"><b><%out.print(fat.toUpperCase());%></b></font></th>
                                     </tr>
                                        
                                        
                                      <tr>
                                      <th><font size="3" color="Black" face="Courier New">MOTHER'S NAME</font><br></th>
                                      <th><font size="3" color="Black" face="Courier New"><b><%out.print(mom.toUpperCase());%></b></font></th>
                                      </tr>
                                       
                                        
                                       <tr>
                                        <th><font size="3" color="Black" face="Courier New">DATE OF BIRTH</font><br></th>
                                        <th><font size="3" color="Black" face="Courier New"><b><%out.print(dob);%></b></font></th>
                                      </tr>
                                        
                                        <tr>
                                        <th><font size="3" color="Black" face="Courier New">CLASS</font></b><br></th>
                                        <th><font size="3" color="Black" face="Courier New"><b><%out.print(cl);%></b></font></th>
                                        </tr>

                                        <tr>
                                        
                                        <th><font size="3" color="Black" face="Courier New">PHONE</font><br></th>   
                                        <th><font size="3" color="Black" face="Courier New"><b><%out.print(phone);%></b></font></th>
                                      </tr>

                                         <tr>
                                        
                                        <th><font size="3" color="Black" face="Courier New">AADHAR NO</font></b><br></th>
                                        <th><font size="3" color="Black" face="Courier New"><b><%out.print(aadhar);%></b></font></th>
                                      </tr>

                                        <tr>
                                        
                                      <th><font size="3" color="Black" face="Courier New">ADDRESS</font></th>
                                      <th><font size="3" color="Black" face="Courier New"><b><%out.print(addr);%></b></font></th>
                                      </tr>
                                      
                                      <tr>
                                         <th><a href="printf.jsp?name=<%out.print(name);%>&father=<%out.print(fat);%>&class=<%out.print(cl);%>"><button class="btn btn-success"><font size='2' face='courier new'>FEE<br>DETAILS</font></button></a></th>
                                       </tr>
                                       
                                      </table>
                                        <center>
                                          <font size="5" color="Black" face="Courier New"><b>MARKS OVERVIEW</b></font>
                                      

                                          <!--FETCHING MARKS-->
                                            <div id="scroll">
                                           <table class="table table-striped table-bordered" style="overflow:scroll;">
                                            <tr>
                                              <th><font size="2" color="Black" face="Courier New"><b>EXAM_No.</b></font></th>
                                              <th><font size="2" color="Black" face="Courier New"><b>ENGLISH<br>(100)</b></font></th>
                                              <th><font size="2" color="Black" face="Courier New"><b>HINDI<br>(100)</b></font></th>
                                              <th><font size="2" color="Black" face="Courier New"><b>MATHS<br>(100)</b></font></th>
                                              <th><font size="2" color="Black" face="Courier New"><b>GK<br>(100)</b></font></th>
                                              <th><font size="2" color="Black" face="Courier New"><b>DRAWING<br>(50)</b></font></th>
                                              <th><font size="2" color="Black" face="Courier New"><b>DANCE<br>MUSIC<br>(50)</b></font></th>
                                              <th><font size="2" color="Black" face="Courier New"><b>HANDICRAFT<br>(50)</b></font></th>
                                              <th><font size="2" color="Black" face="Courier New"><b>H.W.D.<br>(50)</b></font></th>
                                              <th><font size="2" color="Black" face="Courier New"><b>E.W.D.<br>(50)</b></font></th>
                                              <th><font size="2" color="Black" face="Courier New"><b>SOCIAL<br>SCIENCE<br>(100)</b></font></th>
                                              <th><font size="2" color="Black" face="Courier New"><b>SCIENCE<br>(90)</b></font></th>
                                              <th><font size="2" color="Black" face="Courier New"><b>SCIENCE<br>PRAC.<br>(10)</b></font></th>
                                              <th><font size="2" color="Black" face="Courier New"><b>SANSKRIT<br>(100)</b></font></th>
                                             
                                              <th><font size="2" color="Black" face="Courier New"><b>MAX_MARKS</b></font></th>
                                              <th><font size="2" color="Black" face="Courier New"><b>PERCENTAGE</b></font></th>
                                              <th><font size='2' face='courier new'>PRINT</font></th>
                                              
                                            </tr>

                                      <%
                                        String fet = "'"+name+"'";

                                        //term 1 marks of that student
                                        res2 = stmt2.executeQuery("select * from marksT1 where CLASS = 'X' and NAME="+fet+" and father='"+fat+"'");
                                        while(res2.next())
                                        {
                                          int hindi = res2.getInt(3);
                                          int eng = res2.getInt(4);
                                          int maths = res2.getInt(5);
                                          int gk = res2.getInt(6);
                                          int hwd = res2.getInt(7);
                                              int ewd = res2.getInt(8);
                                              int draw = res2.getInt(9);
                                              int handi = res2.getInt(10);
                                              int dance = res2.getInt(11);
                                              int sci = res2.getInt(12);
                                              int scip = res2.getInt(13);
                                              int social = res2.getInt(14);
                                              int hist = res2.getInt(15);
                                              int geo = res2.getInt(16);
                                              int civics = res2.getInt(17);
                                              int home = res2.getInt(18);
                                              int sans = res2.getInt(19);
                                              int compt = res2.getInt(20);
                                              int compp = res2.getInt(21);
                                          int tot = eng + hindi + maths + gk + draw+handi+dance+hwd+ewd+social+sci+scip+sans;
                                          double max = 950;
                                          double per = ((double)tot/max)*100;
                                          per = Math.round(per* 100.0) / 100.0;
                                          %>
                                         
                                            <tr>
                                              <td><font size="2" color="Black" face="Courier New">TERM_1</td>
                                              <td><font size="2" color="Black" face="Courier New"><b><%out.print(eng);%></b></td>
                                              <td><font size="2" color="Black" face="Courier New"><b><%out.print(hindi);%></b></td>
                                              <td><font size="2" color="Black" face="Courier New"><b><%out.print(maths);%></b></td>
                                              <td><font size="2" color="Black" face="Courier New"><b><%out.print(gk);%></b></td>
                                              <td><font size="2" color="Black" face="Courier New"><b><%out.print(draw);%></b></td>
                                              <td><font size="2" color="Black" face="Courier New"><b><%out.print(dance);%></b></td>
                                              <td><font size="2" color="Black" face="Courier New"><b><%out.print(handi);%></b></td>
                                               <td><font size="2" color="Black" face="Courier New"><b><%out.print(hwd);%></b></td> 
                                               <td><font size="2" color="Black" face="Courier New"><b><%out.print(ewd);%></b></td> 
                                               <td><font size="2" color="Black" face="Courier New"><b><%out.print(social);%></b></td>
                                                <td><font size="2" color="Black" face="Courier New"><b><%out.print(sci);%></b></td>
                                                <td><font size="2" color="Black" face="Courier New"><b><%out.print(scip);%></b></td>
                                              <td><font size="2" color="Black" face="Courier New"><b><%out.print(sans);%></b></td>
                                               
                                              <td><font size="2" color="Black" face="Courier New"><b><%out.print(max);%></b></td>
                                              <td><font size="2" color="Black" face="Courier New"><b><%out.print(per);%></b></td>
                                              <td><a href="print.jsp?name=<%out.print(name);%>&class=<%out.print(cl);%>&term=I&fat=<%out.print(fat);%>"><button class="btn btn-success"><font size="2" face="Courier New"><b>TERM_1</b></font></button></a></td>
                                            </tr>
                                            <%
                                        }

                                        //half_yearly marks of that student
                                        res2 = stmt2.executeQuery("select * from marks_HALF where CLASS = 'X' and NAME="+fet+" and father='"+fat+"'");
                                        while(res2.next())
                                        {
                                              int hindi = res2.getInt(3);
                                          int eng = res2.getInt(4);
                                          int maths = res2.getInt(5);
                                          int gk = res2.getInt(6);
                                          int hwd = res2.getInt(7);
                                              int ewd = res2.getInt(8);
                                              int draw = res2.getInt(9);
                                              int handi = res2.getInt(10);
                                              int dance = res2.getInt(11);
                                              int sci = res2.getInt(12);
                                              int scip = res2.getInt(13);
                                              int social = res2.getInt(14);
                                              int hist = res2.getInt(15);
                                              int geo = res2.getInt(16);
                                              int civics = res2.getInt(17);
                                              int home = res2.getInt(18);
                                              int sans = res2.getInt(19);
                                              int compt = res2.getInt(20);
                                              int compp = res2.getInt(21);
                                          int tot = eng + hindi + maths + gk + draw+handi+dance+hwd+ewd+social+sci+scip+sans;
                                          double max = 950;
                                          double per = ((double)tot/max)*100;
                                          per = Math.round(per* 100.0) / 100.0;
                                          %>
                                            <tr>
                                              <td><font size="2" color="Black" face="Courier New">HALF_YEARLY</td>
                                              <td><font size="2" color="Black" face="Courier New"><b><%out.print(eng);%></b></td>
                                              <td><font size="2" color="Black" face="Courier New"><b><%out.print(hindi);%></b></td>
                                              <td><font size="2" color="Black" face="Courier New"><b><%out.print(maths);%></b></td>
                                              <td><font size="2" color="Black" face="Courier New"><b><%out.print(gk);%></b></td>
                                              <td><font size="2" color="Black" face="Courier New"><b><%out.print(draw);%></b></td>
                                              <td><font size="2" color="Black" face="Courier New"><b><%out.print(dance);%></b></td>
                                              <td><font size="2" color="Black" face="Courier New"><b><%out.print(handi);%></b></td>
                                              <td><font size="2" color="Black" face="Courier New"><b><%out.print(hwd);%></b></td> 
                                              <td><font size="2" color="Black" face="Courier New"><b><%out.print(ewd);%></b></td> 
                                               <td><font size="2" color="Black" face="Courier New"><b><%out.print(social);%></b></td>
                                                <td><font size="2" color="Black" face="Courier New"><b><%out.print(sci);%></b></td>
                                                <td><font size="2" color="Black" face="Courier New"><b><%out.print(scip);%></b></td>
                                              <td><font size="2" color="Black" face="Courier New"><b><%out.print(sans);%></b></td>
                                             
                                              <td><font size="2" color="Black" face="Courier New"><b><%out.print(max);%></b></td>
                                              <td><font size="2" color="Black" face="Courier New"><b><%out.print(per);%></b></td>
                                              <td><a href="print.jsp?name=<%out.print(name);%>&class=<%out.print(cl);%>&term=II&fat=<%out.print(fat);%>"><button class="btn btn-success"><font size="2" face="Courier New"><b>HALF_YEARLY</b></font></button></a></td>
                                            </tr>
                                            <%
                                        }

                                        //term3 marks
                                        //half_yearly marks of that student
                                        res2 = stmt2.executeQuery("select * from marks_T3 where CLASS = 'X' and NAME="+fet+" and father='"+fat+"'");
                                        while(res2.next())
                                        {
                                              int hindi = res2.getInt(3);
                                          int eng = res2.getInt(4);
                                          int maths = res2.getInt(5);
                                          int gk = res2.getInt(6);
                                          int hwd = res2.getInt(7);
                                              int ewd = res2.getInt(8);
                                              int draw = res2.getInt(9);
                                              int handi = res2.getInt(10);
                                              int dance = res2.getInt(11);
                                              int sci = res2.getInt(12);
                                              int scip = res2.getInt(13);
                                              int social = res2.getInt(14);
                                              int hist = res2.getInt(15);
                                              int geo = res2.getInt(16);
                                              int civics = res2.getInt(17);
                                              int home = res2.getInt(18);
                                              int sans = res2.getInt(19);
                                              int compt = res2.getInt(20);
                                              int compp = res2.getInt(21);
                                          int tot = eng + hindi + maths + gk + draw+handi+dance+hwd+ewd+social+sci+scip+sans;
                                          double max = 950;
                                          double per = ((double)tot/max)*100;
                                          per = Math.round(per* 100.0) / 100.0;
                                          %>
                                            <tr>
                                              <td><font size="2" color="Black" face="Courier New">TERM_3</td>
                                              <td><font size="2" color="Black" face="Courier New"><b><%out.print(eng);%></b></td>
                                              <td><font size="2" color="Black" face="Courier New"><b><%out.print(hindi);%></b></td>
                                              <td><font size="2" color="Black" face="Courier New"><b><%out.print(maths);%></b></td>
                                              <td><font size="2" color="Black" face="Courier New"><b><%out.print(gk);%></b></td>
                                              <td><font size="2" color="Black" face="Courier New"><b><%out.print(draw);%></b></td>
                                              <td><font size="2" color="Black" face="Courier New"><b><%out.print(dance);%></b></td>
                                              <td><font size="2" color="Black" face="Courier New"><b><%out.print(handi);%></b></td>
                                                 <td><font size="2" color="Black" face="Courier New"><b><%out.print(hwd);%></b></td> 
                                              <td><font size="2" color="Black" face="Courier New"><b><%out.print(ewd);%></b></td> 
                                              <td><font size="2" color="Black" face="Courier New"><b><%out.print(social);%></b></td>
                                                <td><font size="2" color="Black" face="Courier New"><b><%out.print(sci);%></b></td>
                                                <td><font size="2" color="Black" face="Courier New"><b><%out.print(scip);%></b></td>
                                              <td><font size="2" color="Black" face="Courier New"><b><%out.print(sans);%></b></td>
                                             
                                              <td><font size="2" color="Black" face="Courier New"><b><%out.print(max);%></b></td>
                                              <td><font size="2" color="Black" face="Courier New"><b><%out.print(per);%></b></td>
                                              <td><a href="print.jsp?name=<%out.print(name);%>&class=<%out.print(cl);%>&term=III&fat=<%out.print(fat);%>"><button class="btn btn-success"><font size="2" face="Courier New"><b>TERM_3</b></font></button></a></td>
                                            </tr>
                                            <%
                                        }

                                        //END_TERM marks of that student
                                        res2 = stmt2.executeQuery("select * from marks_END where CLASS = 'X' and NAME="+fet+" and father='"+fat+"'");
                                        while(res2.next())
                                        {
                                              int hindi = res2.getInt(3);
                                          int eng = res2.getInt(4);
                                          int maths = res2.getInt(5);
                                          int gk = res2.getInt(6);
                                          int hwd = res2.getInt(7);
                                              int ewd = res2.getInt(8);
                                              int draw = res2.getInt(9);
                                              int handi = res2.getInt(10);
                                              int dance = res2.getInt(11);
                                              int sci = res2.getInt(12);
                                              int scip = res2.getInt(13);
                                              int social = res2.getInt(14);
                                              int hist = res2.getInt(15);
                                              int geo = res2.getInt(16);
                                              int civics = res2.getInt(17);
                                              int home = res2.getInt(18);
                                              int sans = res2.getInt(19);
                                              int compt = res2.getInt(20);
                                              int compp = res2.getInt(21);
                                          int tot = eng + hindi + maths + gk + draw+handi+dance+hwd+ewd+social+sci+scip+sans;
                                          double max = 950;
                                          double per = ((double)tot/max)*100;
                                          per = Math.round(per* 100.0) / 100.0;
                                          %>
                                            <tr>
                                              <td><font size="2" color="Black" face="Courier New">END_TERM</td>
                                              <td><font size="2" color="Black" face="Courier New"><b><%out.print(eng);%></b></td>
                                              <td><font size="2" color="Black" face="Courier New"><b><%out.print(hindi);%></b></td>
                                              <td><font size="2" color="Black" face="Courier New"><b><%out.print(maths);%></b></td>
                                              <td><font size="2" color="Black" face="Courier New"><b><%out.print(gk);%></b></td>
                                              <td><font size="2" color="Black" face="Courier New"><b><%out.print(draw);%></b></td>
                                              <td><font size="2" color="Black" face="Courier New"><b><%out.print(dance);%></b></td>
                                              <td><font size="2" color="Black" face="Courier New"><b><%out.print(handi);%></b></td>
                                                <td><font size="2" color="Black" face="Courier New"><b><%out.print(hwd);%></b></td> 
                                              <td><font size="2" color="Black" face="Courier New"><b><%out.print(ewd);%></b></td>
                                                <td><font size="2" color="Black" face="Courier New"><b><%out.print(social);%></b></td>
                                                <td><font size="2" color="Black" face="Courier New"><b><%out.print(sci);%></b></td>
                                                <td><font size="2" color="Black" face="Courier New"><b><%out.print(scip);%></b></td>
                                              <td><font size="2" color="Black" face="Courier New"><b><%out.print(sans);%></b></td>
                                           
                                                <td><font size="2" color="Black" face="Courier New"><b><%out.print(max);%></b></td>
                                              <td><font size="2" color="Black" face="Courier New"><b><%out.print(per);%></b></td>
                                              <td><a href="print.jsp?name=<%out.print(name);%>&class=<%out.print(cl);%>&term=IV&fat=<%out.print(fat);%>"><button class="btn btn-success"><font size="2" face="Courier New"><b>END_TERM</b></font></button></a></td>
                                            </tr>
                                            <%
                                        }
                                        %></table></font><%

                                        mod++;
                                      %>
                                      </center>

              </div>
            </center>
          </h4></div></div></div>

          </td>
          <td><font size="2" face="courier new"><b><%out.print(fat.toUpperCase());%></b></font></td>
          <td><font size="2" face="courier new"><b><%out.print(mom.toUpperCase());%></b></font></td>
          </tr><%
          
        }
        %>
        
        </table>
      </div>

      <!--VIEW STUDENTS ENDS-->   