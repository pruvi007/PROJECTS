<%@ page import = "java.io.*" %>
<%@ page import = "java.sql.*" %>
<%@ page import = "java.util.*" %>

<html>
<title>Fee SLIP</title>
<head>
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
    			#fee
    			{
    				z-index:-1;
    			}
    			#name
    			{
    				position: absolute;
    				top:14.1%;
    				left:33%;
    			}
    			#father
    			{
    				position: absolute;
    				top:16%;
    				left:39%;
    			}
    			#cl
    			{
    				position: absolute;
    				top:14.1%;
    				left:59.5%;
    			}
    			#aprt
    			{
    				position: absolute;
    				top:23%;
    				left:55.5%;
    			}
    			#aprb
    			{
    				position: absolute;
    				top:23%;
    				left:45%;
    			}
    			#aprm
    			{
    				position: absolute;
    				top:26%;
    				left:55.5%;
    			}
    			#aprg
    			{
    				position: absolute;
    				top:30%;
    				left:55.5%;
    			}
    			#aprid
    			{
    				position: absolute;
    				top:33.5%;
    				left:55.5%;
    			}
    			#aprd
    			{
    				position: absolute;
    				top:37%;
    				left:55.5%;
    			}
    			#mayt
    			{
    				position: absolute;
    				top:41%;
    				left:55.5%;
    			}
    			#mayb
    			{
    				position: absolute;
    				top:41%;
    				left:45%;
    			}
    			#junt
    			{
    				position: absolute;
    				top:44.5%;
    				left:55.5%;
    			}
    			#junb
    			{
    				position: absolute;
    				top:44.5%;
    				left:45%;
    			}
    			#june
    			{
    				position: absolute;
    				top:48%;
    				left:55.5%;
    			}

    			#jult
    			{
    				position: absolute;
    				top:51.7%;
    				left:55.5%;
    			}
    			#julb
    			{
    				position: absolute;
    				top:51.7%;
    				left:45%;
    			}
    			

    			#augt
    			{
    				position: absolute;
    				top:55%;
    				left:55.5%;
    			}
    			#augb
    			{
    				position: absolute;
    				top:55%;
    				left:45%;
    			}

    			#sept
    			{
    				position: absolute;
    				top:59%;
    				left:55.5%;
    			}
    			#sepb
    			{
    				position: absolute;
    				top:59%;
    				left:45%;
    			}
    			#sepm
    			{
    				position: absolute;
    				top:62.5%;
    				left:55.5%;
    			}
    			#sepe
    			{
    				position: absolute;
    				top:66%;
    				left:55.5%;
    			}

    			#octt
    			{
    				position: absolute;
    				top:69.5%;
    				left:55.5%;
    			}
    			#octb
    			{
    				position: absolute;
    				top:69.5%;
    				left:45%;
    			}

    			#novt
    			{
    				position: absolute;
    				top:73%;
    				left:55.5%;
    			}
    			#novb
    			{
    				position: absolute;
    				top:73%;
    				left:45%;
    			}

    			#dect
    			{
    				position: absolute;
    				top:76.5%;
    				left:55.5%;
    			}
    			#decb
    			{
    				position: absolute;
    				top:76.5%;
    				left:45%;
    			}
    			#dece
    			{
    				position: absolute;
    				top:80%;
    				left:55.5%;
    			}

    			#jant
    			{
    				position: absolute;
    				top:84%;
    				left:55.5%;
    			}
    			#janb
    			{
    				position: absolute;
    				top:84%;
    				left:45%;
    			}

    			#febt
    			{
    				position: absolute;
    				top:87.5%;
    				left:55.5%;
    			}
    			#febb
    			{
    				position: absolute;
    				top:87.5%;
    				left:45%;
    			}

    			#mart
    			{
    				position: absolute;
    				top:91%;
    				left:55.5%;
    			}
    			#marb
    			{
    				position: absolute;
    				top:91%;
    				left:45%;
    			}
    			#mare
    			{
    				position: absolute;
    				top:95%;
    				left:55.5%;
    			}

    			#tp
    			{
    				position: absolute;
    				top:22.5%;
    				left:67.5%;
    			}
    			#td
    			{
    				position: absolute;
    				top:29.8%;
    				left:67.5%;
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
      String fat = request.getParameter("father");
      String cl = request.getParameter("class");
      %>
    <div id="relative_parent">
      <center>
      <div id="fee">
      		<img src="fee.png" class="img-responsive" width="50%"/>
      </div>
  	  </center>
      <div id="name">
      		<font  face="courier new"><b><%out.print(name);%></b></font>
      </div>
       <div id="father">
      		<font  face="courier new"><b><%out.print(fat);%></b></font>
      </div>
       <div id="cl">
      		<font  face="courier new"><b><%out.print(cl);%></b></font>
      </div>
      <%
      res = stmt.executeQuery("select * from apr_fee where name='"+name+"' and class='"+cl+"' and father='"+fat+"'");
      res.next();
      int aprt=res.getInt(5);
      int aprp=res.getInt(6);
      int aprb=res.getInt(7);
      int aprm=res.getInt(9);
      int aprg = res.getInt(10);
      int aprid = res.getInt(11);
      int aprd = res.getInt(12);

      %>
      <div id="aprt">
      		<font  face="courier new"><b><%out.print(aprp);%></b></font>
      </div>
      <div id="aprb">
      		<font  face="courier new"><b><%out.print(aprb);%></b></font>
      </div>
      <div id="aprm">
      		<font  face="courier new"><b><%out.print(aprm);%></b></font>
      </div>
      <div id="aprg">
      		<font  face="courier new"><b><%out.print(aprg);%></b></font>
      </div>
      <div id="aprid">
      		<font  face="courier new"><b><%out.print(aprid);%></b></font>
      </div>
      <div id="aprd">
      		<font  face="courier new"><b><%out.print(aprd);%></b></font>
      </div>


      <%
      res = stmt.executeQuery("select * from may_fee where name='"+name+"' and class='"+cl+"' and father='"+fat+"'");
      res.next();
      int mayt=res.getInt(5);
      int mayp=res.getInt(6);
      int mayb=res.getInt(7);
      
      %>
      <div id="mayt">
      		<font  face="courier new"><b><%out.print(mayp);%></b></font>
      </div>
      <div id="mayb">
      		<font  face="courier new"><b><%out.print(mayb);%></b></font>
      </div>
     

      <%
      res = stmt.executeQuery("select * from jun_fee where name='"+name+"' and class='"+cl+"' and father='"+fat+"'");
      res.next();
      int junt=res.getInt(5);
      int junp=res.getInt(6);
      int junb=res.getInt(7);
      int june = res.getInt(8);
      
      %>
      <div id="junt">
      		<font  face="courier new"><b><%out.print(junp);%></b></font>
      </div>
      <div id="junb">
      		<font  face="courier new"><b><%out.print(junb);%></b></font>
      </div>
     <div id="june">
      		<font  face="courier new"><b><%out.print(june);%></b></font>
      </div>

      <%
      res = stmt.executeQuery("select * from jul_fee where name='"+name+"' and class='"+cl+"' and father='"+fat+"'");
      res.next();
      int jult=res.getInt(5);
      int julp=res.getInt(6);
      int julb=res.getInt(7);
      %>
       <div id="jult">
      		<font  face="courier new"><b><%out.print(julp);%></b></font>
      </div>
      <div id="julb">
      		<font  face="courier new"><b><%out.print(julb);%></b></font>
      </div>
    
      <%
      res = stmt.executeQuery("select * from aug_fee where name='"+name+"' and class='"+cl+"' and father='"+fat+"'");
      res.next();
      int augt=res.getInt(5);
      int augp=res.getInt(6);
      int augb=res.getInt(7);
      %>
       <div id="augt">
      		<font  face="courier new"><b><%out.print(augp);%></b></font>
      </div>
      <div id="augb">
      		<font  face="courier new"><b><%out.print(augb);%></b></font>
      </div>

      <%
      res = stmt.executeQuery("select * from sep_fee where name='"+name+"' and class='"+cl+"' and father='"+fat+"'");
      res.next();
      int sept=res.getInt(5);
      int sepp=res.getInt(6);
      int sepb=res.getInt(7);
      int sepm=res.getInt(9);
      int sepe=res.getInt(8);
      %>
       <div id="sept">
      		<font  face="courier new"><b><%out.print(sepp);%></b></font>
      </div>
      <div id="sepb">
      		<font  face="courier new"><b><%out.print(sepb);%></b></font>
      </div>
      <div id="sepm">
      		<font  face="courier new"><b><%out.print(sepm);%></b></font>
      </div>
      <div id="sepe">
      		<font  face="courier new"><b><%out.print(sepe);%></b></font>
      </div>

      <%
      res = stmt.executeQuery("select * from oct_fee where name='"+name+"' and class='"+cl+"' and father='"+fat+"'");
      res.next();
      int octt=res.getInt(5);
      int octp=res.getInt(6);
      int octb=res.getInt(7);
      
      %>
       <div id="octt">
      		<font  face="courier new"><b><%out.print(octp);%></b></font>
      </div>
      <div id="octb">
      		<font  face="courier new"><b><%out.print(octb);%></b></font>
      </div>
      

      <%
      res = stmt.executeQuery("select * from nov_fee where name='"+name+"' and class='"+cl+"' and father='"+fat+"'");
      res.next();
      int novt=res.getInt(5);
      int novp=res.getInt(6);
      int novb=res.getInt(7);
      int novm=res.getInt(9);
      int nove=res.getInt(8);
      %>
       <div id="novt">
      		<font  face="courier new"><b><%out.print(novp);%></b></font>
      </div>
      <div id="novb">
      		<font  face="courier new"><b><%out.print(novb);%></b></font>
      </div>

      <%
      res = stmt.executeQuery("select * from dec_fee where name='"+name+"' and class='"+cl+"' and father='"+fat+"'");
      res.next();
      int dect=res.getInt(5);
      int decp=res.getInt(6);
      int decb=res.getInt(7);
      int decm=res.getInt(9);
      int dece=res.getInt(8);
      %>
       <div id="dect">
      		<font  face="courier new"><b><%out.print(decp);%></b></font>
      </div>
      <div id="decb">
      		<font  face="courier new"><b><%out.print(decb);%></b></font>
      </div>
      <div id="dece">
      		<font  face="courier new"><b><%out.print(dece);%></b></font>
      </div>

      <%
      res = stmt.executeQuery("select * from jan_fee where name='"+name+"' and class='"+cl+"' and father='"+fat+"'");
      res.next();
      int jant=res.getInt(5);
      int janp=res.getInt(6);
      int janb=res.getInt(7);
      int janm=res.getInt(9);
      int jane=res.getInt(8);
      %>
       <div id="jant">
      		<font  face="courier new"><b><%out.print(janp);%></b></font>
      </div>
      <div id="janb">
      		<font  face="courier new"><b><%out.print(janb);%></b></font>
      </div>

      <%
      res = stmt.executeQuery("select * from feb_fee where name='"+name+"' and class='"+cl+"' and father='"+fat+"'");
      res.next();
      int febt=res.getInt(5);
      int febp=res.getInt(6);
      int febb=res.getInt(7);
      int febm=res.getInt(9);
      int febe=res.getInt(8);
      %>
       <div id="febt">
      		<font  face="courier new"><b><%out.print(febp);%></b></font>
      </div>
      <div id="febb">
      		<font  face="courier new"><b><%out.print(febb);%></b></font>
      </div>

      <%
      res = stmt.executeQuery("select * from mar_fee where name='"+name+"' and class='"+cl+"' and father='"+fat+"'");
      res.next();
      int mart=res.getInt(5);
      int marp=res.getInt(6);
      int marb=res.getInt(7);
      int marm=res.getInt(9);
      int mare=res.getInt(8);
      %>
       <div id="mart">
      		<font  face="courier new"><b><%out.print(marp);%></b></font>
      </div>
      <div id="marb">
      		<font  face="courier new"><b><%out.print(marb);%></b></font>
      </div>
      <div id="mare">
      		<font  face="courier new"><b><%out.print(mare);%></b></font>
      </div>
      
      <%
      	int tp = aprp+mayp+junp+julp+augp+sepp+octp+novp+decp+janp+febp+marp;
      	int td = aprb+mayb+junb+julb+augb+sepb+octb+novb+decb+janb+febb+marb;
      %>

      <div id="tp">
      		<font  face="courier new" color="green"><b><%out.print(tp);%></b></font>
      </div>

      <div id="td">
      		<font  face="courier new" color="red"><b><%out.print(td);%></b></font>
      </div>
    </div>

</body>
</html>