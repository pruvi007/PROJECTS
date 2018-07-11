<%@ page import = "java.io.*" %>
<%@ page import = "java.sql.*" %>
<%@ page import = "java.util.*" %>
<html>
<body>
<%
	
      String name = request.getParameter("name");
     //String str[] = name.split(" ");
      //String f = str[0];
      //String p = str[1];

      //res = stmt.executeQuery("select MOTHER from student");

      int flag=0;
      boolean a =((name.equals("NUR")) || (name.equals("LKG")) || (name.equals("UKG")) || (name.equals("I")) || (name.equals("II")) || (name.equals("III")) || (name.equals("IV")) || (name.equals("V")) || (name.equals("VI")) || (name.equals("VII")) || (name.equals("VIII")) || (name.equals("IX")) || (name.equals("X")));
      if(!a)
      {
            flag=1;
      }
      

      
      if(name.length() == 0)
      {
            %><font size="3" face="courier new" color="BLUE"><b><%out.print("TYPE");%></font></b><%
      }
      else if(flag==1)
      {
            %><font size="3" face="courier new" color="red"><b><%out.print("INVALID CLASS");%></font></b><%
      }
      else
      {
            %><font size="3" face="courier new" color="green"><b><%out.print("CLASS AVAILABLE");%></font></b><%
      }


       

%>
</body>
</html>
