<%@ page import = "java.io.*" %>
<%@ page import = "java.sql.*" %>
<%@ page import = "java.util.*" %>


<html>
      <head>
             <link rel = "stylesheet" type="text/css" href="ext_css.css"/>
             <style type="text/css">
                  table{
                        width:60%;
                  }
             </style>
      </head>
<%
      Class.forName("com.mysql.jdbc.Driver");
      String connectionURL= "jdbc:mysql://localhost:3306/Diablo";

      Connection connection = null;
      connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/Library","root","pagal.com");

      Statement stmt = null;
      PreparedStatement prep= null;
      ResultSet res=null;
      stmt = connection.createStatement();

%>

<body>
      <center>
            <h1>STUDENT REPORT</h1>
            <%
                  res = stmt.executeQuery("select * from STATUS");
                  %>
                  <table>
                        <tr>
                              <th>SNO</th>
                              <th>NAME</th>
                              <th>BOOKS ISSUED</th>
                              <th>BOOKS RETURNED</th>
                        </tr>
                 <%
                 while(res.next())
                 {
                       %>
                       
                 }
