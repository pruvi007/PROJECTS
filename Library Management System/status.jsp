<%@ page import = "java.io.*" %>
<%@ page import = "java.sql.*" %>
<%@ page import = "java.util.*" %>


<html>
     <title>STATUS</title>
      <head>
             <!--minfied CSS compiled -->
            <link href = "//maxcdn.bootstrapcdn.com/bootstrap/3.3.1/css/bootstrap.min.css" rel = "stylesheet">

            <!--optional Theme-->
            <link rel = "stylesheet" href="/bootstrap/css/bootstrap-theme.min.css">

            

      </head>
<%
      Class.forName("com.mysql.jdbc.Driver");
      String connectionURL= "jdbc:mysql://localhost:3306/Diablo";

      Connection connection = null;
      connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/Library","root","pagal.com");

      Statement stmt = null;
      Statement stmt2 = null;
      PreparedStatement prep= null;
      ResultSet res=null;
      ResultSet res2 = null;

      stmt2 = connection.createStatement();


%>

<body>
       <center>

       <br><br>
       <!--PANEL-->
        <center><div class="mx-auto" style="width: 1000px;">
                  <div class="panel panel-primary">
                    <div class="panel-heading">
                      <h1 class="panel-title"><h1><center><h1>STATUS OF ISSUED BOOKS</h1></center></h1></h1></div>
                      <div class="panel-body">


      <hr>

      <table class="table table-striped" >
            <tr class ="active">
                  <th><center>S.NO</th>
                  <th><center>ID</th>
                  <th><center>NAME</th>
                  <th><center>NUMBER OF BOOKS</th>

            </tr>
      <%
            stmt = connection.createStatement();
            String st[] = request.getParameterValues("book");



            int flag = 0;
            String first = (String)session.getAttribute("first");
            first = first.toUpperCase();

            res = stmt.executeQuery("show tables");
            String com = "";

            while(res.next())
            {
                  com = res.getString(1);

                        com = com.toUpperCase();
                        if(com.equals(first))
                        {
                              flag=1;
                              break;
                        }


            }

            String alr[] = new String[100];
            int k1 = 0;
            String valid[] = new String[100];
            int k = 0;
            if(flag==1)                                             //table already exists
            {
                  res = stmt.executeQuery("select NAME from "+first+" where NAME is not null");
                  while(res.next())
                  {
                        alr[k1++] = res.getString(1);
                  }
                  for(int i=0;i<st.length;i++)
                  {
                        int f = 0;
                        for(int j=0;j<k1;j++)
                        {
                              if(st[i].equals(alr[j]))
                              {
                                    f=1;
                                    break;
                              }
                        }
                        if(f==0)
                        {
                              valid[k++] = st[i];
                              prep = connection.prepareStatement("Update BOOKS set REM = REM-1 where NAME = '"+valid[k-1]+"'");
                              prep.executeUpdate();

                        }
                  }
                  prep = connection.prepareStatement("update STATUS set NUMBER = NUMBER + ? where NAME = ?");
                  prep.setInt(1,k);
                  prep.setString(2,first);
                  prep.executeUpdate();

                  session.setAttribute("size",valid.length);
                  for(int i=0;i<valid.length;i++)
                  {
                        session.setAttribute("n"+i,valid[i]);


                  }
                  res= stmt.executeQuery("select count(*) from "+first);
                  res.next();
                  int current = res.getInt(1);
                  prep = connection.prepareStatement("insert into "+first+" values(?,?,?,?,?,?)");
                  int cur2 = current;
                  int l=0;
                  res = stmt.executeQuery("select curdate()");
                  res.next();
                  String cur = res.getString(1);
                  res = stmt.executeQuery("select date_add(curdate(),interval 7 day)");
                  res.next();
                  String ret = res.getString(1);
                  int fine = 0;
                  while(current<k+cur2)
                  {
                        current++;
                        prep.setInt(1,current);
                        prep.setString(2,valid[l++]);
                        prep.setString(3,cur);
                        prep.setString(4,ret);
                        prep.setInt(5,fine);
                        prep.setString(6,"NO");
                        prep.executeUpdate();
                  }


            }


            else
            {
                  int fine = 0;
                  prep = connection.prepareStatement("insert into STATUS values (?,?,?)");
                  res = stmt.executeQuery("select ID from STUDENT where NAME= '"+first+"'");
                  res.next();
                  int id = res.getInt(1);
                  prep.setInt(1,id);
                  prep.setString(2,first);
                  prep.setInt(3,st.length);

                  prep.executeUpdate();



                  session.setAttribute("size",st.length);
                  for(int i=0;i<st.length;i++)
                  {
                        session.setAttribute("n"+i,st[i]);

                         prep = connection.prepareStatement("Update BOOKS set REM = REM-1 where NAME = '"+st[i]+"'");
                              prep.executeUpdate();
                  }

                  prep = connection.prepareStatement("create table "+first+"(SNO int,NAME varchar(20),ISSUE varchar(10),END varchar(10),FINE int,RESERVE varchar(2))");

                  prep.executeUpdate();

                  prep = connection.prepareStatement("insert into "+first+" values(?,?,?,?,?,?)");
                  res = stmt.executeQuery("select curdate()");
                  res.next();
                  String cur = res.getString(1);
                  res = stmt.executeQuery("select date_add(curdate(),interval 7 day)");
                  res.next();
                  String ret = res.getString(1);
                  fine = 0;
                  int c = 0;

                  while(c<st.length)
                  {
                        c++;
                        prep.setInt(1,c);
                        prep.setString(2,st[c-1]);
                        prep.setString(3,cur);
                        prep.setString(4,ret);
                        prep.setInt(5,fine);
                        prep.setString(6,"NO");
                        prep.executeUpdate();
                  }

            }




            res = stmt.executeQuery("select * from STATUS");

                  %>
            <%
            int c = 1;
            while(res.next())
            {
                  %><tr>
                  <td><center><b><font size="4" color="Black" face="Courier New">
                       <%

                              out.println(c++);
                       %>
                 </td>
                 <td><center><b><font size="4" color="Black" face="Courier New">
                      <%

                             int id = res.getInt(1);
                             out.println(id);
                      %>
                </td>
                       <td><center><b><font size="4" color="Black" face="Courier New">
                             <%
                                    String nam = res.getString(2);
                                    out.println(nam);
                             %>
                       </td>
                       <td><center><a href="show_books.jsp?name=<%=(nam)%>&si=<%=(res.getInt(3))%>"><button class="btn btn-success"><b><font size="4" color="White" face="Courier New">&nbsp&nbsp&nbsp&nbsp
                             <%

                                    %>

                                    
                                    <%
                                    int len = res.getInt(3);
                                    out.println(len);
                                    %>
                              &nbsp&nbsp&nbsp&nbsp</font></b></button</a><%
                             %>
                       </td>


                 </tr>
                 <%
            }



            %>
      </table>
</center>


<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
      <script src = "https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
      
      <!-- Include all compiled plugins (below), or include individual files as needed -->
      <script src = "//maxcdn.bootstrapcdn.com/bootstrap/3.3.1/js/bootstrap.min.js"></script>


</body>
</html>
