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

      int roll = Integer.parseInt(request.getParameter("roll"));
      String term = request.getParameter("term");
      String name = request.getParameter("name"); 
      String table="";
      String cl = request.getParameter("class");
      if(term.equals("I"))  
      {
      		table = table+"marksT1";
      }
      else if(term.equals("II"))
      {
      		table = table+"marks_HALF";
      }
      else if(term.equals("III"))
      {
      		table = table+"marks_T3";
      }
      else if(term.equals("IV"))
      {
      		table = table+"marks_END";
      }

      int hindi = Integer.parseInt(request.getParameter("hindi"+roll)); 
      int eng = Integer.parseInt(request.getParameter("eng"+roll)); 
      int math = Integer.parseInt(request.getParameter("math"+roll)); 
      int gk = Integer.parseInt(request.getParameter("gk"+roll)); 
      int hwd = Integer.parseInt(request.getParameter("hwd"+roll)); 
      int ewd = Integer.parseInt(request.getParameter("ewd"+roll)); 
      int draw = Integer.parseInt(request.getParameter("draw"+roll)); 
      int handi = Integer.parseInt(request.getParameter("handi"+roll)); 
      int dance = Integer.parseInt(request.getParameter("dance"+roll)); 
      int sci = Integer.parseInt(request.getParameter("sci"+roll)); 
      int scip = Integer.parseInt(request.getParameter("scip"+roll)); 
      int social = Integer.parseInt(request.getParameter("social"+roll)); 
      int hist = Integer.parseInt(request.getParameter("hist"+roll)); 
      int geo = Integer.parseInt(request.getParameter("geo"+roll)); 
      int civics = Integer.parseInt(request.getParameter("civics"+roll)); 
      int home = Integer.parseInt(request.getParameter("home"+roll)); 
      int sans = Integer.parseInt(request.getParameter("sans"+roll)); 
      int compt = Integer.parseInt(request.getParameter("compt"+roll)); 
      int compp = Integer.parseInt(request.getParameter("compp"+roll)); 

      if(cl.equals("NUR"))
      {
            double obt = hindi+eng+math+gk+draw+handi+dance;
            double per = (double)(obt/550)*100;
            per = Math.round(per* 100.0) / 100.0;

            prep = connection.prepareStatement("update "+table+" set HINDI=?,ENG=?,MATH=?,GK=?,HWD=?,EWD=?,DRAWING=?,HANDICRAFT=?,DANCEMUSIC=?,SCIENCE=?,SCIPRACT=?,SOCIAL=?,HISTORY=?,GEO=?,CIVICS=?,HOMEASGN=?,SANSKRIT=?,COMPTHEORY=?,COMPPRAC=?, per=?, total=?, obt=?  where NAME='"+name+"' and CLASS='"+cl+"'");
            prep.setInt(1,hindi);
            prep.setInt(2,eng);
            prep.setInt(3,math);
            prep.setInt(4,gk);
            prep.setInt(5,hwd);
            prep.setInt(6,ewd);
            prep.setInt(7,draw);
            prep.setInt(8,handi);
            prep.setInt(9,dance);
            prep.setInt(10,sci);
            prep.setInt(11,scip);
            prep.setInt(12,social);
            prep.setInt(13,hist);
            prep.setInt(14,geo);
            prep.setInt(15,civics);
            prep.setInt(16,home);
            prep.setInt(17,sans);
            prep.setInt(18,compt);
            prep.setInt(19,compp);
            prep.setDouble(20,per);
            prep.setDouble(21,550);
            prep.setDouble(22,obt);
            prep.executeUpdate();
      }
      else if(cl.equals("LKG") || cl.equals("UKG"))
      {
            double obt = hindi+eng+math+gk+draw+handi+dance+hwd+ewd;
            double per = (double)(obt/650)*100;
            per = Math.round(per* 100.0) / 100.0;

            prep = connection.prepareStatement("update "+table+" set HINDI=?,ENG=?,MATH=?,GK=?,HWD=?,EWD=?,DRAWING=?,HANDICRAFT=?,DANCEMUSIC=?,SCIENCE=?,SCIPRACT=?,SOCIAL=?,HISTORY=?,GEO=?,CIVICS=?,HOMEASGN=?,SANSKRIT=?,COMPTHEORY=?,COMPPRAC=?, per=?, total=?, obt=?  where NAME='"+name+"' and CLASS='"+cl+"'");
            prep.setInt(1,hindi);
            prep.setInt(2,eng);
            prep.setInt(3,math);
            prep.setInt(4,gk);
            prep.setInt(5,hwd);
            prep.setInt(6,ewd);
            prep.setInt(7,draw);
            prep.setInt(8,handi);
            prep.setInt(9,dance);
            prep.setInt(10,sci);
            prep.setInt(11,scip);
            prep.setInt(12,social);
            prep.setInt(13,hist);
            prep.setInt(14,geo);
            prep.setInt(15,civics);
            prep.setInt(16,home);
            prep.setInt(17,sans);
            prep.setInt(18,compt);
            prep.setInt(19,compp);
            prep.setDouble(20,per);
            prep.setDouble(21,650);
            prep.setDouble(22,obt);
            prep.executeUpdate();
      }
      else if(cl.equals("I"))
      {
            double obt = hindi+eng+math+gk+draw+handi+dance+hwd+ewd+social+sci+scip+sans;
            double per = (double)(obt/950)*100;
            per = Math.round(per* 100.0) / 100.0;

            prep = connection.prepareStatement("update "+table+" set HINDI=?,ENG=?,MATH=?,GK=?,HWD=?,EWD=?,DRAWING=?,HANDICRAFT=?,DANCEMUSIC=?,SCIENCE=?,SCIPRACT=?,SOCIAL=?,HISTORY=?,GEO=?,CIVICS=?,HOMEASGN=?,SANSKRIT=?,COMPTHEORY=?,COMPPRAC=?, per=?, total=?, obt=?  where NAME='"+name+"' and CLASS='"+cl+"'");
            prep.setInt(1,hindi);
            prep.setInt(2,eng);
            prep.setInt(3,math);
            prep.setInt(4,gk);
            prep.setInt(5,hwd);
            prep.setInt(6,ewd);
            prep.setInt(7,draw);
            prep.setInt(8,handi);
            prep.setInt(9,dance);
            prep.setInt(10,sci);
            prep.setInt(11,scip);
            prep.setInt(12,social);
            prep.setInt(13,hist);
            prep.setInt(14,geo);
            prep.setInt(15,civics);
            prep.setInt(16,home);
            prep.setInt(17,sans);
            prep.setInt(18,compt);
            prep.setInt(19,compp);
            prep.setDouble(20,per);
            prep.setDouble(21,950);
            prep.setDouble(22,obt);
            prep.executeUpdate();
      }
      else if(cl.equals("II") || cl.equals("III") || cl.equals("IV") || cl.equals("V") || cl.equals("VI") || cl.equals("VII"))
      {
            double obt = hindi+eng+math+gk+draw+handi+dance+hwd+ewd+social+sci+scip+sans+compp+compt;
            double per = (double)(obt/1050)*100;
            per = Math.round(per* 100.0) / 100.0;

            prep = connection.prepareStatement("update "+table+" set HINDI=?,ENG=?,MATH=?,GK=?,HWD=?,EWD=?,DRAWING=?,HANDICRAFT=?,DANCEMUSIC=?,SCIENCE=?,SCIPRACT=?,SOCIAL=?,HISTORY=?,GEO=?,CIVICS=?,HOMEASGN=?,SANSKRIT=?,COMPTHEORY=?,COMPPRAC=?, per=?, total=?, obt=?  where NAME='"+name+"' and CLASS='"+cl+"'");
            prep.setInt(1,hindi);
            prep.setInt(2,eng);
            prep.setInt(3,math);
            prep.setInt(4,gk);
            prep.setInt(5,hwd);
            prep.setInt(6,ewd);
            prep.setInt(7,draw);
            prep.setInt(8,handi);
            prep.setInt(9,dance);
            prep.setInt(10,sci);
            prep.setInt(11,scip);
            prep.setInt(12,social);
            prep.setInt(13,hist);
            prep.setInt(14,geo);
            prep.setInt(15,civics);
            prep.setInt(16,home);
            prep.setInt(17,sans);
            prep.setInt(18,compt);
            prep.setInt(19,compp);
            prep.setDouble(20,per);
            prep.setDouble(21,1050);
            prep.setDouble(22,obt);
            prep.executeUpdate();
      }
      else if(cl.equals("VIII") || cl.equals("IX") || cl.equals("X"))
      {
             double obt = hindi+eng+math+gk+draw+handi+dance+hwd+ewd+social+sci+scip+sans;
            double per = (double)(obt/950)*100;
            per = Math.round(per* 100.0) / 100.0;

            prep = connection.prepareStatement("update "+table+" set HINDI=?,ENG=?,MATH=?,GK=?,HWD=?,EWD=?,DRAWING=?,HANDICRAFT=?,DANCEMUSIC=?,SCIENCE=?,SCIPRACT=?,SOCIAL=?,HISTORY=?,GEO=?,CIVICS=?,HOMEASGN=?,SANSKRIT=?,COMPTHEORY=?,COMPPRAC=?, per=?, total=?, obt=?  where NAME='"+name+"' and CLASS='"+cl+"'");
            prep.setInt(1,hindi);
            prep.setInt(2,eng);
            prep.setInt(3,math);
            prep.setInt(4,gk);
            prep.setInt(5,hwd);
            prep.setInt(6,ewd);
            prep.setInt(7,draw);
            prep.setInt(8,handi);
            prep.setInt(9,dance);
            prep.setInt(10,sci);
            prep.setInt(11,scip);
            prep.setInt(12,social);
            prep.setInt(13,hist);
            prep.setInt(14,geo);
            prep.setInt(15,civics);
            prep.setInt(16,home);
            prep.setInt(17,sans);
            prep.setInt(18,compt);
            prep.setInt(19,compp);
            prep.setDouble(20,per);
            prep.setDouble(21,950);
            prep.setDouble(22,obt);
            prep.executeUpdate();
      }
      

      response.sendRedirect("http://localhost:8080/School/update.jsp?class="+cl);

      /*out.println(roll);
      out.println(name);
      out.println(hindi);
      out.println(eng);
      out.println(term);*/


      %>
</body>
</html>