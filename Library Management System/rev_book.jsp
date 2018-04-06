<%@ page import = "java.io.*" %>
<%@ page import = "java.sql.*" %>
<%@ page import = "java.util.*" %>


<html>
      <title>REV_BOOKS</title>
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
      ResultSet res2=null;
      Statement stmt2=null;
      stmt2 = connection.createStatement();

%>

<body>

<br><br>

<center><div class="mx-auto" style="width: 1000px;">
                         <div class="panel panel-primary">
                        <div class="panel-heading">
                        <h1 class="panel-title"><h1><center><b><h1><b>BOOKS</h1></b></center></h1></div>
                        <div class="panel-body">
      
      <%
            stmt = connection.createStatement();
            res = stmt.executeQuery("select ID,NAME,ACTUAL,REM as REMAINING,AUTHOR,ISBN from BOOKS");
            %>
            <br>
            <table class="table table-striped" >
            <tr class="active">
                  <th><b>S.NO.</b></th>
                  <th><b>ID</th>
                  <th><b>NAME</th>
                  <th><b>ACTUAL COPIES</b></th>
                  <th><b>REMAINGING COPIES</th>
                  
                  <th><b>AUTHOR</b></th>
                  <th><b>ISBN</b></th>
            </tr>
            <%
            int c=1;
            while(res.next())
            {
                  int id = res.getInt(1);
                  String name = res.getString(2);
                  int act = res.getInt(3);
                  int rem = res.getInt(4);
                  String auth = res.getString(5);
                  int isb = res.getInt(6);
                  %>
                  <font size="4" color="red">
                  <tr>
                        <td><b><font size="4" face="Courier New"><%out.println(c++);%></td>
                        <td><font size="4" face="Courier New"><%out.println(id);%></td>
                        
                         <td >
                        <!---<td><font size="4" face="Courier New"><%out.println(act);%></td>
                        <td><font size="4" face="Courier New"><%out.println(rem);%></td>
                        <td><b><font size="4" face="Courier New"><%out.println(auth);%></td>
                        <td><font size="4" face="Courier New"><%out.println(isb);%></td>-->
                  


                                    <% 
                                          String mod_id = "#"+"myModal"+c;
                                          String mod_id2 = "myModal"+c;
                                    %>



                                    <!---MODAL-->

                                    <!-- Trigger the modal with a button -->
                                    <button type="button" class="btn btn-warning" data-toggle="modal" data-target="<%out.print(mod_id);%>">
                                          <font size="4" color="Black" face="Courier New"><b><%out.print(name);%></b></font>
                                    </button>

                                    <!-- Modal -->
                                    <div id="<%out.print(mod_id2);%>" class="modal fade" role="dialog">
                                          <div class="modal-dialog">

                                          <!-- Modal content-->
                                                <div class="modal-content">
                                                      <div class="modal-header">
                                                      <button type="button" class="close" data-dismiss="modal">&times;</button>
                                                      <h4 class="modal-title">
                                                      <center><font size="6" color="Black" face="Courier New"><b><%out.print(name);%></b></font>
                                                      </h4>
                                                      </div>
                                                <!---MODAL BODY-->
                                                <div class="modal-body">
                                                <%
                                                      res2 = stmt2.executeQuery("select b.NAME,b.YEAR,b.LANG,b.ID,b.AUTHOR,b.ISBN,i.PATH from BOOKS as b,book_img as i where i.NAME='"+name+"' and b.NAME='"+name+"'");

                                                      while(res2.next())
                                                      {
                                                            String f1 = res2.getString(1);
                                                            String f2 = res2.getString(2);
                                                            String f3 = res2.getString(3);
                                                            int f4 = res2.getInt(4);
                                                            String f5 = res2.getString(5);
                                                            int f6 = res2.getInt(6);
                                                            String f7 = res2.getString(7);

                                                            %>

                                                            <!--PANEL-->

                                                             <center><div class="mx-auto" style="width: 400px;">
                                                            <div class="panel panel-primary">
                                                            <div class="panel-heading">
                                                            <h1 class="panel-title"><h1><center><h1></h1></center></h1></h1></div>
                                                            <div class="panel-body">

                                                            <img src="<%out.print(f7);%>" class="img-rounded" alt="" width="50%" height="50%"/><br><br>

                                                            <table class = "table table-striped">
                                                            <tr class="active">
                                                                  <th>
                                                                  <h4><b>NAME</b></h4></th>
                                                                  <th>
                                                                  <h4><b>YEAR</h4></th>
                                                            </tr>
                                                            <tr>
                                                                  <td>
                                                                  <b><font size="4" face="Courier New"><%out.print(f1);%></font>
                                                                  </td>
                                                                  <td>
                                                                  <b><font size="4" face="Courier New"><%out.print(f2);%></font>
                                                                  </td>
                                                            </tr>
                                                            </table>
                                                            <br>
                                                            <table class= "table table-striped">
                                                            <tr class="active">
                                                                  <th>
                                                                  <h4><b>LANGUAGE</h4>
                                                                  </th>
                                                                  <th>
                                                                  <h4><b>ID</h4>
                                                                  </th>
                                                            </tr>
                                                            <tr>
                                                                  <td>
                                                                  <font size="4" face="Courier New"><%out.print(f3);%></font>
                                                                  </td>
                                                                  <td>
                                                                  <font size="4" face="Courier New"><%out.print(f4);%></font>
                                                                  </td>
                                                            </tr>
                                                            </table>
                                                            <br>
                                                             <table class= "table table-striped">
                                                            <tr class="active">
                                                                  <th>
                                                                  <h4><b>AUTHOR</h4>
                                                                  </th>
                                                                  <th>
                                                                  <center><h4><b>ISBN</h4>
                                                                  </th>
                                                            </tr>
                                                            <tr>
                                                                  <td>
                                                                   <b><font size="4" face="Courier New"><%out.print(f5);%></font>
                                                                  </td>
                                                                  <td>
                                                                  <b><font size="4" face="Courier New"><%out.print(f6);%></font>
                                                                  </td>
                                                            </tr>
                                                            </table>
                                                            
                                                            
                                                            </div>
                                                            </div>
                                                            <%
                                                            
                                                      }
                                                %>

                                                </div>
                                                <!---MODAL BODY-->


                                                <div class="modal-footer">
                                                <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                                                </div>
                                          </div>

                                          </div>
                                          </div>
                                          </div>

                                          </td>
                                          <td><font size="4" face="Courier New"><%out.println(act);%></td>
                                          <td><font size="4" face="Courier New"><%out.println(rem);%></td>
                                          <td><b><font size="4" face="Courier New"><%out.println(auth);%></td>
                                          <td><font size="4" face="Courier New"><%out.println(isb);%></td>
                                    </tr>
                              




                  <%

            }
            %>
      </table>

      <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
      <script src = "https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
      
      <!-- Include all compiled plugins (below), or include individual files as needed -->
      <script src = "//maxcdn.bootstrapcdn.com/bootstrap/3.3.1/js/bootstrap.min.js"></script>

</body>
</html>
