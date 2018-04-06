<%@ page import = "java.io.*" %>
<%@ page import = "java.sql.*" %>
<%@ page import = "java.util.*" %>


<html>
      <title>STU_DETAILS</title>
      <head>
            <!--minfied CSS compiled -->
            <link href = "//maxcdn.bootstrapcdn.com/bootstrap/3.3.1/css/bootstrap.min.css" rel = "stylesheet">

            <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css">

            <style>
                
                .carousel-inner{
                  width:100%;
                  max-height:300px;
                }

                .modal-dialog {

                  width: 900px; /* New width for default modal */
                }

                .modal-sm {

                   width: 500px; /* New width for small modal */
                 }

                

            </style>

      </head>
<%
      Class.forName("com.mysql.jdbc.Driver");
      String connectionURL= "jdbc:mysql://localhost:3306/Diablo";

      Connection connection = null;
      connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/Library","root","pagal.com");

      Statement stmt = null;
      Statement stmt2=null;
      PreparedStatement prep= null;
      ResultSet res=null;
      ResultSet res2=null;
       stmt = connection.createStatement();
       stmt2 = connection.createStatement();

%>

<body>
<br><br>
      <center><div class="mx-auto" style="width: 1000px;">
                         <div class="panel panel-primary">
                        <div class="panel-heading">
                        <h1 class="panel-title"><h1><center> <h1><b>STUDENT DETAILS</b></h1></center></h1></h1></div>
                        <div class="panel-body">
                        <br><br>
                        <table class="table table-striped">
                        <tr class="active">
                          <th>S.NO</th>
                          <th>ID</th>
                          <th>NAME</th>
                          <th>SEX</th>
                          <th>DOB</th>
                          <th>DEPARTMENT</th>
                          <th>EMAIL</th>
                        </tr>
                        <%
                          res = stmt.executeQuery("select * from STUDENT");
                          int c=1;
                          while(res.next())
                          {
                              
                              int id = res.getInt(1);
                              String name = res.getString(2);
                              String sex = res.getString(3);
                              String dob = res.getString(4);
                              String dept = res.getString(6);
                              String email = res.getString(8);
                              %>
                              <tr>
                              <td><font size="4" face="Courier New"><b><%out.print(c++);%></b></font></td>
                              <td><font size="4" face="Courier New"><%out.print(id);%></font></td>
                              <td>
                             
                                 <% 
                                          String mod_id = "#"+"myModal"+c;
                                          String mod_id2 = "myModal"+c;
                                    %>



                              <!---MODAL-->

                                    <!-- Trigger the modal with a button -->
                                    <button type="button" class="btn btn-success" data-toggle="modal" data-target="<%out.print(mod_id);%>"><h4><i class="glyphicon glyphicon-eye-open"></i>
                                          &nbsp&nbsp&nbsp<font size="4" face="Courier New"><b><%out.print(name);%></b></font>
                                    </h4></i></button>

                                    <!-- Modal -->
                                    <div id="<%out.print(mod_id2);%>" class="modal fade" role="dialog">
                                          <div class="modal-dialog">

                                          <!-- Modal content-->
                                                <div class="modal-content">
                                                      <div class="modal-header modal-header-danger">
                                                      <button type="button" class="close" data-dismiss="modal">&times;</button>
                                                      <h4 class="modal-title">
                                                      <center><font size="6" color="Black" face="Courier New"><b><%out.print(name);%></b></font>
                                                      </h4>
                                                      </div>
                                                <!---MODAL BODY-->
                                                <div class="modal-body">
                                                <%
                                                      res2 = stmt2.executeQuery("show tables");

                                                      String t_name = name.toUpperCase();
                                                      int flag=0;
                                                      while(res2.next())
                                                      {
                                                           String temp = res2.getString(1);
                                                           if(t_name.equals(temp))
                                                           {
                                                                  flag=1;
                                                                  break;
                                                           }
                                                      }

                                                      if(flag==1)
                                                      {
                                                            
                                                            res2 = stmt2.executeQuery("select * from "+t_name);
                                                            %>

                                                            <center><div class="mx-auto" style="width: 800px;">
                                                            <div class="panel panel-primary">
                                                            <div class="panel-heading">
                                                            <h1 class="panel-title"><h1><center><b><h1>DETAILS</h1></b></center></h1></h1></div>
                                                                <div class="panel-body">
                                                               <br><br>
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
                  while(res2.next())
                  {
                        %>
                        <tr>
                              <td><b><font size="4" color="Black" face="Courier New"><%out.println(res2.getInt(1));%></td>
                              <td><b><font size="4" color="Black" face="Courier New"><%out.println(res2.getString(2));%></td>
                              <td><b><font size="4" color="Black" face="Courier New"><%out.println(res2.getString(3));%></td>
                              <td><b><font size="4" color="Black" face="Courier New"><%out.println(res2.getString(4));%></td>
                              <td><b><font size="4" color="Black" face="Courier New"><%out.println(res2.getString(5));%></td>
                              <td><b><font size="4" color="Black" face="Courier New"><%out.println(res2.getString(6));%></td>

                        </tr>
                        <%
                  }


            %>
      </table>
</center>
                                                <%


                                                            
                                                      }

                                                            %>

                                                            <!--PANEL-->

                                                            
                                                <!---MODAL BODY-->


                                                <div class="modal-footer">
                                                <button type="button" class="btn btn-danger" data-dismiss="modal">Close</button>
                                                </div>
                                          </div>

                                          </div>
                                    </div>
                                    </td>

                                     <td><font size="4" face="Courier New"><%out.print(sex);%></font></td>
                              <td><font size="4" face="Courier New"><b><%out.print(dob);%></b></font></td>
                              <td><font size="4" face="Courier New"><b><%out.print(dept);%></b></font></td>
                              <td><font size="4" face="Courier New"><%out.print(email);%></font></td>
                              </tr>



                              <%



                          }

                        %>






<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
      <script src = "https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
      
      <!-- Include all compiled plugins (below), or include individual files as needed -->
      <script src = "//maxcdn.bootstrapcdn.com/bootstrap/3.3.1/js/bootstrap.min.js"></script>

</body>
</html>