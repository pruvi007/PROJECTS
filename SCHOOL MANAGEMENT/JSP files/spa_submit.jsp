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

 <%
                                    String name = request.getParameter("first");
                                    name = name.toUpperCase();
                            String father = request.getParameter("father");
                            father = father.toUpperCase();

                            String mother = request.getParameter("mother");
                            mother = mother.toUpperCase();
                            String cl = request.getParameter("class");
                            String dob = request.getParameter("dob");
                            String phne = request.getParameter("phone");
                            String addr = request.getParameter("addr");
                            String aadhar = request.getParameter("aadhar");
                            String img = request.getParameter("img");


                            //check if the student already exists
                            //if exists then update the details
                            //else add a new student

                            int flag=0;
                            res = stmt.executeQuery("select * from student");
                            while(res.next())
                            {
                                String st_name = res.getString(2);
                               
                                 
                                String st_fat = res.getString(3);
                               
                                    st_name = st_name.toUpperCase();
                                    st_fat = st_fat.toUpperCase();
                                    if(st_name.equals(name) && st_fat.equals(father))
                                    {
                                        flag=1;
                                        break;
                                    }
                                
                                
                            }

                            //update all the details entered
                            if(flag==1)     //already exists means update the studet details
                            {
                                prep = connection.prepareStatement("update student set NAME='"+name+"', FATHER='"+father+"', MOTHER='"+mother+"', CLASS='"+cl+"', ADDRESS='"+addr+"',DOB='"+dob+"',AADHAR='"+aadhar+"',PHONE='"+phne+"',IMG='"+img+"' where NAME='"+name+"' and FATHER='"+father+"'");
                                prep.executeUpdate();
                            }
                            else
                            {
                               

                           // fis = new FileInputStream(image);
                            res = stmt.executeQuery("select count(*) from student");
                            res.next();
                            int c = res.getInt(1);
                            c++;

                   
                            prep = connection.prepareStatement("insert into student values(?,?,?,?,?,null,null,?,?,?,?,?)");
                            prep.setInt(1,c);
                            prep.setString(2,name);
                            prep.setString(3,father);
                            prep.setString(4,mother);
                            prep.setString(5,cl);
                            prep.setString(6,addr);
                            prep.setString(7,dob);
                            prep.setString(8,aadhar);
                            prep.setString(9,phne);
                            prep.setString(10,img);

                            prep.executeUpdate();

                            res = stmt.executeQuery("select count(*) from marksT1");
                            res.next();
                            int c2 = res.getInt(1);
                            c2++;

                            //***********************************************************************************8
                            //inserting into marks tables
                            //insert into terminal 1
                            prep = connection.prepareStatement("insert into marksT1 values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)");
                              prep.setInt(1,c2);
                              prep.setString(2,name);
                              prep.setString(22,cl);
                              prep.setInt(3,0);
                              prep.setInt(4,0);
                              prep.setInt(5,0);
                              prep.setInt(6,0);
                              prep.setInt(7,0);
                              prep.setInt(8,0);
                              prep.setInt(9,0);
                              prep.setInt(10,0);
                              prep.setInt(11,0);
                              prep.setInt(12,0);
                              prep.setInt(13,0);
                              prep.setInt(14,0);
                              prep.setInt(15,0);
                              prep.setInt(16,0);
                              prep.setInt(17,0);
                              prep.setInt(18,0);
                              prep.setInt(19,0);
                              prep.setInt(20,0);
                              prep.setInt(21,0);
                              prep.setString(23,father);
                              prep.executeUpdate();

                              //insert into half_yearly
                              prep = connection.prepareStatement("insert into marks_HALF values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)");
                              prep.setInt(1,c2);
                              prep.setString(2,name);
                              prep.setString(22,cl);
                              prep.setInt(3,0);
                              prep.setInt(4,0);
                              prep.setInt(5,0);
                              prep.setInt(6,0);
                              prep.setInt(7,0);
                              prep.setInt(8,0);
                              prep.setInt(9,0);
                              prep.setInt(10,0);
                              prep.setInt(11,0);
                              prep.setInt(12,0);
                              prep.setInt(13,0);
                              prep.setInt(14,0);
                              prep.setInt(15,0);
                              prep.setInt(16,0);
                              prep.setInt(17,0);
                              prep.setInt(18,0);
                              prep.setInt(19,0);
                              prep.setInt(20,0);
                              prep.setInt(21,0);
                              prep.setString(23,father);
                              prep.executeUpdate();

                              //insert into terminal 3
                              prep = connection.prepareStatement("insert into marks_T3 values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)");
                              prep.setInt(1,c2);
                              prep.setString(2,name);
                              prep.setString(22,cl);
                              prep.setInt(3,0);
                              prep.setInt(4,0);
                              prep.setInt(5,0);
                              prep.setInt(6,0);
                              prep.setInt(7,0);
                              prep.setInt(8,0);
                              prep.setInt(9,0);
                              prep.setInt(10,0);
                              prep.setInt(11,0);
                              prep.setInt(12,0);
                              prep.setInt(13,0);
                              prep.setInt(14,0);
                              prep.setInt(15,0);
                              prep.setInt(16,0);
                              prep.setInt(17,0);
                              prep.setInt(18,0);
                              prep.setInt(19,0);
                              prep.setInt(20,0);
                              prep.setInt(21,0);
                              prep.setString(23,father);
                              prep.executeUpdate();

                              //insert into end term
                              prep = connection.prepareStatement("insert into marks_END values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)");
                              prep.setInt(1,c2);
                              prep.setString(2,name);
                              prep.setString(22,cl);
                              prep.setInt(3,0);
                              prep.setInt(4,0);
                              prep.setInt(5,0);
                              prep.setInt(6,0);
                              prep.setInt(7,0);
                              prep.setInt(8,0);
                              prep.setInt(9,0);
                              prep.setInt(10,0);
                              prep.setInt(11,0);
                              prep.setInt(12,0);
                              prep.setInt(13,0);
                              prep.setInt(14,0);
                              prep.setInt(15,0);
                              prep.setInt(16,0);
                              prep.setInt(17,0);
                              prep.setInt(18,0);
                              prep.setInt(19,0);
                              prep.setInt(20,0);
                              prep.setInt(21,0);
                              prep.setString(23,father);
                              prep.executeUpdate();
                              //*********************************************************************************

                              //inserting into fees tables
                              res = stmt.executeQuery("select count(*) from apr_fee");
                              res.next();
                              int cf = res.getInt(1);
                              cf++;
                              int cft=cf;
                              prep = connection.prepareStatement("insert into apr_fee values(?,?,?,?,?,?,?,?)");
                              prep.setInt(1,cf++);
                              prep.setString(2,name);
                              prep.setString(3,cl);
                              prep.setString(4,father);
                              prep.setInt(5,0);
                              prep.setInt(6,0);
                              prep.setInt(7,0);
                              prep.setInt(8,0);
                              prep.executeUpdate();


                              cf = cft;
                              prep = connection.prepareStatement("insert into may_fee values(?,?,?,?,?,?,?,?)");
                              prep.setInt(1,cf++);
                              prep.setString(2,name);
                              prep.setString(3,cl);
                              prep.setString(4,father);
                              prep.setInt(5,0);
                              prep.setInt(6,0);
                              prep.setInt(7,0);
                              prep.setInt(8,0);
                              prep.executeUpdate();

                              cf = cft;
                              prep = connection.prepareStatement("insert into jun_fee values(?,?,?,?,?,?,?,?)");
                              prep.setInt(1,cf++);
                              prep.setString(2,name);
                              prep.setString(3,cl);
                              prep.setString(4,father);
                              prep.setInt(5,0);
                              prep.setInt(6,0);
                              prep.setInt(7,0);
                              prep.setInt(8,0);
                              prep.executeUpdate();

                              cf = cft;
                              prep = connection.prepareStatement("insert into jul_fee values(?,?,?,?,?,?,?,?)");
                              prep.setInt(1,cf++);
                              prep.setString(2,name);
                              prep.setString(3,cl);
                              prep.setString(4,father);
                              prep.setInt(5,0);
                              prep.setInt(6,0);
                              prep.setInt(7,0);
                              prep.setInt(8,0);
                              prep.executeUpdate();

                              cf = cft;
                              prep = connection.prepareStatement("insert into aug_fee values(?,?,?,?,?,?,?,?)");
                              prep.setInt(1,cf++);
                              prep.setString(2,name);
                              prep.setString(3,cl);
                              prep.setString(4,father);
                              prep.setInt(5,0);
                              prep.setInt(6,0);
                              prep.setInt(7,0);
                              prep.setInt(8,0);
                              prep.executeUpdate();

                              cf = cft;
                              prep = connection.prepareStatement("insert into sep_fee values(?,?,?,?,?,?,?,?)");
                              prep.setInt(1,cf++);
                              prep.setString(2,name);
                              prep.setString(3,cl);
                              prep.setString(4,father);
                              prep.setInt(5,0);
                              prep.setInt(6,0);
                              prep.setInt(7,0);
                              prep.setInt(8,0);
                              prep.executeUpdate();

                              cf = cft;
                              prep = connection.prepareStatement("insert into oct_fee values(?,?,?,?,?,?,?,?)");
                              prep.setInt(1,cf++);
                              prep.setString(2,name);
                              prep.setString(3,cl);
                              prep.setString(4,father);
                              prep.setInt(5,0);
                              prep.setInt(6,0);
                              prep.setInt(7,0);
                              prep.setInt(8,0);
                              prep.executeUpdate();


                              cf = cft;
                              prep = connection.prepareStatement("insert into nov_fee values(?,?,?,?,?,?,?,?)");
                              prep.setInt(1,cf++);
                              prep.setString(2,name);
                              prep.setString(3,cl);
                              prep.setString(4,father);
                              prep.setInt(5,0);
                              prep.setInt(6,0);
                              prep.setInt(7,0);
                              prep.setInt(8,0);
                              prep.executeUpdate();

                              cf = cft;
                              prep = connection.prepareStatement("insert into dec_fee values(?,?,?,?,?,?,?,?)");
                              prep.setInt(1,cf++);
                              prep.setString(2,name);
                              prep.setString(3,cl);
                              prep.setString(4,father);
                              prep.setInt(5,0);
                              prep.setInt(6,0);
                              prep.setInt(7,0);
                              prep.setInt(8,0);
                              prep.executeUpdate();

                              cf = cft;
                              prep = connection.prepareStatement("insert into jan_fee values(?,?,?,?,?,?,?,?)");
                              prep.setInt(1,cf++);
                              prep.setString(2,name);
                              prep.setString(3,cl);
                              prep.setString(4,father);
                              prep.setInt(5,0);
                              prep.setInt(6,0);
                              prep.setInt(7,0);
                              prep.setInt(8,0);
                              prep.executeUpdate();


                              cf = cft;
                              prep = connection.prepareStatement("insert into feb_fee values(?,?,?,?,?,?,?,?)");
                              prep.setInt(1,cf++);
                              prep.setString(2,name);
                              prep.setString(3,cl);
                              prep.setString(4,father);
                              prep.setInt(5,0);
                              prep.setInt(6,0);
                              prep.setInt(7,0);
                              prep.setInt(8,0);
                              prep.executeUpdate();

                              cf = cft;
                              prep = connection.prepareStatement("insert into mar_fee values(?,?,?,?,?,?,?,?)");
                              prep.setInt(1,cf++);
                              prep.setString(2,name);
                              prep.setString(3,cl);
                              prep.setString(4,father);
                              prep.setInt(5,0);
                              prep.setInt(6,0);
                              prep.setInt(7,0);
                              prep.setInt(8,0);
                              prep.executeUpdate();
                            
                            }
                            response.sendRedirect("http://localhost:8080/School/school_spa.jsp#menu1");
                            //out.print("Student Added Successfully!");
                            //String path= "/opt/tomcat/webapps/School/";
                            //File image= new File(path+img);
                            

                            %>


      

      
      

      <script>
                  var app = angular.module("myApp",["ngRoute"]);
                        app.config(function($routeProvider){
                              $routeProvider
                              .when("/home",{
                                    templateUrl:"welcome.jsp"

                              })
                              .when("/teacher",{
                                    templateUrl:"staff.jsp"

                              })

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

                              })
                             .when("/marks",{
                                    templateUrl:"marks_upt.jsp"

                              })
                              .when("/student",{
                                    templateUrl:"stu_opt.jsp"

                              });

                              
                              
                        });


      </script>

      <div id="princi" lass="container">
             <img src="wall3.jpg" class="img-circle"  width="10%" height="10%"> 
      </div>
     


<!--END HERE-->

 <!--VIEW AND ADD DIV-->

           

                  <script>
                        /* When the user clicks on the button,
                  toggle between hiding and showing the dropdown content */
                  function myFunction() 
                  {
                      document.getElementById("myDropdown").classList.toggle("show");
                  }

                  // Close the dropdown menu if the user clicks outside of it
                  window.onclick = function(event) 
                  {
                    if (!event.target.matches('.dropbtn')) 
                    {

                        var dropdowns = document.getElementsByClassName("dropdown-content");
                        var i;
                        for (i = 0; i < dropdowns.length; i++) 
                        {
                              var openDropdown = dropdowns[i];
                              if (openDropdown.classList.contains('show')) 
                              {
                                    openDropdown.classList.remove('show');
                              }
                        }
                    }
                  } 

                  

                        
                        
            </script>


      <!--END-->


<!--NAVBAR-->


                 <div ng-app = "myApp">
                             <ul class="nav nav-tabs">
                                <li class="active"><a data-toggle="tab" href="#home">HOME</a></li>
                                <li><a data-toggle="tab" href="#menu1">STUDENT CORNER</a></li>
                                <li><a data-toggle="tab" href="#menu2">PERFORMANCE</a></li>
                              </ul>

                              <div class="tab-content">
                                <div id="home" class="tab-pane fade in active">
                                    <center>
                                  <font size="4" face="courier new"><b>Welcome To SHIKSHA BHARTI</b></font>
                                  <p>
                                  <br>
                                  <font size="3" face="courier new">
                                    An idea- Shiksha Bharati Public School is the realisation of a dream, an idea born of the urge to be worthy, to contribute something meaningful to the society. Nothing better than preparing the future citizen for a better tomorrow. The tiny tots learn in an informal way with the help of specially designed apparatus under the supervision and guidance of trained and experienced teachers.
                                    The school provides separate well furnished hostels for both boys and girls coming from different states and countries with adequate infra structural facilities to meet the requirement of each student. The hostelers are cared by trained and experienced residential wardens and nurse who take utmost care to provide a friendly, homely and congenial environment to all the residential students. Delicious, hygienic, nutritious meals and refreshments are provided. The students have independent study tables and lockers. 

                                    The school is recognised from the Directorate of Education, Delhi Govt and affiliated to the CBSE upto Sr. Secondary level. The school strictly follows the CBSE curriculum.
                                    </font></p></center>
                                </div>
                                <div id="menu1" class="tab-pane fade">
                                <center>

                                  <font size="3" face="courier new"><b>WELCOME TO <br>STUDENT CORNER</b></font><br>
                                  <br>
                                  <div ng-app="myApp">
                                           <div class="dropdown">
                                                  <button onclick="myFunction()" class="btn dropbtn">VIEW STUDENT</button>
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
                                          <a href="#!add"><button class="btn btn-danger">ADD STUDENT</button></a>
                                                
                                                  <br><br>
                                                      <div ng-view></div>
                                          </div>
                                          <br>


                                  </center>
                                </div>
                                <div id="menu2" class="tab-pane fade">
                                <center>
                                 <font size="3" face="courier new"><b>WELCOME TO <br>PERFORMANCE SECTION</b></font><br>
                                  <br>


                                          <a href="#!marks"><button class="btn btn-danger">UPDATE MARKS</button></a>
                                  


                                          <div ng-view></div>

                                  </center>
                                </div>
                              </div>
                                    
                        <!--
                        <div class="dropdown">
                            <button class="btn btn-default dropdown-toggle" type="button" data-toggle="dropdown">STUDENT
                            <span class="caret"></span></button>
                            <ul class="dropdown-menu">
                              <li><a tabindex="-1" href="#!add">ADD STUDENT</a></li>
                             
                              <li class="dropdown-submenu">
                                <a class="test" tabindex="-1" href="#" type="toggle">VIEW STUDENT<span class="caret"></span></a>
                                <ul class="dropdown-menu">
                                  <li><a tabindex="-1" href="#!class1">Class I</a></li>
                                  <li><a tabindex="-1" href="#!class2">Class II</a></li>
                                  <li><a tabindex="-1" href="#!class3">Class III</a></li>
                                  <li><a tabindex="-1" href="#!class4">Class IV</a></li>
                                  <li><a tabindex="-1" href="#!class5">Class V</a></li>

                                  <li><a tabindex="-1" href="#!class6">Class VI</a></li>
                                  <li><a tabindex="-1" href="#!class7">Class VII</a></li>
                                  <li><a tabindex="-1" href="#!class8">Class VIII</a></li>
                                  <li><a tabindex="-1" href="#!class9">Class IX</a></li>
                                  <li><a tabindex="-1" href="#!class10">Class X</a></li>
                              </ul>
                              </li>
                              </ul>
                              </div>
                              -->

                       

               
         
            

                                    
      
                              </div>
<!--ANGULAR CLOCK-->  

      
      <div id="app_clock" ng-app="clock">
            <div ng-controller="myCtrl">
            <font size="5" face="Courier New"><b>{{time}}</b> </font>
            </div>
      </div>

       <div id="quote" ng-app="quotes">
            <div ng-controller="myCtrl1"> 
                  <font size="4" face="courier new"><b>{{myHeader}}</b></font>
            </div>
      </div>
      


      <script>
                 // var root = angular.module('root',['clock','myApp','quotes']);
                 

                  var quote = angular.module('quotes', []);
                              quote.controller('myCtrl1', function($scope, $timeout) 
                              {
                                  $scope.myHeader = "WELCOME TO SHIKSHA BHARTI";
                                  $timeout(function () 
                                  {
                                      $scope.myHeader = "Believe in Yourself";
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
                            
                                       



                           
                            

                           
                           
                            
                            </center>
                            <%      
                                   
                            %>

</body>
</html>