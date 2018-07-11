<%@ page import = "java.io.*" %>
<%@ page import = "java.sql.*" %>
<%@ page import = "java.util.*" %>
<html>
<title>FEE_SUBMIT</title>
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
	String mon = (request.getParameter("mon"));
	int tot = Integer.parseInt(request.getParameter("total"));
	int paid = Integer.parseInt(request.getParameter("paid"));
	int exam = Integer.parseInt(request.getParameter("exam"));
	int msc = Integer.parseInt(request.getParameter("msc"));
	int id = Integer.parseInt(request.getParameter("id"));
	int diary = Integer.parseInt(request.getParameter("diary"));
	int gen = Integer.parseInt(request.getParameter("gen"));
	int bal = tot - (paid+exam+msc+id+diary+gen);
	if(mon.equals("APRIL"))
	{
		prep = connection.prepareStatement("update apr_fee set aprt="+tot+", aprp="+paid+", apre="+exam+", aprb="+bal+", m="+msc+", gE="+gen+", id="+id+", d="+diary+" where name='"+name+"' and class='"+cl+"' and father='"+fat+"'");
		prep.executeUpdate();
	}
	else if(mon.equals("MAY"))
	{
		prep = connection.prepareStatement("update may_fee set mayt="+tot+", mayp="+paid+", maye="+exam+", mayb="+bal+", m="+msc+", gE="+gen+", id="+id+", d="+diary+"  where name='"+name+"' and class='"+cl+"' and father='"+fat+"'");
		prep.executeUpdate();
	}
	if(mon.equals("JUNE"))
	{
		prep = connection.prepareStatement("update jun_fee set junt="+tot+", junp="+paid+", june="+exam+", junb="+bal+", m="+msc+", gE="+gen+", id="+id+", d="+diary+"  where name='"+name+"' and class='"+cl+"' and father='"+fat+"'");
		prep.executeUpdate();
	}
	if(mon.equals("JULY"))
	{
		prep = connection.prepareStatement("update jul_fee set jult="+tot+", julp="+paid+", jule="+exam+", julb="+bal+", m="+msc+", gE="+gen+", id="+id+", d="+diary+"  where name='"+name+"' and class='"+cl+"' and father='"+fat+"'");
		prep.executeUpdate();
	}
	if(mon.equals("AUGUST"))
	{
		prep = connection.prepareStatement("update aug_fee set augt="+tot+", augp="+paid+", auge="+exam+", augb="+bal+", m="+msc+", gE="+gen+", id="+id+", d="+diary+"  where name='"+name+"' and class='"+cl+"' and father='"+fat+"'");
		prep.executeUpdate();
	}
	if(mon.equals("SEPTEMBER"))
	{
		prep = connection.prepareStatement("update sep_fee set sept="+tot+", sepp="+paid+", sepe="+exam+", sepb="+bal+", m="+msc+", gE="+gen+", id="+id+", d="+diary+"  where name='"+name+"' and class='"+cl+"' and father='"+fat+"'");
		prep.executeUpdate();
	}
	if(mon.equals("OCTOBER"))
	{
		prep = connection.prepareStatement("update oct_fee set octt="+tot+", octp="+paid+", octe="+exam+", octb="+bal+", m="+msc+", gE="+gen+", id="+id+", d="+diary+"  where name='"+name+"' and class='"+cl+"' and father='"+fat+"'");
		prep.executeUpdate();
	}
	if(mon.equals("NOVEMBER"))
	{
		prep = connection.prepareStatement("update nov_fee set novt="+tot+", novp="+paid+", nove="+exam+", novb="+bal+", m="+msc+", gE="+gen+", id="+id+", d="+diary+"  where name='"+name+"' and class='"+cl+"' and father='"+fat+"'");
		prep.executeUpdate();
	}
	if(mon.equals("DECEMBER"))
	{
		prep = connection.prepareStatement("update dec_fee set dect="+tot+", decp="+paid+", dece="+exam+", decb="+bal+", m="+msc+", gE="+gen+", id="+id+", d="+diary+"  where name='"+name+"' and class='"+cl+"' and father='"+fat+"'");
		prep.executeUpdate();
	}
	if(mon.equals("JANUARY"))
	{
		prep = connection.prepareStatement("update jan_fee set jant="+tot+", janp="+paid+", jane="+exam+", janb="+bal+", m="+msc+", gE="+gen+", id="+id+", d="+diary+"  where name='"+name+"' and class='"+cl+"' and father='"+fat+"'");
		prep.executeUpdate();
	}
	if(mon.equals("FEBRUARY"))
	{
		prep = connection.prepareStatement("update feb_fee set febt="+tot+", febp="+paid+", febe="+exam+", febb="+bal+", m="+msc+", gE="+gen+", id="+id+", d="+diary+"  where name='"+name+"' and class='"+cl+"' and father='"+fat+"'");
		prep.executeUpdate();
	}
	if(mon.equals("MARCH"))
	{
		prep = connection.prepareStatement("update mar_fee set mart="+tot+", marp="+paid+", mare="+exam+", marb="+bal+", m="+msc+", gE="+gen+", id="+id+", d="+diary+"  where name='"+name+"' and class='"+cl+"' and father='"+fat+"'");
		prep.executeUpdate();
	}

	response.sendRedirect("http://localhost:8080/School/fee.jsp");
	
%>
</body>
</html>