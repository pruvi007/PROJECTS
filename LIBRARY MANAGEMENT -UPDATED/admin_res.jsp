<%@ page import = "java.io.*" %>
<%@ page import = "java.sql.*" %>
<%@ page import = "java.util.*" %>


<html>
      <title>ADMIN</title>
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
                  <div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
                        <!-- Indicators -->
                        <ol class="carousel-indicators">
                            <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
                            <li data-target="#carousel-example-generic" data-slide-to="1"></li>
                            
                        </ol>

                        <!-- Wrapper for slides -->
                        <div class="carousel-inner" role="listbox">
                            <div class="item active">
                                <img src="adm3.png" alt="LIBRARY" style=height:38%;>
                                
                            </div>
                            <div class="item">
                                <img src="adm2.png" alt="LIBRARY2" >
                               
                            </div>

                            
                            
                        </div>

                      <!-- Controls -->
                      <a class="left carousel-control" href="#carousel-example-generic" role="button" data-slide="prev">
                            <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
                            <span class="sr-only">Previous</span>
                      </a>
                      <a class="right carousel-control" href="#carousel-example-generic" role="button" data-slide="next">
                            <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
                            <span class="sr-only">Next</span>
                      </a>
                    </div>
                </div>




<hr color="powderblue">
      <!--PANEL-->
      <br>
      <center><div class="mx-auto" style="width: 1000px;">
                         <div class="panel panel-primary">
                        <div class="panel-heading">
                        <h1 class="panel-title"><h1><center> <h1><b>ADMIN PAGE</b></h1></center></h1></h1></div>
                        <div class="panel-body">
     
      <%
            String sir = (String)session.getAttribute("first");

            %>
            <font size="6" face = "Courier New"><b>
            <%out.println("Welcome "+sir);
            %>
            </b></font>
            <br><br>
            <center>
            <a href="add_book.jsp"><button class="btn btn-warning btn-lg">&nbsp&nbsp&nbsp&nbsp&nbsp<b><font face="Courier New" color="black">ADD BOOK&nbsp&nbsp&nbsp&nbsp&nbsp</button></a>
            &nbsp&nbsp&nbsp&nbsp&nbsp

            <a href="rev_book.jsp"><button class="btn btn-warning btn-lg">&nbsp&nbsp&nbsp&nbsp&nbsp<b><font face="Courier New" color="black">REVIEW BOOKS&nbsp&nbsp&nbsp&nbsp&nbsp</button></books></a>
            &nbsp&nbsp&nbsp&nbsp&nbsp

            <a href="status2.jsp"><button class="btn btn-warning btn-lg">&nbsp&nbsp&nbsp&nbsp&nbsp<b><font face="Courier New" color="black">STATUS&nbsp&nbsp&nbsp&nbsp&nbsp</button></a>

            <hr>
            <a href="stu_details.jsp"><button class="btn btn-warning btn-lg">&nbsp&nbsp&nbsp&nbsp&nbsp<b><font face="Courier New" color="black">STUDENT DETAILS&nbsp&nbsp&nbsp&nbsp&nbsp</button></a>
            &nbsp&nbsp&nbsp&nbsp&nbsp

            <a href="return.jsp"><button class="btn btn-warning btn-lg">&nbsp&nbsp&nbsp&nbsp&nbsp<b><font face="Courier New" color="black">RETURN BOOK&nbsp&nbsp&nbsp&nbsp&nbsp</button></a>
            &nbsp&nbsp&nbsp&nbsp&nbsp

            <a href="log.jsp"><button class="btn btn-warning btn-lg">&nbsp&nbsp&nbsp&nbsp&nbsp<b><font face="Courier New" color="black">LOG TABLE&nbsp&nbsp&nbsp&nbsp&nbsp</button></a>
            &nbsp&nbsp&nbsp&nbsp&nbsp
            
            <br><br>
            </center>
            </font></b></button></a></font></b></button></a></font></b></button></a></font></b></button></a></font></b></button></a></center></div></div></div></center></center>
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
