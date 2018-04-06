<%@ page import = "java.io.*" %>
<%@ page import = "java.sql.*" %>
<%@ page import = "java.util.*" %>


<html>
      <head>
             <link rel = "stylesheet" type="text/css" href="ext_css.css"/>
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
      <%
            stmt = connection.createStatement();

            res = stmt.executeQuery("select count(ID) from STUDENT");
            res.next();
            int c = res.getInt(1);
            prep = connection.prepareStatement("insert into STUDENT values (?,?,?,null,?,?)");
            prep.setInt(1,(c+100));
            prep.setInt(4,c);
            String first = request.getParameter("first");
            out.println(first);
            prep.setString(2,first);
            String sex = request.getParameter("sex");
            out.println(sex);
            prep.setString(3,sex);
            String dob = request.getParameter("dob");
            out.println(dob);



            String dept = request.getParameter("dept");
            out.println(dept);
            prep.setString(5,dept);
            prep.executeUpdate();
            out.println("Student ADDED SUCCEFULLY.");
            out.println("LIST: ");


      %>

</body>
</html>
