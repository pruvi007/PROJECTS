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

             <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.5.6/angular.min.js"></script>

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

            <center>
            <h1><font face="courier new"><b>STAFF MEMBERS </b></h1>
           <font size="5" face="courier new">ALL STAFF OF SHIKSHA BHARTI</font>

            


            </body>
            </html>


