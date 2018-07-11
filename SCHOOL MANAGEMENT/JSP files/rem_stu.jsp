<%@ page import = "java.io.*" %>
<%@ page import = "java.sql.*" %>
<%@ page import = "java.util.*" %>
<html>
<title>REMOVE-STUDENT</title>
<body>

<!--JDBC CONNECTION WITH MYSQL-->    
<%
      Class.forName("com.mysql.jdbc.Driver");
      String connectionURL= "jdbc:mysql://localhost:3306/Diablo";

      Connection connection = null;
      connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/school","root","pagal.com");

      Statement stmt=null;
      Statement stmt2 = null;
      Statement stmt3 = null;
      PreparedStatement prep=null;
      ResultSet res=null;
      ResultSet res2=null;
      ResultSet res3 = null;
      stmt = connection.createStatement();
      stmt2 = connection.createStatement();
      stmt3 = connection.createStatement();      

%>  
<!--CONNECTION DONE-->

<%
      String name = request.getParameter("first");
      String fat = request.getParameter("father");
      String cl = request.getParameter("class");

      prep = connection.prepareStatement("delete from student where NAME='"+name+"' and FATHER='"+fat+"' and CLASS='"+cl+"'");
      prep.executeUpdate();
      prep = connection.prepareStatement("delete from marksT1 where NAME='"+name+"' and FATHER='"+fat+"' and CLASS='"+cl+"'");
      prep.executeUpdate();
      prep = connection.prepareStatement("delete from marks_HALF where NAME='"+name+"' and FATHER='"+fat+"' and CLASS='"+cl+"'");
      prep.executeUpdate();
      prep = connection.prepareStatement("delete from marks_T3 where NAME='"+name+"' and FATHER='"+fat+"' and CLASS='"+cl+"'");
      prep.executeUpdate();
      prep = connection.prepareStatement("delete from marks_END where NAME='"+name+"' and FATHER='"+fat+"' and CLASS='"+cl+"'");
      prep.executeUpdate();
      prep = connection.prepareStatement("delete from apr_fee where NAME='"+name+"' and FATHER='"+fat+"' and CLASS='"+cl+"'");
      prep.executeUpdate();
      prep = connection.prepareStatement("delete from may_fee where NAME='"+name+"' and FATHER='"+fat+"' and CLASS='"+cl+"'");
      prep.executeUpdate();
      prep = connection.prepareStatement("delete from jun_fee where NAME='"+name+"' and FATHER='"+fat+"' and CLASS='"+cl+"'");
      prep.executeUpdate();
      prep = connection.prepareStatement("delete from jul_fee where NAME='"+name+"' and FATHER='"+fat+"' and CLASS='"+cl+"'");
      prep.executeUpdate();
      prep = connection.prepareStatement("delete from aug_fee where NAME='"+name+"' and FATHER='"+fat+"' and CLASS='"+cl+"'");
      prep.executeUpdate();
      prep = connection.prepareStatement("delete from sep_fee where NAME='"+name+"' and FATHER='"+fat+"' and CLASS='"+cl+"'");
      prep.executeUpdate();
      prep = connection.prepareStatement("delete from oct_fee where NAME='"+name+"' and FATHER='"+fat+"' and CLASS='"+cl+"'");
      prep.executeUpdate();
      prep = connection.prepareStatement("delete from nov_fee where NAME='"+name+"' and FATHER='"+fat+"' and CLASS='"+cl+"'");
      prep.executeUpdate();
      prep = connection.prepareStatement("delete from dec_fee where NAME='"+name+"' and FATHER='"+fat+"' and CLASS='"+cl+"'");
      prep.executeUpdate();
      prep = connection.prepareStatement("delete from jan_fee where NAME='"+name+"' and FATHER='"+fat+"' and CLASS='"+cl+"'");
      prep.executeUpdate();
      prep = connection.prepareStatement("delete from feb_fee where NAME='"+name+"' and FATHER='"+fat+"' and CLASS='"+cl+"'");
      prep.executeUpdate();
      prep = connection.prepareStatement("delete from mar_fee where NAME='"+name+"' and FATHER='"+fat+"' and CLASS='"+cl+"'");
      prep.executeUpdate();
      

      response.sendRedirect("http://localhost:8080/School/school_spa.jsp#menu1");

%>

</body>
</html>