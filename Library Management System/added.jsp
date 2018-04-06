<%@ page import = "java.io.*" %>
<%@ page import = "java.sql.*" %>
<%@ page import = "java.util.*" %>


<html>
      <title>ADDED</title>
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
      stmt = connection.createStatement();

%>

<body>
      <%
      res = stmt.executeQuery("select NAME from BOOK");
      int flag=0;

      String name = request.getParameter("name");
      int num = Integer.parseInt(request.getParameter("num"));
      while(res.next())
      {
            String already = res.getString(1);
            if(already.equals(name))
            {
                  flag=1;
                  break;
            }
      }

      if(flag==1)
      {
            out.println("Book already Exists. Increasing The count!");
            prep = connection.prepareStatement("update BOOKS set REM = REM + ? where NAME = ?");
            prep.setInt(1,num);
            prep.setString(2,name);
            prep.executeUpdate();

      }
      else
      {
            out.println("Adding New Book.");
            String year = request.getParameter("year");
            String lang = request.getParameter("lang");
            int id = Integer.parseInt(request.getParameter("id"));
            String auth = request.getParameter("auth");
            int isb = Integer.parseInt(request.getParamter("isbn"));

            prep = connection.prepareStatement("insert into BOOKS values(?,?,?,?,?,?,?,?)");
            prep.setString(1,name);
            prep.setString(2,year);
            prep.setString(3,lang);
            prep.setInt(4,id);
            prep.setInt(5,num);
            prep.setInt(6,num);
            prep.setString(7,auth);
            prep.setInt(8,isb);
            prep.executeUpdate();


            <img src="smile.jpeg" height="50%" width="50%"/>
            out.println("SuccessFully Added");
      }

      %>
      <a href="rev_book.jsp"><button>View Books</button></a>



      <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
      <script src = "https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
      
      <!-- Include all compiled plugins (below), or include individual files as needed -->
      <script src = "//maxcdn.bootstrapcdn.com/bootstrap/3.3.1/js/bootstrap.min.js"></script>
</body>
</html>
