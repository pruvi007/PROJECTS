<%@ page import = "java.io.*" %>
<%@ page import = "java.sql.*" %>
<%@ page import = "java.util.*" %>


<html>
      <title>STATUS</title>
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

<br><br>
<!--PANEL-->
        <center><div class="mx-auto" style="width: 1000px;">
                  <div class="panel panel-primary">
                    <div class="panel-heading">
                      <h1 class="panel-title"><h1><center><h1>STATUS OF BOOKS</h1></center></h1></h1></div>
                      <div class="panel-body">


      <hr>

      
      <center>
      <table class="table table-striped">
            <tr class="active">
                  <th>S.NO</th>
                  <th>NAME</th>
                  <th>Number Of Books</th>

            </tr>
      <%
            res = stmt.executeQuery("select * from STATUS");
            while(res.next())
            {
                  %>
                  <tr>
                  <td><font size="4" face="Courier New"><b>
                        <%
                        int sno = res.getInt(1);
                        out.println(sno);
                        %>
                  </td>
                  <td><font size="4" face="Courier New"><b>
                        <%
                        String name = res.getString(2);
                        out.println(name);
                        %>
                  </td>

                  <td><a href="show_books.jsp?name=<%=(name)%>&si=<%=(res.getInt(3))%>"><button class="btn btn-warning"><font size="4" face="Courier New"><b>
                        
                        <%
                        int num = res.getInt(3);
                        out.println(num);
                        %>
                  </button></a></td>


            </tr>
                  <%

            }
            %>
      </table></center>



      <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
      <script src = "https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
      
      <!-- Include all compiled plugins (below), or include individual files as needed -->
      <script src = "//maxcdn.bootstrapcdn.com/bootstrap/3.3.1/js/bootstrap.min.js"></script>
</body>
</html>
