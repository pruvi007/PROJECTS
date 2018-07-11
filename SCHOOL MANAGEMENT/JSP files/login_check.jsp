<%@ page import = "java.io.*" %>
<%@ page import = "java.sql.*" %>
<%@ page import = "java.util.*" %>

<html>
<title>AUTHENTICATION</title>
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


			String name = request.getParameter("first");
			String pass = request.getParameter("pass");

			int flag=0;
			res = stmt.executeQuery("select * from ADMIN");
			while(res.next())
			{
				String n1 = res.getString(1);
				String n2 = res.getString(2);
				if(n1.equals(name) && n2.equals(pass))
				{
					flag=1;
					break;
				}
			}

			if(flag==1)
			{
				%><center><font size="5" face="courier new" color="GREEN"><b>LOGIN SUCCESS</b></font><%
				response.sendRedirect("http://localhost:8080/School/school_spa.jsp#menu1");
			}
			else
			{
				%><center><font size="5" face="courier new" color="red"><b>WRONG USER CREDENTIALS</b></font><%
				response.sendRedirect("http://localhost:8080/School/index.jsp");
			}
		%>
</body>
</html>
