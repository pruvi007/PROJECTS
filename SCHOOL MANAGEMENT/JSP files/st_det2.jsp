<%@ page import = "java.io.*" %>
<%@ page import = "java.sql.*" %>
<%@ page import = "java.util.*" %>

<html>
<title>Student_details</title>
      <head>
            <!--minfied CSS compiled -->
             <script src = "https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
             <script src = "//maxcdn.bootstrapcdn.com/bootstrap/3.3.1/js/bootstrap.min.js"></script>
            <link href = "//maxcdn.bootstrapcdn.com/bootstrap/3.3.1/css/bootstrap.min.css" rel = "stylesheet">

            <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css">

            <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
            <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css%22">

               <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.6.9/angular.min.js"></script>
                <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.6.9/angular-resource.min.js">
                </script>
                <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.6.9/angular-route.min.js">
               </script>
                <script src="https://cdn.firebase.com/js/client/2.0.4/firebase.js"></script>
                <script src="https://cdn.firebase.com/libs/angularfire/0.9.0/angularfire.min.js"></script>

             <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

             <style>
             	 .w-auto {
                        width: auto;
                    }
                  td{
                  		font-family: courier new ;
                  }

             </style>
            </head>
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

%>  

<%

		//String cl = request.getParameter("data");
		String cl = "11";
		if(cl.equals("11"))
		{

				res = stmt.executeQuery("select * from student where class='I'");
				int c = 1;
				%>
				<font size="6" face="courier new"><b>CLASS I</b></font><br><br>
				<table class = "table table-striped table-bordered table-responsive w-auto" width="20%">
				<tr class="active">
					<th><font size="3" face="courier new">SNO</th>
					<th><font size="3" face="courier new">ROLL</th>
					<th><font size="3" face="courier new">NAME</th>
					<th><font size="3" face="courier new">FATHER'S NAME</th>
					<th><font size="3" face="courier new">MOTHER'S NAME</th>
				</tr>
				
				<%
				while(res.next())
				{
				
				
					int roll = res.getInt(6);

					String name = res.getString(2);
					String fat = res.getString(3);
					String mom = res.getString(4);%>

					<tr>
					<td><%out.print(c++);%></td>
					<td><%out.print(roll);%></td>
					<td><%out.print(name.toUpperCase());%></td>
					<td><%out.print(fat.toUpperCase());%></td>
					<td><%out.print(mom.toUpperCase());%></td>
					</tr><%
					
				}
				%>
				
				</table>
				<%
		}

		else if(cl.equals("12"))
		{
				res = stmt.executeQuery("select * from student where class='II'");
				int c = 1;
				%>
				<font size="6" face="courier new"><b>CLASS II</b></font><br><br>
				<table class = "table table-striped table-bordered table-responsive w-auto" >
				<tr class="active">
					<th><font size="3" face="courier new">SNO</th>
					<th><font size="3" face="courier new">ROLL</th>
					<th><font size="3" face="courier new">NAME</th>
					<th><font size="3" face="courier new">FATHER'S NAME</th>
					<th><font size="3" face="courier new">MOTHER'S NAME</th>
				</tr>
				<%
				while(res.next())
				{
					
					

					int roll = res.getInt(6);

					String name = res.getString(2);
					String fat = res.getString(3);
					String mom = res.getString(4);%>
					<tr>
					<td><%out.print(c++);%></td>
					<td><%out.print(roll);%></td>
					<td><%out.print(name.toUpperCase());%></td>
					<td><%out.print(fat.toUpperCase());%></td>
					<td><%out.print(mom.toUpperCase());%></td>

					</tr><%
					
				}
				%>
				</table>
				<%
		}

		else if(cl.equals("13"))
		{
				res = stmt.executeQuery("select * from student where class='III'");
				int c = 1;
				%>
				<font size="6" face="courier new"><b>CLASS III</b></font><br><br>
				<table class = "table table-striped table-bordered table-responsive w-auto" width="20%">
				<tr class="active">
					<th><font size="3" face="courier new">SNO</th>
					<th><font size="3" face="courier new">ROLL</th>
					<th><font size="3" face="courier new">NAME</th>
					<th><font size="3" face="courier new">FATHER'S NAME</th>
					<th><font size="3" face="courier new">MOTHER'S NAME</th>
				</tr>
				<%
				while(res.next())
				{
					
					

					int roll = res.getInt(6);

					String name = res.getString(2);
					String fat = res.getString(3);
					String mom = res.getString(4);%>

					<tr>
					<td><%out.print(c++);%></td>
					<td><%out.print(roll);%></td>
					<td><%out.print(name.toUpperCase());%></td>
					<td><%out.print(fat.toUpperCase());%></td>
					<td><%out.print(mom.toUpperCase());%></td>
					</tr><%
					
				}
				%>
				</table>
				<%
		}

		else if(cl.equals("14"))
		{
				res = stmt.executeQuery("select * from student where class='IV'");
				int c = 1;
				%>
				<font size="6" face="courier new"><b>CLASS IV</b></font><br><br>
				<table class = "table table-striped table-bordered table-responsive w-auto" >
				<tr class="active">
					<th><font size="3" face="courier new">SNO</th>
					<th><font size="3" face="courier new">ROLL</th>
					<th><font size="3" face="courier new">NAME</th>
					<th><font size="3" face="courier new">FATHER'S NAME</th>
					<th><font size="3" face="courier new">MOTHER'S NAME</th>
				</tr>
				<%
				while(res.next())
				{
					
					

					int roll = res.getInt(6);

					String name = res.getString(2);
					String fat = res.getString(3);
					String mom = res.getString(4);%>
					<tr>
					<td><%out.print(c++);%></td>
					<td><%out.print(roll);%></td>
					<td><%out.print(name.toUpperCase());%></td>
					<td><%out.print(fat.toUpperCase());%></td>
					<td><%out.print(mom.toUpperCase());%></td>
					</tr><%
					
				}
				%>
				</table>
				<%
		}

		else if(cl.equals("15"))
		{
				res = stmt.executeQuery("select * from student where class='V'");
				int c = 1;
				%>
				<font size="6" face="courier new"><b>CLASS V</b></font><br><br>
				<table class = "table table-striped table-bordered table-responsive w-auto">
				<tr class="active">
					<th><font size="3" face="courier new">SNO</th>
					<th><font size="3" face="courier new">ROLL</th>
					<th><font size="3" face="courier new">NAME</th>
					<th><font size="3" face="courier new">FATHER'S NAME</th>
					<th><font size="3" face="courier new">MOTHER'S NAME</th>
				</tr>
				<%
				while(res.next())
				{
					
					
					int roll = res.getInt(6);

					String name = res.getString(2);
					String fat = res.getString(3);
					String mom = res.getString(4);%>

					<tr>
					<td><%out.print(c++);%></td>
					<td><%out.print(roll);%></td>
					<td><%out.print(name.toUpperCase());%></td>
					<td><%out.print(fat.toUpperCase());%></td>
					<td><%out.print(mom.toUpperCase());%></td>
					</tr><%
					
				}
				%>
				</table>
				<%
		}

		else if(cl.equals("16"))
		{
				res = stmt.executeQuery("select * from student where class='VI'");
				int c = 1;
				%>
				<font size="6" face="courier new"><b>CLASS VI</b></font><br><br>
				<table class = "table table-striped table-bordered table-responsive w-auto">
				<tr class="active">
					<th><font size="3" face="courier new">SNO</th>
					<th><font size="3" face="courier new">ROLL</th>
					<th><font size="3" face="courier new">NAME</th>
					<th><font size="3" face="courier new">FATHER'S NAME</th>
					<th><font size="3" face="courier new">MOTHER'S NAME</th>
				</tr>
				<%
				while(res.next())
				{
					
					
					int roll = res.getInt(6);

					String name = res.getString(2);
					String fat = res.getString(3);
					String mom = res.getString(4);%>

					<tr>
					<td><%out.print(c++);%></td>
					<td><%out.print(roll);%></td>
					<td><%out.print(name.toUpperCase());%></td>
					<td><%out.print(fat.toUpperCase());%></td>
					<td><%out.print(mom.toUpperCase());%></td>

					</tr><%
					
				}
				%>
				</table>
				<%
		}

		else if(cl.equals("17"))
		{
				res = stmt.executeQuery("select * from student where class='VII'");
				int c = 1;
				%>
				<font size="6" face="courier new"><b>CLASS VII</b></font><br><br>
				<table class = "table table-striped table-bordered table-responsive w-auto">
				<tr class="active">
					<th><font size="3" face="courier new">SNO</th>
					<th><font size="3" face="courier new">ROLL</th>
					<th><font size="3" face="courier new">NAME</th>
					<th><font size="3" face="courier new">FATHER'S NAME</th>
					<th><font size="3" face="courier new">MOTHER'S NAME</th>
				</tr>
				<%
				while(res.next())
				{
					
				

					int roll = res.getInt(6);

					String name = res.getString(2);
					String fat = res.getString(3);
					String mom = res.getString(4);%>

					<tr>
					<td><%out.print(c++);%></td>
					<td><%out.print(roll);%></td>
					<td><%out.print(name.toUpperCase());%></td>
					<td><%out.print(fat.toUpperCase());%></td>
					<td><%out.print(mom.toUpperCase());%></td>

					</tr><%
					
				}
				%>
				</table>
				<%
		}

		else if(cl.equals("18"))
		{
				res = stmt.executeQuery("select * from student where class='VIII'");
				int c = 1;
				%>
				<font size="6" face="courier new"><b>CLASS VIII</b></font><br><br>
				<table class = "table table-striped table-bordered table-responsive w-auto">
					<th><font size="3" face="courier new">SNO</th>
					<th><font size="3" face="courier new">ROLL</th>
					<th><font size="3" face="courier new">NAME</th>
					<th><font size="3" face="courier new">FATHER'S NAME</th>
					<th><font size="3" face="courier new">MOTHER'S NAME</th>
				</tr>
				<%
				while(res.next())
				{
					
					

					int roll = res.getInt(6);

					String name = res.getString(2);
					String fat = res.getString(3);
					String mom = res.getString(4);%>

					<tr>
					<td><%out.print(c++);%></td>
					<td><%out.print(roll);%></td>
					<td><%out.print(name.toUpperCase());%></td>
					<td><%out.print(fat.toUpperCase());%></td>
					<td><%out.print(mom.toUpperCase());%></td>
					</tr><%
					
				}
				%>
				</table>
				<%
		}

		else if(cl.equals("19"))
		{
				res = stmt.executeQuery("select * from student where class='IX'");
				int c = 1;
				%>
				<font size="6" face="courier new"><b>CLASS IX</b></font><br><br>
				<table class = "table table-striped table-bordered table-responsive w-auto">
				<tr class="active">
					<th><font size="3" face="courier new">SNO</th>
					<th><font size="3" face="courier new">ROLL</th>
					<th><font size="3" face="courier new">NAME</th>
					<th><font size="3" face="courier new">FATHER'S NAME</th>
					<th><font size="3" face="courier new">MOTHER'S NAME</th>
				</tr>
				<%
				while(res.next())
				{
					
					

					int roll = res.getInt(6);

					String name = res.getString(2);
					String fat = res.getString(3);
					String mom = res.getString(4);%>

					<tr>
					<td><%out.print(c++);%></td>
					<td><%out.print(roll);%></td>
					<td><%out.print(name.toUpperCase());%></td>
					<td><%out.print(fat.toUpperCase());%></td>
					<td><%out.print(mom.toUpperCase());%></td>

					</tr><%
					
				}
				%>
				</table>
				<%
		}

		else if(cl.equals("10"))
		{
				res = stmt.executeQuery("select * from student where class='X'");
				int c = 1;
				%>
				<font size="6" face="courier new"><b>CLASS X</b></font><br><br>
				<table class = "table table-striped table-bordered table-responsive w-auto">
				<tr class="active">
					<th><font size="3" face="courier new">SNO</th>
					<th><font size="3" face="courier new">ROLL</th>
					<th><font size="3" face="courier new">NAME</th>
					<th><font size="3" face="courier new">FATHER'S NAME</th>
					<th><font size="3" face="courier new">MOTHER'S NAME</th>
				</tr>
				<%
				while(res.next())
				{
					
			

					int roll = res.getInt(6);

					String name = res.getString(2);
					String fat = res.getString(3);
					String mom = res.getString(4);%>

					<tr>
					<td><%out.print(c++);%></td>
					<td><%out.print(roll);%></td>
					<td><%out.print(name.toUpperCase());%></td>
					<td><%out.print(fat.toUpperCase());%></td>
					<td><%out.print(mom.toUpperCase());%></td>
					</tr><%
					
				}
				%>
				</table>
				<%
		}

%>
</body>
</html>

