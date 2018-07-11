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

      res = stmt.executeQuery("select * from marksT1 where CLASS='I'");
      int c = 1;
      while(res.next())
      {
      		String name = res.getString(2);
      		String fat = res.getString(23);
      		
                  int hindi = res.getInt(3);
                  int eng = res.getInt(4);
                  int math = res.getInt(5);
                  int gk = res.getInt(6);
                  int hwd = res.getInt(7);
                  int ewd = res.getInt(8);
                  int draw = res.getInt(9);
                  int handi = res.getInt(10);
                  int dance = res.getInt(11);
                  int soc = res.getInt(14);
                  int sci = res.getInt(12);
                  int scip = res.getInt(13);
                  int sans = res.getInt(19);
                  int compp = res.getInt(20);
                  int compt = res.getInt(21);
                  double tot = hindi+eng+math+gk+draw+handi+dance+hwd+ewd+sci+scip+soc+sans;
                  double per = (double)(tot/950)*100;
                  per = Math.round(per* 100.0) / 100.0;
      		
                  prep = connection.prepareStatement("update marks_T3 set per=?, total=?, obt=? where NAME='"+name+"' and father='"+fat+"'");
      		prep.setDouble(1,per);
                  prep.setInt(2,950);
                  prep.setDouble(3,tot);
      		prep.executeUpdate();

      }   
  	%>
  </body>
  </html>