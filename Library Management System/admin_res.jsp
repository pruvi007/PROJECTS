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
            
            <br><br>
            </center>



              <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
      <script src = "https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
      
      <!-- Include all compiled plugins (below), or include individual files as needed -->
      <script src = "//maxcdn.bootstrapcdn.com/bootstrap/3.3.1/js/bootstrap.min.js"></script>

</body>
</html>
