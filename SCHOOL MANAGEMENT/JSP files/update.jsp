<%@ page import = "java.io.*" %>
<%@ page import = "java.sql.*" %>
<%@ page import = "java.util.*" %>

<html>
<title>UPDATE PORTAL</title>
<head>
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
             <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
             <script src="http://code.angularjs.org/1.2.4/angular-route.js"></script>
             <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.0/umd/popper.min.js"></script>
             <script src='https://code.responsivevoice.org/responsivevoice.js'></script>
             <style>
             
         	#term1
         	{
         		position: absolute;
         		top:18%;
         		left:30%;
         	}
         	#half
         	{
         		position: absolute;
         		top:18%;
         		left:40%;
         	}
         	#term3
         	{
         		position: absolute;
         		top:18%;
         		left:50%;
         	}
         	#termEnd
         	{
         		position: absolute;
         		top:18%;
         		left:60%;
         	}

         	.btn
         	{
         		background-color: #323232;
         	}
         	#term1_acc,#half_acc,#end_acc,#term3_acc
         	{
             		
	              padding: 20px; 
	              width: 1300px;
	              resize: both;
	              overflow: auto;
	              position:absolute;
	              top:23%;

         	}
         	#fix
         	{
         		position: fixed;
         		background-color:#323232;
         		color:white;
         		width:100%;
         		height:10%;
         		z-index:100;
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
	String cl = request.getParameter("class");
	/*if(cl.equals("NUR"))
		cl = "NURSERY";
	else if(cl.equals("LKG"))
		cl = "LKG";
	else if(cl.equals("UKG"))
		cl = "UKG";*/
%>
<script>
        responsiveVoice.speak("WELCOME TO marks portal of students", "UK English Female");
     
</script>

<center>
	<div id="fix">
	<font size="5" face="courier new">WELCOME TO MARKS PORTAL</font>
</div>
</center>
<br><br>
<br><center>
<font size="5" face="courier new"><b>CLASS <%out.print(cl);%></b></font></center>

<!------------------------------------------------------------------------------------------->
<!--ACCORDION FOR TERMINAL ONE-->
<div id="term1">
    <button type="button" onclick='responsiveVoice.speak("terminal 1");' class="btn btn-danger bt-lg" data-toggle="collapse" data-target="#term1_m">TERMINAL 1</button>
</div>  
<br>

	<div id="term1_acc">
		<div id="term1_m" class="collapse">
			<center><font size="3" face="courier new"><b>TERMINAL 1 MARKS_UPDATE</b></font></center>
	        <table class="table table-striped">
	        	<tr>
	        		<th><font size="2" face="courier new">ROLL NO</font></th>
	        		<th><font size="2" face="courier new">NAME</font></th>
	        		<th><font size="2" face="courier new">HINDI<br>(100)</font></th>
	        		<th><font size="2" face="courier new">ENGLISH<br>(100)</font></th>
	        		<th><font size="2" face="courier new">MATH<br>(100)</font></th>
	        		<th><font size="2" face="courier new">GK<br>(100)</font></th>
	        		<th><font size="2" face="courier new">HWD<br>(50)</font></th>
	        		<th><font size="2" face="courier new">EWD<br>(50)</font></th>
	        		<th><font size="2" face="courier new">DRAWING<br>(50)</font></th>
	        		<th><font size="2" face="courier new">HANDICRAFT<br>(50)</font></th>
	        		<th><font size="2" face="courier new">DANCE<br>MUSIC<br>(50)</font></th>
	        		<th><font size="2" face="courier new">SCIENCE<br>(90)</font></th>
	        		<th><font size="2" face="courier new">SCIENCE<br>PRACTICAL<br>(10)</font></th>
	        		<th><font size="2" face="courier new">SOCIAL<br>SCIENCE<br>(100)</font></th>
	        		<th><font size="2" face="courier new">HISTORY<br>(30)</font></th>
	        		<th><font size="2" face="courier new">GEOGRAPHY<br>(30)</font></th>
	        		<th><font size="2" face="courier new">CIVICS<br>(30)</font></th>
	        		<th><font size="2" face="courier new">HOME<br>ASSIGNMENT<br>(10)</font></th>
	        		<th><font size="2" face="courier new">SANSKRIT<br>(100)</font></th>
	        		
	        		<th><font size="2" face="courier new">COMPUTER<br>THEORY<br>(50)</font></th>
	        		<th><font size="2" face="courier new">COMPUTER<br>PRACTICAL<br>(50)</font></th>
	        		<th><font size="2" face="courier new">SUBMIT</font></th>
	            <%
	            	//cl = "'"+cl+"'";
	            	res = stmt.executeQuery("select * from marksT1 where CLASS='"+cl+"'");
	            	int roll = 1;
	            	String set_name[]= new String[1000];
	            	int k = 0;
	            	while(res.next())
	            	{
	            		String name = res.getString(2);
	            		//int roll = res.getInt(1);
	            		int hindi = res.getInt(3);
	            		int eng = res.getInt(4);
	            		int math = res.getInt(5);
	            		int gk = res.getInt(6);
	            		int hwd = res.getInt(7);
	            		int ewd = res.getInt(8);
	            		int draw = res.getInt(9);
	            		int handi = res.getInt(10);
	            		int dance = res.getInt(11);
	            		int sci = res.getInt(12);
	            		int scip = res.getInt(13);
	            		int social = res.getInt(14);
	            		int hist = res.getInt(15);
	            		int geo = res.getInt(16);
	            		int civics = res.getInt(17);
	            		int home = res.getInt(18);
	            		int sans = res.getInt(19);
	            		int compt = res.getInt(20);
	            		int compp = res.getInt(21);
	            		set_name[k++] = name;

	            		%>
	            		<tr><form action="m_updated.jsp?roll=<%=(roll)%>&name=<%=(name)%>&term=I&class=<%=(cl)%>" method="post">
	            			<td><font size="2" face="courier new"><%out.print(roll);%></font></td>
	            			<td><font size="2" face="courier new"><%out.print(name);%></font></td>
	            			
	            			<td><input type="text" name="hindi<%out.print(roll);%>" style="font-weight:bold;font-family:courier new;width:50px;font-size:15px;" placeholder="<%out.print(hindi);%>" required></td>
	            			<td><input type="text" name="eng<%out.print(roll);%>" style="font-weight:bold;font-family:courier new;width:50px;font-size:15px;" placeholder="<%out.print(eng);%>" required></td>
	            			<td><input type="text" name="math<%out.print(roll);%>" style="font-weight:bold;font-family:courier new;width:50px;font-size:15px;" placeholder="<%out.print(math);%>" required></td>
	            			<td><input type="text" name="gk<%out.print(roll);%>" style="font-weight:bold;font-family:courier new;width:50px;font-size:15px;" placeholder="<%out.print(gk);%>" required></td>
	            			<td><input type="text" name="hwd<%out.print(roll);%>" style="font-weight:bold;font-family:courier new;width:50px;font-size:15px;" placeholder="<%out.print(hwd);%>" required></td>
	            			<td><input type="text" name="ewd<%out.print(roll);%>" style="font-weight:bold;font-family:courier new;width:50px;font-size:15px;" placeholder="<%out.print(ewd);%>" required></td>
	            			<td><input type="text" name="draw<%out.print(roll);%>" style="font-weight:bold;font-family:courier new;width:50px;font-size:15px;" placeholder="<%out.print(draw);%>" required></td>
	            			<td><input type="text" name="handi<%out.print(roll);%>" style="font-weight:bold;font-family:courier new;width:50px;font-size:15px;" placeholder="<%out.print(handi);%>" required></td>
	            			<td><input type="text" name="dance<%out.print(roll);%>" style="font-weight:bold;font-family:courier new;width:50px;font-size:15px;" placeholder="<%out.print(dance);%>" required></td>
	            			<td><input type="text" name="sci<%out.print(roll);%>" style="font-weight:bold;font-family:courier new;width:50px;font-size:15px;" placeholder="<%out.print(sci);%>" required></td>
	            			<td><input type="text" name="scip<%out.print(roll);%>" style="font-weight:bold;font-family:courier new;width:50px;font-size:15px;" placeholder="<%out.print(scip);%>" required></td>
	            			<td><input type="text" name="social<%out.print(roll);%>" style="font-weight:bold;font-family:courier new;width:50px;font-size:15px;" placeholder="<%out.print(social);%>" required></td>
	            			<td><input type="text" name="hist<%out.print(roll);%>" style="font-weight:bold;font-family:courier new;width:50px;font-size:15px;" placeholder="<%out.print(hist);%>" required></td>
	            			<td><input type="text" name="geo<%out.print(roll);%>" style="font-weight:bold;font-family:courier new;width:50px;font-size:15px;" placeholder="<%out.print(geo);%>" required></td>
	            			<td><input type="text" name="civics<%out.print(roll);%>" style="font-weight:bold;font-family:courier new;width:50px;font-size:15px;" placeholder="<%out.print(civics);%>" required></td>
	            			<td><input type="text" name="home<%out.print(roll);%>" style="font-weight:bold;font-family:courier new;width:50px;font-size:15px;" placeholder="<%out.print(home);%>" required></td>
	            			<td><input type="text" name="sans<%out.print(roll);%>" style="font-weight:bold;font-family:courier new;width:50px;font-size:15px;" placeholder="<%out.print(sans);%>" required></td>
	            			<td><input type="text" name="compt<%out.print(roll);%>" style="font-weight:bold;font-family:courier new;width:50px;font-size:15px;" placeholder="<%out.print(compt);%>" required></td>
	            			<td><input type="text" name="compp<%out.print(roll);%>" style="font-weight:bold;font-family:courier new;width:50px;font-size:15px;" placeholder="<%out.print(compp);%>" required></td>
	            			<td><button class="btn btn-success btn-sm" type="submit"><font size="2" face="courier new">SUBMIT</font></button></td>
	            			</form>
	            		</tr>
	            		<%
	            		roll++;
	            	}

	            %>
	         
	        </table>

        </div>
    </div>
<!-------------------------------------------------------------------------------------------------------------->
	
<!------------------------------------------------------------------------------------------->
<!--ACCORDION FOR HALF YEARLY-->
<div id="half">
    <button type="button" onclick='responsiveVoice.speak("half yearly");' class="btn btn-danger bt-lg" data-toggle="collapse" data-target="#half_m">HALF YEARLY</button>
</div>  
<br>

	<div id="half_acc">
		<div id="half_m" class="collapse">
			<center><font size="3" face="courier new"><b>HALF YEARLY MARKS_UPDATE</b></font></center>
	        <table class="table table-striped">
	        	<tr>
	        		<th><font size="2" face="courier new">ROLL NO</font></th>
	        		<th><font size="2" face="courier new">NAME</font></th>
	        		<th><font size="2" face="courier new">HINDI<br>(100)</font></th>
	        		<th><font size="2" face="courier new">ENGLISH<br>(100)</font></th>
	        		<th><font size="2" face="courier new">MATH<br>(100)</font></th>
	        		<th><font size="2" face="courier new">GK<br>(100)</font></th>
	        		<th><font size="2" face="courier new">HWD<br>(50)</font></th>
	        		<th><font size="2" face="courier new">EWD<br>(50)</font></th>
	        		<th><font size="2" face="courier new">DRAWING<br>(50)</font></th>
	        		<th><font size="2" face="courier new">HANDICRAFT<br>(50)</font></th>
	        		<th><font size="2" face="courier new">DANCE<br>MUSIC<br>(50)</font></th>
	        		<th><font size="2" face="courier new">SCIENCE<br>(90)</font></th>
	        		<th><font size="2" face="courier new">SCIENCE<br>PRACTICAL<br>(10)</font></th>
	        		<th><font size="2" face="courier new">SOCIAL<br>SCIENCE<br>(100)</font></th>
	        		<th><font size="2" face="courier new">HISTORY<br>(30)</font></th>
	        		<th><font size="2" face="courier new">GEOGRAPHY<br>(30)</font></th>
	        		<th><font size="2" face="courier new">CIVICS<br>(30)</font></th>
	        		<th><font size="2" face="courier new">HOME<br>ASSIGNMENT<br>(10)</font></th>
	        		<th><font size="2" face="courier new">SANSKRIT<br>(100)</font></th>
	        		
	        		<th><font size="2" face="courier new">COMPUTER<br>THEORY<br>(50)</font></th>
	        		<th><font size="2" face="courier new">COMPUTER<br>PRACTICAL<br>(50)</font></th>
	        		<th><font size="2" face="courier new">SUBMIT</font></th>
	            <%
	            	//cl = "'"+cl+"'";
	            	res = stmt.executeQuery("select * from marks_HALF where CLASS='"+cl+"'");
	            	roll = 1;
	            	
	            	while(res.next())
	            	{
	            		String name = res.getString(2);
	            		//int roll = res.getInt(1);
	            		int hindi = res.getInt(3);
	            		int eng = res.getInt(4);
	            		int math = res.getInt(5);
	            		int gk = res.getInt(6);
	            		int hwd = res.getInt(7);
	            		int ewd = res.getInt(8);
	            		int draw = res.getInt(9);
	            		int handi = res.getInt(10);
	            		int dance = res.getInt(11);
	            		int sci = res.getInt(12);
	            		int scip = res.getInt(13);
	            		int social = res.getInt(14);
	            		int hist = res.getInt(15);
	            		int geo = res.getInt(16);
	            		int civics = res.getInt(17);
	            		int home = res.getInt(18);
	            		int sans = res.getInt(19);
	            		int compt = res.getInt(20);
	            		int compp = res.getInt(21);
	            		

	            		%>
	            		<tr><form action="m_updated.jsp?roll=<%=(roll)%>&name=<%=(name)%>&term=II&class=<%=(cl)%>" method="post">
	            			<td><font size="2" face="courier new"><%out.print(roll);%></font></td>
	            			<td><font size="2" face="courier new"><%out.print(name);%></font></td>
	            			
	            			<td><input type="text" name="hindi<%out.print(roll);%>" style="font-weight:bold;font-family:courier new;width:50px;font-size:15px;" placeholder="<%out.print(hindi);%>" required></td>
	            			<td><input type="text" name="eng<%out.print(roll);%>" style="font-weight:bold;font-family:courier new;width:50px;font-size:15px;" placeholder="<%out.print(eng);%>" required></td>
	            			<td><input type="text" name="math<%out.print(roll);%>" style="font-weight:bold;font-family:courier new;width:50px;font-size:15px;" placeholder="<%out.print(math);%>" required></td>
	            			<td><input type="text" name="gk<%out.print(roll);%>" style="font-weight:bold;font-family:courier new;width:50px;font-size:15px;" placeholder="<%out.print(gk);%>" required></td>
	            			<td><input type="text" name="hwd<%out.print(roll);%>" style="font-weight:bold;font-family:courier new;width:50px;font-size:15px;" placeholder="<%out.print(hwd);%>" required></td>
	            			<td><input type="text" name="ewd<%out.print(roll);%>" style="font-weight:bold;font-family:courier new;width:50px;font-size:15px;" placeholder="<%out.print(ewd);%>" required></td>
	            			<td><input type="text" name="draw<%out.print(roll);%>" style="font-weight:bold;font-family:courier new;width:50px;font-size:15px;" placeholder="<%out.print(draw);%>" required></td>
	            			<td><input type="text" name="handi<%out.print(roll);%>" style="font-weight:bold;font-family:courier new;width:50px;font-size:15px;" placeholder="<%out.print(handi);%>" required></td>
	            			<td><input type="text" name="dance<%out.print(roll);%>" style="font-weight:bold;font-family:courier new;width:50px;font-size:15px;" placeholder="<%out.print(dance);%>" required></td>
	            			<td><input type="text" name="sci<%out.print(roll);%>" style="font-weight:bold;font-family:courier new;width:50px;font-size:15px;" placeholder="<%out.print(sci);%>" required></td>
	            			<td><input type="text" name="scip<%out.print(roll);%>" style="font-weight:bold;font-family:courier new;width:50px;font-size:15px;" placeholder="<%out.print(scip);%>" required></td>
	            			<td><input type="text" name="social<%out.print(roll);%>" style="font-weight:bold;font-family:courier new;width:50px;font-size:15px;" placeholder="<%out.print(social);%>" required></td>
	            			<td><input type="text" name="hist<%out.print(roll);%>" style="font-weight:bold;font-family:courier new;width:50px;font-size:15px;" placeholder="<%out.print(hist);%>" required></td>
	            			<td><input type="text" name="geo<%out.print(roll);%>" style="font-weight:bold;font-family:courier new;width:50px;font-size:15px;" placeholder="<%out.print(geo);%>" required></td>
	            			<td><input type="text" name="civics<%out.print(roll);%>" style="font-weight:bold;font-family:courier new;width:50px;font-size:15px;" placeholder="<%out.print(civics);%>" required></td>
	            			<td><input type="text" name="home<%out.print(roll);%>" style="font-weight:bold;font-family:courier new;width:50px;font-size:15px;" placeholder="<%out.print(home);%>" required></td>
	            			<td><input type="text" name="sans<%out.print(roll);%>" style="font-weight:bold;font-family:courier new;width:50px;font-size:15px;" placeholder="<%out.print(sans);%>" required></td>
	            			<td><input type="text" name="compt<%out.print(roll);%>" style="font-weight:bold;font-family:courier new;width:50px;font-size:15px;" placeholder="<%out.print(compt);%>" required></td>
	            			<td><input type="text" name="compp<%out.print(roll);%>" style="font-weight:bold;font-family:courier new;width:50px;font-size:15px;" placeholder="<%out.print(compp);%>" required></td>
	            			<td><button class="btn btn-success btn-sm" type="submit"><font size="2" face="courier new">SUBMIT</font></button></td>
	            			</form>
	            		</tr>
	            		<%
	            		roll++;
	            	}

	            %>
	         
	        </table>

        </div>
    </div>
<!-------------------------------------------------------------------------------------------------------------->

<!------------------------------------------------------------------------------------------->
<!--ACCORDION FOR TERMINAL THREE-->
<div id="term3">
    <button type="button" onclick='responsiveVoice.speak("terminal 3");' class="btn btn-danger bt-lg" data-toggle="collapse" data-target="#term3_m">TERMINAL 3</button>
</div>  
<br>

	<div id="term3_acc">
		<div id="term3_m" class="collapse">
			<center><font size="3" face="courier new"><b>TERMINAL 3 MARKS_UPDATE</b></font></center>
	        <table class="table table-striped">
	        	<tr>
	        		<th><font size="2" face="courier new">ROLL NO</font></th>
	        		<th><font size="2" face="courier new">NAME</font></th>
	        		<th><font size="2" face="courier new">HINDI<br>(100)</font></th>
	        		<th><font size="2" face="courier new">ENGLISH<br>(100)</font></th>
	        		<th><font size="2" face="courier new">MATH<br>(100)</font></th>
	        		<th><font size="2" face="courier new">GK<br>(100)</font></th>
	        		<th><font size="2" face="courier new">HWD<br>(50)</font></th>
	        		<th><font size="2" face="courier new">EWD<br>(50)</font></th>
	        		<th><font size="2" face="courier new">DRAWING<br>(50)</font></th>
	        		<th><font size="2" face="courier new">HANDICRAFT<br>(50)</font></th>
	        		<th><font size="2" face="courier new">DANCE<br>MUSIC<br>(50)</font></th>
	        		<th><font size="2" face="courier new">SCIENCE<br>(90)</font></th>
	        		<th><font size="2" face="courier new">SCIENCE<br>PRACTICAL<br>(10)</font></th>
	        		<th><font size="2" face="courier new">SOCIAL<br>SCIENCE<br>(100)</font></th>
	        		<th><font size="2" face="courier new">HISTORY<br>(30)</font></th>
	        		<th><font size="2" face="courier new">GEOGRAPHY<br>(30)</font></th>
	        		<th><font size="2" face="courier new">CIVICS<br>(30)</font></th>
	        		<th><font size="2" face="courier new">HOME<br>ASSIGNMENT<br>(10)</font></th>
	        		<th><font size="2" face="courier new">SANSKRIT<br>(100)</font></th>
	        		
	        		<th><font size="2" face="courier new">COMPUTER<br>THEORY<br>(50)</font></th>
	        		<th><font size="2" face="courier new">COMPUTER<br>PRACTICAL<br>(50)</font></th>
	        		<th><font size="2" face="courier new">SUBMIT</font></th>
	            <%
	            	//cl = "'"+cl+"'";
	            	res = stmt.executeQuery("select * from marks_T3 where CLASS='"+cl+"'");
	            	roll = 1;
	            	
	            	while(res.next())
	            	{
	            		String name = res.getString(2);
	            		//int roll = res.getInt(1);
	            		int hindi = res.getInt(3);
	            		int eng = res.getInt(4);
	            		int math = res.getInt(5);
	            		int gk = res.getInt(6);
	            		int hwd = res.getInt(7);
	            		int ewd = res.getInt(8);
	            		int draw = res.getInt(9);
	            		int handi = res.getInt(10);
	            		int dance = res.getInt(11);
	            		int sci = res.getInt(12);
	            		int scip = res.getInt(13);
	            		int social = res.getInt(14);
	            		int hist = res.getInt(15);
	            		int geo = res.getInt(16);
	            		int civics = res.getInt(17);
	            		int home = res.getInt(18);
	            		int sans = res.getInt(19);
	            		int compt = res.getInt(20);
	            		int compp = res.getInt(21);
	            		
	            		%>
	            		<tr><form action="m_updated.jsp?roll=<%=(roll)%>&name=<%=(name)%>&term=III&class=<%=(cl)%>" method="post">
	            			<td><font size="2" face="courier new"><%out.print(roll);%></font></td>
	            			<td><font size="2" face="courier new"><%out.print(name);%></font></td>
	            			
	            			<td><input type="text" name="hindi<%out.print(roll);%>" style="font-weight:bold;font-family:courier new;width:50px;font-size:15px;" placeholder="<%out.print(hindi);%>" required></td>
	            			<td><input type="text" name="eng<%out.print(roll);%>" style="font-weight:bold;font-family:courier new;width:50px;font-size:15px;" placeholder="<%out.print(eng);%>" required></td>
	            			<td><input type="text" name="math<%out.print(roll);%>" style="font-weight:bold;font-family:courier new;width:50px;font-size:15px;" placeholder="<%out.print(math);%>" required></td>
	            			<td><input type="text" name="gk<%out.print(roll);%>" style="font-weight:bold;font-family:courier new;width:50px;font-size:15px;" placeholder="<%out.print(gk);%>" required></td>
	            			<td><input type="text" name="hwd<%out.print(roll);%>" style="font-weight:bold;font-family:courier new;width:50px;font-size:15px;" placeholder="<%out.print(hwd);%>" required></td>
	            			<td><input type="text" name="ewd<%out.print(roll);%>" style="font-weight:bold;font-family:courier new;width:50px;font-size:15px;" placeholder="<%out.print(ewd);%>" required></td>
	            			<td><input type="text" name="draw<%out.print(roll);%>" style="font-weight:bold;font-family:courier new;width:50px;font-size:15px;" placeholder="<%out.print(draw);%>" required></td>
	            			<td><input type="text" name="handi<%out.print(roll);%>" style="font-weight:bold;font-family:courier new;width:50px;font-size:15px;" placeholder="<%out.print(handi);%>" required></td>
	            			<td><input type="text" name="dance<%out.print(roll);%>" style="font-weight:bold;font-family:courier new;width:50px;font-size:15px;" placeholder="<%out.print(dance);%>" required></td>
	            			<td><input type="text" name="sci<%out.print(roll);%>" style="font-weight:bold;font-family:courier new;width:50px;font-size:15px;" placeholder="<%out.print(sci);%>" required></td>
	            			<td><input type="text" name="scip<%out.print(roll);%>" style="font-weight:bold;font-family:courier new;width:50px;font-size:15px;" placeholder="<%out.print(scip);%>" required></td>
	            			<td><input type="text" name="social<%out.print(roll);%>" style="font-weight:bold;font-family:courier new;width:50px;font-size:15px;" placeholder="<%out.print(social);%>" required></td>
	            			<td><input type="text" name="hist<%out.print(roll);%>" style="font-weight:bold;font-family:courier new;width:50px;font-size:15px;" placeholder="<%out.print(hist);%>" required></td>
	            			<td><input type="text" name="geo<%out.print(roll);%>" style="font-weight:bold;font-family:courier new;width:50px;font-size:15px;" placeholder="<%out.print(geo);%>" required></td>
	            			<td><input type="text" name="civics<%out.print(roll);%>" style="font-weight:bold;font-family:courier new;width:50px;font-size:15px;" placeholder="<%out.print(civics);%>" required></td>
	            			<td><input type="text" name="home<%out.print(roll);%>" style="font-weight:bold;font-family:courier new;width:50px;font-size:15px;" placeholder="<%out.print(home);%>" required></td>
	            			<td><input type="text" name="sans<%out.print(roll);%>" style="font-weight:bold;font-family:courier new;width:50px;font-size:15px;" placeholder="<%out.print(sans);%>" required></td>
	            			<td><input type="text" name="compt<%out.print(roll);%>" style="font-weight:bold;font-family:courier new;width:50px;font-size:15px;" placeholder="<%out.print(compt);%>" required></td>
	            			<td><input type="text" name="compp<%out.print(roll);%>" style="font-weight:bold;font-family:courier new;width:50px;font-size:15px;" placeholder="<%out.print(compp);%>" required></td>
	            			<td><button class="btn btn-success btn-sm" type="submit"><font size="2" face="courier new">SUBMIT</font></button></td>
	            			</form>
	            		</tr>
	            		<%
	            		roll++;
	            	}

	            %>
	         
	        </table>

        </div>
    </div>
<!-------------------------------------------------------------------------------------------------------------->

<!------------------------------------------------------------------------------------------->
<!--ACCORDION FOR TERMINAL ONE-->
<div id="termEnd">
    <button type="button" onclick='responsiveVoice.speak("end terminal");' class="btn btn-danger bt-lg" data-toggle="collapse" data-target="#end_m">END TERM</button>
</div>  
<br>

	<div id="end_acc">
		<div id="end_m" class="collapse">
			<center><font size="3" face="courier new"><b>END TERM MARKS_UPDATE</b></font></center>
	        <table class="table table-striped">
	        	<tr>
	        		<th><font size="2" face="courier new">ROLL NO</font></th>
	        		<th><font size="2" face="courier new">NAME</font></th>
	        		<th><font size="2" face="courier new">HINDI<br>(100)</font></th>
	        		<th><font size="2" face="courier new">ENGLISH<br>(100)</font></th>
	        		<th><font size="2" face="courier new">MATH<br>(100)</font></th>
	        		<th><font size="2" face="courier new">GK<br>(100)</font></th>
	        		<th><font size="2" face="courier new">HWD<br>(50)</font></th>
	        		<th><font size="2" face="courier new">EWD<br>(50)</font></th>
	        		<th><font size="2" face="courier new">DRAWING<br>(50)</font></th>
	        		<th><font size="2" face="courier new">HANDICRAFT<br>(50)</font></th>
	        		<th><font size="2" face="courier new">DANCE<br>MUSIC<br>(50)</font></th>
	        		<th><font size="2" face="courier new">SCIENCE<br>(90)</font></th>
	        		<th><font size="2" face="courier new">SCIENCE<br>PRACTICAL<br>(10)</font></th>
	        		<th><font size="2" face="courier new">SOCIAL<br>SCIENCE<br>(100)</font></th>
	        		<th><font size="2" face="courier new">HISTORY<br>(30)</font></th>
	        		<th><font size="2" face="courier new">GEOGRAPHY<br>(30)</font></th>
	        		<th><font size="2" face="courier new">CIVICS<br>(30)</font></th>
	        		<th><font size="2" face="courier new">HOME<br>ASSIGNMENT<br>(10)</font></th>
	        		<th><font size="2" face="courier new">SANSKRIT<br>(100)</font></th>
	        		
	        		<th><font size="2" face="courier new">COMPUTER<br>THEORY<br>(50)</font></th>
	        		<th><font size="2" face="courier new">COMPUTER<br>PRACTICAL<br>(50)</font></th>
	        		<th><font size="2" face="courier new">SUBMIT</font></th>
	            <%
	            	//cl = "'"+cl+"'";
	            	res = stmt.executeQuery("select * from marks_END where CLASS='"+cl+"'");
	            	roll = 1;
	            	
	            	while(res.next())
	            	{
	            		String name = res.getString(2);
	            		//int roll = res.getInt(1);
	            		int hindi = res.getInt(3);
	            		int eng = res.getInt(4);
	            		int math = res.getInt(5);
	            		int gk = res.getInt(6);
	            		int hwd = res.getInt(7);
	            		int ewd = res.getInt(8);
	            		int draw = res.getInt(9);
	            		int handi = res.getInt(10);
	            		int dance = res.getInt(11);
	            		int sci = res.getInt(12);
	            		int scip = res.getInt(13);
	            		int social = res.getInt(14);
	            		int hist = res.getInt(15);
	            		int geo = res.getInt(16);
	            		int civics = res.getInt(17);
	            		int home = res.getInt(18);
	            		int sans = res.getInt(19);
	            		int compt = res.getInt(20);
	            		int compp = res.getInt(21);
	            		//set_name[k++] = name;

	            		%>
	            		<tr><form action="m_updated.jsp?roll=<%=(roll)%>&name=<%=(name)%>&term=IV&class=<%=(cl)%>" method="post">
	            			<td><font size="2" face="courier new"><%out.print(roll);%></font></td>
	            			<td><font size="2" face="courier new"><%out.print(name);%></font></td>
	            			
	            			<td><input type="text" name="hindi<%out.print(roll);%>" style="font-weight:bold;font-family:courier new;width:50px;font-size:15px;" placeholder="<%out.print(hindi);%>" required></td>
	            			<td><input type="text" name="eng<%out.print(roll);%>" style="font-weight:bold;font-family:courier new;width:50px;font-size:15px;" placeholder="<%out.print(eng);%>" required></td>
	            			<td><input type="text" name="math<%out.print(roll);%>" style="font-weight:bold;font-family:courier new;width:50px;font-size:15px;" placeholder="<%out.print(math);%>" required></td>
	            			<td><input type="text" name="gk<%out.print(roll);%>" style="font-weight:bold;font-family:courier new;width:50px;font-size:15px;" placeholder="<%out.print(gk);%>" required></td>
	            			<td><input type="text" name="hwd<%out.print(roll);%>" style="font-weight:bold;font-family:courier new;width:50px;font-size:15px;" placeholder="<%out.print(hwd);%>" required></td>
	            			<td><input type="text" name="ewd<%out.print(roll);%>" style="font-weight:bold;font-family:courier new;width:50px;font-size:15px;" placeholder="<%out.print(ewd);%>" required></td>
	            			<td><input type="text" name="draw<%out.print(roll);%>" style="font-weight:bold;font-family:courier new;width:50px;font-size:15px;" placeholder="<%out.print(draw);%>" required></td>
	            			<td><input type="text" name="handi<%out.print(roll);%>" style="font-weight:bold;font-family:courier new;width:50px;font-size:15px;" placeholder="<%out.print(handi);%>" required></td>
	            			<td><input type="text" name="dance<%out.print(roll);%>" style="font-weight:bold;font-family:courier new;width:50px;font-size:15px;" placeholder="<%out.print(dance);%>" required></td>
	            			<td><input type="text" name="sci<%out.print(roll);%>" style="font-weight:bold;font-family:courier new;width:50px;font-size:15px;" placeholder="<%out.print(sci);%>" required></td>
	            			<td><input type="text" name="scip<%out.print(roll);%>" style="font-weight:bold;font-family:courier new;width:50px;font-size:15px;" placeholder="<%out.print(scip);%>" required></td>
	            			<td><input type="text" name="social<%out.print(roll);%>" style="font-weight:bold;font-family:courier new;width:50px;font-size:15px;" placeholder="<%out.print(social);%>" required></td>
	            			<td><input type="text" name="hist<%out.print(roll);%>" style="font-weight:bold;font-family:courier new;width:50px;font-size:15px;" placeholder="<%out.print(hist);%>" required></td>
	            			<td><input type="text" name="geo<%out.print(roll);%>" style="font-weight:bold;font-family:courier new;width:50px;font-size:15px;" placeholder="<%out.print(geo);%>" required></td>
	            			<td><input type="text" name="civics<%out.print(roll);%>" style="font-weight:bold;font-family:courier new;width:50px;font-size:15px;" placeholder="<%out.print(civics);%>" required></td>
	            			<td><input type="text" name="home<%out.print(roll);%>" style="font-weight:bold;font-family:courier new;width:50px;font-size:15px;" placeholder="<%out.print(home);%>" required></td>
	            			<td><input type="text" name="sans<%out.print(roll);%>" style="font-weight:bold;font-family:courier new;width:50px;font-size:15px;" placeholder="<%out.print(sans);%>" required></td>
	            			<td><input type="text" name="compt<%out.print(roll);%>" style="font-weight:bold;font-family:courier new;width:50px;font-size:15px;" placeholder="<%out.print(compt);%>" required></td>
	            			<td><input type="text" name="compp<%out.print(roll);%>" style="font-weight:bold;font-family:courier new;width:50px;font-size:15px;" placeholder="<%out.print(compp);%>" required></td>
	            			<td><button class="btn btn-success btn-sm" type="submit"><font size="2" face="courier new">SUBMIT</font></button></td>
	            			</form>
	            		</tr>
	            		<%
	            		roll++;
	            	}

	            %>
	         
	        </table>

        </div>
    </div>
<!-------------------------------------------------------------------------------------------------------------->
<br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><center>
<a href="http://localhost:8080/School/school_spa.jsp#menu1"><button type="button" onclick='responsiveVoice.speak("going back");' class="btn btn-primary bt-lg">GO BACK</button></a>
</center>
  </body>
</html>


	

