<%@ page import = "java.io.*" %>
<%@ page import = "java.sql.*" %>
<%@ page import = "java.util.*" %>

<html>
<title>SCHOOL_SPA</title>
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
                            //int si = (Integer)session.getAttribute("size");
                            //int n = Integer.parseInt(si);
                            
                                    String name = request.getParameter("name");
                                    int eng = Integer.parseInt(request.getParameter("eng"));
                                    int hindi = Integer.parseInt(request.getParameter("hindi"));
                                    int math = Integer.parseInt(request.getParameter("math"));
                                    int sci = Integer.parseInt(request.getParameter("sci"));
                                    int soc = Integer.parseInt(request.getParameter("soc"));
                                    String cl = request.getParameter("cl");

                                    //out.print(name+" "+eng+" "+hindi+" "+math+" "+sci+" "+soc+" "+cl+"\n");
                                     name = name.toUpperCase();
                                    // name="'"+name+"'";
                                     //cl = "'"+cl+"'";
                                      res = stmt.executeQuery("select count(*) from marks");
                                      res.next();
                                    int c = res.getInt(1);
                                    c++;

                                    /*int n_eng = Integer.parseInt(eng);
                                    int n_hindi = Integer.parseInt(hindi);
                                    int n_math = Integer.parseInt(math);
                                    int n_sci = Integer.parseInt(sci);
                                    int n_soc = Integer.parseInt(soc);*/

                                     prep = connection.prepareStatement("update marks set ENG=?,HINDI=?,MATHS=?,SCIENCE=?,SOCIAL=? where NAME=? and CLASS=?");
                                       
                                        prep.setString(6,name);
                                        prep.setInt(1,eng);
                                        prep.setInt(2,hindi);
                                        prep.setInt(3,math);
                                        prep.setInt(4,sci);
                                        prep.setInt(5,soc);
                                        prep.setString(7,cl);
                                        
                                       
                                        prep.executeUpdate();
                            
                    

                            response.sendRedirect("school_spa.jsp#!#menu2");
                            //out.print("Student Added Successfully!");

                            %>
                            </body>

</html>
