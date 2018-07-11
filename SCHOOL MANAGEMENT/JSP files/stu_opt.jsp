<%@ page import = "java.io.*" %>
<%@ page import = "java.sql.*" %>
<%@ page import = "java.util.*" %>

<html>
<title>STUDENT_OPTIONS</title>
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

             <style>
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

             </style>
            </head>
             

             <body>
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


            <script>
                  var app1 = angular.module("myApp",["ngRoute"]);
                        app1.config(function($routeProvider){
                              $routeProvider
                              .when("/class1",{
                                    templateUrl:"st_det.jsp?data=11"

                              })
                              
                              .when("/class2",{
                                    templateUrl:"st_det.jsp?data=12"

                              })
                              .when("/class3",{
                                    templateUrl:"st_det.jsp?data=13"

                              })
                              .when("/class4",{
                                    templateUrl:"st_det.jsp?data=14"

                              })
                              .when("/class5",{
                                    templateUrl:"st_det.jsp?data=15"

                              })
                              .when("/class6",{
                                    templateUrl:"st_det.jsp?data=16"

                              })
                              .when("/class7",{
                                    templateUrl:"st_det.jsp?data=17"

                              })
                              .when("/class8",{
                                    templateUrl:"st_det.jsp?data=18"

                              })
                              .when("/class9",{
                                    templateUrl:"st_det.jsp?data=19"

                              })

                              .when("/add",{
                                    templateUrl:"add_stu.jsp"

                              })

                             .when("/class10",{
                                    templateUrl:"st_det.jsp?data=10"

                              });

                        });


      </script>

      <br><br>
            <center>
            <!-- Example single danger button -->
           <div ng-app="myApp">
                   <div class="dropdown">
                          <button onclick="myFunction()" class="btn  dropbtn btn-lg">VIEW STUDENT</button>
                          <div id="myDropdown" class="dropdown-content">
                            <a href="#!class1">CLASS 1</a>
                            <a href="#!class2">CLASS 2</a>
                            <a href="#!class3">CLASS 3</a>
                            <a href="#!class4">CLASS 4</a>
                            <a href="#!class5">CLASS 5</a>
                            <a href="#!class6">CLASS 6</a>
                            <a href="#!class7">CLASS 7</a>
                            <a href="#!class8">CLASS 8</a>
                            <a href="#!class9">CLASS 9</a>
                            <a href="#!class10">CLASS 10</a>

                          </div>
                        </div> 
                        &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
                  <a href="#!add"><button class="btn btn-primary btn-lg">ADD STUDENT</button></a>
                        <div ng-view></div>
                  </div>
                 
                  </center>


            <script>
                        /* When the user clicks on the button,
                  toggle between hiding and showing the dropdown content */
                  function myFunction() {
                      document.getElementById("myDropdown").classList.toggle("show");
                  }

                  // Close the dropdown menu if the user clicks outside of it
                  window.onclick = function(event) {
                    if (!event.target.matches('.dropbtn')) {

                      var dropdowns = document.getElementsByClassName("dropdown-content");
                      var i;
                      for (i = 0; i < dropdowns.length; i++) {
                        var openDropdown = dropdowns[i];
                        if (openDropdown.classList.contains('show')) {
                          openDropdown.classList.remove('show');
                        }
                      }
                    }
                  } 

            </script>


</body>
</html>