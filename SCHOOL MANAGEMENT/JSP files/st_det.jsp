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
		             	.accordion {
						    background-color: #eee;
						    color: #444;
						    cursor: pointer;
						    padding: 18px;
						    width: 100%;
						    text-align: left;
						    border: none;
						    outline: none;
						    transition: 0.4s;
						}
						.active, .accordion:hover {
						    background-color: #ccc;
						}

						.panel {
						    padding: 0 18px;
						    background-color: white;
						    display: none;
						    overflow: hidden;
						}
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
				int mod = 0;
				while(res.next())
				{
				
					 
                         String mod_id = "#"+"myModal"+mod;
                         String mod_id2 = "myModal"+mod;
                                    
					int roll = res.getInt(6);
					
					String name = res.getString(2);

					String fat = res.getString(3);
					String mom = res.getString(4);%>

					<tr>
					<td><%out.print(c++);%></td>
					<td><%out.print(roll);%></td>
					<td>

						<!--MODAL ON EACH NAME-->
						<button type="button" class="btn btn-success" data-toggle="modal" data-target="<%out.print(mod_id);%>">
                            <font size="4" color="Black" face="Courier New"><b>
                                          <%out.print(name);%>
                                                
                           </b></font>
                        </button>

                         <div id="<%out.print(mod_id2);%>" class="modal fade" role="dialog">
                                <div class="modal-dialog">

                                     <!-- Modal content-->
                                     <div class="modal-content">
                                     <div class="modal-header">
                                     <button type="button" class="close" data-dismiss="modal">&times;</button>
                                     <h4 class="modal-title">
                                     <center><font size="6" color="White" face="Courier New"><b>WELCOME<br><%out.print(name);%></b></font><br>
                                     </h4>
                                     </div>
                                     <!---MODAL BODY-->
                                     <div class="modal-body">
                                     	<font size="4" color="Black" face="Courier New"><b>NAME:</b><%out.print(name);%></font><br>
                                     	<font size="4" color="Black" face="Courier New"><b>FATHER'S NAME:</b><%out.print(fat.toUpperCase());%></font><br>
                                     	<font size="4" color="Black" face="Courier New"><b>MOTHER'S NAME:</b><%out.print(mom.toUpperCase());%></font><br>
                                     	<font size="4" color="Black" face="Courier New"><b>ADDRESS:</b></font>
                                     	<center><br>
                                     			<font size="5" color="Black" face="Courier New"><b>MARKS OVERVIEW</b></font><hr>
                                     	

                                     			<!--FETCHING MARKS-->

                                     	<%
                                     		String fet = "'"+name+"'";
                                     		res2 = stmt2.executeQuery("select * from marks where class = 'I' and name="+fet);
                                     		while(res2.next())
                                     		{
                                     			int eng = res2.getInt(3);
                                     			int hindi = res2.getInt(4);
                                     			int maths = res2.getInt(5);
                                     			int sci = res2.getInt(6);
                                     			int soc = res2.getInt(7);
                                     			int tot = eng + hindi + maths + sci + soc;
                                     			double per = (double)tot/(double)5;
                                     			%>
                                     			<font size="3" color="Black" face="Courier New"><b>ENGLISH:</b><%out.print(eng);%></font>&nbsp&nbsp
                                     			<font size="3" color="Black" face="Courier New"><b>HINDI:</b><%out.print(hindi);%></font>&nbsp&nbsp
                                     			<font size="3" color="Black" face="Courier New"><b>MATHS:</b><%out.print(maths);%></font>&nbsp&nbsp
                                     			<font size="3" color="Black" face="Courier New"><b>SCIENCE:</b><%out.print(sci);%></font>&nbsp&nbsp
                                     			<font size="3" color="Black" face="Courier New"><b>SOCIAL SCIENCE:</b><%out.print(soc);%></font><br>
                                     			<font size="3" color="Black" face="Courier New"><b>TOTAL:</b><%out.print(tot);%></font>&nbsp&nbsp&nbsp&nbsp
                                     			<font size="3" color="Black" face="Courier New"><b>MAX_MARKS:</b><%out.print("500");%></font><b><br>
                                     			<font size="3" color="Black" face="Courier New"><b>PERCENTAGE:</b><%out.print(per);%></font>

                                     			<%
                                     			mod++;


                                     		}

                                     	%>
                                     	</center>

							</div>
						</center>
					</h4></div></div></div>

					</td>
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

				int mod = 0;
				while(res.next())
				{
					
					String mod_id = "#"+"myModal"+mod;
                    String mod_id2 = "myModal"+mod;

					int roll = res.getInt(6);

					String name = res.getString(2);
					String fat = res.getString(3);
					String mom = res.getString(4);%>
					<tr>
					<td><%out.print(c++);%></td>
					<td><%out.print(roll);%></td>
					<td>

						<!--MODAL ON EACH NAME-->
						<button type="button" class="btn btn-success" data-toggle="modal" data-target="<%out.print(mod_id);%>">
                            <font size="4" color="Black" face="Courier New"><b>
                                          <%out.print(name);%>
                                                
                           </b></font>
                        </button>

                         <div id="<%out.print(mod_id2);%>" class="modal fade" role="dialog">
                                <div class="modal-dialog">

                                     <!-- Modal content-->
                                     <div class="modal-content">
                                     <div class="modal-header">
                                     <button type="button" class="close" data-dismiss="modal">&times;</button>
                                     <h4 class="modal-title">
                                     <center><font size="6" color="White" face="Courier New"><b>WELCOME<br><%out.print(name);%></b></font><br>
                                     </h4>
                                     </div>
                                     <!---MODAL BODY-->
                                     <div class="modal-body">
                                     	<font size="4" color="Black" face="Courier New"><b>NAME:</b><%out.print(name);%></font><br>
                                     	<font size="4" color="Black" face="Courier New"><b>FATHER'S NAME:</b><%out.print(fat.toUpperCase());%></font><br>
                                     	<font size="4" color="Black" face="Courier New"><b>MOTHER'S NAME:</b><%out.print(mom.toUpperCase());%></font><br>
                                     	<font size="4" color="Black" face="Courier New"><b>ADDRESS:</b></font>
                                     	<center><br>
                                     			<font size="5" color="Black" face="Courier New"><b>MARKS OVERVIEW</b></font><hr>
                                     	

                                     			<!--FETCHING MARKS-->

                                     	<%
                                     		String fet = "'"+name+"'";
                                     		res2 = stmt2.executeQuery("select * from marks where class = 'II' and name="+fet);
                                     		while(res2.next())
                                     		{
                                     			int eng = res2.getInt(3);
                                     			int hindi = res2.getInt(4);
                                     			int maths = res2.getInt(5);
                                     			int sci = res2.getInt(6);
                                     			int soc = res2.getInt(7);
                                     			int tot = eng + hindi + maths + sci + soc;
                                     			double per = (double)tot/(double)5;
                                     			%>
                                     			<font size="3" color="Black" face="Courier New"><b>ENGLISH:</b><%out.print(eng);%></font>&nbsp&nbsp
                                     			<font size="3" color="Black" face="Courier New"><b>HINDI:</b><%out.print(hindi);%></font>&nbsp&nbsp
                                     			<font size="3" color="Black" face="Courier New"><b>MATHS:</b><%out.print(maths);%></font>&nbsp&nbsp
                                     			<font size="3" color="Black" face="Courier New"><b>SCIENCE:</b><%out.print(sci);%></font>&nbsp&nbsp
                                     			<font size="3" color="Black" face="Courier New"><b>SOCIAL SCIENCE:</b><%out.print(soc);%></font><br>
                                     			<font size="3" color="Black" face="Courier New"><b>TOTAL:</b><%out.print(tot);%></font>&nbsp&nbsp&nbsp&nbsp
                                     			<font size="3" color="Black" face="Courier New"><b>MAX_MARKS:</b><%out.print("500");%></font><b><br>
                                     			<font size="3" color="Black" face="Courier New"><b>PERCENTAGE:</b><%out.print(per);%></font>

                                     			<%
                                     			mod++;


                                     		}

                                     	%>
                                     	</center>

							</div>
						</center>
					</h4></div></div></div>

					<!--MODAL ENDS HERE-->


						</td>
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

				int mod = 0;
				while(res.next())
				{
					
					
					String mod_id = "#"+"myModal"+mod;
                    String mod_id2 = "myModal"+mod;

					int roll = res.getInt(6);

					String name = res.getString(2);
					String fat = res.getString(3);
					String mom = res.getString(4);%>

					<tr>
					<td><%out.print(c++);%></td>
					<td><%out.print(roll);%></td>
					<td>

						<!--MODAL ON EACH NAME-->
						<button type="button" class="btn btn-success" data-toggle="modal" data-target="<%out.print(mod_id);%>">
                            <font size="4" color="Black" face="Courier New"><b>
                                          <%out.print(name);%>
                                                
                           </b></font>
                        </button>

                         <div id="<%out.print(mod_id2);%>" class="modal fade" role="dialog">
                                <div class="modal-dialog">

                                     <!-- Modal content-->
                                     <div class="modal-content">
                                     <div class="modal-header">
                                     <button type="button" class="close" data-dismiss="modal">&times;</button>
                                     <h4 class="modal-title">
                                     <center><font size="6" color="White" face="Courier New"><b>WELCOME<br><%out.print(name);%></b></font><br>
                                     </h4>
                                     </div>
                                     <!---MODAL BODY-->
                                     <div class="modal-body">
                                     	<font size="4" color="Black" face="Courier New"><b>NAME:</b><%out.print(name);%></font><br>
                                     	<font size="4" color="Black" face="Courier New"><b>FATHER'S NAME:</b><%out.print(fat.toUpperCase());%></font><br>
                                     	<font size="4" color="Black" face="Courier New"><b>MOTHER'S NAME:</b><%out.print(mom.toUpperCase());%></font><br>
                                     	<font size="4" color="Black" face="Courier New"><b>ADDRESS:</b></font>
                                     	<center><br>
                                     			<font size="5" color="Black" face="Courier New"><b>MARKS OVERVIEW</b></font><hr>
                                     	

                                     			<!--FETCHING MARKS-->

                                     	<%
                                     		String fet = "'"+name+"'";
                                     		res2 = stmt2.executeQuery("select * from marks where class = 'III' and name="+fet);
                                     		while(res2.next())
                                     		{
                                     			int eng = res2.getInt(3);
                                     			int hindi = res2.getInt(4);
                                     			int maths = res2.getInt(5);
                                     			int sci = res2.getInt(6);
                                     			int soc = res2.getInt(7);
                                     			int tot = eng + hindi + maths + sci + soc;
                                     			double per = (double)tot/(double)5;
                                     			%>
                                     			<font size="3" color="Black" face="Courier New"><b>ENGLISH:</b><%out.print(eng);%></font>&nbsp&nbsp
                                     			<font size="3" color="Black" face="Courier New"><b>HINDI:</b><%out.print(hindi);%></font>&nbsp&nbsp
                                     			<font size="3" color="Black" face="Courier New"><b>MATHS:</b><%out.print(maths);%></font>&nbsp&nbsp
                                     			<font size="3" color="Black" face="Courier New"><b>SCIENCE:</b><%out.print(sci);%></font>&nbsp&nbsp
                                     			<font size="3" color="Black" face="Courier New"><b>SOCIAL SCIENCE:</b><%out.print(soc);%></font><br>
                                     			<font size="3" color="Black" face="Courier New"><b>TOTAL:</b><%out.print(tot);%></font>&nbsp&nbsp&nbsp&nbsp
                                     			<font size="3" color="Black" face="Courier New"><b>MAX_MARKS:</b><%out.print("500");%></font><b><br>
                                     			<font size="3" color="Black" face="Courier New"><b>PERCENTAGE:</b><%out.print(per);%></font>

                                     			<%
                                     			mod++;


                                     		}

                                     	%>
                                     	</center>

							</div>
						</center>
					</h4></div></div></div>

					<!--MODAL ENDS HERE-->

							

						</td>
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

				int mod = 0;
				while(res.next())
				{
					
					String mod_id = "#"+"myModal"+mod;
                    String mod_id2 = "myModal"+mod;


					int roll = res.getInt(6);

					String name = res.getString(2);
					String fat = res.getString(3);
					String mom = res.getString(4);%>
					<tr>
					<td><%out.print(c++);%></td>
					<td><%out.print(roll);%></td>
					<td>
						<!--MODAL ON EACH NAME-->
						<button type="button" class="btn btn-success" data-toggle="modal" data-target="<%out.print(mod_id);%>">
                            <font size="4" color="Black" face="Courier New"><b>
                                          <%out.print(name);%>
                                                
                           </b></font>
                        </button>

                         <div id="<%out.print(mod_id2);%>" class="modal fade" role="dialog">
                                <div class="modal-dialog">

                                     <!-- Modal content-->
                                     <div class="modal-content">
                                     <div class="modal-header">
                                     <button type="button" class="close" data-dismiss="modal">&times;</button>
                                     <h4 class="modal-title">
                                     <center><font size="6" color="White" face="Courier New"><b>WELCOME<br><%out.print(name);%></b></font><br>
                                     </h4>
                                     </div>
                                     <!---MODAL BODY-->
                                     <div class="modal-body">
                                     	<font size="4" color="Black" face="Courier New"><b>NAME:</b><%out.print(name);%></font><br>
                                     	<font size="4" color="Black" face="Courier New"><b>FATHER'S NAME:</b><%out.print(fat.toUpperCase());%></font><br>
                                     	<font size="4" color="Black" face="Courier New"><b>MOTHER'S NAME:</b><%out.print(mom.toUpperCase());%></font><br>
                                     	<font size="4" color="Black" face="Courier New"><b>ADDRESS:</b></font>
                                     	<center><br>
                                     			<font size="5" color="Black" face="Courier New"><b>MARKS OVERVIEW</b></font><hr>
                                     	

                                     			<!--FETCHING MARKS-->

                                     	<%
                                     		String fet = "'"+name+"'";
                                     		res2 = stmt2.executeQuery("select * from marks where class = 'IV' and name="+fet);
                                     		while(res2.next())
                                     		{
                                     			int eng = res2.getInt(3);
                                     			int hindi = res2.getInt(4);
                                     			int maths = res2.getInt(5);
                                     			int sci = res2.getInt(6);
                                     			int soc = res2.getInt(7);
                                     			int tot = eng + hindi + maths + sci + soc;
                                     			double per = (double)tot/(double)5;
                                     			%>
                                     			<font size="3" color="Black" face="Courier New"><b>ENGLISH:</b><%out.print(eng);%></font>&nbsp&nbsp
                                     			<font size="3" color="Black" face="Courier New"><b>HINDI:</b><%out.print(hindi);%></font>&nbsp&nbsp
                                     			<font size="3" color="Black" face="Courier New"><b>MATHS:</b><%out.print(maths);%></font>&nbsp&nbsp
                                     			<font size="3" color="Black" face="Courier New"><b>SCIENCE:</b><%out.print(sci);%></font>&nbsp&nbsp
                                     			<font size="3" color="Black" face="Courier New"><b>SOCIAL SCIENCE:</b><%out.print(soc);%></font><br>
                                     			<font size="3" color="Black" face="Courier New"><b>TOTAL:</b><%out.print(tot);%></font>&nbsp&nbsp&nbsp&nbsp
                                     			<font size="3" color="Black" face="Courier New"><b>MAX_MARKS:</b><%out.print("500");%></font><b><br>
                                     			<font size="3" color="Black" face="Courier New"><b>PERCENTAGE:</b><%out.print(per);%></font>

                                     			<%
                                     			mod++;


                                     		}

                                     	%>
                                     	</center>

							</div>
						</center>
					</h4></div></div></div>

					<!--MODAL ENDS HERE-->
							
						</td>
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

				int mod = 0;
				while(res.next())
				{
					
					String mod_id = "#"+"myModal"+mod;
                    String mod_id2 = "myModal"+mod;
					
					int roll = res.getInt(6);

					String name = res.getString(2);
					String fat = res.getString(3);
					String mom = res.getString(4);%>

					<tr>
					<td><%out.print(c++);%></td>
					<td><%out.print(roll);%></td>
					<td>
						<!--MODAL ON EACH NAME-->
						<button type="button" class="btn btn-success" data-toggle="modal" data-target="<%out.print(mod_id);%>">
                            <font size="4" color="Black" face="Courier New"><b>
                                          <%out.print(name);%>
                                                
                           </b></font>
                        </button>

                         <div id="<%out.print(mod_id2);%>" class="modal fade" role="dialog">
                                <div class="modal-dialog">

                                     <!-- Modal content-->
                                     <div class="modal-content">
                                     <div class="modal-header">
                                     <button type="button" class="close" data-dismiss="modal">&times;</button>
                                     <h4 class="modal-title">
                                     <center><font size="6" color="White" face="Courier New"><b>WELCOME<br><%out.print(name);%></b></font><br>
                                     </h4>
                                     </div>
                                     <!---MODAL BODY-->
                                     <div class="modal-body">
                                     	<font size="4" color="Black" face="Courier New"><b>NAME:</b><%out.print(name);%></font><br>
                                     	<font size="4" color="Black" face="Courier New"><b>FATHER'S NAME:</b><%out.print(fat.toUpperCase());%></font><br>
                                     	<font size="4" color="Black" face="Courier New"><b>MOTHER'S NAME:</b><%out.print(mom.toUpperCase());%></font><br>
                                     	<font size="4" color="Black" face="Courier New"><b>ADDRESS:</b></font>
                                     	<center><br>
                                     			<font size="5" color="Black" face="Courier New"><b>MARKS OVERVIEW</b></font><hr>
                                     	

                                     			<!--FETCHING MARKS-->

                                     	<%
                                     		String fet = "'"+name+"'";
                                     		res2 = stmt2.executeQuery("select * from marks where class = 'V' and name="+fet);
                                     		while(res2.next())
                                     		{
                                     			int eng = res2.getInt(3);
                                     			int hindi = res2.getInt(4);
                                     			int maths = res2.getInt(5);
                                     			int sci = res2.getInt(6);
                                     			int soc = res2.getInt(7);
                                     			int tot = eng + hindi + maths + sci + soc;
                                     			double per = (double)tot/(double)5;
                                     			%>
                                     			<font size="3" color="Black" face="Courier New"><b>ENGLISH:</b><%out.print(eng);%></font>&nbsp&nbsp
                                     			<font size="3" color="Black" face="Courier New"><b>HINDI:</b><%out.print(hindi);%></font>&nbsp&nbsp
                                     			<font size="3" color="Black" face="Courier New"><b>MATHS:</b><%out.print(maths);%></font>&nbsp&nbsp
                                     			<font size="3" color="Black" face="Courier New"><b>SCIENCE:</b><%out.print(sci);%></font>&nbsp&nbsp
                                     			<font size="3" color="Black" face="Courier New"><b>SOCIAL SCIENCE:</b><%out.print(soc);%></font><br>
                                     			<font size="3" color="Black" face="Courier New"><b>TOTAL:</b><%out.print(tot);%></font>&nbsp&nbsp&nbsp&nbsp
                                     			<font size="3" color="Black" face="Courier New"><b>MAX_MARKS:</b><%out.print("500");%></font><b><br>
                                     			<font size="3" color="Black" face="Courier New"><b>PERCENTAGE:</b><%out.print(per);%></font>

                                     			<%
                                     			mod++;


                                     		}

                                     	%>
                                     	</center>

							</div>
						</center>
					</h4></div></div></div>

					<!--MODAL ENDS HERE-->
							
						</td>
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

				int mod = 0;
				while(res.next())
				{
					
					String mod_id = "#"+"myModal"+mod;
                    String mod_id2 = "myModal"+mod;

					int roll = res.getInt(6);

					String name = res.getString(2);
					String fat = res.getString(3);
					String mom = res.getString(4);%>

					<tr>
					<td><%out.print(c++);%></td>
					<td><%out.print(roll);%></td>
					<td>
						<!--MODAL ON EACH NAME-->
						<button type="button" class="btn btn-success" data-toggle="modal" data-target="<%out.print(mod_id);%>">
                            <font size="4" color="Black" face="Courier New"><b>
                                          <%out.print(name);%>
                                                
                           </b></font>
                        </button>

                         <div id="<%out.print(mod_id2);%>" class="modal fade" role="dialog">
                                <div class="modal-dialog">

                                     <!-- Modal content-->
                                     <div class="modal-content">
                                     <div class="modal-header">
                                     <button type="button" class="close" data-dismiss="modal">&times;</button>
                                     <h4 class="modal-title">
                                     <center><font size="6" color="White" face="Courier New"><b>WELCOME<br><%out.print(name);%></b></font><br>
                                     </h4>
                                     </div>
                                     <!---MODAL BODY-->
                                     <div class="modal-body">
                                     	<font size="4" color="Black" face="Courier New"><b>NAME:</b><%out.print(name);%></font><br>
                                     	<font size="4" color="Black" face="Courier New"><b>FATHER'S NAME:</b><%out.print(fat.toUpperCase());%></font><br>
                                     	<font size="4" color="Black" face="Courier New"><b>MOTHER'S NAME:</b><%out.print(mom.toUpperCase());%></font><br>
                                     	<font size="4" color="Black" face="Courier New"><b>ADDRESS:</b></font>
                                     	<center><br>
                                     			<font size="5" color="Black" face="Courier New"><b>MARKS OVERVIEW</b></font><hr>
                                     	

                                     			<!--FETCHING MARKS-->

                                     	<%
                                     		String fet = "'"+name+"'";
                                     		res2 = stmt2.executeQuery("select * from marks where class = 'VI' and name="+fet);
                                     		while(res2.next())
                                     		{
                                     			int eng = res2.getInt(3);
                                     			int hindi = res2.getInt(4);
                                     			int maths = res2.getInt(5);
                                     			int sci = res2.getInt(6);
                                     			int soc = res2.getInt(7);
                                     			int tot = eng + hindi + maths + sci + soc;
                                     			double per = (double)tot/(double)5;
                                     			%>
                                     			<font size="3" color="Black" face="Courier New"><b>ENGLISH:</b><%out.print(eng);%></font>&nbsp&nbsp
                                     			<font size="3" color="Black" face="Courier New"><b>HINDI:</b><%out.print(hindi);%></font>&nbsp&nbsp
                                     			<font size="3" color="Black" face="Courier New"><b>MATHS:</b><%out.print(maths);%></font>&nbsp&nbsp
                                     			<font size="3" color="Black" face="Courier New"><b>SCIENCE:</b><%out.print(sci);%></font>&nbsp&nbsp
                                     			<font size="3" color="Black" face="Courier New"><b>SOCIAL SCIENCE:</b><%out.print(soc);%></font><br>
                                     			<font size="3" color="Black" face="Courier New"><b>TOTAL:</b><%out.print(tot);%></font>&nbsp&nbsp&nbsp&nbsp
                                     			<font size="3" color="Black" face="Courier New"><b>MAX_MARKS:</b><%out.print("500");%></font><b><br>
                                     			<font size="3" color="Black" face="Courier New"><b>PERCENTAGE:</b><%out.print(per);%></font>

                                     			<%
                                     			mod++;


                                     		}

                                     	%>
                                     	</center>

							</div>
						</center>
					</h4></div></div></div>

					<!--MODAL ENDS HERE-->
							
						</td>
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
					<th><font size="3" face="courier new">SNO</font></th>
					<th><font size="3" face="courier new">ROLL</font></th>
					<th><font size="3" face="courier new">NAME</font></th>
					<th><font size="3" face="courier new">FATHER'S NAME</font></th>
					<th><font size="3" face="courier new">MOTHER'S NAME</font></th>
				</tr>
			</table>
				<%

				int mod = 1;
				while(res.next())
				{
					
					int roll = res.getInt(6);
					String name = res.getString(2);
					String fat = res.getString(3);
					String mom = res.getString(4);
					%>
					<button class="accordion">Section <%out.print(mod++);%></button>
						<div class="panel">
						  <p>
						  	<%
						  		out.println(roll);
						  		out.println(name);
						  		out.println(fat);
						  	%>

						  </p>
						</div>

						

					<%	
					
				}
				%>
				<script>
						var acc = document.getElementsByClassName("accordion");
							var i;

							for (i = 0; i < acc.length; i++) {
							    acc[i].addEventListener("click", function() {
							        /* Toggle between adding and removing the "active" class,
							        to highlight the button that controls the panel */
							        this.classList.toggle("active");

							        /* Toggle between hiding and showing the active panel */
							        var panel = this.nextElementSibling;
							        if (panel.style.display === "block") {
							            panel.style.display = "none";
							        } else {
							            panel.style.display = "block";
							        }
							    });
							} 
					</script>

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

				int mod = 0;
				while(res.next())
				{
					
					String mod_id = "#"+"myModal"+mod;
                    String mod_id2 = "myModal"+mod;

					int roll = res.getInt(6);

					String name = res.getString(2);
					String fat = res.getString(3);
					String mom = res.getString(4);%>

					<tr>
					<td><%out.print(c++);%></td>
					<td><%out.print(roll);%></td>
					<td>
						<!--MODAL ON EACH NAME-->
						<button type="button" class="btn btn-success" data-toggle="modal" data-target="<%out.print(mod_id);%>">
                            <font size="4" color="Black" face="Courier New"><b>
                                          <%out.print(name);%>
                                                
                           </b></font>
                        </button>

                         <div id="<%out.print(mod_id2);%>" class="modal fade" role="dialog">
                                <div class="modal-dialog">

                                     <!-- Modal content-->
                                     <div class="modal-content">
                                     <div class="modal-header">
                                     <button type="button" class="close" data-dismiss="modal">&times;</button>
                                     <h4 class="modal-title">
                                     <center><font size="6" color="White" face="Courier New"><b>WELCOME<br><%out.print(name);%></b></font><br>
                                     </h4>
                                     </div>
                                     <!---MODAL BODY-->
                                     <div class="modal-body">
                                     	<font size="4" color="Black" face="Courier New"><b>NAME:</b><%out.print(name);%></font><br>
                                     	<font size="4" color="Black" face="Courier New"><b>FATHER'S NAME:</b><%out.print(fat.toUpperCase());%></font><br>
                                     	<font size="4" color="Black" face="Courier New"><b>MOTHER'S NAME:</b><%out.print(mom.toUpperCase());%></font><br>
                                     	<font size="4" color="Black" face="Courier New"><b>ADDRESS:</b></font>
                                     	<center><br>
                                     			<font size="5" color="Black" face="Courier New"><b>MARKS OVERVIEW</b></font><hr>
                                     	

                                     			<!--FETCHING MARKS-->

                                     	<%
                                     		String fet = "'"+name+"'";
                                     		res2 = stmt2.executeQuery("select * from marks where class = 'VIII' and name="+fet);
                                     		while(res2.next())
                                     		{
                                     			int eng = res2.getInt(3);
                                     			int hindi = res2.getInt(4);
                                     			int maths = res2.getInt(5);
                                     			int sci = res2.getInt(6);
                                     			int soc = res2.getInt(7);
                                     			int tot = eng + hindi + maths + sci + soc;
                                     			double per = (double)tot/(double)5;
                                     			%>
                                     			<font size="3" color="Black" face="Courier New"><b>ENGLISH:</b><%out.print(eng);%></font>&nbsp&nbsp
                                     			<font size="3" color="Black" face="Courier New"><b>HINDI:</b><%out.print(hindi);%></font>&nbsp&nbsp
                                     			<font size="3" color="Black" face="Courier New"><b>MATHS:</b><%out.print(maths);%></font>&nbsp&nbsp
                                     			<font size="3" color="Black" face="Courier New"><b>SCIENCE:</b><%out.print(sci);%></font>&nbsp&nbsp
                                     			<font size="3" color="Black" face="Courier New"><b>SOCIAL SCIENCE:</b><%out.print(soc);%></font><br>
                                     			<font size="3" color="Black" face="Courier New"><b>TOTAL:</b><%out.print(tot);%></font>&nbsp&nbsp&nbsp&nbsp
                                     			<font size="3" color="Black" face="Courier New"><b>MAX_MARKS:</b><%out.print("500");%></font><b><br>
                                     			<font size="3" color="Black" face="Courier New"><b>PERCENTAGE:</b><%out.print(per);%></font>

                                     			<%
                                     			mod++;


                                     		}

                                     	%>
                                     	</center>

							</div>
						</center>
					</h4></div></div></div>

					<!--MODAL ENDS HERE-->
							
						</td>
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

				int mod = 0;
				while(res.next())
				{
					String mod_id = "#"+"myModal"+mod;
                    String mod_id2 = "myModal"+mod;
					

					int roll = res.getInt(6);

					String name = res.getString(2);
					String fat = res.getString(3);
					String mom = res.getString(4);%>

					<tr>
					<td><%out.print(c++);%></td>
					<td><%out.print(roll);%></td>
					<td>
						<!--MODAL ON EACH NAME-->
						<button type="button" class="btn btn-success" data-toggle="modal" data-target="<%out.print(mod_id);%>">
                            <font size="4" color="Black" face="Courier New"><b>
                                          <%out.print(name);%>
                                                
                           </b></font>
                        </button>

                         <div id="<%out.print(mod_id2);%>" class="modal fade" role="dialog">
                                <div class="modal-dialog">

                                     <!-- Modal content-->
                                     <div class="modal-content">
                                     <div class="modal-header">
                                     <button type="button" class="close" data-dismiss="modal">&times;</button>
                                     <h4 class="modal-title">
                                     <center><font size="6" color="White" face="Courier New"><b>WELCOME<br><%out.print(name);%></b></font><br>
                                     </h4>
                                     </div>
                                     <!---MODAL BODY-->
                                     <div class="modal-body">
                                     	<font size="4" color="Black" face="Courier New"><b>NAME:</b><%out.print(name);%></font><br>
                                     	<font size="4" color="Black" face="Courier New"><b>FATHER'S NAME:</b><%out.print(fat.toUpperCase());%></font><br>
                                     	<font size="4" color="Black" face="Courier New"><b>MOTHER'S NAME:</b><%out.print(mom.toUpperCase());%></font><br>
                                     	<font size="4" color="Black" face="Courier New"><b>ADDRESS:</b></font>
                                     	<center><br>
                                     			<font size="5" color="Black" face="Courier New"><b>MARKS OVERVIEW</b></font><hr>
                                     	

                                     			<!--FETCHING MARKS-->

                                     	<%
                                     		String fet = "'"+name+"'";
                                     		res2 = stmt2.executeQuery("select * from marks where class = 'IX' and name="+fet);
                                     		while(res2.next())
                                     		{
                                     			int eng = res2.getInt(3);
                                     			int hindi = res2.getInt(4);
                                     			int maths = res2.getInt(5);
                                     			int sci = res2.getInt(6);
                                     			int soc = res2.getInt(7);
                                     			int tot = eng + hindi + maths + sci + soc;
                                     			double per = (double)tot/(double)5;
                                     			%>
                                     			<font size="3" color="Black" face="Courier New"><b>ENGLISH:</b><%out.print(eng);%></font>&nbsp&nbsp
                                     			<font size="3" color="Black" face="Courier New"><b>HINDI:</b><%out.print(hindi);%></font>&nbsp&nbsp
                                     			<font size="3" color="Black" face="Courier New"><b>MATHS:</b><%out.print(maths);%></font>&nbsp&nbsp
                                     			<font size="3" color="Black" face="Courier New"><b>SCIENCE:</b><%out.print(sci);%></font>&nbsp&nbsp
                                     			<font size="3" color="Black" face="Courier New"><b>SOCIAL SCIENCE:</b><%out.print(soc);%></font><br>
                                     			<font size="3" color="Black" face="Courier New"><b>TOTAL:</b><%out.print(tot);%></font>&nbsp&nbsp&nbsp&nbsp
                                     			<font size="3" color="Black" face="Courier New"><b>MAX_MARKS:</b><%out.print("500");%></font><b><br>
                                     			<font size="3" color="Black" face="Courier New"><b>PERCENTAGE:</b><%out.print(per);%></font>

                                     			<%
                                     			mod++;


                                     		}

                                     	%>
                                     	</center>

							</div>
						</center>
					</h4></div></div></div>

					<!--MODAL ENDS HERE-->
							
						</td>
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

				int mod = 0;
				while(res.next())
				{
					
					String mod_id = "#"+"myModal"+mod;
                    String mod_id2 = "myModal"+mod;

					int roll = res.getInt(6);

					String name = res.getString(2);
					String fat = res.getString(3);
					String mom = res.getString(4);%>

					<tr>
					<td><%out.print(c++);%></td>
					<td><%out.print(roll);%></td>
					<td>
						<!--MODAL ON EACH NAME-->
						<button type="button" class="btn btn-success" data-toggle="modal" data-target="<%out.print(mod_id);%>">
                            <font size="4" color="Black" face="Courier New"><b>
                                          <%out.print(name);%>
                                                
                           </b></font>
                        </button>

                         <div id="<%out.print(mod_id2);%>" class="modal fade" role="dialog">
                                <div class="modal-dialog">

                                     <!-- Modal content-->
                                     <div class="modal-content">
                                     <div class="modal-header">
                                     <button type="button" class="close" data-dismiss="modal">&times;</button>
                                     <h4 class="modal-title">
                                     <center><font size="6" color="White" face="Courier New"><b>WELCOME<br><%out.print(name);%></b></font><br>
                                     </h4>
                                     </div>
                                     <!---MODAL BODY-->
                                     <div class="modal-body">
                                     	<font size="4" color="Black" face="Courier New"><b>NAME:</b><%out.print(name);%></font><br>
                                     	<font size="4" color="Black" face="Courier New"><b>FATHER'S NAME:</b><%out.print(fat.toUpperCase());%></font><br>
                                     	<font size="4" color="Black" face="Courier New"><b>MOTHER'S NAME:</b><%out.print(mom.toUpperCase());%></font><br>
                                     	<font size="4" color="Black" face="Courier New"><b>ADDRESS:</b></font>
                                     	<center><br>
                                     			<font size="5" color="Black" face="Courier New"><b>MARKS OVERVIEW</b></font><hr>
                                     	

                                     			<!--FETCHING MARKS-->

                                     	<%
                                     		String fet = "'"+name+"'";
                                     		res2 = stmt2.executeQuery("select * from marks where class = 'X' and name="+fet);
                                     		while(res2.next())
                                     		{
                                     			int eng = res2.getInt(3);
                                     			int hindi = res2.getInt(4);
                                     			int maths = res2.getInt(5);
                                     			int sci = res2.getInt(6);
                                     			int soc = res2.getInt(7);
                                     			int tot = eng + hindi + maths + sci + soc;
                                     			double per = (double)tot/(double)5;
                                     			%>
                                     			<font size="3" color="Black" face="Courier New"><b>ENGLISH:</b><%out.print(eng);%></font>&nbsp&nbsp
                                     			<font size="3" color="Black" face="Courier New"><b>HINDI:</b><%out.print(hindi);%></font>&nbsp&nbsp
                                     			<font size="3" color="Black" face="Courier New"><b>MATHS:</b><%out.print(maths);%></font>&nbsp&nbsp
                                     			<font size="3" color="Black" face="Courier New"><b>SCIENCE:</b><%out.print(sci);%></font>&nbsp&nbsp
                                     			<font size="3" color="Black" face="Courier New"><b>SOCIAL SCIENCE:</b><%out.print(soc);%></font><br>
                                     			<font size="3" color="Black" face="Courier New"><b>TOTAL:</b><%out.print(tot);%></font>&nbsp&nbsp&nbsp&nbsp
                                     			<font size="3" color="Black" face="Courier New"><b>MAX_MARKS:</b><%out.print("500");%></font><b><br>
                                     			<font size="3" color="Black" face="Courier New"><b>PERCENTAGE:</b><%out.print(per);%></font>

                                     			<%
                                     			mod++;


                                     		}

                                     	%>
                                     	</center>

							</div>
						</center>
					</h4></div></div></div>

					<!--MODAL ENDS HERE-->
							
						</td>
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

