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

                .modal-dialog {

                  width: 1100px; /* New width for default modal */
                }

                .modal-sm {

                   width: 500px; /* New width for small modal */
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
                    max-width: 1000px;
                }
                .modal-header{
                  background-color: green;
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
                  top: 740px;
                  left: 330px;
                  position: absolute;
                  
                }
                #wrapper2 {
                  top: 740px;
                  left: 330px;
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

                 #log2{
                        position:fixed;
                        top:5px;
                        left:1100px;
                        z-index: 10009;
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

<div id="log2">
            <div class="container">
            <a href="admin_res.jsp" class="btn btn-warning">
             <span class="glyphicon glyphicon-log-out"></span>&nbsp&nbspADMIN
             </a>
          
            </div>
          </div>
          
<div id="log">
            <div class="container">
            <a href="login.jsp" class="btn btn-warning">
             <span class="glyphicon glyphicon-log-out"></span>&nbsp&nbspLog out
             </a>
          
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
          <button id="btn1" data-toggle="modal" data-target="#myModal222" >
                    <img src = 'pruvi1.jpg' class="img-rounded" width="210%">
          </button>
          </div>
                  <div id="myModal222" class="modal fade"  role="dialog" >
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
          <button id="btn1" data-toggle="modal" data-target="#myModal333" >
                    <img src = 'vikas.jpg' class="img-rounded" width="300%">
          </button>
          </div>
                  <div id="myModal333" class="modal fade"  role="dialog" >
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
                              String email = res.getString(7);
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


</font></b></td></font></b></td></font></b></td></font></b></td></font></b></td></font></b></td></tr></b></th></b></th></b></th></b></th></b></th></tr></table></center></div></div></div></center></div></center></h4></div></div></div></div></td></tr></table></div></div></div></center>


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