<%@ page import = "java.io.*" %>
<%@ page import = "java.sql.*" %>
<%@ page import = "java.util.*" %>


<html>
      <title>SHOW_BOOKS</title>
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

%>

<body>
      <center>
      <div class="mx-auto" style="width: 1000px;">
                  <div class="panel panel-primary">
                    <div class="panel-heading">
                      <h1 class="panel-title"><h1><center><h1>BOOKS BY</h1></center></h1></h1></div>
                      <div class="panel-body">
      
      <%
            stmt = connection.createStatement();
            String first = (String)request.getParameter("name");
            String books[] = new String[100];
            int k=0;
            res = stmt.executeQuery("select * from "+first);
            %><h1><b><%out.println(first);%><b></h1>
            <hr>

                  <center><table class = "table table-striped" >
                  <tr class="active">
                        <th>S.NO</th>

                        <th><b>NAME</th>
                        <th><b>ISSUE</th>
                        <th><b>RETURN</th>
                        <th><b>FINE</th>
                        <th><b>RESRERVE</th>


                  </tr>
                  <%
                  while(res.next())
                  {
                        %>
                        <tr>
                              <td><b><font size="4" color="Black" face="Courier New"><%out.println(res.getInt(1));%></td>
                              <td><b><font size="4" color="Black" face="Courier New"><%out.println(res.getString(2));%></td>
                              <td><b><font size="4" color="Black" face="Courier New"><%out.println(res.getString(3));%></td>
                              <td><b><font size="4" color="Black" face="Courier New"><%out.println(res.getString(4));%></td>
                              <td><b><font size="4" color="Black" face="Courier New"><%out.println(res.getString(5));%></td>
                              <td><b><font size="4" color="Black" face="Courier New"><%out.println(res.getString(6));%></td>

                        </tr>
                        <%
                  }


            %>
      </table>
</center>

      <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
      <script src = "https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
      
      <!-- Include all compiled plugins (below), or include individual files as needed -->
      <script src = "//maxcdn.bootstrapcdn.com/bootstrap/3.3.1/js/bootstrap.min.js"></script>

</body>
</html>
