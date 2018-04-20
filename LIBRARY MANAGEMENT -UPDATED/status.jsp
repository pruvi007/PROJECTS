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
            <style>
            .footer {
                      position: fixed;
                      
                      bottom: 0;
                      width: 100%;
                      background-color: #2586a3;
                      color: white;
                      text-align: center;
                  }

                   #log{
                        position:fixed;
                        top:5px;
                        left:1200px;
                        z-index: 10009;
                  }
                

                .carousel-inner{
                  width:100%;
                  max-height:300px;
                }

                .modal-dialog {

                  width: 900px; /* New width for default modal */
                }

                .modal-sm {

                   width: 500px; /* New width for small modal */
                 }

                 /* The Modal (background) */
                .modal {
                    display: none; /* Hidden by default */
                    position: fixed; /* Stay in place */
                    z-index: 10000; /* Sit on top */
                    padding-top: 100px; /* Location of the box */
                    left: 0;
                    top: 0;
                    width: 100%; /* Full width */
                    height: 100%; /* Full height */
                    overflow: auto; /* Enable scroll if needed */
                    background-color: rgb(0,0,0); /* Fallback color */
                    background-color: rgba(0,0,0,0.9); /* Black w/ opacity */
                }

                /* Modal Content (image) */
                .modal-content {
                    margin: auto;
                    display: block;
                    width: 80%;
                    max-width: 700px;
                }

                /* Caption of Modal Image */
                #caption {
                    margin: auto;
                    display: block;
                    width: 80%;
                    max-width: 700px;
                    text-align: center;
                    color: #ccc;
                    padding: 10px 0;
                    height: 150px;
                }

                /* Add Animation */
                .modal-content, #caption {    
                    -webkit-animation-name: zoom;
                    -webkit-animation-duration: 0.6s;
                    animation-name: zoom;
                    animation-duration: 0.6s;
                }

                @-webkit-keyframes zoom {
                    from {-webkit-transform:scale(0)} 
                    to {-webkit-transform:scale(1)}
                }

                @keyframes zoom {
                    from {transform:scale(0)} 
                    to {transform:scale(1)}
                }

                /* The Close Button */
                .close {
                    position: absolute;
                    top: 15px;
                    right: 35px;
                    color: #f1f1f1;
                    font-size: 40px;
                    font-weight: bold;
                    transition: 0.3s;
                }

                .close:hover,
                .close:focus {
                    color: #bbb;
                    text-decoration: none;
                    cursor: pointer;
                }

                /* 100% Image Width on Smaller Screens */
                @media only screen and (max-width: 700px){
                    .modal-content {
                        width: 100%;
                    }
                }



                 /* Style the video: 100% width and height to cover the entire window */
              
                body
                {
                  background-image:url("lines.jpg");
                  
                  background-size: 100%;
                }
                .carousel-inner{
                  width:100%;
                  max-height:400px;
                }
                #wrapper {
                  top: 700px;
                  left: 30px;
                  position: absolute;
                  
                }
                #wrapper2 {
                  top: 700px;
                  right: 30px;
                  position: absolute;
                  
                }

                .navbar {
                    height: 80px;
                    display: block;
                    position: fixed;
                    z-index: 10000;
                }
                #img1
                {
                    top:5px;
                    left:30px;
                    position: fixed;
                    z-index: 10005;
                }

                #img2
                {
                    top:5px;
                    left:100px;
                    position: fixed;
                    z-index: 10005;
                }

                #img3
                {
                    top:5px;
                    left:170px;
                    position: fixed;
                    z-index: 10005;
                }
                #btn1
                {
                  background:transparent;
                  height:30px; width:30px;
                  border:none;
                }

            </style>
            

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
<div id="log">
            <div class="container">
            <a href="login.jsp" class="btn btn-warning">
             <span class="glyphicon glyphicon-log-out"></span>&nbsp&nbspLog out
             </a>
            </p> 
            </div>
            </div>


 <!--- NAVBAR and TEAM INFO -->
        
         <div id="img1">
          <button id="btn1" data-toggle="modal" data-target="#myModal" >
                    <img src = 'ashok.jpg' class="img-rounded" width="200%">
          </button>
          </div>
         

                  <div id="myModal" class="modal fade"  role="dialog" >
                    <div class="modal-dialog">
                   
                      <div class="modal-content">
                          <div class="modal-body">
                              <center><img src="ashok.jpg" class="img-responsive" width="60%">
                              <font size="5" face="courier new"><b>ASHOK KUMAR MEGHWAL</b></font></center>
                          </div>
                           
                      </div>
                     
                    </div>
                  </div>

          <div id="img2">
          <button id="btn1" data-toggle="modal" data-target="#myModal2" >
                    <img src = 'pruvi1.jpg' class="img-rounded" width="210%">
          </button>
          </div>
                  <div id="myModal2" class="modal fade"  role="dialog" >
                    <div class="modal-dialog">
                   
                      <div class="modal-content">
                          <div class="modal-body">
                              <center><img src="pruvi.jpg" class="img-responsive" width="40%">
                              <font size="5" face="courier new"><b>PRAVEEN KUMAR</b></font></center>
                          </div>
                           
                      </div>
                     
                    </div>
                  </div>

          <div id="img3">
          <button id="btn1" data-toggle="modal" data-target="#myModal3" >
                    <img src = 'vikas.jpg' class="img-rounded" width="300%">
          </button>
          </div>
                  <div id="myModal3" class="modal fade"  role="dialog" >
                    <div class="modal-dialog">
                   
                      <div class="modal-content">
                          <div class="modal-body">
                              <center><img src="vikas.jpg" class="img-responsive" width="100%">
                              <font size="5" face="courier new"><b>VIKASH SINGH</b></font></center>
                          </div>
                           
                      </div>
                     
                    </div>
                  </div>
        
         <nav class="navbar-fixed-top bg-dark" style="background-color: black;">
          
                <center><button class = "btn btn-primary btn-lg" disabled>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbspLIBRARY&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp</button></center>
                
        </nav>


        <!--END NAVBAR and TEAM INFO-->

       <center>

       <br><br>
       <!--PANEL-->
        <center><div class="mx-auto" style="width: 1000px;">
                  <div class="panel panel-primary">
                    <div class="panel-heading">
                      <h1 class="panel-title"><h1><center><h1>STATUS OF ISSUED BOOKS</h1></center></h1></h1></div>
                      <div class="panel-body">


      <hr>

      <!--<table class="table table-striped" >
            <tr class ="active">
                  <th><center>S.NO</th>
                  <th><center>ID</th>
                  <th><center>NAME</th>
                  <th><center>BOOKS</th>

            </tr>-->
      <%
            


            stmt = connection.createStatement();
            String st[] = request.getParameterValues("book");

            if(st.length>3)
            {
                %><font size="4" face="courier new">PLEASE SELECT AT MOST 3!!</font><br>
                  <a href="login.jsp"><button class="btn btn-danger"><font size="4" face="courier new">BACK</font></button></a><%
            }
            else
            {


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
            /*while(res.next())
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
                       <td><center><a href="show_books.jsp?name=<%=(nam)%>&si=<%=(res.getInt(3))%>"><button class="btn btn-success"><b><font size="4" color="White" face="Courier New">&nbsp&nbsp&nbsp&nbspVIEW
                             <%

                                    %>

                                    
                                    <%
                                    int len = res.getInt(3);
                                    //out.println(len);
                                    %>
                              &nbsp&nbsp&nbsp&nbsp</font></b></button</a><%
                             %>
                       </td>


                 </tr>
                 <%
            }*/





            %>
           <div id="img4">
          <button id="btn4"  class = "btn btn-danger" data-toggle="modal" data-target="#myModal444" >
                    <font size="4" face="courier new"><b>VIEW YOUR BOOKS</b></font>
          </button>
          </div>
         

                  <div id="myModal444" class="modal fade"  role="dialog" >
                    <div class="modal-dialog">
                   
                      <div class="modal-content">
                          <div class="modal-body">
                          <%
                              res = stmt.executeQuery("select * from "+first);
                              %>
                              <table class="table table-striped">
                              <tr class="active">
                                <th>SNO</th>
                                <th><center>NAME</th>
                                </tr>
                               
                                <%
                               
                              while(res.next())
                              {
                                  String nam = res.getString(2);
                                  %>
                                   <tr>
                                   <td><font size="4" face="courier new"><%out.print(c++);%></font></td>
                                  <td><center><font size="4" face="courier new"><b><%out.print(nam);%></b></font></td>
                                   </tr>
                                  <%
                              }

                          %>  
                         
                          </table>

                              
                          </div>
                           
                      </div>
                     
                    </div>
                  </div>
     
</center>

<%
    //LOG TABLE UPDATION
             prep = connection.prepareStatement("insert into LOG values(?,?)");
                       
                        res = stmt.executeQuery("select localtime()");
                        res.next();
                        String ccur = res.getString(1);
                        prep.setString(1,ccur);
                        String ev = "VIEWED STATUS";
                         prep.setString(2,ev);
                        prep.executeUpdate();
                      }

%>
</button></a></center></td></font></b></center></td></font></b></center></td></font></b></center></td></tr></center></th></center></th></center></th></center></th></tr></table></div></div></div></center></center>

<br><br>
<div class="footer">
              <font size="2" face="courier new"><b>LIBRARY MANAGEMENT SYSTEM</font></b><br><font size="2" face="courier new">PRAVEEN ASHOK VIKASH<br></font>
            </div>

<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
      <script src = "https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
      
      <!-- Include all compiled plugins (below), or include individual files as needed -->
      <script src = "//maxcdn.bootstrapcdn.com/bootstrap/3.3.1/js/bootstrap.min.js"></script>


</body>
</html>
