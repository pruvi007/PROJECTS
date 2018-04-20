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
                  .footer {
                      position: fixed;
                      
                      bottom: 0;
                      width: 100%;
                      background-color: #2586a3;
                      color: white;
                      text-align: center;
                  }

                   #log{
                        position:fixed;
                        top:5px;
                        left:1200px;
                        z-index: 10009;
                  }
                  
                  .modal-header
                  {    
     
                        background-color: #0480be;
                  }

                  #myVideo {
                        position: fixed;
                        right: 0;     
                        bottom: 0;
                        min-width: 100%;
                        min-height: 100%;
                  }

                  /* The Modal (background) */
                .modal {
                    display: none; /* Hidden by default */
                    position: fixed; /* Stay in place */
                    z-index: 10000; /* Sit on top */
                    padding-top: 100px; /* Location of the box */
                    left: 0;
                    top: 0;
                    width: 100%; /* Full width */
                    height: 100%; /* Full height */
                    overflow: auto; /* Enable scroll if needed */
                    background-color: rgb(0,0,0); /* Fallback color */
                    background-color: rgba(0,0,0,0.9); /* Black w/ opacity */
                }

                /* Modal Content (image) */
                .modal-content {
                    margin: auto;
                    display: block;
                    width: 80%;
                    max-width: 700px;
                }

                /* Caption of Modal Image */
                #caption {
                    margin: auto;
                    display: block;
                    width: 80%;
                    max-width: 700px;
                    text-align: center;
                    color: #ccc;
                    padding: 10px 0;
                    height: 150px;
                }

                /* Add Animation */
                .modal-content, #caption {    
                    -webkit-animation-name: zoom;
                    -webkit-animation-duration: 0.6s;
                    animation-name: zoom;
                    animation-duration: 0.6s;
                }

                @-webkit-keyframes zoom {
                    from {-webkit-transform:scale(0)} 
                    to {-webkit-transform:scale(1)}
                }

                @keyframes zoom {
                    from {transform:scale(0)} 
                    to {transform:scale(1)}
                }

                /* The Close Button */
                .close {
                    position: absolute;
                    top: 15px;
                    right: 35px;
                    color: #f1f1f1;
                    font-size: 40px;
                    font-weight: bold;
                    transition: 0.3s;
                }

                .close:hover,
                .close:focus {
                    color: #bbb;
                    text-decoration: none;
                    cursor: pointer;
                }

                /* 100% Image Width on Smaller Screens */
                @media only screen and (max-width: 700px){
                    .modal-content {
                        width: 100%;
                    }
                }



                 /* Style the video: 100% width and height to cover the entire window */
              
                body
                {
                  background-image:url("lines.jpg");
                  
                  background-size: 100%;
                }
                .carousel-inner{
                  width:100%;
                  max-height:400px;
                }
                #wrapper {
                  top: 700px;
                  left: 30px;
                  position: absolute;
                  
                }
                #wrapper2 {
                  top: 700px;
                  right: 30px;
                  position: absolute;
                  
                }

                .navbar {
                    height: 80px;
                    display: block;
                    position: fixed;
                    z-index: 10000;
                }
                #img1
                {
                    top:5px;
                    left:30px;
                    position: fixed;
                    z-index: 10005;
                }

                #img2
                {
                    top:5px;
                    left:100px;
                    position: fixed;
                    z-index: 10005;
                }

                #img3
                {
                    top:5px;
                    left:170px;
                    position: fixed;
                    z-index: 10005;
                }
                #btn1
                {
                  background:transparent;
                  height:30px; width:30px;
                  border:none;
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
<!--LOG OUT-->
 <div id="log">
            <div class="container">
            <a href="login.jsp" class="btn btn-warning">
             <span class="glyphicon glyphicon-log-out"></span>&nbsp&nbspLog out
             </a>
            </p> 
            </div>
            </div>



       <!--- NAVBAR and TEAM INFO -->
        
         <div id="img1">
          <button id="btn1" data-toggle="modal" data-target="#myModal111" >
                    <img src = 'ashok.jpg' class="img-rounded" width="200%">
          </button>
          </div>
         

                  <div id="myModal111" class="modal fade"  role="dialog" >
                    <div class="modal-dialog">
                   
                      <div class="modal-content">
                          <div class="modal-body">
                              <center><img src="ashok.jpg" class="img-responsive" width="60%">
                              <font size="5" face="courier new"><b>ASHOK KUMAR MEGHWAL</b></font></center>
                          </div>
                           
                      </div>
                     
                    </div>
                  </div>

          <div id="img2">
          <button id="btn1" data-toggle="modal" data-target="#myModal112" >
                    <img src = 'pruvi1.jpg' class="img-rounded" width="210%">
          </button>
          </div>
                  <div id="myModal112" class="modal fade"  role="dialog" >
                    <div class="modal-dialog">
                   
                      <div class="modal-content">
                          <div class="modal-body">
                              <center><img src="pruvi.jpg" class="img-responsive" width="40%">
                              <font size="5" face="courier new"><b>PRAVEEN KUMAR</b></font></center>
                          </div>
                           
                      </div>
                     
                    </div>
                  </div>

          <div id="img3">
          <button id="btn1" data-toggle="modal" data-target="#myModal113" >
                    <img src = 'vikas.jpg' class="img-rounded" width="300%">
          </button>
          </div>
                  <div id="myModal113" class="modal fade"  role="dialog" >
                    <div class="modal-dialog">
                   
                      <div class="modal-content">
                          <div class="modal-body">
                              <center><img src="vikas.jpg" class="img-responsive" width="100%">
                              <font size="5" face="courier new"><b>VIKASH SINGH</b></font></center>
                          </div>
                           
                      </div>
                     
                    </div>
                  </div>
        
         <nav class="navbar-fixed-top bg-dark" style="background-color: black;">
          
                <center><button class = "btn btn-primary btn-lg" disabled>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbspLIBRARY&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp</button></center>
                
        </nav>

        <!--END NAVBAR and TEAM INFO-->
        <br><br><br>
            
        
       



      <%
            int count = 1;
            stmt = connection.createStatement();
            
            String admin = request.getParameter("admin");
            //out.println(admin);
            String ser = request.getParameter("first");
            String pass = request.getParameter("pass");
            session.setAttribute("first",ser);
            if(admin.equals("yes"))
            {


                  res = stmt.executeQuery("select NAME,PASSWORD from STAFF");
                  int flag=0;
                  while(res.next())
                  {
                        String a = res.getString(1);
                        String b = res.getString(2);
                        if(a.equals(ser) && b.equals(pass))
                        {
                              
                                    flag=1;
                                    break;
                              
                        }


                  }
                  if(flag==1)
                  {
                        prep = connection.prepareStatement("insert into LOG values(?,?)");
                       
                        res = stmt.executeQuery("select localtime()");
                        res.next();
                        String cur = res.getString(1);
                        prep.setString(1,cur);
                        String ev = "ADMIN LOGIN "+ser+" "+pass;
                        prep.setString(2,ev);
                        prep.executeUpdate();

                        response.sendRedirect("admin_res.jsp");
                  }
                  else
                  {
                        prep = connection.prepareStatement("insert into LOG values(?,?)");
                       
                        res = stmt.executeQuery("select localtime()");
                        res.next();
                        String cur = res.getString(1);
                        prep.setString(1,cur);
                        String ev = "WRONG ADMIN LOGIN "+ser+" "+pass;
                         prep.setString(2,ev);
                        prep.executeUpdate();

                        %>
                        <br><br>
                        <center><div class="mx-auto" style="width: 500px;">
                         <div class="panel panel-primary">
                        <div class="panel-heading">
                        <h1 class="panel-title"><h1><center><h1>SORRY</h1></center></h1></h1></div>
                        <div class="panel-body">

                        <center><h1><font face="courier New"><b><%out.println("NOT AN ADMIN!");%></b></font></h1><%
                        session.setAttribute("first",ser);
                        %>
                        <img src="sad.gif"/>
                        <h1><a href="login.jsp"><button class="btn btn-danger btn-lg"><font size="5" face="courier new">Login</button></a></h1></center>
                        <%
                  }

            }

            else
            {
                  int flag=0;
                  res = stmt.executeQuery("select NAME from STUDENT");
                  String store="";
                  ser=ser.toUpperCase();
                  while(res.next())
                  {
                        String s = res.getString(1);
                        s=s.toUpperCase();
                        //String p = res.getString(2);
                        if(s.equalsIgnoreCase(ser))
                        {
                              flag=1;
                              store = s;
                              break;
                        }
                  }
                  if(flag==1)
                  {
                        res = stmt.executeQuery("show tables");
                        int exists=0;
                        String strike[] = new String[100];
                        int c_st=0;
                        //out.println(store);
                        store=store.toUpperCase();
                        while(res.next())
                        {
                              String n = res.getString(1);
                              if(store.equals(n))
                              {
                                    exists=1;
                                    break;
                              }
                        }

                        if(exists==1)
                        {
                              res = stmt.executeQuery("select NAME from "+store);
                              while(res.next())
                              {
                                    String ex = res.getString(1);
                                    strike[c_st++]=ex;
                                    //out.println(ex);
                              }

                        }
                        session.setAttribute("firs",store);
                        %>
                        <center><div class="mx-auto" style="width: 1100px;">
                         <div class="panel panel-primary">
                        <div class="panel-heading">
                        <h1 class="panel-title"><h1><center><h1>Welcome</h1></center></h1></h1></div>
                        <div class="panel-body">
                        
                        <%
                              %><center><h1><%
                              prep = connection.prepareStatement("insert into LOG values(?,?)");
                             
                              res = stmt.executeQuery("select localtime()");
                              res.next();
                              String cur = res.getString(1);
                              prep.setString(1,cur);
                              String ev = "STUDENT LOGIN "+ser+" "+pass;
                              prep.setString(2,ev);
                              prep.executeUpdate();

                              out.print(" "+store);%></h1></center><%;
                        %>
                        </div>

                        <!--ANCHORS
                        <div class="btn btn-primary"><a href="#ser"><font size="4" color="White"><b>TO SEARCH</b></font></a></div>
                        <div class="btn btn-success"><a href="#res"><font size="4" color="Black"><b>TO RESERVE</b></font></a></div>
                        <br><br>-->




                        <!--NAV TABS-->
                        <ul class="nav nav-tabs">
                          <li class="active"><a data-toggle="tab" href="#av"><font size="5" face = "courier new"><b>BOOKS</b></font></a></li>
                          <li><a data-toggle="tab" href="#ser"><font size="5" face = "courier new"><b>SEARCH</b></font></a></li>
                          <li><a data-toggle="tab" href="#reg"><font size="5" face = "courier new"><b>RESERVE</b></font></a></li>
                          
                        </ul>
                        <br>

                       
                        <div class = "tab-content">
                              <div id = "av" class="tab-pane fade in active">
                        <center><div class="mx-auto" style="width: 800px;">
                         <div class="panel panel-primary">
                        <div class="panel-heading">
                        <h1 class="panel-title"><h1><center><h1>AVAILABLE BOOKS</h1></center></h1></h1></div>
                        <div class="panel-body">
                        

                        <div style="width:100%;overflow:auto; max-height:400px;">
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
                              <form action="status.jsp?first=<%=(ser)%>" name = "joe"  >

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
                                          int issued=0;
                                          for(int i=0;i<c_st;i++)
                                          {
                                                if(name.equals(strike[i]))
                                                {
                                                      issued=1;
                                                      break;
                                                }
                                          }

                                    %>

                                    <% 
                                          String mod_id = "#"+"myModal"+c;
                                          String mod_id2 = "myModal"+c;
                                    %>

                                    <!---MODAL-->

                                    <!-- Trigger the modal with a button -->
                                    <%
                                                if(issued==0)
                                                {

                                                      %>

                                                            <button type="button" class="btn btn-success" data-toggle="modal" data-target="<%out.print(mod_id);%>">
                                          <font size="4" color="Black" face="Courier New"><b>
                                          <%out.print(name);%>
                                                
                                          </b></font>
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





                                                      <%
                                                      
                                                }
                                                else
                                                {
                                                      %><button class="btn btn-danger" disabled><del><font face="Courier New" size="4"><%out.print(name);%></font></del></button><%    
                                                }

                                    %>

                                    
                                    </tr>
                                    <%


                              }

                              %>

                              <tr><th colspan="7"><center><button class = "btn btn-danger btn-lg" type="submit" value = "SUBMIT"><h4>&nbsp&nbsp&nbsp&nbsp&nbsp&nbspSUBMIT&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp</h4></button></center></th></tr>
                                </form>
                              </table>
                              </div>
                              </div>
                              </div>
                              </div></div>
                              <!--END OF FIRST TAB-->

                             
                              <div id = "ser" class="tab-pane">
                              <center><div class="mx-auto" style="width: 1000px;">
                              <div class="panel panel-primary">
                              <div class="panel-heading">
                              <h1 class="panel-title"><h1><center><h1><h1>Search Your Book</h1><h1></center></h1></h1></div>
                              <div class="panel-body">
                              <right>
                                    

                                    <form class = "form-inline" action="search.jsp">
                                          <b><font size="5" color="Black" face="Courier New">Name</b></font><br><input type = "text" name="name" required="required" placeholder="CATEGORY" size="50%" style="font-size:15px;font-family:Courier New;font-weight: bold;">
                                          <br>
                                          <br>
                                          <!--<b><font size="3" color="Black" face="Courier New">Book&nbsp&nbsp<input type = "radio" name="search" value="book" checked/>-->
                                          &nbsp&nbsp&nbsp<!--<b><font size="3" color="Black" face="Courier New">Author&nbsp&nbsp<input type = "radio" name= "search" value="auth"/>-->
                                          &nbsp&nbsp&nbsp<b><font size="3" color="Black" face="Courier New">Category&nbsp&nbsp<input type="radio" name="search" value="cat"/></font></b></font></b></font></b></b>
                                          <br>
                                          <br>
                                          <center><button class = "btn btn-danger btn-lg" type="submit" value = "SUBMIT"><h4>&nbsp&nbsp&nbsp&nbsp&nbsp&nbspSUBMIT&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp</h4></button></center>
                                    </form>

                              </right>
                              <br><br>
                              </div>
                              </div>
                              </div>
                              </div>
                              
                              


                              
                               <div id = "reg" class="tab-pane">
                               <center><div class="mx-auto" style="width: 1000px;">
                              <div class="panel panel-primary">
                              <div class="panel-heading">
                              <h1 class="panel-title"><h1><center><h1><h1>RESERVE YOUR BOOK</h1><h1></center></h1></h1></div>
                              <div class="panel-body">
                                    <form action="search_res.jsp" class="form-inline">
                                          <font size="4" face="courier new"><b>Name</b></font>&nbsp&nbsp&nbsp<input type = "text" name="name" placeholder="NAME" required="required" style="font-size:15px;font-family:Courier New;font-weight: bold;">
                                           &nbsp&nbsp&nbsp <font size="4" face="courier new"><b>DATE OF ISSUING</b></font>&nbsp&nbsp&nbsp<input type = "text" name="res_date" placeholder="DATE" required="required" style="font-size:15px;font-family:Courier New;font-weight: bold;">
                                           <br><br>
                                          <font face="courier new"><b>Book</b></font>&nbsp&nbsp<input type = "radio" name="search" value="book" checked/>&nbsp&nbsp&nbsp&nbsp
                                          
                                          <font face="courier new"><b>Category</b></font>&nbsp&nbsp<input type="radio" name="search" value="cat"/>
                                          <br><br>
                                          <button input type="submit" value="SUBMIT" class="btn btn-danger"><h4><b>SUBMIT</h4></button>
                                    </form>
                              </div>
                              </div>
                              </div>
                              </div>
                              <!--END of third TAB-->


                        <%

                  }
                  else
                  {

                        prep = connection.prepareStatement("insert into LOG values(?,?)");
                       
                        res = stmt.executeQuery("select localtime()");
                        res.next();
                        String cur = res.getString(1);
                        prep.setString(1,cur);
                        String ev = "WRONG STUDENT LOGIN "+ser+" "+pass;
                         prep.setString(2,ev);
                        prep.executeUpdate();

                        %>
                        <br>
                        <center><div class="mx-auto" style="width: 500px;">
                         <div class="panel panel-primary">
                        <div class="panel-heading">
                        <h1 class="panel-title"><h1><center><h1>SORRY</h1></center></h1></h1></div>
                        <div class="panel-body">

                        <center><h1><font face="courier New"><b><% out.println("USER NOT EXIST. REGISTER!");%></b></font></h1><%
                        session.setAttribute("first",ser);
                        %>
                        <img src="sad.gif"/>
                       
                        <br>

                        <a href="login.jsp"><button class="btn btn-danger btn-lg">BACK</button></a>
                        </center></div></div></div>
                        <%
                  }

            }
%>
</center></b></h4></button></form></div></center></h1></h1></div></div></div></center></div></center></h1></h1></div></div></div></center></div></b></td></b></td></tr></b></h4></center>
           
          

            <div class="footer">
              <font size="2" face="courier new"><b>LIBRARY MANAGEMENT SYSTEM</font></b><br><font size="2" face="courier new">PRAVEEN ASHOK VIKASH<br></font>
            </div>
<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
      <script src = "https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
      
      <!-- Include all compiled plugins (below), or include individual files as needed -->
      <script src = "//maxcdn.bootstrapcdn.com/bootstrap/3.3.1/js/bootstrap.min.js"></script>
</body>
</html>
