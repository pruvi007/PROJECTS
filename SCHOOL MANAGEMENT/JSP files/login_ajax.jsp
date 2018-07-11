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

      res = stmt.executeQuery("select * from ADMIN");

      int flag=0;
      while(res.next())
      {
            String s1 = res.getString(1);
            //String p1 = res.getString(2);
            if(s1.equals(name))
            {     
                  flag=1;
                  break;
            }
      }
      if(name.length() == 0)
      {
            %><font size="3" face="courier new" color="blue"><b><%out.print("TYPE USERNAME");%></font></b><%
      }
      else if(flag==1 && name.length()!=0)
      {
            %><font size="3" face="courier new" color="green"><b><%out.print("USER EXISTS");%></font></b><%
      }
      else if(flag==0 && name.length()!=0)
      {
           %><font size="3" face="courier new" color="red"><b><%out.print("USER DOESNT EXIST");%></font></b><%
      }

      stmt.close();
      stmt2.close();
      stmt3.close(); 
%>
</body>
</html>
