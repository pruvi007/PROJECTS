<%@ page import = "java.io.*" %>
<%@ page import = "java.sql.*" %>
<%@ page import = "java.util.*" %>

<html>
<title>LOGIN_RES</title>
      <head>
             <!--minfied CSS compiled -->
            <link href = "//maxcdn.bootstrapcdn.com/bootstrap/3.3.1/css/bootstrap.min.css" rel = "stylesheet">

            <!--optional Theme-->
            <link rel = "stylesheet" href="/bootstrap/css/bootstrap-theme.min.css">

            <style type="text/css">
                  .modal-header
                  {    
     
                        background-color: #0480be;
            }
            </style>

      </head>
<%
      Class.forName("com.mysql.jdbc.Driver");
      String connectionURL= "jdbc:mysql://localhost:3306/Diablo";

      Connection connection = null;
      connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/Library","root","pagal.com");

      Statement stmt = null;
      Statement stmt2 = null;
      PreparedStatement prep= null;
      ResultSet res=null;
      ResultSet res2 = null;
      stmt2 = connection.createStatement();

%>

<body>
      <%
            stmt = connection.createStatement();
            res = stmt.executeQuery("select NAME from STUDENT");
            String admin = request.getParameter("admin");
            //out.println(admin);
            String ser = request.getParameter("first");
            session.setAttribute("first",ser);
            if(admin.equals("yes"))
            {


                  res = stmt.executeQuery("select NAME,IsADMIN from STAFF");
                  int flag=0;
                  while(res.next())
                  {
                        String a = res.getString(1);
                        String b = res.getString(2);
                        if(a.equals(ser))
                        {
                              if(b.equals("Y"))
                              {
                                    flag=1;
                                    break;
                              }
                        }
                  }
                  if(flag==1)
                  {
                        response.sendRedirect("admin_res.jsp");
                  }
                  else
                  {
                        %><center><h1><%out.println("NOT AN ADMIN!");%></h1><%
                        session.setAttribute("first",ser);
                        %>
                        <h1><a href="login.jsp"><button>Login</button></a></h1></center>
                        <%
                  }

            }

            else
            {
                  int flag=0;

                  String store="";
                  while(res.next())
                  {
                        String s = res.getString("NAME");
                        if(s.equalsIgnoreCase(ser))
                        {
                              flag=1;
                              store = s;
                              break;
                        }
                  }
                  if(flag==1)
                  {
                        session.setAttribute("firs",store);
                        %>
                        <center><div class="mx-auto" style="width: 1200px;">
                         <div class="panel panel-primary">
                        <div class="panel-heading">
                        <h1 class="panel-title"><h1><center><h1>Welcome</h1></center></h1></h1></div>
                        <div class="panel-body">
                        
                        <%
                              %><center><h1><%out.print(" "+store);%></h1></center><%;
                        %>
                        </div>

                        <!--ANCHORS-->
                        <div class="btn btn-primary"><a href="#ser"><font size="4" color="White"><b>TO SEARCH</b></font></a></div>
                        <div class="btn btn-success"><a href="#res"><font size="4" color="Black"><b>TO RESERVE</b></font></a></div>
                        <br><br>


                        <a href="av"></a>

                        <center><div class="mx-auto" style="width: 1000px;">
                         <div class="panel panel-primary">
                        <div class="panel-heading">
                        <h1 class="panel-title"><h1><center><h1>AVAILABLE BOOKS</h1></center></h1></h1></div>
                        <div class="panel-body">
                        
                        <table class="table table-bordered">
                        <tr class = "active">
                        <th>S.NO</th>
                        <th>ID</th>
                        <th>CATEGORY</th>
                        <th colspan="2">NAME</th>
                        <th>SELECT</th>

                        </tr>
                        <%
                              session.setAttribute("firs",store);

                              res = stmt.executeQuery("select b.ID,b.NAME,c.NAME,b.YEAR,b.LANG,b.ACTUAL,b.REM,b.AUTHOR,b.ISBN from BOOKS as b,CATEGORY as c where b.ID=c.ID");
                              %>
                              <form action="status.jsp?first=<%=(ser)%>">

                              <%
                              int c=1;
                             
                              while(res.next())
                              {
                                    int id = res.getInt(1);
                                    String name = res.getString(2);
                                    String cat = res.getString(3);
                                   

                                    %>

                                    <tr>
                                    <td><font size="4" color="Black" face="Courier New"><%out.print(c++);%></td>
                                    <td><b><font size="4" color="Black" face="Courier New"><%out.print(id);%></td>
                                    <td><font size="4" color="Black" face="Courier New"><%out.print(cat);%></td>
                                    <td colspan="2">

                                    <% 
                                          String mod_id = "#"+"myModal"+c;
                                          String mod_id2 = "myModal"+c;
                                    %>

                                    <!---MODAL-->

                                    <!-- Trigger the modal with a button -->
                                    <button type="button" class="btn btn-success" data-toggle="modal" data-target="<%out.print(mod_id);%>">
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


                                    




                                    <!---MODAL-->
                                    </td>
                                    <td><input type="checkbox" name="book" value="<%out.print(name);%>"/>
                                    </td>
                                    </tr>
                                    <%


                              }

                              %>

                              <tr><th colspan="7"><center><button class = "btn btn-danger" type="submit" value = "SUBMIT"><h4>&nbsp&nbsp&nbsp&nbsp&nbsp&nbspSUBMIT&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp</h4></button></center></th></tr>
                                </form>
                              </table>
                              </div>
                              </div>

                              <hr><hr>
                              <font size="6" face="Arial" color="Red"><b>OR</b></font>
                              <a name="ser"></a>

                              <center><div class="mx-auto" style="width: 1000px;">
                              <div class="panel panel-primary">
                              <div class="panel-heading">
                              <h1 class="panel-title"><h1><center><h1><h1>Search Your Book</h1><h1></center></h1></h1></div>
                              <div class="panel-body">
                              <right>
                                    

                                    <form class = "form-inline" action="search.jsp">
                                          <b><font size="5" color="Black" face="Courier New">Name</b></font><br><input type = "text" name="name" required="required" placeholder="ENTER NAME HERE" size="50%" style="font-size:15px;font-family:Courier New;font-weight: bold;">
                                          <br>
                                          <br>
                                          <b><font size="3" color="Black" face="Courier New">Book&nbsp&nbsp<input type = "radio" name="search" value="book" checked/>
                                          &nbsp&nbsp&nbsp<b><font size="3" color="Black" face="Courier New">Author&nbsp&nbsp<input type = "radio" name= "search" value="auth"/>
                                          &nbsp&nbsp&nbsp<b><font size="3" color="Black" face="Courier New">Category&nbsp&nbsp<input type="radio" name="search" value="cat"/></font></b></font></b></font></b></b>
                                          <br>
                                          <br>
                                          <center><button class = "btn btn-danger" type="submit" value = "SUBMIT"><h4>&nbsp&nbsp&nbsp&nbsp&nbsp&nbspSUBMIT&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp</h4></button></center>
                                    </form>

                              </right>
                              <br><br>
                              </div>
                              </div>

                              <hr><hr>
                              <font size="6" face="Arial" color="Red"><b>OR</b></font>



                              <a name="res"></a>

                               <center><div class="mx-auto" style="width: 1000px;">
                              <div class="panel panel-primary">
                              <div class="panel-heading">
                              <h1 class="panel-title"><h1><center><h1><h1>RESERVE YOUR BOOK</h1><h1></center></h1></h1></div>
                              <div class="panel-body">
                                    <right>
                                    <%session.setAttribute("firs",store);%>
                                    <center><h1><b><font size="6" color="Black" face="Courier New"><%out.print(" "+store);%></font></b></h1></center>
                                    <b><font size="3" color="Black" face="Courier New">CLICK TO</font></b>
                                          <h1>
                                          <a href="reserve.jsp"><div class = "btn btn-danger"><font size="5" color = "white">&nbsp&nbsp&nbsp&nbsp&nbsp&nbspPROCEED&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp</button></a>
                              </div>
                              </div>


                        <%

                  }
                  else
                  {
                        out.println("User Not Exist. Register First!");
                        %>

                        <a href="login.jsp"><button>Login Again</button></a>
                        <%
                  }

            }
%>

<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
      <script src = "https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
      
      <!-- Include all compiled plugins (below), or include individual files as needed -->
      <script src = "//maxcdn.bootstrapcdn.com/bootstrap/3.3.1/js/bootstrap.min.js"></script>
</body>
</html>
