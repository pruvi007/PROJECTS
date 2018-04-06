<%@ page import = "java.io.*" %>
<%@ page import = "java.sql.*" %>
<%@ page import = "java.util.*" %>


<html>
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
      <h1>Remove Book</h1>
      <form action = "removed.jsp">
            Name:<input type = "text" name="name"/>

            <input type="submit" value="SUBMIT"/>
      </form>
</body>
</html>
