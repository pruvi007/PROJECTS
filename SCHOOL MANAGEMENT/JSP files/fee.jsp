<%@ page import = "java.io.*" %>
<%@ page import = "java.sql.*" %>
<%@ page import = "java.util.*" %>

<html>
<title>FEES</title>
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
                height:350px;
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
     
                        background-color: #60603F;
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
                  #pay_div
                  {
                      position: absolute;
                      left:3%;
                      top:40%;
                     
                  }
                  #view_acc,#marks_acc
                  {
                      position: absolute;
                      top:20%;
                      left:15%;
                       z-index:10;
                      background-color: white;
                  }

                  #marks_div
                  {
                      position: absolute;
                      top:60%;
                      left:3%;

                  }
                  #view_div
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
                  #apr,#may,#jun,#jul,#aug,#sep,#oct,#nov,#dec,#jan,#feb,#mar
                  {
                      border: 3px solid black;
                      padding: 20px; 
                      width: 850px;
                      resize: both;
                      overflow: auto;
                      position:absolute;
                      top:25%;
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
                  #pay_form
                  {
                     position: absolute;
                     padding: 5px; 
                     border: 3px solid black;
                     width: 1000px;
                     top:30%;
                     left:20%;
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
                      
                      width:13%;
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
                      top:60%;
                  }
                  #log
                  {
                    position: fixed;
                    right:2%;
                    top:2%;
                    z-index:10000;
                  }
                  #apr_Input,#may_Input,#jun_Input,#jul_Input,#aug_Input,#sep_Input,#oct_Input,#nov_Input,#dec_Input,#jan_Input,#feb_Input,#mar_Input {
                  width: 30%;
                  font-size: 18px;
                  font-weight:bold;
                  padding: 10px 20px 12px 40px;
                  border: 2px solid #323232;
                 
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
        responsiveVoice.speak("fees portal of students", "UK English Female");

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
                                              $scope.myHeader = "FEES PORTAL";
                                          }, 3000);
                                         
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

      <div id="fix">
           <nav class="navbar navbar-inverse" data-spy="affix" data-offset-top="197">
          </nav>
       </div>

       <!-----SIDE NAVIGATION BAR---->
       <div id="fixside">
              <div id="pay_div">
                   <button type="button" onclick="pay()" class="btn btn-primary bt-lg"><font size="3" face="courier new">PAY FEE</button>
                 </div>
                 <div id="view_div">
                   <button type="button" class="btn btn-primary bt-lg" data-toggle="collapse" data-target="#view"><font size="3" face="courier new">VIEW FEE</button>
                 </div>
                  <div id="back">
                        <a href="http://localhost:8080/School/school_spa.jsp#menu1">
                        <button class="btn btn-danger"><font size="3" face="courier new">GO BACK</font>
                        </button></a>
                    </div>
            </div>
            <!------------------------->

            <!------------------------------------------------------->
            <!-----VIEW ACCORDION FOR MONTH WISE FEES--------->
                 <div id="view_acc">
                  <div id="view" class="collapse">
                    <table class="table table-striped">
                      <tr><th colspan="3"><center></center><font size="3" face="courier new"><b>VIEW FEES</b></font></center></th></tr>
                      <tr>
                      <th> <font size="3" face="courier new"><b>APRIL</b></font></th>
                      <th><button class="btn btn-primary btn-sm" onclick="myFunction_2()">SHOW</button></th>
                    </tr>
                    <tr>
                      <th> <font size="3" face="courier new"><b>MAY</b></font></th>
                      <th><button class="btn btn-primary btn-sm" onclick="myFunction_1()">SHOW</button></th>
                    </tr>
                    <tr>
                      <tr>
                      <th> <font size="3" face="courier new"><b>JUNE</b></font></th>
                      <th><button class="btn btn-primary btn-sm" onclick="myFunction_0()">SHOW</button></th>
                    </tr>
                    <tr>
                    <tr>
                      <tr>
                      <th><font size="3" face="courier new"><b>JULY</b></font></th>
                      <th> <button class="btn btn-primary btn-sm" onclick="myFunction1()">SHOW</button></th>
                    </tr>
                    <tr>
                      <th> <font size="3" face="courier new"><b>AUGUST</b></font></th>
                      <th><button class="btn btn-primary btn-sm" onclick="myFunction2()">SHOW</button></th>
                    </tr>
                    <tr>
                      <th> <font size="3" face="courier new"><b>SEPTEMBER</b></font></th>
                      <th> <button class="btn btn-primary btn-sm" onclick="myFunction3()">SHOW</button></th>
                    </tr>
                    <tr>
                      <th> <font size="3" face="courier new"><b>OCTOBER</b></font></th>
                      <th> <button class="btn btn-primary btn-sm" onclick="myFunction4()">SHOW</button></th>
                    </tr>
                    <tr>
                      <th> <font size="3" face="courier new"><b>NOVEMBER</b></font></th>
                      <th> <button class="btn btn-primary btn-sm" onclick="myFunction5()">SHOW</button></th>
                    </tr><tr>
                      <th> <font size="3" face="courier new"><b>DECEMBER</b></font></th>
                      <th> <button class="btn btn-primary btn-sm" onclick="myFunction6()">SHOW</button></th>
                    </tr><tr>
                      <th> <font size="3" face="courier new"><b>JANUARY</b></font></th>
                      <th> <button class="btn btn-primary btn-sm" onclick="myFunction7()">SHOW</button></th>
                    </tr><tr>
                      <th> <font size="3" face="courier new"><b>FEBRUARY</b></font></th>
                      <th> <button class="btn btn-primary btn-sm" onclick="myFunction8()">SHOW</button></th>
                    </tr><tr>
                      <th> <font size="3" face="courier new"><b>MARCH</b></font></th>
                      <th> <button class="btn btn-primary btn-sm" onclick="myFunction9()">SHOW</button></th>
                    </tr>
                   
                  </table>

                  </div>
                </div>
<!------------------------------------------------------------------------------------>
<!------------------------------------------------------------------------------------>


<!---------SCRIPTS FOR OPENING MONTH WISE FEEES----------->
<!-------------------------------------------------------->
            <script>
              function pay(){
                var x = document.getElementById("pay_form");
                  if (x.style.display === "none") {
                      x.style.display = "block";
                  } else {
                      x.style.display = "none";
                  }
              }
              function myFunction_2() {
                  var x = document.getElementById("apr");
                  if (x.style.display === "none") {
                      x.style.display = "block";
                  } else {
                      x.style.display = "none";
                  }
              } 
              function myFunction_1() {
                  var x = document.getElementById("may");
                  if (x.style.display === "none") {
                      x.style.display = "block";
                  } else {
                      x.style.display = "none";
                  }
              } 
              function myFunction_0() {
                  var x = document.getElementById("jun");
                  if (x.style.display === "none") {
                      x.style.display = "block";
                  } else {
                      x.style.display = "none";
                  }
              } 
              function myFunction1() {
                  var x = document.getElementById("jul");
                  if (x.style.display === "none") {
                      x.style.display = "block";
                  } else {
                      x.style.display = "none";
                  }
              } 
              function myFunction2() {
                  var y = document.getElementById("aug");
                  if (y.style.display === "none") {
                      y.style.display = "block";
                  } else {
                      y.style.display = "none";
                  }
              } 
              function myFunction3() {
                  var x = document.getElementById("sep");
                  if (x.style.display === "none") {
                      x.style.display = "block";
                  } else {
                      x.style.display = "none";
                  }
              } 
              function myFunction4() {
                  var x = document.getElementById("oct");
                  if (x.style.display === "none") {
                      x.style.display = "block";
                  } else {
                      x.style.display = "none";
                  }
              } 
              function myFunction5() {
                  var x = document.getElementById("nov");
                  if (x.style.display === "none") {
                      x.style.display = "block";
                  } else {
                      x.style.display = "none";
                  }
              } 
              function myFunction6() {
                  var x = document.getElementById("dec");
                  if (x.style.display === "none") {
                      x.style.display = "block";
                  } else {
                      x.style.display = "none";
                  }
              } 
              function myFunction7() {
                  var x = document.getElementById("jan");
                  if (x.style.display === "none") {
                      x.style.display = "block";
                  } else {
                      x.style.display = "none";
                  }
              } 
              function myFunction8() {
                  var x = document.getElementById("feb");
                  if (x.style.display === "none") {
                      x.style.display = "block";
                  } else {
                      x.style.display = "none";
                  }
              } 
              function myFunction9() {
                  var x = document.getElementById("mar");
                  if (x.style.display === "none") {
                      x.style.display = "block";
                  } else {
                      x.style.display = "none";
                  }
              } 
          
            </script>
   <!----------------------------------------------------------------------------->
   <!----------------------------------------------------------------------------->



   <!-------------------------------------------------------------------------------------->
   <!--------------------PAY FEES OF STUDENTS---------------------------------------------->

   <div id ="pay_form" style="display:none;">
      <center><font size="4" face="courier new"><b>FEE FORM</b></font></center>
      <br>
      <form class = "form-inline" action = "fee_submit.jsp" name="login"  method="post">
          <!--<table class = "table ">
          <tr class="active ">-->
          <center>
         
          <div class = "form-group row">
             <div class="col-lg-12">
              
               <font size="3" face="Courier New"><b>NAME</b></font><br><input  name="first" class="form-control" placeholder="NAME"  size="25%" required="required" style="font-size:15px;font-family:Courier New;font-weight: bold;">
                
                </div>
                </div>
                &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp                                  
                <div class = "form-group row">
             <div class="col-lg-12">
              
               <font size="3" face="Courier New"><b>FATHER'S-NAME</b></font><br><input  name="father" class="form-control" placeholder="FATHER'S-NAME"  size="25%" required="required" style="font-size:15px;font-family:Courier New;font-weight: bold;">
                
                </div>
                </div>
                 &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp  
                <div class = "form-group row">
             <div class="col-lg-12">
              
               <font size="3" face="Courier New"><b>CLASS</b></font><br><input  name="class" class="form-control" placeholder="CLASS"  size="10%" required="required" style="font-size:15px;font-family:Courier New;font-weight: bold;">
                
                </div>
                </div>
                <br><br>

                <div class = "form-group row">
             <div class="col-lg-12">
                      <font size="3" face="Courier New"><b>MONTH</b></font><br>
                     <div class="styled-select black rounded">
                        <select name="mon">
                          <option>APRIL</option>
                          <option>MAY</option>
                          <option>JUNE</option>
                          <option>JULY</option>
                          <option>AUGUST</option>
                          <option>SEPTEMBER</option>
                          <option>OCTOBER</option>
                          <option>NOVEMEBER</option>
                          <option>DECEMBER</option>
                          <option>JANUARY</option>
                          <option>FEBRUARY</option>
                          <option>MARCH</option>
                        </select>
                      </div>
                </div>
                </div>
                
               <div class = "form-group row">
             <div class="col-lg-12">
              
               <font size="3" face="Courier New"><b>TOTAL-AMOUNT</b></font><br><input  name="total" class="form-control" placeholder="TOTAL"  size="10%" required="required" style="font-size:15px;font-family:Courier New;font-weight: bold;">
                
                </div>
                </div>
               
                <div class = "form-group row">
             <div class="col-lg-12">
              
               <font size="3" face="Courier New"><b>AMOUNT-PAID</b></font><br><input  name="paid" class="form-control" placeholder="PAID"  size="10%" height="10%" required="required" style="font-size:15px;font-family:Courier New;font-weight: bold;">
                
                </div>
                </div> 
                

                 
                

                <div class = "form-group row">
             <div class="col-lg-12">
              
               <font size="3" face="Courier New"><b>EXAM-FEE</b></font><br><input  name="exam" class="form-control" placeholder="EXAM-FEES"  size="10%" required="required" style="font-size:15px;font-family:Courier New;font-weight: bold;">
                
                </div>
                </div>

                <div class = "form-group row">
             <div class="col-lg-12">
              
               <font size="3" face="Courier New"><b>MSC CHARGES</b></font><br><input  name="msc" class="form-control" placeholder="MSC"  size="10%" required="required" style="font-size:15px;font-family:Courier New;font-weight: bold;">
                
                </div>
                </div>
                
          
              <div class = "form-group row">
             <div class="col-lg-12">
              
               <font size="3" face="Courier New"><b>I.D.</b></font><br><input  name="id" class="form-control" placeholder="ID"  size="10%" required="required" style="font-size:15px;font-family:Courier New;font-weight: bold;">
                
                </div>
                </div>

              <div class = "form-group row">
             <div class="col-lg-12">
              
               <font size="3" face="Courier New"><b>DIARY</b></font><br><input  name="diary" class="form-control" placeholder="DIARY"  size="10%" required="required" style="font-size:15px;font-family:Courier New;font-weight: bold;">
                
                </div>
                </div>

                <div class = "form-group row">
             <div class="col-lg-12">
              
               <font size="3" face="Courier New"><b>GEN/ELEC</b></font><br><input  name="gen" class="form-control" placeholder="GEN/ELEC"  size="10%" required="required" style="font-size:15px;font-family:Courier New;font-weight: bold;">
                
                </div>
                </div>
               <br><br><br>

             
          <center><button class = "btn btn-danger btn-sm" type="submit" value = "SUBMIT" name="submit"><h5>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp<font size="5" face="courier new"><b>SUBMIT</b></font>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp</h5></button></center>
        </form>

        </center>
   </div>


   <!--------------------END OF PAY FEES--------------------------------------------------->
   <!-------------------------------------------------------------------------------------->


   <!--------------------------------------------------------------------->
   <!------------MONTH WISE DISPLAY DIVSION--------->
  <div id ="apr" style="display:none;">

        <font size="5" face="courier new"><b>APRIL</b></font>

        &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
       <input type="text" id="apr_Input" onkeyup="apr_ser()" placeholder="ENTER NAME" style="font-family:courier new;font-size:15px;">
        <br><br>
        <!--------------------------------------------->
        <!--SCRIPT FOR SEARCH BAR-->
        <script>
          function apr_ser() {
            // Declare variables
            var input, filter, table, tr, td, i;
            input = document.getElementById("apr_Input");
            filter = input.value.toUpperCase();
            table = document.getElementById("apr_table");
            tr = table.getElementsByTagName("tr");

            // Loop through all table rows, and hide those who don't match the search query
            for (i = 0; i < tr.length; i++) {
              td = tr[i].getElementsByTagName("td")[1];
              if (td) {
                if (td.innerHTML.toUpperCase().indexOf(filter) > -1) {
                  tr[i].style.display = "";
                } else {
                  tr[i].style.display = "none";
                }
              }
            }
          }
        </script>
        <!--------------------------------------------------->
        <div id="scroll">
        <table id = "apr_table" class = "table table-striped table-bordered table-responsive w-auto" width="20%">
        <tr class="active">
          <th><font size="2" face="courier new">SNO</font></th>
          <th><font size="2" face="courier new">NAME</font></th>
          <th><font size="2" face="courier new">FATHER'S NAME</font></th>
          <th><font size="2" face="courier new">CLASS</font></th>
         
          <th><font size="2" face="courier new">PAID</font></th>
          <th><font size="2" face="courier new">EXAM FEE</font></th>
          <th><font size="2" face="courier new">MISC.</font></th>
          <th><font size="2" face="courier new">GEN/ELEC</font></th>
          <th><font size="2" face="courier new">I.D</font></th>
          <th><font size="2" face="courier new">DIARY</font></th>
          <th><font size="2" face="courier new">BALANCE</font></th>
          
          <th><font size="2" face="courier new">TOTAL<br>AMOUNT</font></th>
        </tr>
        <%
            res = stmt.executeQuery("select * from apr_fee order by class");
            int c = 1;
            while(res.next())
            {
                String name = res.getString(2);
                String fat = res.getString(4);
                String cl = res.getString(3);
                int p = res.getInt(6);
                int t = res.getInt(5);
                int e = res.getInt(8);
                int m = res.getInt(9);
                int ge = res.getInt(10);
                int id = res.getInt(11);
                int diary = res.getInt(12);
                int b = t - (p+e+m+ge+id+diary);
                %>
                    <tr>
                      <td><font size="2" face="courier new"><%out.print(c++);%></font></td>
                      <td><font size="2" face="courier new"><%out.print(name);%></font></td>
                      <td><font size="2" face="courier new"><%out.print(fat);%></font></td>
                      <td><font size="2" face="courier new"><%out.print(cl);%></font></td>
                      <td><font size="2" face="courier new"><b><%out.print(p);%></b></font></td>
                      <td><font size="2" face="courier new"><b><%out.print(e);%></b></font></td>
                      <td><font size="2" face="courier new"><b><%out.print(m);%></b></font></td>
                      <td><font size="2" face="courier new"><b><%out.print(ge);%></b></font></td>

                      <td><font size="2" face="courier new"><b><%out.print(id);%></b></font></td>
                      <td><font size="2" face="courier new"><b><%out.print(diary);%></b></font></td>
                      <td><font size="2" face="courier new"><b><%out.print(b);%></b></font></td>
                      <%
                        if(t==0)
                        {
                            %>
                            <td><img class="img-responsive" src="ques.jpg" width="30%"/>
                            <%
                        }
                        else if(t<=(p+e+m+ge+id+diary))
                        {
                            %>
                            <td><img class="img-responsive" src="tick.jpg" width="30%"/><font size="3" face="courier new"><b><%out.print(t);%></b></font></td>
        
                            <%
                        }
                        
                        else
                        {
                            %>
                            <td><img class="img-responsive" src="cross.jpg" width="30%"/><font size="3" face="courier new"><b><%out.print(t);%></b></font></td>

                            <%
                        }
                        %>
                      </tr>
                      <%

              
            }

        %>
        </table>
        </div>

  </div>

  <div id ="may" style="display:none;">

        <font size="5" face="courier new"><b>MAY</b></font>

        &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
       <input type="text" id="may_Input" onkeyup="may_ser()" placeholder="ENTER NAME" style="font-family:courier new;font-size:15px;">
        <br><br>
        <!--------------------------------------------->
        <!--SCRIPT FOR SEARCH BAR-->
        <script>
          function may_ser() {
            // Declare variables
            var input, filter, table, tr, td, i;
            input = document.getElementById("may_Input");
            filter = input.value.toUpperCase();
            table = document.getElementById("may_table");
            tr = table.getElementsByTagName("tr");

            // Loop through all table rows, and hide those who don't match the search query
            for (i = 0; i < tr.length; i++) {
              td = tr[i].getElementsByTagName("td")[1];
              if (td) {
                if (td.innerHTML.toUpperCase().indexOf(filter) > -1) {
                  tr[i].style.display = "";
                } else {
                  tr[i].style.display = "none";
                }
              }
            }
          }
        </script>
        <!--------------------------------------------------->
        <div id="scroll">
        <table id = "may_table" class = "table table-striped table-bordered table-responsive w-auto" width="20%">
        <tr class="active">
          <th><font size="2" face="courier new">SNO</font></th>
          <th><font size="2" face="courier new">NAME</font></th>
          <th><font size="2" face="courier new">FATHER'S NAME</font></th>
          <th><font size="2" face="courier new">CLASS</font></th>
         
          <th><font size="2" face="courier new">PAID</font></th>
          <th><font size="2" face="courier new">EXAM FEE</font></th>
           <th><font size="2" face="courier new">MISC.</font></th>
          <th><font size="2" face="courier new">GEN/ELEC</font></th>
          <th><font size="2" face="courier new">I.D</font></th>
          <th><font size="2" face="courier new">DIARY</font></th>
          <th><font size="2" face="courier new">BALANCE</font></th>
          
          <th><font size="2" face="courier new">TOTAL<br>AMOUNT</font></th>
        </tr>
        <%
            res = stmt.executeQuery("select * from may_fee order by class");
            c = 1;
            while(res.next())
            {
                String name = res.getString(2);
                String fat = res.getString(4);
                String cl = res.getString(3);
                int p = res.getInt(6);
                int t = res.getInt(5);
                int e = res.getInt(8);
                int m = res.getInt(9);
                int ge = res.getInt(10);
                int id = res.getInt(11);
                int diary = res.getInt(12);
                int b = t - (p+e+m+ge+id+diary);
                %>
                    <tr>
                      <td><font size="2" face="courier new"><%out.print(c++);%></font></td>
                      <td><font size="2" face="courier new"><%out.print(name);%></font></td>
                      <td><font size="2" face="courier new"><%out.print(fat);%></font></td>
                      <td><font size="2" face="courier new"><%out.print(cl);%></font></td>
                      <td><font size="2" face="courier new"><b><%out.print(p);%></b></font></td>
                      <td><font size="2" face="courier new"><b><%out.print(e);%></b></font></td>
                      <td><font size="2" face="courier new"><b><%out.print(m);%></b></font></td>
                      <td><font size="2" face="courier new"><b><%out.print(ge);%></b></font></td>

                      <td><font size="2" face="courier new"><b><%out.print(id);%></b></font></td>
                      <td><font size="2" face="courier new"><b><%out.print(diary);%></b></font></td>
                      <td><font size="2" face="courier new"><b><%out.print(b);%></b></font></td>
                      <%
                        if(t==0)
                        {
                            %>
                            <td><img class="img-responsive" src="ques.jpg" width="30%"/>
                            <%
                        }
                        else if(t<=(p+e+m+ge+id+diary))
                        {
                            %>
                            <td><img class="img-responsive" src="tick.jpg" width="30%"/><font size="3" face="courier new"><b><%out.print(t);%></b></font></td>
        
                            <%
                        }
                        
                        else
                        {
                            %>
                            <td><img class="img-responsive" src="cross.jpg" width="30%"/><font size="3" face="courier new"><b><%out.print(t);%></b></font></td>

                            <%
                        }
                        %>
                      </tr>
                      <%

              
            }

        %>
        </table>
        </div>

  </div>

  <div id ="jun" style="display:none;">

        <font size="5" face="courier new"><b>JUNE</b></font>

        &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
       <input type="text" id="jun_Input" onkeyup="jun_ser()" placeholder="ENTER NAME" style="font-family:courier new;font-size:15px;">
        <br><br>
        <!--------------------------------------------->
        <!--SCRIPT FOR SEARCH BAR-->
        <script>
          function jun_ser() {
            // Declare variables
            var input, filter, table, tr, td, i;
            input = document.getElementById("jun_Input");
            filter = input.value.toUpperCase();
            table = document.getElementById("jun_table");
            tr = table.getElementsByTagName("tr");

            // Loop through all table rows, and hide those who don't match the search query
            for (i = 0; i < tr.length; i++) {
              td = tr[i].getElementsByTagName("td")[1];
              if (td) {
                if (td.innerHTML.toUpperCase().indexOf(filter) > -1) {
                  tr[i].style.display = "";
                } else {
                  tr[i].style.display = "none";
                }
              }
            }
          }
        </script>
        <!--------------------------------------------------->
        <div id="scroll">
        <table id = "jun_table" class = "table table-striped table-bordered table-responsive w-auto" width="20%">
        <tr class="active">
          <th><font size="2" face="courier new">SNO</font></th>
          <th><font size="2" face="courier new">NAME</font></th>
          <th><font size="2" face="courier new">FATHER'S NAME</font></th>
          <th><font size="2" face="courier new">CLASS</font></th>
         
          <th><font size="2" face="courier new">PAID</font></th>
          <th><font size="2" face="courier new">EXAM FEE</font></th>
           <th><font size="2" face="courier new">MISC.</font></th>
          <th><font size="2" face="courier new">GEN/ELEC</font></th>
          <th><font size="2" face="courier new">I.D</font></th>
          <th><font size="2" face="courier new">DIARY</font></th>
          <th><font size="2" face="courier new">BALANCE</font></th>
          
          <th><font size="2" face="courier new">TOTAL<br>AMOUNT</font></th>
        </tr>
        <%
            res = stmt.executeQuery("select * from jun_fee order by class");
            c = 1;
            while(res.next())
            {
                String name = res.getString(2);
                String fat = res.getString(4);
                String cl = res.getString(3);
                int p = res.getInt(6);
                int t = res.getInt(5);
                int e = res.getInt(8);
                 int m = res.getInt(9);
                int ge = res.getInt(10);
                int id = res.getInt(11);
                int diary = res.getInt(12);
                int b = t - (p+e+m+ge+id+diary);
                %>
                    <tr>
                      <td><font size="2" face="courier new"><%out.print(c++);%></font></td>
                      <td><font size="2" face="courier new"><%out.print(name);%></font></td>
                      <td><font size="2" face="courier new"><%out.print(fat);%></font></td>
                      <td><font size="2" face="courier new"><%out.print(cl);%></font></td>
                      <td><font size="2" face="courier new"><b><%out.print(p);%></b></font></td>
                      <td><font size="2" face="courier new"><b><%out.print(e);%></b></font></td>
                      <td><font size="2" face="courier new"><b><%out.print(m);%></b></font></td>
                      <td><font size="2" face="courier new"><b><%out.print(ge);%></b></font></td>

                      <td><font size="2" face="courier new"><b><%out.print(id);%></b></font></td>
                      <td><font size="2" face="courier new"><b><%out.print(diary);%></b></font></td>
                      <td><font size="2" face="courier new"><b><%out.print(b);%></b></font></td>
                      <%
                        if(t==0)
                        {
                            %>
                            <td><img class="img-responsive" src="ques.jpg" width="30%"/>
                            <%
                        }
                        else if(t<=(p+e+m+ge+id+diary))
                        {
                            %>
                            <td><img class="img-responsive" src="tick.jpg" width="30%"/><font size="3" face="courier new"><b><%out.print(t);%></b></font></td>
        
                            <%
                        }
                        
                        else
                        {
                            %>
                            <td><img class="img-responsive" src="cross.jpg" width="30%"/><font size="3" face="courier new"><b><%out.print(t);%></b></font></td>

                            <%
                        }
                        %>
                      </tr>
                      <%

              
            }

        %>
        </table>
        </div>

  </div>

  <div id ="jul" style="display:none;">

        <font size="5" face="courier new"><b>JULY</b></font>

        &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
       <input type="text" id="jul_Input" onkeyup="jul_ser()" placeholder="ENTER NAME" style="font-family:courier new;font-size:15px;">
        <br><br>
        <!--------------------------------------------->
        <!--SCRIPT FOR SEARCH BAR-->
        <script>
          function jul_ser() {
            // Declare variables
            var input, filter, table, tr, td, i;
            input = document.getElementById("jul_Input");
            filter = input.value.toUpperCase();
            table = document.getElementById("jul_table");
            tr = table.getElementsByTagName("tr");

            // Loop through all table rows, and hide those who don't match the search query
            for (i = 0; i < tr.length; i++) {
              td = tr[i].getElementsByTagName("td")[1];
              if (td) {
                if (td.innerHTML.toUpperCase().indexOf(filter) > -1) {
                  tr[i].style.display = "";
                } else {
                  tr[i].style.display = "none";
                }
              }
            }
          }
        </script>
        <!--------------------------------------------------->
        <div id="scroll">
        <table id = "jul_table" class = "table table-striped table-bordered table-responsive w-auto" width="20%">
        <tr class="active">
          <th><font size="2" face="courier new">SNO</font></th>
          <th><font size="2" face="courier new">NAME</font></th>
          <th><font size="2" face="courier new">FATHER'S NAME</font></th>
          <th><font size="2" face="courier new">CLASS</font></th>
         
          <th><font size="2" face="courier new">PAID</font></th>
          <th><font size="2" face="courier new">EXAM FEE</font></th>
           <th><font size="2" face="courier new">MISC.</font></th>
          <th><font size="2" face="courier new">GEN/ELEC</font></th>
          <th><font size="2" face="courier new">I.D</font></th>
          <th><font size="2" face="courier new">DIARY</font></th>
          <th><font size="2" face="courier new">BALANCE</font></th>
          
          <th><font size="2" face="courier new">TOTAL<br>AMOUNT</font></th>
        </tr>
        <%
            res = stmt.executeQuery("select * from jul_fee order by class");
            c = 1;
            while(res.next())
            {
                String name = res.getString(2);
                String fat = res.getString(4);
                String cl = res.getString(3);
                int p = res.getInt(6);
                int t = res.getInt(5);
                int e = res.getInt(8);
                 int m = res.getInt(9);
                int ge = res.getInt(10);
                int id = res.getInt(11);
                int diary = res.getInt(12);
                int b = t - (p+e+m+ge+id+diary);
                %>
                    <tr>
                      <td><font size="2" face="courier new"><%out.print(c++);%></font></td>
                      <td><font size="2" face="courier new"><%out.print(name);%></font></td>
                      <td><font size="2" face="courier new"><%out.print(fat);%></font></td>
                      <td><font size="2" face="courier new"><%out.print(cl);%></font></td>
                      <td><font size="2" face="courier new"><b><%out.print(p);%></b></font></td>
                      <td><font size="2" face="courier new"><b><%out.print(e);%></b></font></td>
                       <td><font size="2" face="courier new"><b><%out.print(m);%></b></font></td>
                      <td><font size="2" face="courier new"><b><%out.print(ge);%></b></font></td>

                      <td><font size="2" face="courier new"><b><%out.print(id);%></b></font></td>
                      <td><font size="2" face="courier new"><b><%out.print(diary);%></b></font></td>
                      <td><font size="2" face="courier new"><b><%out.print(b);%></b></font></td>
                      <%
                        if(t==0)
                        {
                            %>
                            <td><img class="img-responsive" src="ques.jpg" width="30%"/>
                            <%
                        }
                        else if(t<=(p+e+m+ge+id+diary))
                        {
                            %>
                            <td><img class="img-responsive" src="tick.jpg" width="30%"/><font size="3" face="courier new"><b><%out.print(t);%></b></font></td>
        
                            <%
                        }
                        
                        else
                        {
                            %>
                            <td><img class="img-responsive" src="cross.jpg" width="30%"/><font size="3" face="courier new"><b><%out.print(t);%></b></font></td>

                            <%
                        }
                        %>
                      </tr>
                      <%

              
            }

        %>
        </table>
        </div>

  </div>

  <div id ="aug" style="display:none;">

        <font size="5" face="courier new"><b>AUGUST</b></font>

        &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
       <input type="text" id="aug_Input" onkeyup="aug_ser()" placeholder="ENTER NAME" style="font-family:courier new;font-size:15px;">
        <br><br>
        <!--------------------------------------------->
        <!--SCRIPT FOR SEARCH BAR-->
        <script>
          function aug_ser() {
            // Declare variables
            var input, filter, table, tr, td, i;
            input = document.getElementById("aug_Input");
            filter = input.value.toUpperCase();
            table = document.getElementById("aug_table");
            tr = table.getElementsByTagName("tr");

            // Loop through all table rows, and hide those who don't match the search query
            for (i = 0; i < tr.length; i++) {
              td = tr[i].getElementsByTagName("td")[1];
              if (td) {
                if (td.innerHTML.toUpperCase().indexOf(filter) > -1) {
                  tr[i].style.display = "";
                } else {
                  tr[i].style.display = "none";
                }
              }
            }
          }
        </script>
        <!--------------------------------------------------->
        <div id="scroll">
        <table id = "aug_table" class = "table table-striped table-bordered table-responsive w-auto" width="20%">
        <tr class="active">
          <th><font size="2" face="courier new">SNO</font></th>
          <th><font size="2" face="courier new">NAME</font></th>
          <th><font size="2" face="courier new">FATHER'S NAME</font></th>
          <th><font size="2" face="courier new">CLASS</font></th>
         
          <th><font size="2" face="courier new">PAID</font></th>
          <th><font size="2" face="courier new">EXAM FEE</font></th>
           <th><font size="2" face="courier new">MISC.</font></th>
          <th><font size="2" face="courier new">GEN/ELEC</font></th>
          <th><font size="2" face="courier new">I.D</font></th>
          <th><font size="2" face="courier new">DIARY</font></th>
          <th><font size="2" face="courier new">BALANCE</font></th>
          
          <th><font size="2" face="courier new">TOTAL<br>AMOUNT</font></th>
        </tr>
        <%
            res = stmt.executeQuery("select * from aug_fee order by class");
            c = 1;
            while(res.next())
            {
                String name = res.getString(2);
                String fat = res.getString(4);
                String cl = res.getString(3);
                int p = res.getInt(6);
                int t = res.getInt(5);
                int e = res.getInt(8);
                 int m = res.getInt(9);
                int ge = res.getInt(10);
                int id = res.getInt(11);
                int diary = res.getInt(12);
                int b = t - (p+e+m+ge+id+diary);
                %>
                    <tr>
                      <td><font size="2" face="courier new"><%out.print(c++);%></font></td>
                      <td><font size="2" face="courier new"><%out.print(name);%></font></td>
                      <td><font size="2" face="courier new"><%out.print(fat);%></font></td>
                      <td><font size="2" face="courier new"><%out.print(cl);%></font></td>
                      <td><font size="2" face="courier new"><b><%out.print(p);%></b></font></td>
                      <td><font size="2" face="courier new"><b><%out.print(e);%></b></font></td>
                       <td><font size="2" face="courier new"><b><%out.print(m);%></b></font></td>
                      <td><font size="2" face="courier new"><b><%out.print(ge);%></b></font></td>

                      <td><font size="2" face="courier new"><b><%out.print(id);%></b></font></td>
                      <td><font size="2" face="courier new"><b><%out.print(diary);%></b></font></td>
                      <td><font size="2" face="courier new"><b><%out.print(b);%></b></font></td>
                      <%
                        if(t==0)
                        {
                            %>
                            <td><img class="img-responsive" src="ques.jpg" width="30%"/>
                            <%
                        }
                        else if(t<=(p+e+m+ge+id+diary))
                        {
                            %>
                            <td><img class="img-responsive" src="tick.jpg" width="30%"/><font size="3" face="courier new"><b><%out.print(t);%></b></font></td>
        
                            <%
                        }
                       
                        else
                        {
                            %>
                            <td><img class="img-responsive" src="cross.jpg" width="30%"/><font size="3" face="courier new"><b><%out.print(t);%></b></font></td>

                            <%
                        }
                        %>
                      </tr>
                      <%

              
            }

        %>
        </table>
        </div>

  </div>

  <div id ="sep" style="display:none;">

        <font size="5" face="courier new"><b>SEPTEMBER</b></font>

        &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
       <input type="text" id="sep_Input" onkeyup="sep_ser()" placeholder="ENTER NAME" style="font-family:courier new;font-size:15px;">
        <br><br>
        <!--------------------------------------------->
        <!--SCRIPT FOR SEARCH BAR-->
        <script>
          function sep_ser() {
            // Declare variables
            var input, filter, table, tr, td, i;
            input = document.getElementById("sep_Input");
            filter = input.value.toUpperCase();
            table = document.getElementById("sep_table");
            tr = table.getElementsByTagName("tr");

            // Loop through all table rows, and hide those who don't match the search query
            for (i = 0; i < tr.length; i++) {
              td = tr[i].getElementsByTagName("td")[1];
              if (td) {
                if (td.innerHTML.toUpperCase().indexOf(filter) > -1) {
                  tr[i].style.display = "";
                } else {
                  tr[i].style.display = "none";
                }
              }
            }
          }
        </script>
        <!--------------------------------------------------->
        <div id="scroll">
        <table id = "sep_table" class = "table table-striped table-bordered table-responsive w-auto" width="20%">
        <tr class="active">
          <th><font size="2" face="courier new">SNO</font></th>
          <th><font size="2" face="courier new">NAME</font></th>
          <th><font size="2" face="courier new">FATHER'S NAME</font></th>
          <th><font size="2" face="courier new">CLASS</font></th>
         
          <th><font size="2" face="courier new">PAID</font></th>
          <th><font size="2" face="courier new">EXAM FEE</font></th>
           <th><font size="2" face="courier new">MISC.</font></th>
          <th><font size="2" face="courier new">GEN/ELEC</font></th>
          <th><font size="2" face="courier new">I.D</font></th>
          <th><font size="2" face="courier new">DIARY</font></th>
          <th><font size="2" face="courier new">BALANCE</font></th>
          
          <th><font size="2" face="courier new">TOTAL<br>AMOUNT</font></th>
        </tr>
        <%
            res = stmt.executeQuery("select * from sep_fee order by class");
            c = 1;
            while(res.next())
            {
                String name = res.getString(2);
                String fat = res.getString(4);
                String cl = res.getString(3);
                int p = res.getInt(6);
                int t = res.getInt(5);
                int e = res.getInt(8);
                 int m = res.getInt(9);
                int ge = res.getInt(10);
                int id = res.getInt(11);
                int diary = res.getInt(12);
                int b = t - (p+e+m+ge+id+diary);
                %>
                    <tr>
                      <td><font size="2" face="courier new"><%out.print(c++);%></font></td>
                      <td><font size="2" face="courier new"><%out.print(name);%></font></td>
                      <td><font size="2" face="courier new"><%out.print(fat);%></font></td>
                      <td><font size="2" face="courier new"><%out.print(cl);%></font></td>
                      <td><font size="2" face="courier new"><b><%out.print(p);%></b></font></td>
                      <td><font size="2" face="courier new"><b><%out.print(e);%></b></font></td>
                       <td><font size="2" face="courier new"><b><%out.print(m);%></b></font></td>
                      <td><font size="2" face="courier new"><b><%out.print(ge);%></b></font></td>

                      <td><font size="2" face="courier new"><b><%out.print(id);%></b></font></td>
                      <td><font size="2" face="courier new"><b><%out.print(diary);%></b></font></td>
                      <td><font size="2" face="courier new"><b><%out.print(b);%></b></font></td>
                      <%
                        if(t==0)
                        {
                            %>
                            <td><img class="img-responsive" src="ques.jpg" width="30%"/>
                            <%
                        }
                        else if(t<=(p+e+m+ge+id+diary))
                        {
                            %>
                            <td><img class="img-responsive" src="tick.jpg" width="30%"/><font size="3" face="courier new"><b><%out.print(t);%></b></font></td>
        
                            <%
                        }
                        
                        else
                        {
                            %>
                            <td><img class="img-responsive" src="cross.jpg" width="30%"/><font size="3" face="courier new"><b><%out.print(t);%></b></font></td>

                            <%
                        }
                        %>
                      </tr>
                      <%

              
            }

        %>
        </table>
        </div>

  </div>

  <div id ="oct" style="display:none;">

        <font size="5" face="courier new"><b>OCTOBER</b></font>

        &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
       <input type="text" id="oct_Input" onkeyup="oct_ser()" placeholder="ENTER NAME" style="font-family:courier new;font-size:15px;">
        <br><br>
        <!--------------------------------------------->
        <!--SCRIPT FOR SEARCH BAR-->
        <script>
          function oct_ser() {
            // Declare variables
            var input, filter, table, tr, td, i;
            input = document.getElementById("oct_Input");
            filter = input.value.toUpperCase();
            table = document.getElementById("oct_table");
            tr = table.getElementsByTagName("tr");

            // Loop through all table rows, and hide those who don't match the search query
            for (i = 0; i < tr.length; i++) {
              td = tr[i].getElementsByTagName("td")[1];
              if (td) {
                if (td.innerHTML.toUpperCase().indexOf(filter) > -1) {
                  tr[i].style.display = "";
                } else {
                  tr[i].style.display = "none";
                }
              }
            }
          }
        </script>
        <!--------------------------------------------------->
        <div id="scroll">
        <table id = "oct_table" class = "table table-striped table-bordered table-responsive w-auto" width="20%">
        <tr class="active">
          <th><font size="2" face="courier new">SNO</font></th>
          <th><font size="2" face="courier new">NAME</font></th>
          <th><font size="2" face="courier new">FATHER'S NAME</font></th>
          <th><font size="2" face="courier new">CLASS</font></th>
         
          <th><font size="2" face="courier new">PAID</font></th>
          <th><font size="2" face="courier new">EXAM FEE</font></th>
           <th><font size="2" face="courier new">MISC.</font></th>
          <th><font size="2" face="courier new">GEN/ELEC</font></th>
          <th><font size="2" face="courier new">I.D</font></th>
          <th><font size="2" face="courier new">DIARY</font></th>
          <th><font size="2" face="courier new">BALANCE</font></th>
          
          <th><font size="2" face="courier new">TOTAL<br>AMOUNT</font></th>
        </tr>
        <%
            res = stmt.executeQuery("select * from oct_fee order by class");
            c = 1;
            while(res.next())
            {
                String name = res.getString(2);
                String fat = res.getString(4);
                String cl = res.getString(3);
                int p = res.getInt(6);
                int t = res.getInt(5);
                int e = res.getInt(8);
                 int m = res.getInt(9);
                int ge = res.getInt(10);
                int id = res.getInt(11);
                int diary = res.getInt(12);
                int b = t - (p+e+m+ge+id+diary);
                %>
                    <tr>
                      <td><font size="2" face="courier new"><%out.print(c++);%></font></td>
                      <td><font size="2" face="courier new"><%out.print(name);%></font></td>
                      <td><font size="2" face="courier new"><%out.print(fat);%></font></td>
                      <td><font size="2" face="courier new"><%out.print(cl);%></font></td>
                      <td><font size="2" face="courier new"><b><%out.print(p);%></b></font></td>
                      <td><font size="2" face="courier new"><b><%out.print(e);%></b></font></td>
                       <td><font size="2" face="courier new"><b><%out.print(m);%></b></font></td>
                      <td><font size="2" face="courier new"><b><%out.print(ge);%></b></font></td>

                      <td><font size="2" face="courier new"><b><%out.print(id);%></b></font></td>
                      <td><font size="2" face="courier new"><b><%out.print(diary);%></b></font></td>
                      <td><font size="2" face="courier new"><b><%out.print(b);%></b></font></td>
                      <%
                        if(t==0)
                        {
                            %>
                            <td><img class="img-responsive" src="ques.jpg" width="30%"/>
                            <%
                        }
                        else if(t<=(p+e+m+ge+id+diary))
                        {
                            %>
                            <td><img class="img-responsive" src="tick.jpg" width="30%"/><font size="3" face="courier new"><b><%out.print(t);%></b></font></td>
        
                            <%
                        }
                        
                        else
                        {
                            %>
                            <td><img class="img-responsive" src="cross.jpg" width="30%"/><font size="3" face="courier new"><b><%out.print(t);%></b></font></td>

                            <%
                        }
                        %>
                      </tr>
                      <%

              
            }

        %>
        </table>
        </div>

  </div>

  <div id ="nov" style="display:none;">

        <font size="5" face="courier new"><b>NOVEMBER</b></font>

        &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
       <input type="text" id="nov_Input" onkeyup="nov_ser()" placeholder="ENTER NAME" style="font-family:courier new;font-size:15px;">
        <br><br>
        <!--------------------------------------------->
        <!--SCRIPT FOR SEARCH BAR-->
        <script>
          function nov_ser() {
            // Declare variables
            var input, filter, table, tr, td, i;
            input = document.getElementById("nov_Input");
            filter = input.value.toUpperCase();
            table = document.getElementById("nov_table");
            tr = table.getElementsByTagName("tr");

            // Loop through all table rows, and hide those who don't match the search query
            for (i = 0; i < tr.length; i++) {
              td = tr[i].getElementsByTagName("td")[1];
              if (td) {
                if (td.innerHTML.toUpperCase().indexOf(filter) > -1) {
                  tr[i].style.display = "";
                } else {
                  tr[i].style.display = "none";
                }
              }
            }
          }
        </script>
        <!--------------------------------------------------->
        <div id="scroll">
        <table id = "nov_table" class = "table table-striped table-bordered table-responsive w-auto" width="20%">
        <tr class="active">
          <th><font size="2" face="courier new">SNO</font></th>
          <th><font size="2" face="courier new">NAME</font></th>
          <th><font size="2" face="courier new">FATHER'S NAME</font></th>
          <th><font size="2" face="courier new">CLASS</font></th>
         
          <th><font size="2" face="courier new">PAID</font></th>
          <th><font size="2" face="courier new">EXAM FEE</font></th>
           <th><font size="2" face="courier new">MISC.</font></th>
          <th><font size="2" face="courier new">GEN/ELEC</font></th>
          <th><font size="2" face="courier new">I.D</font></th>
          <th><font size="2" face="courier new">DIARY</font></th>
          <th><font size="2" face="courier new">BALANCE</font></th>
          
          <th><font size="2" face="courier new">TOTAL<br>AMOUNT</font></th>
        </tr>
        <%
            res = stmt.executeQuery("select * from nov_fee order by class");
            c = 1;
            while(res.next())
            {
                String name = res.getString(2);
                String fat = res.getString(4);
                String cl = res.getString(3);
                int p = res.getInt(6);
                int t = res.getInt(5);
                int e = res.getInt(8);
                 int m = res.getInt(9);
                int ge = res.getInt(10);
                int id = res.getInt(11);
                int diary = res.getInt(12);
                int b = t - (p+e+m+ge+id+diary);
                %>
                    <tr>
                      <td><font size="2" face="courier new"><%out.print(c++);%></font></td>
                      <td><font size="2" face="courier new"><%out.print(name);%></font></td>
                      <td><font size="2" face="courier new"><%out.print(fat);%></font></td>
                      <td><font size="2" face="courier new"><%out.print(cl);%></font></td>
                      <td><font size="2" face="courier new"><b><%out.print(p);%></b></font></td>
                      <td><font size="2" face="courier new"><b><%out.print(e);%></b></font></td>
                       <td><font size="2" face="courier new"><b><%out.print(m);%></b></font></td>
                      <td><font size="2" face="courier new"><b><%out.print(ge);%></b></font></td>

                      <td><font size="2" face="courier new"><b><%out.print(id);%></b></font></td>
                      <td><font size="2" face="courier new"><b><%out.print(diary);%></b></font></td>
                      <td><font size="2" face="courier new"><b><%out.print(b);%></b></font></td>
                      <%
                        if(t==0)
                        {
                            %>
                            <td><img class="img-responsive" src="ques.jpg" width="30%"/>
                            <%
                        }
                        else if(t<=(p+e+m+ge+id+diary))
                        {
                            %>
                            <td><img class="img-responsive" src="tick.jpg" width="30%"/><font size="3" face="courier new"><b><%out.print(t);%></b></font></td>
        
                            <%
                        }
                        
                        else
                        {
                            %>
                            <td><img class="img-responsive" src="cross.jpg" width="30%"/><font size="3" face="courier new"><b><%out.print(t);%></b></font></td>

                            <%
                        }
                        %>
                      </tr>
                      <%

              
            }

        %>
        </table>
        </div>

  </div>

  <div id ="dec" style="display:none;">

        <font size="5" face="courier new"><b>DECEMBER</b></font>

        &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
       <input type="text" id="dec_Input" onkeyup="dec_ser()" placeholder="ENTER NAME" style="font-family:courier new;font-size:15px;">
        <br><br>
        <!--------------------------------------------->
        <!--SCRIPT FOR SEARCH BAR-->
        <script>
          function dec_ser() {
            // Declare variables
            var input, filter, table, tr, td, i;
            input = document.getElementById("dec_Input");
            filter = input.value.toUpperCase();
            table = document.getElementById("dec_table");
            tr = table.getElementsByTagName("tr");

            // Loop through all table rows, and hide those who don't match the search query
            for (i = 0; i < tr.length; i++) {
              td = tr[i].getElementsByTagName("td")[1];
              if (td) {
                if (td.innerHTML.toUpperCase().indexOf(filter) > -1) {
                  tr[i].style.display = "";
                } else {
                  tr[i].style.display = "none";
                }
              }
            }
          }
        </script>
        <!--------------------------------------------------->
        <div id="scroll">
        <table id = "dec_table" class = "table table-striped table-bordered table-responsive w-auto" width="20%">
        <tr class="active">
          <th><font size="2" face="courier new">SNO</font></th>
          <th><font size="2" face="courier new">NAME</font></th>
          <th><font size="2" face="courier new">FATHER'S NAME</font></th>
          <th><font size="2" face="courier new">CLASS</font></th>
         
          <th><font size="2" face="courier new">PAID</font></th>
          <th><font size="2" face="courier new">EXAM FEE</font></th>
           <th><font size="2" face="courier new">MISC.</font></th>
          <th><font size="2" face="courier new">GEN/ELEC</font></th>
          <th><font size="2" face="courier new">I.D</font></th>
          <th><font size="2" face="courier new">DIARY</font></th>
          <th><font size="2" face="courier new">BALANCE</font></th>
          
          <th><font size="2" face="courier new">TOTAL<br>AMOUNT</font></th>
        </tr>
        <%
            res = stmt.executeQuery("select * from dec_fee order by class");
            c = 1;
            while(res.next())
            {
                String name = res.getString(2);
                String fat = res.getString(4);
                String cl = res.getString(3);
                int p = res.getInt(6);
                int t = res.getInt(5);
                int e = res.getInt(8);
                 int m = res.getInt(9);
                int ge = res.getInt(10);
                int id = res.getInt(11);
                int diary = res.getInt(12);
                int b = t - (p+e+m+ge+id+diary);
                %>
                    <tr>
                      <td><font size="2" face="courier new"><%out.print(c++);%></font></td>
                      <td><font size="2" face="courier new"><%out.print(name);%></font></td>
                      <td><font size="2" face="courier new"><%out.print(fat);%></font></td>
                      <td><font size="2" face="courier new"><%out.print(cl);%></font></td>
                      <td><font size="2" face="courier new"><b><%out.print(p);%></b></font></td>
                      <td><font size="2" face="courier new"><b><%out.print(e);%></b></font></td>
                       <td><font size="2" face="courier new"><b><%out.print(m);%></b></font></td>
                      <td><font size="2" face="courier new"><b><%out.print(ge);%></b></font></td>

                      <td><font size="2" face="courier new"><b><%out.print(id);%></b></font></td>
                      <td><font size="2" face="courier new"><b><%out.print(diary);%></b></font></td>
                      <td><font size="2" face="courier new"><b><%out.print(b);%></b></font></td>
                      <%
                        if(t==0)
                        {
                            %>
                            <td><img class="img-responsive" src="ques.jpg" width="30%"/>
                            <%
                        }
                        else if(t<=(p+e+m+ge+id+diary))
                        {
                            %>
                            <td><img class="img-responsive" src="tick.jpg" width="30%"/><font size="3" face="courier new"><b><%out.print(t);%></b></font></td>
        
                            <%
                        }
                        
                        else
                        {
                            %>
                            <td><img class="img-responsive" src="cross.jpg" width="30%"/><font size="3" face="courier new"><b><%out.print(t);%></b></font></td>

                            <%
                        }
                        %>
                      </tr>
                      <%

              
            }

        %>
        </table>
        </div>

  </div>

  <div id ="jan" style="display:none;">

        <font size="5" face="courier new"><b>JANUARY</b></font>

        &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
       <input type="text" id="jan_Input" onkeyup="jan_ser()" placeholder="ENTER NAME" style="font-family:courier new;font-size:15px;">
        <br><br>
        <!--------------------------------------------->
        <!--SCRIPT FOR SEARCH BAR-->
        <script>
          function jan_ser() {
            // Declare variables
            var input, filter, table, tr, td, i;
            input = document.getElementById("jan_Input");
            filter = input.value.toUpperCase();
            table = document.getElementById("jan_table");
            tr = table.getElementsByTagName("tr");

            // Loop through all table rows, and hide those who don't match the search query
            for (i = 0; i < tr.length; i++) {
              td = tr[i].getElementsByTagName("td")[1];
              if (td) {
                if (td.innerHTML.toUpperCase().indexOf(filter) > -1) {
                  tr[i].style.display = "";
                } else {
                  tr[i].style.display = "none";
                }
              }
            }
          }
        </script>
        <!--------------------------------------------------->
        <div id="scroll">
        <table id = "jan_table" class = "table table-striped table-bordered table-responsive w-auto" width="20%">
        <tr class="active">
          <th><font size="2" face="courier new">SNO</font></th>
          <th><font size="2" face="courier new">NAME</font></th>
          <th><font size="2" face="courier new">FATHER'S NAME</font></th>
          <th><font size="2" face="courier new">CLASS</font></th>
         
          <th><font size="2" face="courier new">PAID</font></th>
          <th><font size="2" face="courier new">EXAM FEE</font></th>
           <th><font size="2" face="courier new">MISC.</font></th>
          <th><font size="2" face="courier new">GEN/ELEC</font></th>
          <th><font size="2" face="courier new">I.D</font></th>
          <th><font size="2" face="courier new">DIARY</font></th>
          <th><font size="2" face="courier new">BALANCE</font></th>
          
          <th><font size="2" face="courier new">TOTAL<br>AMOUNT</font></th>
        </tr>
        <%
            res = stmt.executeQuery("select * from jan_fee order by class");
            c = 1;
            while(res.next())
            {
                String name = res.getString(2);
                String fat = res.getString(4);
                String cl = res.getString(3);
                int p = res.getInt(6);
                int t = res.getInt(5);
                int e = res.getInt(8);
                 int m = res.getInt(9);
                int ge = res.getInt(10);
                int id = res.getInt(11);
                int diary = res.getInt(12);
                int b = t - (p+e+m+ge+id+diary);
                %>
                    <tr>
                      <td><font size="2" face="courier new"><%out.print(c++);%></font></td>
                      <td><font size="2" face="courier new"><%out.print(name);%></font></td>
                      <td><font size="2" face="courier new"><%out.print(fat);%></font></td>
                      <td><font size="2" face="courier new"><%out.print(cl);%></font></td>
                      <td><font size="2" face="courier new"><b><%out.print(p);%></b></font></td>
                      <td><font size="2" face="courier new"><b><%out.print(e);%></b></font></td>
                       <td><font size="2" face="courier new"><b><%out.print(m);%></b></font></td>
                      <td><font size="2" face="courier new"><b><%out.print(ge);%></b></font></td>

                      <td><font size="2" face="courier new"><b><%out.print(id);%></b></font></td>
                      <td><font size="2" face="courier new"><b><%out.print(diary);%></b></font></td>
                      <td><font size="2" face="courier new"><b><%out.print(b);%></b></font></td>
                      <%
                        if(t==0)
                        {
                            %>
                            <td><img class="img-responsive" src="ques.jpg" width="30%"/>
                            <%
                        }
                        else if(t<=(p+e+m+ge+id+diary))
                        {
                            %>
                            <td><img class="img-responsive" src="tick.jpg" width="30%"/><font size="3" face="courier new"><b><%out.print(t);%></b></font></td>
        
                            <%
                        }
                        
                        else
                        {
                            %>
                            <td><img class="img-responsive" src="cross.jpg" width="30%"/><font size="3" face="courier new"><b><%out.print(t);%></b></font></td>

                            <%
                        }
                        %>
                      </tr>
                      <%

              
            }

        %>
        </table>
        </div>

  </div>

  <div id ="feb" style="display:none;">

        <font size="5" face="courier new"><b>FEBRUARY</b></font>

        &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
       <input type="text" id="feb_Input" onkeyup="feb_ser()" placeholder="ENTER NAME" style="font-family:courier new;font-size:15px;">
        <br><br>
        <!--------------------------------------------->
        <!--SCRIPT FOR SEARCH BAR-->
        <script>
          function feb_ser() {
            // Declare variables
            var input, filter, table, tr, td, i;
            input = document.getElementById("feb_Input");
            filter = input.value.toUpperCase();
            table = document.getElementById("feb_table");
            tr = table.getElementsByTagName("tr");

            // Loop through all table rows, and hide those who don't match the search query
            for (i = 0; i < tr.length; i++) {
              td = tr[i].getElementsByTagName("td")[1];
              if (td) {
                if (td.innerHTML.toUpperCase().indexOf(filter) > -1) {
                  tr[i].style.display = "";
                } else {
                  tr[i].style.display = "none";
                }
              }
            }
          }
        </script>
        <!--------------------------------------------------->
        <div id="scroll">
        <table id = "feb_table" class = "table table-striped table-bordered table-responsive w-auto" width="20%">
        <tr class="active">
          <th><font size="2" face="courier new">SNO</font></th>
          <th><font size="2" face="courier new">NAME</font></th>
          <th><font size="2" face="courier new">FATHER'S NAME</font></th>
          <th><font size="2" face="courier new">CLASS</font></th>
         
          <th><font size="2" face="courier new">PAID</font></th>
          <th><font size="2" face="courier new">EXAM FEE</font></th>
           <th><font size="2" face="courier new">MISC.</font></th>
          <th><font size="2" face="courier new">GEN/ELEC</font></th>
          <th><font size="2" face="courier new">I.D</font></th>
          <th><font size="2" face="courier new">DIARY</font></th>
          <th><font size="2" face="courier new">BALANCE</font></th>
          
          <th><font size="2" face="courier new">TOTAL<br>AMOUNT</font></th>
        </tr>
        <%
            res = stmt.executeQuery("select * from feb_fee order by class");
            c = 1;
            while(res.next())
            {
                String name = res.getString(2);
                String fat = res.getString(4);
                String cl = res.getString(3);
                int p = res.getInt(6);
                int t = res.getInt(5);
                int e = res.getInt(8);
                 int m = res.getInt(9);
                int ge = res.getInt(10);
                int id = res.getInt(11);
                int diary = res.getInt(12);
                int b = t - (p+e+m+ge+id+diary);
                %>
                    <tr>
                      <td><font size="2" face="courier new"><%out.print(c++);%></font></td>
                      <td><font size="2" face="courier new"><%out.print(name);%></font></td>
                      <td><font size="2" face="courier new"><%out.print(fat);%></font></td>
                      <td><font size="2" face="courier new"><%out.print(cl);%></font></td>
                      <td><font size="2" face="courier new"><b><%out.print(p);%></b></font></td>
                      <td><font size="2" face="courier new"><b><%out.print(e);%></b></font></td>
                       <td><font size="2" face="courier new"><b><%out.print(m);%></b></font></td>
                      <td><font size="2" face="courier new"><b><%out.print(ge);%></b></font></td>

                      <td><font size="2" face="courier new"><b><%out.print(id);%></b></font></td>
                      <td><font size="2" face="courier new"><b><%out.print(diary);%></b></font></td>
                      <td><font size="2" face="courier new"><b><%out.print(b);%></b></font></td>
                      <%
                        if(t==0)
                        {
                            %>
                            <td><img class="img-responsive" src="ques.jpg" width="30%"/>
                            <%
                        }
                        else if(t<=(p+e+m+ge+id+diary))
                        {
                            %>
                            <td><img class="img-responsive" src="tick.jpg" width="30%"/><font size="3" face="courier new"><b><%out.print(t);%></b></font></td>
        
                            <%
                        }
                        
                        else
                        {
                            %>
                            <td><img class="img-responsive" src="cross.jpg" width="30%"/><font size="3" face="courier new"><b><%out.print(t);%></b></font></td>

                            <%
                        }
                        %>
                      </tr>
                      <%

              
            }

        %>
        </table>
        </div>

  </div>

  <div id ="mar" style="display:none;">

        <font size="5" face="courier new"><b>MARCH</b></font>

        &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
       <input type="text" id="mar_Input" onkeyup="mar_ser()" placeholder="ENTER NAME" style="font-family:courier new;font-size:15px;">
        <br><br>
        <!--------------------------------------------->
        <!--SCRIPT FOR SEARCH BAR-->
        <script>
          function mar_ser() {
            // Declare variables
            var input, filter, table, tr, td, i;
            input = document.getElementById("mar_Input");
            filter = input.value.toUpperCase();
            table = document.getElementById("mar_table");
            tr = table.getElementsByTagName("tr");

            // Loop through all table rows, and hide those who don't match the search query
            for (i = 0; i < tr.length; i++) {
              td = tr[i].getElementsByTagName("td")[1];
              if (td) {
                if (td.innerHTML.toUpperCase().indexOf(filter) > -1) {
                  tr[i].style.display = "";
                } else {
                  tr[i].style.display = "none";
                }
              }
            }
          }
        </script>
        <!--------------------------------------------------->
        <div id="scroll">
        <table id = "mar_table" class = "table table-striped table-bordered table-responsive w-auto" width="20%">
        <tr class="active">
          <th><font size="2" face="courier new">SNO</font></th>
          <th><font size="2" face="courier new">NAME</font></th>
          <th><font size="2" face="courier new">FATHER'S NAME</font></th>
          <th><font size="2" face="courier new">CLASS</font></th>
         
          <th><font size="2" face="courier new">PAID</font></th>
          <th><font size="2" face="courier new">EXAM FEE</font></th>
           <th><font size="2" face="courier new">MISC.</font></th>
          <th><font size="2" face="courier new">GEN/ELEC</font></th>
          <th><font size="2" face="courier new">I.D</font></th>
          <th><font size="2" face="courier new">DIARY</font></th>
          <th><font size="2" face="courier new">BALANCE</font></th>
          
          <th><font size="2" face="courier new">TOTAL<br>AMOUNT</font></th>
        </tr>
        <%
            res = stmt.executeQuery("select * from mar_fee order by class");
            c = 1;
            while(res.next())
            {
                String name = res.getString(2);
                String fat = res.getString(4);
                String cl = res.getString(3);
                int p = res.getInt(6);
                int t = res.getInt(5);
                int e = res.getInt(8);
                 int m = res.getInt(9);
                int ge = res.getInt(10);
                int id = res.getInt(11);
                int diary = res.getInt(12);
                int b = t - (p+e+m+ge+id+diary);
                %>
                    <tr>
                      <td><font size="2" face="courier new"><%out.print(c++);%></font></td>
                      <td><font size="2" face="courier new"><%out.print(name);%></font></td>
                      <td><font size="2" face="courier new"><%out.print(fat);%></font></td>
                      <td><font size="2" face="courier new"><%out.print(cl);%></font></td>
                      <td><font size="2" face="courier new"><b><%out.print(p);%></b></font></td>
                      <td><font size="2" face="courier new"><b><%out.print(e);%></b></font></td>
                       <td><font size="2" face="courier new"><b><%out.print(m);%></b></font></td>
                      <td><font size="2" face="courier new"><b><%out.print(ge);%></b></font></td>

                      <td><font size="2" face="courier new"><b><%out.print(id);%></b></font></td>
                      <td><font size="2" face="courier new"><b><%out.print(diary);%></b></font></td>
                      <td><font size="2" face="courier new"><b><%out.print(b);%></b></font></td>
                      <%
                        if(t==0)
                        {
                            %>
                            <td><img class="img-responsive" src="ques.jpg" width="30%"/>
                            <%
                        }
                        else if(t<=(p+e+m+ge+id+diary))
                        {
                            %>
                            <td><img class="img-responsive" src="tick.jpg" width="30%"/><font size="3" face="courier new"><b><%out.print(t);%></b></font></td>
        
                            <%
                        }

                        else
                        {
                            %>
                            <td><img class="img-responsive" src="cross.jpg" width="30%"/><font size="3" face="courier new"><b><%out.print(t);%></b></font></td>

                            <%
                        }
                        %>
                      </tr>
                      <%

              
            }

        %>
        </table>
        </div>

  </div>
  <!-------------------END OF MONTHWISE FEES COLLECTION----------------------------------------------------->
  <!--------------------------------------------------------------------------------------------------------->
