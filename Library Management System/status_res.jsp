<%@ page import = "java.io.*" %>
<%@ page import = "java.sql.*" %>
<%@ page import = "java.util.*" %>
<%@ page import = "java.text.*" %>
<%@ page import = "java.util.Calendar" %>
 



<html>
      <head>
             <link rel = "stylesheet" type="text/css" href="ext_css.css"/>
             <style type="text/css">
                  table{
                        width:70%;
                  }
                  </style>
      </head>
<%
      Class.forName("com.mysql.jdbc.Driver");
      String connectionURL= "jdbc:mysql://localhost:3306/Diablo";

      Connection connection = null;
      connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/Library","root","pagal.com");

      Statement stmt = null;
      PreparedStatement prep= null;
      ResultSet res=null;
      ResultSet res2 = null;

%>

<body>
       <center>
      <h1>STATUS of Issued BOOKS</h1>

      <table border="5" bordercolor="black">
            <tr>
                  <th>S.NO</th>
                  <th>ID</th>
                  <th>NAME</th>
                  <th>Number Of Books</th>

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
            if(flag==1)
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
                  String cur = request.getParameter("res_date");
                  res = stmt.executeQuery("select date_add(str_to_date('"+cur+"','%Y/%m/%d'),interval 7 day)");
                  res.next();
                  String ret = res.getString(1);
                  out.println(ret);
                  int fine = 0;
                  while(current<k+cur2)
                  {
                        current++;
                        prep.setInt(1,current);
                        prep.setString(2,valid[l++]);
                        prep.setString(3,cur);
                        prep.setString(4,ret);
                        prep.setInt(5,fine);
                        prep.setString(6,"Y");
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
                  }

                  prep = connection.prepareStatement("create table "+first+"(SNO int,NAME varchar(20),ISSUE varchar(10),END varchar(10),FINE int,RESERVE varchar(2))");

                  prep.executeUpdate();

                  prep = connection.prepareStatement("insert into "+first+" values(?,?,?,?,?,?)");
                  res = stmt.executeQuery("select curdate()");
                  res.next();
                  String cur = request.getParameter("res_date");
                  res = stmt.executeQuery("select date_add(str_to_date('"+cur+"',%d/%m/%Y),interval 7 day)");
                  res.next();
                  
                  Date retD = res.getDate(1);
                  DateFormat dateFormat = new SimpleDateFormat("yyyy-mm-dd"); 
                  String ret = dateFormat.format(retD); 
                  out.println(ret);  
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
                        prep.setString(6,"Y");
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
                  <td>
                       <%

                              out.println(c++);
                       %>
                 </td>
                 <td>
                      <%

                             int id = res.getInt(1);
                             out.println(id);
                      %>
                </td>
                       <td>
                             <%
                                    String nam = res.getString(2);
                                    out.println(nam);
                             %>
                       </td>
                       <td>
                             <%

                                    %>

                                    <a href="show_books.jsp?name=<%=(nam)%>&si=<%=(res.getInt(3))%>">
                                    <%
                                    int len = res.getInt(3);
                                    out.println(len);
                                    %>
                              </a><%
                             %>
                       </td>


                 </tr>
                 <%
            }



            %>
      </table>
</center>


</body>
</html>
