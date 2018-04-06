<%@ page import = "java.io.*" %>
<%@ page import = "java.sql.*" %>
<%@ page import = "java.util.*" %>

<html>
      <title>SEARCH_RES</title>
      <head>
            <!--minfied CSS compiled -->
            <link href = "//maxcdn.bootstrapcdn.com/bootstrap/3.3.1/css/bootstrap.min.css" rel = "stylesheet">

            <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css">

            <style>
                
                .carousel-inner{
                  width:100%;
                  max-height:300px;
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

%>

<body>
     



       <center>

<%
    String name = request.getParameter("name");
name = name.toUpperCase();
    %>
       <br><br>
       <!--PANEL-->
        <center><div class="mx-auto" style="width: 1000px;">
                  <div class="panel panel-primary">
                    <div class="panel-heading">
                      <h1 class="panel-title"><h1><center><h1><b><%out.print(name);%></h1></center></h1></h1></div>
                      <div class="panel-body">



            <%
                  stmt = connection.createStatement();

                  String result = request.getParameter("search");
                 // String name = request.getParameter("name");
                  
                  String ser = (String)session.getAttribute("first");
                  session.setAttribute("first",ser);
                  out.println(ser);
                  //out.println(name);
                  if(result.equals("book"))
                  {
                        res = stmt.executeQuery("select ID,NAME from BOOK");
                         session.setAttribute("first",ser);
                        %>
                        <table class="table table-striped">
                              <form action="status.jsp">
                        <tr class="active">
                              <th><font size="4" face="Courier New"><b>SNO</th>
                              <th><font size="4" face="Courier New"><b>ID</th>
                              <th><font size="4" face="Courier New"><b>NAME</th>
                              <th><font size="4" face="Courier New"><b>SELECT</b></font></th>
                        </tr>

                        <%
                        int c = 1;
                        while(res.next())
                        {

                              String b = res.getString(2);
                              int id = res.getInt(1);
                              b = b.toUpperCase();
                              if(name.equals(b))
                              {
                                    %>

                                    <tr>
                                    <td><%out.print(c++);%></td>
                                     <td><%out.print(id);%></td>
                                    <td colspan="2"><font size="5" color="Black"><%
                                    out.print(b);%></td>
                                    <td><input type="checkbox" name="book" value="<%out.print(b);%>"/>
                                    </td>
                                    </tr>
                                    <%

                              }

                        }
                        %>
                        <tr>
                              <td><button input type = "submit" value="SUBMIT" class="btn btn-danger"><b>SUBMIT</button></td>
                        </tr>
                  </form>
                  </table><%

                  }
                  else if(result.equals("auth"))
                  {

                  }
                  else if(result.equals("cat"))
                  {
                       res = stmt.executeQuery("select b.NAME,c.NAME,b.ID from BOOK as b,CATEGORY as c where b.ID=c.ID and c.NAME='"+name+"'");
                       int C=1;
                        session.setAttribute("first",ser);
                       %>
                       <table class="table table-striped">
                             <form action="status_res.jsp">
                       <tr class="active">
                              <th><font size="4" face="Courier New"><b>SNO</th>
                              <th><font size="4" face="Courier New"><b>ID</th>
                              <th><font size="4" face="Courier New"><b>NAME</th>
                              <th><font size="4" face="Courier New"><b>SELECT</b></font></th>
                       </tr>
                       <%
                       while(res.next())
                       {
                             String b = res.getString(2);
                             String c = res.getString(1);
                             int id = res.getInt(3);
                             if(name.equals(b))
                             {
                                   %>

                                   <tr>
                                   <td><font size="4" face="courier New"><b><%out.print(C++);%></td>
                                   <td><font size="4" face="courier New"><b><%out.print(id);%></td>
                                   <td><font size="4" face="courier New"><b><%
                                   out.print(c);%></td>
                                   <td><font size="4" face="courier New"><b><input type="checkbox" name="book" value="<%out.print(c);%>"/>
                                   </td>
                                   </tr>
                                   <%

                             }

                       }

                       %>
                      <tr>
                      <td colspan="4">
                        <center>
                       <button input type = "submit" value="SUBMIT" class="btn btn-danger"><b>&nbsp&nbsp&nbspSUBMIT&nbsp&nbsp&nbsp</button>
                       </td>
                       </tr>
                 </form></table>

                 <%

           }
            %>






             <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
      <script src = "https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
      
      <!-- Include all compiled plugins (below), or include individual files as needed -->
      <script src = "//maxcdn.bootstrapcdn.com/bootstrap/3.3.1/js/bootstrap.min.js"></script>
      </body>
      </html>
