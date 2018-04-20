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
                
                .carousel-inner{
                  width:100%;
                  max-height:300px;
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
      PreparedStatement prep= null;
      ResultSet res=null;

%>

<body>

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
          <button id="btn1" data-toggle="modal" data-target="#myModal" >
                    <img src = 'ashok.jpg' class="img-rounded" width="200%">
          </button>
          </div>
         

                  <div id="myModal" class="modal fade"  role="dialog" >
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
          <button id="btn1" data-toggle="modal" data-target="#myModal2" >
                    <img src = 'pruvi1.jpg' class="img-rounded" width="210%">
          </button>
          </div>
                  <div id="myModal2" class="modal fade"  role="dialog" >
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
          <button id="btn1" data-toggle="modal" data-target="#myModal3" >
                    <img src = 'vikas.jpg' class="img-rounded" width="300%">
          </button>
          </div>
                  <div id="myModal3" class="modal fade"  role="dialog" >
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
        <br><br>
     



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

                  String issue = request.getParameter("res_date");
                  session.setAttribute("res",issue);
                  out.println(ser);
                  //out.println(name);

                  res = stmt.executeQuery("show tables");
                        int table_exist=0;
                        while(res.next())
                        {
                          String table_name = res.getString(1);
                          if(table_name.equals(ser))
                          {
                            table_exist=1;
                            break;
                          }
                        }

                        String strike[] = new String[100];
                        int c_strike=0;
                        if(table_exist==1)
                        {
                            res = stmt.executeQuery("select NAME from "+ser);
                            while(res.next())
                            {
                                  String book_name = res.getString(1);
                                  strike[c_strike++] = book_name;
                            }
                        }

                 
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
                                    <%
                                    int flag=0;
                                    for(int i=0;i<c_strike;i++)
                                    { 
                                        String com = strike[i].toUpperCase();
                                        if(b.equals(com))
                                        {
                                        flag=1;
                                        break;
                                        }
                                    }
                                    //out.print(flag);
                                    if(flag==1)
                                    {
                                            %><td><button class="btn btn-danger" disabled><font size="4" face="courier new"><del><%out.print(b);%></del></font></button</td><%
                                    }
                                    else
                                      {
                                      %><td><font size="4" face="courier new"><%out.print(b);%></font></td>
                                      
                                    <td><input type="checkbox" name="book" value="<%out.print(b);%>"/>
                                    </td>
                                    <%
                                      }

                                  %>
                                    </tr>
                                    <%

                              }

                        }
                        %>
                        <tr>
                              <td colspan='4"'><center><button input type = "submit" value="SUBMIT" class="btn btn-danger"><font size="4" face="courier new"><b>SUBMIT</button></td>
                        </tr>
                  </form>
                  </table><%

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

                                   int flag=0;
                                    for(int i=0;i<c_strike;i++)
                                    {
                                        if(c.equals(strike[i]))
                                        {
                                        flag=1;
                                        break;
                                        }
                                    }
                                    if(flag==1)
                                    {
                                            %><button class="btn btn-danger" disabled><font size="4" face="courier new"><b><del><%out.print(c);%></del></b></font></button>
                                             </td>
                                            <%

                                    }
                                    else
                                      {

                                      out.print(c);
                                      %>
                                        <td><font size="4" face="courier New"><b><input type="checkbox" name="book" value="<%out.print(c);%>"/>
                                   </td>
                                   <%
                                      }
                                    %>
                                   

                                    


                                   


                                
                                  
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


</b></button></center></td></tr></b></font></td></b></font></td></b></font></td></b></font></td></tr></b></font></th></b></font></th></b></font></th></tr></form></table></b></font></button></center></td></tr></button></td></tr></b></font></th></b></font></th></b></font></th></tr></form></table></div></b></h1></center></h1></h1></div></div></div></center></center>

<br><br>
<div class="footer">
              <font size="2" face="courier new"><b>LIBRARY MANAGEMENT SYSTEM</font></b><br><font size="2" face="courier new">PRAVEEN ASHOK VIKASH<br></font>
            </div>

             <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
      <script src = "https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
      
      <!-- Include all compiled plugins (below), or include individual files as needed -->
      <script src = "//maxcdn.bootstrapcdn.com/bootstrap/3.3.1/js/bootstrap.min.js"></script>
      </body>
      </html>
