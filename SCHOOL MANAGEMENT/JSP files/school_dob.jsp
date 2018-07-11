<%@ page import = "java.io.*" %>
<%@ page import = "java.sql.*" %>
<%@ page import = "java.util.*" %>
<html>
<body>
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

      String name = request.getParameter("name");
     //String str[] = name.split(" ");
      //String f = str[0];
      //String p = str[1];

      //res = stmt.executeQuery("select MOTHER from student");

      int flag=0;
      for(int i=0;i<name.length();i++)
      {
            if((name.charAt(i)>='0' && name.charAt(i)<='9') || name.charAt(i)=='/')
            {

            }
            else
            {
                  flag=1;
                  break;
            }
      }
      

      
      if(name.length() == 0)
      {
            %><font size="3" face="courier new" color="BLUE"><b><%out.print("TYPE");%></font></b><%
      }
      else if(flag==1)
      {
            %><font size="3" face="courier new" color="red"><b><%out.print("INVALID DOB");%></font></b><%
      }
      else
      {
            %><font size="3" face="courier new" color="green"><b><%out.print("VALID DOB");%></font></b><%
      }


       stmt.close();
      stmt2.close();
      stmt3.close(); 

%>
</body>
</html>
