<%@ page import = "java.io.*" %>
<%@ page import = "java.sql.*" %>
<%@ page import = "java.util.*" %>

<html>
<title>marksheet</title>
<head>
		<meta name="viewport" content="width=device-width,initial-scale=1,maximum-scale=1,user-scalable=no">
		<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
		<meta name="HandheldFriendly" content="true">

		<script src = "//maxcdn.bootstrapcdn.com/bootstrap/3.3.1/js/bootstrap.min.js"></script>
        <link href = "//maxcdn.bootstrapcdn.com/bootstrap/3.3.1/css/bootstrap.min.css" rel = "stylesheet">

        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
    	<link href="assets/css/bootstrap-responsive.css" rel="stylesheet">
		<style>
		html { font-size:100%; } 
		@media screen and (max-width: 1060px) {
		    #report { width:80%; }
		    #name { width:10%;}  
		    #cl { width:10%;} 
		    #term { width:10%;} 
		    #father { width:10%;} 
		    #hindi { width:10%;} 
		    #max_hindi { width:10%;} 
		    #eng { width:10%;} 
		    #max_eng { width:10%;} 
		    #math { width:10%;} 
		    #max_math { width:10%;} 
		    #gk { width:10%;} 
		    #max_gk { width:10%;} 
		    #hwd { width:10%;} 
		    #max_hwd { width:10%;} 
		    #ewd { width:10%;} 
		    #max_ewd { width:10%;} 
		    #draw { width:10%;} 
		    #max_draw { width:10%;} 
		    #handi { width:10%;} 
		    #max_handi { width:10%;} 
		    #dance { width:10%;} 
		    #max_dance { width:10%;} 
		    #sci { width:10%;} 
		    #max_sci { width:10%;} 
		    #scip { width:10%;} 
		    #max_scip { width:10%;} 
		    #social { width:10%;} 
		    #max_social { width:10%;} 
		    #sans { width:10%;} 
		    #max_sans { width:10%;} 
		    #compt { width:10%;} 
		    #max_compt { width:10%;} 
		    #compp { width:10%;} 
		    #max_compp { width:10%;} 
		    #obt { width:10%;} 
		    #max_obt { width:10%;} 
		    #per { width:10%;} 
		    #total { width:10%;} 
		    #per { width:10%;} 
		    #max_per { width:10%;} 
		    #position { width:10%;} 

		}

		/* Tabled Portrait */
		@media screen and (max-width: 768px) {
		    #report{ width:100%; }
		    #name { width:100%;}
		}
		@media (min-width: 640px) { body {font-size:0.5rem;} } 
		@media (min-width:960px) { body {font-size:1rem;} } 
		@media (min-width:1100px) { body {font-size:1.2rem;} } 

		#relative_parent
		{
			position: relative;
			width:100%;
			height:auto;
		}
		#report{
			z-index:-1;
		}
		#name
		{
			
			position: absolute;
			top:12.5%;
			left:28%;
			width: 100%;
			height: 100%;
			
		}
		#cl
		{
			position:absolute;
			top:12.4%;
			left:60%;
			width: 100%;
			height: 100%;
		}
		#term
		{
			position:absolute;
			top:15%;
			left:63%;
			width: 100%;
			height: 100%;
		}
		#father
		{
			position:absolute;
			top:15%;
			left:34%;
			width: 100%;
			height: 100%;
		}

		#hindi
		{
			position:absolute;
			top:21.7%;
			left:50%;
			width: 100%;
			height: 100%;
		}
		#max_hindi
		{
			position:absolute;
			top:21.7%;
			left:58.5%;
			width: 100%;
			height: 100%;
		}
		#eng
		{
			position:absolute;
			top:25.5%;
			left:50%;
			width: 100%;
			height: 100%;
		}
		#max_eng
		{
			position:absolute;
			top:25.5%;
			left:58.5%;
			width: 100%;
			height: 100%;
		}
		#math
		{
			position:absolute;
			top:29%;
			left:50%;
			width: 100%;
			height: 100%;
		}
		#max_math
		{
			position:absolute;
			top:29%;
			left:58.5%;
			width: 100%;
			height: 100%;
		}
		#gk
		{
			position:absolute;
			top:32.5%;
			left:50%;
			width: 100%;
			height: 100%;
		}
		#max_gk
		{
			position:absolute;
			top:32.5%;
			left:58.5%;
			width: 100%;
			height: 100%;
		}
		#hwd
		{
			position:absolute;
			top:36%;
			left:50%;
			
		}
		#max_hwd
		{
			position:absolute;
			top:36%;
			left:58.5%;
			
		}
		#ewd
		{
			position:absolute;
			top:39.5%;
			left:50%;
			width: 100%;
			height: 100%;
		}
		#max_ewd
		{
			position:absolute;
			top:39.5%;
			left:58.5%;
			width: 100%;
			height: 100%;
		}
		#draw
		{
			position:absolute;
			top:43%;
			left:50%;
			width: 100%;
			height: 100%;
		}
		#max_draw
		{
			position:absolute;
			top:43%;
			left:58.5%;
			width: 100%;
			height: 100%;
		}
		#handi
		{
			position:absolute;
			top:46.5%;
			left:50%;
			width: 100%;
			height: 100%;
		}
		#max_handi
		{
			position:absolute;
			top:46.5%;
			left:58.5%;
			width: 100%;
			height: 100%;
		}
		#dance
		{
			position:absolute;
			top:50%;
			left:50%;
			width: 100%;
			height: 100%;
		}
		#max_dance
		{
			position:absolute;
			top:50%;
			left:58.5%;
			width: 100%;
			height: 100%;
		}

		#sci
		{
			position:absolute;
			top:54%;
			left:50%;
			width: 100%;
			height: 100%;
		}
		#max_sci
		{
			position:absolute;
			top:54%;
			left:58.5%;
			width: 100%;
			height: 100%;
		}

		#scip
		{
			position:absolute;
			top:57.5%;
			left:50%;
			width: 100%;
			height: 100%;
		}
		#max_scip
		{
			position:absolute;
			top:57.5%;
			left:58.5%;
			width: 100%;
			height: 100%;
		}

		#social
		{
			position:absolute;
			top:60.8%;
			left:50%;
			width: 100%;
			height: 100%;
		}
		#max_social
		{
			position:absolute;
			top:60.8%;
			left:58.5%;
			width: 100%;
			height: 100%;
		}

		#sans
		{
			position:absolute;
			top:78.8%;
			left:50%;
			width: 100%;
			height: 100%;
		}
		#max_sans
		{
			position:absolute;
			top:78.8%;
			left:58.5%;
			width: 100%;
			height: 100%;
		}

		#compt
		{
			position:absolute;
			top:82.5%;
			left:50%;
			width: 100%;
			height: 100%;
		}
		#max_compt
		{
			position:absolute;
			top:82.5%;
			left:58.5%;
			width: 100%;
			height: 100%;
		}

		#compp
		{
			position:absolute;
			top:86%;
			left:50%;
			width: 100%;
			height: 100%;
		}
		#max_compp
		{
			position:absolute;
			top:86%;
			left:58.5%;
			width: 100%;
			height: 100%;
		}
		#obt
		{
			position:absolute;
			top:89.5%;
			left:50%;
			width: 100%;
			height: 100%;
		}
		#max_obt
		{
			position:absolute;
			top:89.5%;
			left:58.5%;
			width: 100%;
			height: 100%;
		}
		#total
		{
			position:absolute;
			top:89.5%;
			left:36%;
			width: 100%;
			height: 100%;
		}
		#per
		{
			position:absolute;
			top:94%;
			left:24.5%;
			width: 100%;
			height: 100%;
		}
		#max_per
		{
			position:absolute;
			top:88.5%;
			left:70%;
			width: 100%;
			height: 100%;
		}
		#position
		{
			position:absolute;
			top:79%;
			left:72%;
			width: 100%;
			height: 100%;
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



	String name = request.getParameter("name");
	String cl = request.getParameter("class");
	String term = request.getParameter("term");
	String fat = request.getParameter("fat");

	String table ="";
	String ser = "";
	if(term.equals("I"))
	{
		table = "TERMINAL 1";
		ser = "marksT1";
	}
	else if(term.equals("II"))
	{
		table = "HALF_YEARLY";
		ser="marks_HALF";
	}
	else if(term.equals("III"))
	{
		table = "TERMINAL 3";
		ser="marks_T3";
	}
	else if(term.equals("IV"))
	{
		table = "END_TERM";
		ser="marks_END";
	}

	res = stmt.executeQuery("select * from "+ser+" where NAME='"+name+"' and CLASS='"+cl+"'");
	int hindi=0,eng=0,math=0,gk=0,hwd=0,ewd=0,draw=0,dance=0,handi=0,sci=0,scip=0,social=0,home=0,hist=0,geo=0,civics=0,sans=0,compp=0,compt=0;
	double per=0.0;
	while(res.next())
	{
		  hindi = res.getInt(3);
	      eng = res.getInt(4);
	      math = res.getInt(5);
	      gk = res.getInt(6);
	      hwd = res.getInt(7);
	      ewd = res.getInt(8);
	      draw = res.getInt(9);
	      handi = res.getInt(10);
	      dance = res.getInt(11);
	      sci = res.getInt(12);
	      scip = res.getInt(13);
	      social = res.getInt(14);
	      hist = res.getInt(15);
	      geo = res.getInt(16);
	      civics =res.getInt(17);
	      home = res.getInt(18);
	      sans = res.getInt(19);
	      compt =res.getInt(20);
	      compp = res.getInt(21);
	      per = res.getDouble(24);

	}

%>

<div id="relative_parent">
<center>
	<div id="report">
		<img src="report.png"  width="60%"/>
	</div>
</center>


		<div id="name">
			<font  face="courier new"><b><%out.print(name);%></b></font>
		</div>
	

<div id="cl">
	<font  face="courier new"><b> -<%out.print(cl);%></b></font>
</div>

<div id="term">
	<font  face="courier new"><b><%out.print(table);%></b></font>
</div>

<div id="father">
	<font  face="courier new"><b><%out.print(fat);%></b></font>
</div>

<%
	if(cl.equals("NUR"))
	{
		int total=550;
		int obt = hindi+eng+math+gk+draw+handi+dance;
		%>

			<div id="hindi">
				<font  face="courier new"><b><%out.print(hindi);%></b></font>
			</div>
			<div id="max_hindi">
				<%
					int max_hindi=0;
					res = stmt.executeQuery("select MAX(HINDI) from "+ser+" where CLASS='"+cl+"'");
					res.next();
					max_hindi=res.getInt(1);
				%>
				<font  face="courier new" color="green"><b><%out.print(max_hindi);%></b></font>
			</div>
			<div id="eng">
				<font  face="courier new"><b><%out.print(eng);%></b></font>
			</div>
			<div id="max_eng">
				<%
					int max_eng=0;
					res = stmt.executeQuery("select MAX(ENG) from "+ser+" where CLASS='"+cl+"'");
					res.next();
					max_eng=res.getInt(1);
				%>
				<font  face="courier new" color="green"><b><%out.print(max_eng);%></b></font>
			</div>

			<div id="math">
				<font  face="courier new"><b><%out.print(math);%></b></font>
			</div>
			<div id="max_math">
				<%
					int max_math=0;
					res = stmt.executeQuery("select MAX(MATH) from "+ser+" where CLASS='"+cl+"'");
					res.next();
					max_math=res.getInt(1);
				%>
				<font  face="courier new" color="green"><b><%out.print(max_math);%></b></font>
			</div>
			<div id="gk">
				<font  face="courier new"><b><%out.print(gk);%></b></font>
			</div>
			<div id="max_gk">
				<%
					int max_gk=0;
					res = stmt.executeQuery("select MAX(GK) from "+ser+" where CLASS='"+cl+"'");
					res.next();
					max_gk=res.getInt(1);
				%>
				<font  face="courier new" color="green"><b><%out.print(max_gk);%></b></font>
			</div>

			

			

			

			<div id="draw">
				<font  face="courier new"><b><%out.print(draw);%></b></font>
			</div>
			<div id="max_draw">
				<%
					int max_draw=0;
					res = stmt.executeQuery("select MAX(DRAWING) from "+ser+" where CLASS='"+cl+"'");
					res.next();
					max_draw=res.getInt(1);
				%>
				<font  face="courier new" color="green"><b><%out.print(max_draw);%></b></font>
			</div>
			<div id="handi">
				<font  face="courier new"><b><%out.print(handi);%></b></font>
			</div>
			<div id="max_handi">
				<%
					int max_handi=0;
					res = stmt.executeQuery("select MAX(HANDICRAFT) from "+ser+" where CLASS='"+cl+"'");
					res.next();
					max_handi=res.getInt(1);
				%>
				<font  face="courier new" color="green"><b><%out.print(max_handi);%></b></font>
			</div>
			<div id="dance">
				<font  face="courier new"><b><%out.print(dance);%></b></font>
			</div>
			<div id="max_dance">
				<%
					int max_dance=0;
					res = stmt.executeQuery("select MAX(DANCEMUSIC) from "+ser+" where CLASS='"+cl+"'");
					res.next();
					max_dance=res.getInt(1);
				%>
				<font  face="courier new" color="green"><b><%out.print(max_dance);%></b></font>
			</div>
			<div id="total">
				<font  face="courier new"><b><%out.print(total);%></b></font>
			</div>
			<div id="obt">
				<font  face="courier new"><b><%out.print(obt);%></b></font>
			</div>
			<div id="max_obt">
				<%
					int max_obt=max_hindi+max_eng+max_math+max_gk+max_handi+max_dance+max_draw;
					
				%>
				<font  face="courier new" color="green"><b><%out.print(max_obt);%></b></font>
			</div>
			<div id="per">
				<font  face="courier new"><b><%out.print(per);%>%</b></font>
			</div>
			<div id="max_per">
				<%
					double max_per=0.0;
					res = stmt.executeQuery("select MAX(per) from "+ser+" where CLASS='"+cl+"'");
					res.next();
					max_per = res.getDouble(1);
					max_per = Math.round(max_per* 100.0) / 100.0;
				%>
				<font  face="courier new" color="green"><b><%out.print(max_per);%>%</b></font>
			</div>
			<div id="position">
				<%
					int rank=0;
					res = stmt.executeQuery("select NAME,per from "+ser+" where CLASS='"+cl+"' order by per DESC");
					int c = 0;
					while(res.next())
					{
						c++;
						String tname=res.getString(1);
						if(tname.equals(name))
						{
							break;
						}
					}
					rank=c;
					
				%>
				<font  face="courier new"><b><%out.print(rank);%></b></font>
			</div>

		<%
	}
	else if(cl.equals("LKG") || cl.equals("UKG"))
	{
		int total=650;
		int obt = hindi+eng+math+gk+draw+handi+dance+hwd+ewd;
		%>

			<div id="hindi">
				<font  face="courier new"><b><%out.print(hindi);%></b></font>
			</div>
			<div id="max_hindi">
				<%
					int max_hindi=0;
					res = stmt.executeQuery("select MAX(HINDI) from "+ser+" where CLASS='"+cl+"'");
					res.next();
					max_hindi=res.getInt(1);
				%>
				<font  face="courier new" color="green"><b><%out.print(max_hindi);%></b></font>
			</div>
			<div id="eng">
				<font  face="courier new"><b><%out.print(eng);%></b></font>
			</div>
			<div id="max_eng">
				<%
					int max_eng=0;
					res = stmt.executeQuery("select MAX(ENG) from "+ser+" where CLASS='"+cl+"'");
					res.next();
					max_eng=res.getInt(1);
				%>
				<font  face="courier new" color="green"><b><%out.print(max_eng);%></b></font>
			</div>

			<div id="math">
				<font  face="courier new"><b><%out.print(math);%></b></font>
			</div>
			<div id="max_math">
				<%
					int max_math=0;
					res = stmt.executeQuery("select MAX(MATH) from "+ser+" where CLASS='"+cl+"'");
					res.next();
					max_math=res.getInt(1);
				%>
				<font  face="courier new" color="green"><b><%out.print(max_math);%></b></font>
			</div>
			<div id="gk">
				<font  face="courier new"><b><%out.print(gk);%></b></font>
			</div>
			<div id="max_gk">
				<%
					int max_gk=0;
					res = stmt.executeQuery("select MAX(GK) from "+ser+" where CLASS='"+cl+"'");
					res.next();
					max_gk=res.getInt(1);
				%>
				<font  face="courier new" color="green"><b><%out.print(max_gk);%></b></font>
			</div>

			<div id="hwd">
				<font  face="courier new"><b><%out.print(hwd);%></b></font>
			</div>
			<div id="max_hwd">
				<%
					int max_hwd=0;
					res = stmt.executeQuery("select MAX(HWD) from "+ser+" where CLASS='"+cl+"'");
					res.next();
					max_hwd=res.getInt(1);
				%>
				<font  face="courier new" color="green"><b><%out.print(max_gk);%></b></font>
			</div>
			
			<div id="ewd">
				<font  face="courier new"><b><%out.print(ewd);%></b></font>
			</div>
			<div id="max_ewd">
				<%
					int max_ewd=0;
					res = stmt.executeQuery("select MAX(EWD) from "+ser+" where CLASS='"+cl+"'");
					res.next();
					max_ewd=res.getInt(1);
				%>
				<font  face="courier new" color="green"><b><%out.print(max_ewd);%></b></font>
			</div>
			

			

			<div id="draw">
				<font  face="courier new"><b><%out.print(draw);%></b></font>
			</div>
			<div id="max_draw">
				<%
					int max_draw=0;
					res = stmt.executeQuery("select MAX(DRAWING) from "+ser+" where CLASS='"+cl+"'");
					res.next();
					max_draw=res.getInt(1);
				%>
				<font  face="courier new" color="green"><b><%out.print(max_draw);%></b></font>
			</div>
			<div id="handi">
				<font  face="courier new"><b><%out.print(handi);%></b></font>
			</div>
			<div id="max_handi">
				<%
					int max_handi=0;
					res = stmt.executeQuery("select MAX(HANDICRAFT) from "+ser+" where CLASS='"+cl+"'");
					res.next();
					max_handi=res.getInt(1);
				%>
				<font  face="courier new" color="green"><b><%out.print(max_handi);%></b></font>
			</div>
			<div id="dance">
				<font  face="courier new"><b><%out.print(dance);%></b></font>
			</div>
			<div id="max_dance">
				<%
					int max_dance=0;
					res = stmt.executeQuery("select MAX(DANCEMUSIC) from "+ser+" where CLASS='"+cl+"'");
					res.next();
					max_dance=res.getInt(1);
				%>
				<font  face="courier new" color="green"><b><%out.print(max_dance);%></b></font>
			</div>
			<div id="total">
				<font  face="courier new"><b><%out.print(total);%></b></font>
			</div>
			<div id="obt">
				<font  face="courier new"><b><%out.print(obt);%></b></font>
			</div>
			<div id="max_obt">
				<%
					int max_obt=max_hindi+max_eng+max_math+max_gk+max_handi+max_dance+max_dance+max_hwd+max_ewd;
					
				%>
				<font  face="courier new" color="green"><b><%out.print(max_obt);%></b></font>
			</div>
			<div id="per">
				<font  face="courier new"><b><%out.print(per);%>%</b></font>
			</div>
			<div id="max_per">
				<%
					double max_per=0.0;
					res = stmt.executeQuery("select MAX(per) from "+ser+" where CLASS='"+cl+"'");
					res.next();
					max_per = res.getDouble(1);
					max_per = Math.round(max_per* 100.0) / 100.0;
				%>
				<font  face="courier new" color="green"><b><%out.print(max_per);%>%</b></font>
			</div>
			<div id="position">
				<%
					int rank=0;
					res = stmt.executeQuery("select NAME,per from "+ser+" where CLASS='"+cl+"' order by per DESC");
					int c = 0;
					while(res.next())
					{
						c++;
						String tname=res.getString(1);
						if(tname.equals(name))
						{
							break;
						}
					}
					rank=c;
					
				%>
				<font  face="courier new"><b><%out.print(rank);%></b></font>
			</div>

		<%
	}
	else if(cl.equals("I"))
	{
		int total=950;
		int obt = hindi+eng+math+gk+draw+handi+dance+hwd+ewd+social+sci+scip+sans;
		%>

			<div id="hindi">
				<font  face="courier new"><b><%out.print(hindi);%></b></font>
			</div>
			<div id="max_hindi">
				<%
					int max_hindi=0;
					res = stmt.executeQuery("select MAX(HINDI) from "+ser+" where CLASS='"+cl+"'");
					res.next();
					max_hindi=res.getInt(1);
				%>
				<font  face="courier new" color="green"><b><%out.print(max_hindi);%></b></font>
			</div>
			<div id="eng">
				<font  face="courier new"><b><%out.print(eng);%></b></font>
			</div>
			<div id="max_eng">
				<%
					int max_eng=0;
					res = stmt.executeQuery("select MAX(ENG) from "+ser+" where CLASS='"+cl+"'");
					res.next();
					max_eng=res.getInt(1);
				%>
				<font  face="courier new" color="green"><b><%out.print(max_eng);%></b></font>
			</div>

			<div id="math">
				<font  face="courier new"><b><%out.print(math);%></b></font>
			</div>
			<div id="max_math">
				<%
					int max_math=0;
					res = stmt.executeQuery("select MAX(MATH) from "+ser+" where CLASS='"+cl+"'");
					res.next();
					max_math=res.getInt(1);
				%>
				<font  face="courier new" color="green"><b><%out.print(max_math);%></b></font>
			</div>
			<div id="gk">
				<font  face="courier new"><b><%out.print(gk);%></b></font>
			</div>
			<div id="max_gk">
				<%
					int max_gk=0;
					res = stmt.executeQuery("select MAX(GK) from "+ser+" where CLASS='"+cl+"'");
					res.next();
					max_gk=res.getInt(1);
				%>
				<font  face="courier new" color="green"><b><%out.print(max_gk);%></b></font>
			</div>

			<div id="hwd">
				<font  face="courier new"><b><%out.print(hwd);%></b></font>
			</div>
			<div id="max_hwd">
				<%
					int max_hwd=0;
					res = stmt.executeQuery("select MAX(HWD) from "+ser+" where CLASS='"+cl+"'");
					res.next();
					max_hwd=res.getInt(1);
				%>
				<font  face="courier new" color="green"><b><%out.print(max_gk);%></b></font>
			</div>
			
			<div id="ewd">
				<font  face="courier new"><b><%out.print(ewd);%></b></font>
			</div>
			<div id="max_ewd">
				<%
					int max_ewd=0;
					res = stmt.executeQuery("select MAX(EWD) from "+ser+" where CLASS='"+cl+"'");
					res.next();
					max_ewd=res.getInt(1);
				%>
				<font  face="courier new" color="green"><b><%out.print(max_ewd);%></b></font>
			</div>
			

			

			<div id="draw">
				<font  face="courier new"><b><%out.print(draw);%></b></font>
			</div>
			<div id="max_draw">
				<%
					int max_draw=0;
					res = stmt.executeQuery("select MAX(DRAWING) from "+ser+" where CLASS='"+cl+"'");
					res.next();
					max_draw=res.getInt(1);
				%>
				<font  face="courier new" color="green"><b><%out.print(max_draw);%></b></font>
			</div>
			<div id="handi">
				<font  face="courier new"><b><%out.print(handi);%></b></font>
			</div>
			<div id="max_handi">
				<%
					int max_handi=0;
					res = stmt.executeQuery("select MAX(HANDICRAFT) from "+ser+" where CLASS='"+cl+"'");
					res.next();
					max_handi=res.getInt(1);
				%>
				<font  face="courier new" color="green"><b><%out.print(max_handi);%></b></font>
			</div>
			<div id="dance">
				<font  face="courier new"><b><%out.print(dance);%></b></font>
			</div>
			<div id="max_dance">
				<%
					int max_dance=0;
					res = stmt.executeQuery("select MAX(DANCEMUSIC) from "+ser+" where CLASS='"+cl+"'");
					res.next();
					max_dance=res.getInt(1);
				%>
				<font  face="courier new" color="green"><b><%out.print(max_dance);%></b></font>
			</div>

			<div id="sci">
				<font  face="courier new"><b><%out.print(sci);%></b></font>
			</div>
			<div id="max_sci">
				<%
					int max_sci=0;
					res = stmt.executeQuery("select MAX(SCIENCE) from "+ser+" where CLASS='"+cl+"'");
					res.next();
					max_sci=res.getInt(1);
				%>
				<font  face="courier new" color="green"><b><%out.print(max_sci);%></b></font>
			</div>

			<div id="scip">
				<font  face="courier new"><b><%out.print(scip);%></b></font>
			</div>
			<div id="max_scip">
				<%
					int max_scip=0;
					res = stmt.executeQuery("select MAX(SCIPRACT) from "+ser+" where CLASS='"+cl+"'");
					res.next();
					max_scip=res.getInt(1);
				%>
				<font  face="courier new" color="green"><b><%out.print(max_scip);%></b></font>
			</div>

			<div id="social">
				<font  face="courier new"><b><%out.print(social);%></b></font>
			</div>
			<div id="max_social">
				<%
					int max_social=0;
					res = stmt.executeQuery("select MAX(SOCIAL) from "+ser+" where CLASS='"+cl+"'");
					res.next();
					max_social=res.getInt(1);
				%>
				<font  face="courier new" color="green"><b><%out.print(max_social);%></b></font>
			</div>

			<div id="sans">
				<font  face="courier new"><b><%out.print(sans);%></b></font>
			</div>
			<div id="max_sans">
				<%
					int max_sans=0;
					res = stmt.executeQuery("select MAX(SANSKRIT) from "+ser+" where CLASS='"+cl+"'");
					res.next();
					max_sans=res.getInt(1);
				%>
				<font  face="courier new" color="green"><b><%out.print(max_sans);%></b></font>
			</div>

			<div id="total">
				<font  face="courier new"><b><%out.print(total);%></b></font>
			</div>
			<div id="obt">
				<font  face="courier new"><b><%out.print(obt);%></b></font>
			</div>
			<div id="max_obt">
				<%
					int max_obt=max_hindi+max_eng+max_math+max_gk+max_handi+max_dance+max_dance+max_hwd+max_ewd+max_social+max_sci+max_scip+max_sans;
					
				%>
				<font  face="courier new" color="green"><b><%out.print(max_obt);%></b></font>
			</div>
			<div id="per">
				<font  face="courier new"><b><%out.print(per);%>%</b></font>
			</div>
			<div id="max_per">
				<%
					double max_per=0.0;
					res = stmt.executeQuery("select MAX(per) from "+ser+" where CLASS='"+cl+"'");
					res.next();
					max_per = res.getDouble(1);
					max_per = Math.round(max_per* 100.0) / 100.0;
				%>
				<font  face="courier new" color="green"><b><%out.print(max_per);%>%</b></font>
			</div>
			<div id="position">
				<%
					int rank=0;
					res = stmt.executeQuery("select NAME,per from "+ser+" where CLASS='"+cl+"' order by per DESC");
					int c = 0;
					while(res.next())
					{
						c++;
						String tname=res.getString(1);
						if(tname.equals(name))
						{
							break;
						}
					}
					rank=c;
					
				%>
				<font  face="courier new"><b><%out.print(rank);%></b></font>
			</div>
			<%
		
	}

	else if(cl.equals("II") || cl.equals("III") || cl.equals("IV") || cl.equals("V") || cl.equals("VI") || cl.equals("VII"))
	{
		int total=1050;
		int obt = hindi+eng+math+gk+draw+handi+dance+hwd+ewd+social+sci+scip+sans+compp+compt;
		%>

			<div id="hindi">
				<font  face="courier new"><b><%out.print(hindi);%></b></font>
			</div>
			<div id="max_hindi">
				<%
					int max_hindi=0;
					res = stmt.executeQuery("select MAX(HINDI) from "+ser+" where CLASS='"+cl+"'");
					res.next();
					max_hindi=res.getInt(1);
				%>
				<font  face="courier new" color="green"><b><%out.print(max_hindi);%></b></font>
			</div>
			<div id="eng">
				<font  face="courier new"><b><%out.print(eng);%></b></font>
			</div>
			<div id="max_eng">
				<%
					int max_eng=0;
					res = stmt.executeQuery("select MAX(ENG) from "+ser+" where CLASS='"+cl+"'");
					res.next();
					max_eng=res.getInt(1);
				%>
				<font  face="courier new" color="green"><b><%out.print(max_eng);%></b></font>
			</div>

			<div id="math">
				<font  face="courier new"><b><%out.print(math);%></b></font>
			</div>
			<div id="max_math">
				<%
					int max_math=0;
					res = stmt.executeQuery("select MAX(MATH) from "+ser+" where CLASS='"+cl+"'");
					res.next();
					max_math=res.getInt(1);
				%>
				<font  face="courier new" color="green"><b><%out.print(max_math);%></b></font>
			</div>
			<div id="gk">
				<font  face="courier new"><b><%out.print(gk);%></b></font>
			</div>
			<div id="max_gk">
				<%
					int max_gk=0;
					res = stmt.executeQuery("select MAX(GK) from "+ser+" where CLASS='"+cl+"'");
					res.next();
					max_gk=res.getInt(1);
				%>
				<font  face="courier new" color="green"><b><%out.print(max_gk);%></b></font>
			</div>

			<div id="hwd">
				<font  face="courier new"><b><%out.print(hwd);%></b></font>
			</div>
			<div id="max_hwd">
				<%
					int max_hwd=0;
					res = stmt.executeQuery("select MAX(HWD) from "+ser+" where CLASS='"+cl+"'");
					res.next();
					max_hwd=res.getInt(1);
				%>
				<font  face="courier new" color="green"><b><%out.print(max_gk);%></b></font>
			</div>
			
			<div id="ewd">
				<font  face="courier new"><b><%out.print(ewd);%></b></font>
			</div>
			<div id="max_ewd">
				<%
					int max_ewd=0;
					res = stmt.executeQuery("select MAX(EWD) from "+ser+" where CLASS='"+cl+"'");
					res.next();
					max_ewd=res.getInt(1);
				%>
				<font  face="courier new" color="green"><b><%out.print(max_ewd);%></b></font>
			</div>
			

			

			<div id="draw">
				<font  face="courier new"><b><%out.print(draw);%></b></font>
			</div>
			<div id="max_draw">
				<%
					int max_draw=0;
					res = stmt.executeQuery("select MAX(DRAWING) from "+ser+" where CLASS='"+cl+"'");
					res.next();
					max_draw=res.getInt(1);
				%>
				<font  face="courier new" color="green"><b><%out.print(max_draw);%></b></font>
			</div>
			<div id="handi">
				<font  face="courier new"><b><%out.print(handi);%></b></font>
			</div>
			<div id="max_handi">
				<%
					int max_handi=0;
					res = stmt.executeQuery("select MAX(HANDICRAFT) from "+ser+" where CLASS='"+cl+"'");
					res.next();
					max_handi=res.getInt(1);
				%>
				<font  face="courier new" color="green"><b><%out.print(max_handi);%></b></font>
			</div>
			<div id="dance">
				<font  face="courier new"><b><%out.print(dance);%></b></font>
			</div>
			<div id="max_dance">
				<%
					int max_dance=0;
					res = stmt.executeQuery("select MAX(DANCEMUSIC) from "+ser+" where CLASS='"+cl+"'");
					res.next();
					max_dance=res.getInt(1);
				%>
				<font  face="courier new" color="green"><b><%out.print(max_dance);%></b></font>
			</div>

			<div id="sci">
				<font  face="courier new"><b><%out.print(sci);%></b></font>
			</div>
			<div id="max_sci">
				<%
					int max_sci=0;
					res = stmt.executeQuery("select MAX(SCIENCE) from "+ser+" where CLASS='"+cl+"'");
					res.next();
					max_sci=res.getInt(1);
				%>
				<font  face="courier new" color="green"><b><%out.print(max_sci);%></b></font>
			</div>

			<div id="scip">
				<font  face="courier new"><b><%out.print(scip);%></b></font>
			</div>
			<div id="max_scip">
				<%
					int max_scip=0;
					res = stmt.executeQuery("select MAX(SCIPRACT) from "+ser+" where CLASS='"+cl+"'");
					res.next();
					max_scip=res.getInt(1);
				%>
				<font  face="courier new" color="green"><b><%out.print(max_scip);%></b></font>
			</div>

			<div id="social">
				<font  face="courier new"><b><%out.print(social);%></b></font>
			</div>
			<div id="max_social">
				<%
					int max_social=0;
					res = stmt.executeQuery("select MAX(SOCIAL) from "+ser+" where CLASS='"+cl+"'");
					res.next();
					max_social=res.getInt(1);
				%>
				<font  face="courier new" color="green"><b><%out.print(max_social);%></b></font>
			</div>

			<div id="sans">
				<font  face="courier new"><b><%out.print(sans);%></b></font>
			</div>
			<div id="max_sans">
				<%
					int max_sans=0;
					res = stmt.executeQuery("select MAX(SANSKRIT) from "+ser+" where CLASS='"+cl+"'");
					res.next();
					max_sans=res.getInt(1);
				%>
				<font  face="courier new" color="green"><b><%out.print(max_sans);%></b></font>
			</div>

			<div id="compt">
				<font  face="courier new"><b><%out.print(compt);%></b></font>
			</div>
			<div id="max_compt">
				<%
					int max_compt=0;
					res = stmt.executeQuery("select MAX(COMPTHEORY) from "+ser+" where CLASS='"+cl+"'");
					res.next();
					max_compt=res.getInt(1);
				%>
				<font  face="courier new" color="green"><b><%out.print(max_compt);%></b></font>
			</div>

			<div id="compp">
				<font  face="courier new"><b><%out.print(compp);%></b></font>
			</div>
			<div id="max_compp">
				<%
					int max_compp=0;
					res = stmt.executeQuery("select MAX(COMPPRAC) from "+ser+" where CLASS='"+cl+"'");
					res.next();
					max_compp=res.getInt(1);
				%>
				<font  face="courier new" color="green"><b><%out.print(max_compp);%></b></font>
			</div>

			<div id="total">
				<font  face="courier new"><b><%out.print(total);%></b></font>
			</div>
			<div id="obt">
				<font  face="courier new"><b><%out.print(obt);%></b></font>
			</div>
			<div id="max_obt">
				<%
					int max_obt=max_hindi+max_eng+max_math+max_gk+max_handi+max_dance+max_draw+max_hwd+max_ewd+max_social+max_sci+max_scip+max_sans+max_compt+max_compp;
					
				%>
				<font  face="courier new" color="green"><b><%out.print(max_obt);%></b></font>
			</div>
			<div id="per">
				<font  face="courier new"><b><%out.print(per);%>%</b></font>
			</div>
			<div id="max_per">
				<%
					double max_per=0.0;
					res = stmt.executeQuery("select MAX(per) from "+ser+" where CLASS='"+cl+"'");
					res.next();
					max_per = res.getDouble(1);
					max_per = Math.round(max_per* 100.0) / 100.0;
				%>
				<font  face="courier new" color="green"><b><%out.print(max_per);%>%</b></font>
			</div>
			<div id="position">
				<%
					int rank=0;
					res = stmt.executeQuery("select NAME,per from "+ser+" where CLASS='"+cl+"' order by per DESC");
					int c = 0;
					while(res.next())
					{
						c++;
						String tname=res.getString(1);
						if(tname.equals(name))
						{
							break;
						}
					}
					rank=c;
					
				%>
				<font  face="courier new"><b><%out.print(rank);%></b></font>
			</div>
			<%
		
	}

	else if(cl.equals("VIII") || cl.equals("IX") || cl.equals("X"))
	{
		int total=950;
		int obt = hindi+eng+math+gk+draw+handi+dance+hwd+ewd+social+sci+scip+sans;
		%>

			<div id="hindi">
				<font  face="courier new"><b><%out.print(hindi);%></b></font>
			</div>
			<div id="max_hindi">
				<%
					int max_hindi=0;
					res = stmt.executeQuery("select MAX(HINDI) from "+ser+" where CLASS='"+cl+"'");
					res.next();
					max_hindi=res.getInt(1);
				%>
				<font  face="courier new" color="green"><b><%out.print(max_hindi);%></b></font>
			</div>
			<div id="eng">
				<font  face="courier new"><b><%out.print(eng);%></b></font>
			</div>
			<div id="max_eng">
				<%
					int max_eng=0;
					res = stmt.executeQuery("select MAX(ENG) from "+ser+" where CLASS='"+cl+"'");
					res.next();
					max_eng=res.getInt(1);
				%>
				<font  face="courier new" color="green"><b><%out.print(max_eng);%></b></font>
			</div>

			<div id="math">
				<font  face="courier new"><b><%out.print(math);%></b></font>
			</div>
			<div id="max_math">
				<%
					int max_math=0;
					res = stmt.executeQuery("select MAX(MATH) from "+ser+" where CLASS='"+cl+"'");
					res.next();
					max_math=res.getInt(1);
				%>
				<font  face="courier new" color="green"><b><%out.print(max_math);%></b></font>
			</div>
			<div id="gk">
				<font  face="courier new"><b><%out.print(gk);%></b></font>
			</div>
			<div id="max_gk">
				<%
					int max_gk=0;
					res = stmt.executeQuery("select MAX(GK) from "+ser+" where CLASS='"+cl+"'");
					res.next();
					max_gk=res.getInt(1);
				%>
				<font  face="courier new" color="green"><b><%out.print(max_gk);%></b></font>
			</div>

			<div id="hwd">
				<font  face="courier new"><b><%out.print(hwd);%></b></font>
			</div>
			<div id="max_hwd">
				<%
					int max_hwd=0;
					res = stmt.executeQuery("select MAX(HWD) from "+ser+" where CLASS='"+cl+"'");
					res.next();
					max_hwd=res.getInt(1);
				%>
				<font  face="courier new" color="green"><b><%out.print(max_gk);%></b></font>
			</div>
			
			<div id="ewd">
				<font  face="courier new"><b><%out.print(ewd);%></b></font>
			</div>
			<div id="max_ewd">
				<%
					int max_ewd=0;
					res = stmt.executeQuery("select MAX(EWD) from "+ser+" where CLASS='"+cl+"'");
					res.next();
					max_ewd=res.getInt(1);
				%>
				<font  face="courier new" color="green"><b><%out.print(max_ewd);%></b></font>
			</div>
			

			

			<div id="draw">
				<font  face="courier new"><b><%out.print(draw);%></b></font>
			</div>
			<div id="max_draw">
				<%
					int max_draw=0;
					res = stmt.executeQuery("select MAX(DRAWING) from "+ser+" where CLASS='"+cl+"'");
					res.next();
					max_draw=res.getInt(1);
				%>
				<font  face="courier new" color="green"><b><%out.print(max_draw);%></b></font>
			</div>
			<div id="handi">
				<font  face="courier new"><b><%out.print(handi);%></b></font>
			</div>
			<div id="max_handi">
				<%
					int max_handi=0;
					res = stmt.executeQuery("select MAX(HANDICRAFT) from "+ser+" where CLASS='"+cl+"'");
					res.next();
					max_handi=res.getInt(1);
				%>
				<font  face="courier new" color="green"><b><%out.print(max_handi);%></b></font>
			</div>
			<div id="dance">
				<font  face="courier new"><b><%out.print(dance);%></b></font>
			</div>
			<div id="max_dance">
				<%
					int max_dance=0;
					res = stmt.executeQuery("select MAX(DANCEMUSIC) from "+ser+" where CLASS='"+cl+"'");
					res.next();
					max_dance=res.getInt(1);
				%>
				<font  face="courier new" color="green"><b><%out.print(max_dance);%></b></font>
			</div>

			<div id="sci">
				<font  face="courier new"><b><%out.print(sci);%></b></font>
			</div>
			<div id="max_sci">
				<%
					int max_sci=0;
					res = stmt.executeQuery("select MAX(SCIENCE) from "+ser+" where CLASS='"+cl+"'");
					res.next();
					max_sci=res.getInt(1);
				%>
				<font  face="courier new" color="green"><b><%out.print(max_sci);%></b></font>
			</div>

			<div id="scip">
				<font  face="courier new"><b><%out.print(scip);%></b></font>
			</div>
			<div id="max_scip">
				<%
					int max_scip=0;
					res = stmt.executeQuery("select MAX(SCIPRACT) from "+ser+" where CLASS='"+cl+"'");
					res.next();
					max_scip=res.getInt(1);
				%>
				<font  face="courier new" color="green"><b><%out.print(max_scip);%></b></font>
			</div>

			<div id="social">
				<font  face="courier new"><b><%out.print(social);%></b></font>
			</div>
			<div id="max_social">
				<%
					int max_social=0;
					res = stmt.executeQuery("select MAX(SOCIAL) from "+ser+" where CLASS='"+cl+"'");
					res.next();
					max_social=res.getInt(1);
				%>
				<font  face="courier new" color="green"><b><%out.print(max_social);%></b></font>
			</div>

			<div id="sans">
				<font  face="courier new"><b><%out.print(sans);%></b></font>
			</div>
			<div id="max_sans">
				<%
					int max_sans=0;
					res = stmt.executeQuery("select MAX(SANSKRIT) from "+ser+" where CLASS='"+cl+"'");
					res.next();
					max_sans=res.getInt(1);
				%>
				<font  face="courier new" color="green"><b><%out.print(max_sans);%></b></font>
			</div>

			
			<div id="total">
				<font  face="courier new"><b><%out.print(total);%></b></font>
			</div>
			<div id="obt">
				<font  face="courier new"><b><%out.print(obt);%></b></font>
			</div>
			<div id="max_obt">
				<%
					int max_obt=max_hindi+max_eng+max_math+max_gk+max_handi+max_dance+max_draw+max_hwd+max_ewd+max_social+max_sci+max_scip+max_sans;
					
				%>
				<font  face="courier new" color="green"><b><%out.print(max_obt);%></b></font>
			</div>
			<div id="per">
				<font  face="courier new"><b><%out.print(per);%>%</b></font>
			</div>
			<div id="max_per">
				<%
					double max_per=0.0;
					res = stmt.executeQuery("select MAX(per) from "+ser+" where CLASS='"+cl+"'");
					res.next();
					max_per = res.getDouble(1);
					max_per = Math.round(max_per* 100.0) / 100.0;
				%>
				<font  face="courier new" color="green"><b><%out.print(max_per);%>%</b></font>
			</div>
			<div id="position">
				<%
					int rank=0;
					res = stmt.executeQuery("select NAME,per from "+ser+" where CLASS='"+cl+"' order by per DESC");
					int c = 0;
					while(res.next())
					{
						c++;
						String tname=res.getString(1);
						if(tname.equals(name))
						{
							break;
						}
					}
					rank=c;
					
				%>
				<font  face="courier new"><b><%out.print(rank);%></b></font>
			</div>
			<%
		
	}

%>
</div>


</body>
</html>