<%@ page import = "java.io.*" %>
<%@ page import = "java.sql.*" %>
<%@ page import = "java.util.*" %>


<html>
      <title>RESERVE</title>
      <head>
             <!--minfied CSS compiled -->
            <link href = "//maxcdn.bootstrapcdn.com/bootstrap/3.3.1/css/bootstrap.min.css" rel = "stylesheet">

            <!--optional Theme-->
            <link rel = "stylesheet" href="/bootstrap/css/bootstrap-theme.min.css">

            

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



       <br><br>
       <!--PANEL-->
        <center><div class="mx-auto" style="width: 1000px;">
                  <div class="panel panel-primary">
                    <div class="panel-heading">
                      <h1 class="panel-title"><h1><center> <h1><b>RESERVE A BOOK</h1>
      <h1>WELCOME</h1></center></h1></h1></div>
                      <div class="panel-body">


     

      <%

            String ser = (String)session.getAttribute("firs");
            //out.println(ser);
            session.setAttribute("first",ser);
            ser = ser.toUpperCase();
            %><h1><font face="Courier New"><b><%out.println(ser);%></h1><%
            %>
            <h1>Search Your Book</h1>

            <form action="search_res.jsp" class="form-inline">
                  Name&nbsp&nbsp&nbsp<input type = "text" name="name" placeholder="NAME" required="required">
                   &nbsp&nbsp&nbspDATE OF ISSUING&nbsp&nbsp&nbsp<input type = "text" name="res_date" placeholder="DATE" required="required">
                   <br><br>
                  Book&nbsp&nbsp<input type = "radio" name="search" value="book" checked/>
                  Author&nbsp&nbsp<input type = "radio" name= "search" value="auth"/>
                  Category&nbsp&nbsp<input type="radio" name="search" value="cat"/>
                  <br><br>
                  <button input type="submit" value="SUBMIT" class="btn btn-danger"><h4><b>SUBMIT</h4></button>
            </form>





            <%


            %>





            <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
      <script src = "https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
      
      <!-- Include all compiled plugins (below), or include individual files as needed -->
      <script src = "//maxcdn.bootstrapcdn.com/bootstrap/3.3.1/js/bootstrap.min.js"></script>


      </body>
</html>
