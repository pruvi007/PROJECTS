<%@ page import = "java.io.*" %>
<%@ page import = "java.sql.*" %>
<%@ page import = "java.util.*" %>


<html>
      <title>ADD_BOOK</title>
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



       <!--PANEL-->
      <br>
      <center><div class="mx-auto" style="width: 1000px;">
                         <div class="panel panel-primary">
                        <div class="panel-heading">
                        <h1 class="panel-title"><h1><center><b><h1>ADD BOOK</h1></b></center></h1></h1></div>
                        <div class="panel-body">
      
      <form action = "added.jsp" class="form-inline">
            <center><font size="4" face="Courier New"><b>Name<br><input type = "text" name="name" class="form-control" placeholder="NAME" size="50%" required="required" style="font-size:15px;font-family:Courier New;font-weight: bold;"/></b></font><br>

            <center><font size="4" face="Courier New"><b>Year<br><input type = "text" name = "year" class="form-control" placeholder="YEAR" size="50%" required="required" style="font-size:15px;font-family:Courier New;font-weight: bold;"/></b></font><br>

            <font size="4" face="Courier New"><b>Language<br><input type="text" name="lang" class="form-control" placeholder="LANGUAGE" size="50%" required="required" style="font-size:15px;font-family:Courier New;font-weight: bold;"/></b></font><br>

            <font size="4" face="Courier New"><b>ID<br><input type= "text" name="id" class="form-control" placeholder="ID" size="50%" required="required" style="font-size:15px;font-family:Courier New;font-weight: bold;"/></b></font><br>

            <font size="4" face="Courier New"><b>Number OF Copies<br><input type="text" name="num" class="form-control" placeholder="COPIES" size="50%" required="required" style="font-size:15px;font-family:Courier New;font-weight: bold;"/></b></font><br>

             <font size="4" face="Courier New"><b>AUTHOR<br><input type="text" name="auth" class="form-control" placeholder="AUTHOR" size="50%" required="required" style="font-size:15px;font-family:Courier New;font-weight: bold;"/></b></font><br>

              <font size="4" face="Courier New"><b>ISBN<br><input type="text" name="isbn" class="form-control" placeholder="ISBN" size="50%" required="required" style="font-size:15px;font-family:Courier New;font-weight: bold;"/></b></font><br>
              <br><br>
            <button class = "btn btn-danger" input type = "submit" value="SUBMIT"><h4>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp<b>SUBMIT</b>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp</h4></button>
      </form>
      <%
            /*Scanner scan = new Scanner(System.in);
            out.println("Enter The Name: ");
            String name = scan.next();
            out.println("Enter Year: ");
            String year = scan.next();
            out.println("Enter Language: ");
            String lang = scan.next();
            out.println("Enter ID: ");
            int id = scan.nextInt();
            out.println("Enter Actual Copies: ");
            int ac = scan.nextInt();
            out.println("Enter Remainging Copies: ");
            int rem = scan.nextInt();*/





       %>

         <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
      <script src = "https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
      
      <!-- Include all compiled plugins (below), or include individual files as needed -->
      <script src = "//maxcdn.bootstrapcdn.com/bootstrap/3.3.1/js/bootstrap.min.js"></script>
 </body>
</html>
