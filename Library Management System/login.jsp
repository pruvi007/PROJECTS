<%@ page import = "java.io.*" %>
<%@ page import = "java.sql.*" %>
<%@ page import = "java.util.*" %>

<html>
<title>LOGIN</title>
      <head>
            <!--minfied CSS compiled -->
            <link href = "//maxcdn.bootstrapcdn.com/bootstrap/3.3.1/css/bootstrap.min.css" rel = "stylesheet">

            <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css">

            <script>
                // Get the video
                var video = document.getElementById("myVideo");

                // Get the button
                var btn = document.getElementById("myBtn");

                // Pause and play the video, and change the button text
                function myFunction() 
                {
                      if (video.paused) 
                      {
                          video.play();
                          btn.innerHTML = "Pause";
                      } 
                      else 
                      {
                          video.pause();
                          btn.innerHTML = "Play";
                      }
                }
            </script>



            <style>

                 /* Style the video: 100% width and height to cover the entire window */
               
                
                .carousel-inner{
                  width:100%;
                  max-height:400px;
                }
                
            </style>

      </head>
      <body>
      
<%
      Class.forName("com.mysql.jdbc.Driver");
      String connectionURL= "jdbc:mysql://localhost:3306/Diablo";

      Connection connection = null;
      connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/Diablo","root","pagal.com");

      Statement stmt=null;
      PreparedStatement prep=null;
      ResultSet res=null;

%>          


         

          <div class="container">
            <div class="row">
                <div class="col-sm-12">

                    <div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
                        <!-- Indicators -->
                        <ol class="carousel-indicators">
                            <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
                            <li data-target="#carousel-example-generic" data-slide-to="1"></li>
                            <li data-target="#carousel-example-generic" data-slide-to="2"></li>
                        </ol>

                        <!-- Wrapper for slides -->
                        <div class="carousel-inner" role="listbox">
                            <div class="item active">
                                <img src="lib3.jpg" alt="LIBRARY" >
                                <div class="carousel-caption">
                                    <h1>LMS</h1>
                                    <p>LIBRARY MANAGEMENT SYSTEM</p>
                                </div>
                            </div>
                            <div class="item">
                                <img src="lib2.jpg" alt="LIBRARY2" >
                                <div class="carousel-caption">
                                    <h1>LMS</h1>
                                    <p>LIBRARY MANAGEMENT SYSTEM</p>
                                </div>
                            </div>

                            <div class="item">
                                <img src="libr.jpg" alt="LIBRARY2" >
                                <div class="carousel-caption">
                                    <h1>LMS</h1>
                                    <p>LIBRARY MANAGEMENT SYSTEM</p>
                                </div>
                            </div>
                            
                        </div>

                      <!-- Controls -->
                      <a class="left carousel-control" href="#carousel-example-generic" role="button" data-slide="prev">
                            <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
                            <span class="sr-only">Previous</span>
                      </a>
                      <a class="right carousel-control" href="#carousel-example-generic" role="button" data-slide="next">
                            <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
                            <span class="sr-only">Next</span>
                      </a>
                    </div>
                </div>
            


              
            


                 <center>

                 <div class = "jumbotron" style="background:white !important">

            <h1><b><font color="#0f68b3">Library Management System</font></b></h1>
            </div>

           
            <div class="mx-auto" style="width: 700px;">
          
             <div class="panel panel-primary">
               <div class="panel-heading">
               <h1 class="panel-title"><h1><b>LOGIN</b></h1></h1></div>
              <div class="panel-body">

           

            <form class = "form-inline" action = "login_res.jsp" >
              <!--<table class = "table ">
              <tr class="active ">-->
              <div class = "form-group row">
                  <div class="col-lg-12">
                <label for = "first" class ="sr-only">First Name</label>
                   <font size="4" face="Courier New"><b>FIRST-NAME</b></font><br><input type="text" name="first" id="first" class="form-control" placeholder="USERNAME" size="50%" required="required" style="font-size:15px;font-family:Courier New;font-weight: bold;"/>
                    </div></div>
                    <br>
                    <br>
                   <div class = "form-group row">
                            <div class="col-lg-12">
                   <label for = "first" class = "sr-only">Password</label>
                    <font size="4" face="Courier New"><b>PASSWORD</b></font><br><input type="password" name="pass" id="pass" class="form-control" placeholder="PASSWORD" size="50%" required="required" style="font-size:15px;font-family:Courier New;font-weight: bold;"/>
                   </div></div>
                  <br>
                  <br>
                   <center> <font size="4" face="Courier New"><b>Admin</b></font></font></b>&nbsp&nbsp&nbsp&nbsp&nbsp<input type="radio" name="admin" value="yes" checked/><br>

                     <font size="4" face="Courier New"><b>Student</b></font></font></b>&nbsp&nbsp&nbsp&nbsp<input type = "radio" name="admin" value="no"/>
                   <br><br>
              <tr><th><center><button class = "btn btn-danger" type="submit" value = "SUBMIT"><h4>&nbsp&nbsp&nbsp&nbsp&nbsp&nbspSUBMIT&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp</h4></button></center></th></tr>
            </form>
            </div>
            </div>
            
            <br><br>


            <div class="mx-auto" style="width: 700px;">
          
             <div class="panel panel-primary">
               <div class="panel-heading">
               <h1 class="panel-title"><h1><b>REGISTER</b></h1></h1></div>
              <div class="panel-body">

           
            
            

            <form class ="form-inline" action = "register_res.jsp" >
            <center>
                <div class = "form-group row">
                  <div class="col-lg-12">
                <label for = "first" class ="sr-only">First Name</label>
                   <font size="4" face="Courier New"><b>FIRST-NAME</b></font><br><input type = "text" name = "first"  id="first" class="form-control" placeholder="FIRST-NAME" size="50%" required="required" style="font-size:15px;font-family:Courier New;font-weight: bold;"/>
                  <br>
                  <br>
                  <div class = "form-group row">
                  <div class="col-lg-12">
                <label for = "first" class ="sr-only">Password</label>
                   <font size="4" face="Courier New"><b>PASSWORD</b></font><br><input type = "password" name = "pass"  id="pass" class="form-control" placeholder="PASSWORD" size="50%" required="required" style="font-size:15px;font-family:Courier New;font-weight: bold;"/>

                  <br>
                  <br>
                  <div class = "form-group row">
                  <div class="col-lg-12">
                <label for = "first" class ="sr-only">SEX</label>
                    <font size="4" face="Courier New"><b>SEX</b></font><br><input type = "text" name = "sex" id="sex" class="form-control" placeholder="SEX" size="50%" required="required" style="font-size:15px;font-family:Courier New;font-weight: bold;"/>

                   <br>
                   <br>
                   <div class = "form-group row">
                  <div class="col-lg-12">
                <label for = "first" class ="sr-only">DOB(YYYY/MM/DD)</label>
                   <font size="4" face="Courier New"><b>DOB</b></font><br><input type="text" name = "dob" id="dob" class="form-control" placeholder="DOB(YYYY/MM/DD)" size="50%" required="required" style="font-size:15px;font-family:Courier New;font-weight: bold;"/>
                  <br>
                  <br>
                  <div class = "form-group row">
                  <div class="col-lg-12">
                <label for = "first" class ="sr-only">DEPARTMENT</label>
                   <font size="4" face="Courier New"><b>DEPARTMENT</b></font><br><input type="text" name="dept" id="dept" class="form-control" placeholder="DEPARTMENT" size="50%" required="required" style="font-size:15px;font-family:Courier New;font-weight: bold;"/>


                  <br>
                  <br>
                  <button class = "btn btn-danger" input type = "submit" value="SUBMIT"><h4>&nbsp&nbsp&nbsp&nbsp&nbsp&nbspSUBMIT&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp</h4></button>
           </form>
            
     </center>
     </center>
     </div>
     </div>
     </div>



       

     <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
      <script src = "https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
      
      <!-- Include all compiled plugins (below), or include individual files as needed -->
      <script src = "//maxcdn.bootstrapcdn.com/bootstrap/3.3.1/js/bootstrap.min.js"></script>
      </body>
</html>
