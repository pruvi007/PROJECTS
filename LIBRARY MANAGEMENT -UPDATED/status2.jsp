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
      PreparedStatement prep= null;
      ResultSet res=null;
      stmt = connection.createStatement();

%>

<body>

<body>

<div id="log2">
            <div class="container">
            <a href="admin_res.jsp" class="btn btn-warning">
             <span class="glyphicon glyphicon-log-out"></span>&nbsp&nbspADMIN
             </a>
            </p> 
            </div>
            </div>
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
                  <th>Books</th>

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

                  <td><a href="show_books.jsp?name=<%=(name)%>&si=<%=(res.getInt(3))%>"><button class="btn btn-warning"><font size="4" face="Courier New"><b>VIEW
                        
                        <%
                        int num = res.getInt(3);
                        //out.println(num);
                        %>
                  </button></a></td>


            </tr>
                  <%

            }
            %>
      </table></center>

      <%
      			//LOG TABLE UPDATION
      			 prep = connection.prepareStatement("insert into LOG values(?,?)");
                       
                        res = stmt.executeQuery("select localtime()");
                        res.next();
                        String cur = res.getString(1);
                        prep.setString(1,cur);
                        String ev = "VIEWED STATUS";
                         prep.setString(2,ev);
                        prep.executeUpdate();


      %>
</b></font></button></a></td></b></font></td></b></font></td></tr></table></center></div></div></div></center>

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
