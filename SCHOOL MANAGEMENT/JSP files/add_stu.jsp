<%@ page import = "java.io.*" %>
<%@ page import = "java.sql.*" %>
<%@ page import = "java.util.*" %>

<html>
<title>Student_details</title>
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


      <br>
      <center><font size="5" face="courier new"><b>ADD STUDENT</b></font></center>
    
   

      <!--
      <script>
          var app = angular.module("myApp",["ngRoute"]);
          app.config(function($routeProvider){

            $routeProvider
            .when("/added",{
              templateUrl:"welcome.jsp"

            });

          });


      </script>
      -->
      
       <%
                    String name = request.getParameter("first");
                    String father = request.getParameter("father");
                    String mother = request.getParameter("mother");
                    String cl = request.getParameter("class");

                    if(name==null || father==null || mother==null || cl==null)
                    {

                        %>

                                    <form class = "form-inline" action = "spa_submit.jsp" name="login"  method="post">
                              <!--<table class = "table ">
                              <tr class="active ">-->
                              <center>
                             
                              <div class = "form-group row">
                                 <div class="col-lg-12">
                                  
                                   <font size="3" face="Courier New"><b>NAME</b></font><br><input  name="first" class="form-control" placeholder="NAME"  size="30%" required="required" style="font-size:15px;font-family:Courier New;font-weight: bold;">
                                    
                                    </div>
                                    </div>

                                    <br>
                               

                                    <div class = "form-group row">
                                 <div class="col-lg-12">
                                  
                                   <font size="3" face="Courier New"><b>FATHER'S-NAME</b></font><br><input  name="father" class="form-control" placeholder="FATHER'S-NAME"  size="30%" required="required" style="font-size:15px;font-family:Courier New;font-weight: bold;">
                                    
                                    </div>
                                    </div>
                                    <br>
                                 

                                    <div class = "form-group row">
                                 <div class="col-lg-12">
                                  
                                   <font size="3" face="Courier New"><b>MOTHER'S-NAME</b></font><br><input  name="mother" class="form-control" placeholder="MOTHER'S-NAME"  size="30%" required="required" style="font-size:15px;font-family:Courier New;font-weight: bold;">
                                    
                                    </div>
                                    </div>
                                    <br>
                                  
                                    <div class = "form-group row">
                                 <div class="col-lg-12">
                                  
                                   <font size="3" face="Courier New"><b>CLASS</b></font><br><input  name="class" class="form-control" placeholder="CLASS"  size="30%" required="required" style="font-size:15px;font-family:Courier New;font-weight: bold;">
                                    
                                    </div>
                                    </div>
                                    <br>
                                    <br>

                                    <div class = "form-group row">
                                 <div class="col-lg-12">
                                  
                                   <font size="3" face="Courier New"><b>ADDRESS</b></font><br><input  name="mother" class="form-control" placeholder="MOTHER'S-NAME"  size="30%" required="required" style="font-size:15px;font-family:Courier New;font-weight: bold;">
                                    
                                    </div>
                                    </div>
                                    <br>
                               
                                   

                                 
                              <tr><th><center><button class = "btn btn-danger btn-sm" type="submit" value = "SUBMIT" name="submit"><h5>&nbsp&nbsp&nbsp&nbsp&nbsp&nbspSUBMIT&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp</h5></button></center></th></tr>
                            </form>
                      
                            </div>
                            </center>


                        <%
                      }
                      else
                      {
                            

                            res = stmt.executeQuery("select count(*) from student");
                            res.next();
                            int c = res.getInt(1);
                            c++;

                   
                            prep = connection.prepareStatement("insert into student values(?,?,?,?,?,null,null)");
                            prep.setInt(1,c);
                            prep.setString(2,name);
                            prep.setString(3,father);
                            prep.setString(4,mother);
                            prep.setString(5,cl);
                            prep.executeUpdate();

                            out.print("Student Added Successfully!");

                            
                        }


                    



       %>
      

               

               



</body>
</html>