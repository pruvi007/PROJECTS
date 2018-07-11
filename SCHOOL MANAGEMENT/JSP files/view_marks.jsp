<%@ page import = "java.io.*" %>
<%@ page import = "java.sql.*" %>
<%@ page import = "java.util.*" %>

<html>
<title>VIEW_MARKS</title>
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






             <style>
                  
             	body{
             		
             		background-size: 120%;
             	}
             	.panel-header{
             		color:white;
             		background-color: black;
             		
             		border-color: black;
             		

             	}
             	#app_clock
             	{
             		position: fixed;
             		top:1%;
             		left:3%;
             	}


                 
                  
                  #quote
                  {
                        position: fixed;
                        top:2%;
                        left:42%;

                  }

                  .dropbtn {
                      background-color: #3498DB;
                      color: white;
                      padding: 16px;
                      font-size: 16px;
                      border: none;
                      cursor: pointer;
                  }

                  /* Dropdown button on hover & focus */
                  .dropbtn:hover, .dropbtn:focus {
                      background-color: #2980B9;
                  }

                  /* The container <div> - needed to position the dropdown content */
                  .dropdown {
                      position: relative;
                      display: inline-block;
                  }

                  /* Dropdown Content (Hidden by Default) */
                  .dropdown-content {
                      display: none;
                      position: absolute;
                      background-color: #f1f1f1;
                      min-width: 160px;
                      box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
                      z-index: 1;
                  }

                  /* Links inside the dropdown */
                  .dropdown-content a {
                      color: black;
                      padding: 12px 16px;
                      text-decoration: none;
                      display: block;
                  }

                  /* Change color of dropdown links on hover */
                  .dropdown-content a:hover {background-color: #ddd}

                  /* Show the dropdown menu (use JS to add this class to the .dropdown-content container when the user clicks on the dropdown button) */
                  .show {display:block;}

                   @media only screen and (max-width: 700px){
                      .modal-content {
                          width: 100%;
                      }
                  }

                  .modal-content {
                    position: center;
                    margin: auto;
                    display: block;
                    width: 130%;
                    max-width: 1000px;
                }

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
                .modal-header
                  {    
     
                        background-color: #333;
                  }


                  .modal-backdrop {
                    z-index: -1;
                  }

                   .w-auto {
                        width: auto;
                    }
                  td{
                      font-family: courier new ;
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
      String cl = request.getParameter("data");
        //String cl = "11";
      if(cl.equals("11"))
      {
            res = stmt.executeQuery("select * from marks where class='I'");
            int c = 1;
            %>
            <font size="6" face="courier new"><b>CLASS I_RESULT</b></font><br><br>
            <table class = "table table-striped table-bordered table-responsive w-auto" width="20%">
            <tr class="active">
              <th><font size="3" face="courier new">SNO</th>
              <th><font size="3" face="courier new">NAME</th>
              <th><font size="3" face="courier new">ENG</th>
              <th><font size="3" face="courier new">HINDI</th>
              <th><font size="3" face="courier new">MATHS</th>
              <th><font size="3" face="courier new">SCIENCE</th>
              <th><font size="3" face="courier new">SOCIAL</th>
              <th><font size="2" face="courier new">OBTAINED<br>MARKS</th>
              <th><font size="2" face="courier new">TOTAL<br>MARKS</th>
              <th><font size="3" face="courier new">PERCENTAGE</th>
            </tr>
            
            <%
            while(res.next())
            {
            
            
              String name = res.getString(2);
              int eng = res.getInt(3);
              int hindi = res.getInt(4);
              int maths = res.getInt(5);
              int sci = res.getInt(6);
              int soc = res.getInt(7);
              int obt = eng + hindi + maths+sci+soc;
              int tot = 500;
              double per = ((double)obt/(double)tot)*100;
              %>
              <tr>
              <td><%out.print(c++);%></td>
              <td><b><%out.print(name.toUpperCase());%></b></td>
              <td><%out.print(eng);%></td>
              <td><%out.print(hindi);%></td>
              <td><%out.print(maths);%></td>
              <td><%out.print(sci);%></td>
              <td><%out.print(soc);%></td>
              <td><b><%out.print(obt);%></b></td>
              <td><%out.print(tot);%></td>
              <td><b><%out.print(per);%></b></td>
              </tr><%
              
            }
            %>
            
            </table>
            <%
    
      }

      else if(cl.equals("12"))
      {
            res = stmt.executeQuery("select * from marks where class='II'");
            int c = 1;
            %>
            <font size="6" face="courier new"><b>CLASS II_RESULT</b></font><br><br>
            <table class = "table table-striped table-bordered table-responsive w-auto" width="20%">
            <tr class="active">
              <th><font size="3" face="courier new">SNO</th>
              <th><font size="3" face="courier new">NAME</th>
              <th><font size="3" face="courier new">ENG</th>
              <th><font size="3" face="courier new">HINDI</th>
              <th><font size="3" face="courier new">MATHS</th>
              <th><font size="3" face="courier new">SCIENCE</th>
              <th><font size="3" face="courier new">SOCIAL</th>
              <th><font size="2" face="courier new">OBTAINED<br>MARKS</th>
              <th><font size="2" face="courier new">TOTAL<br>MARKS</th>
              <th><font size="3" face="courier new">PERCENTAGE</th>
            </tr>
            
            <%
            while(res.next())
            {
            
            
              String name = res.getString(2);
              int eng = res.getInt(3);
              int hindi = res.getInt(4);
              int maths = res.getInt(5);
              int sci = res.getInt(6);
              int soc = res.getInt(7);
              int obt = eng + hindi + maths+sci+soc;
              int tot = 500;
              double per = ((double)obt/(double)tot)*100;
              %>
              <tr>
              <td><%out.print(c++);%></td>
              <td><b><%out.print(name.toUpperCase());%></b></td>
              <td><%out.print(eng);%></td>
              <td><%out.print(hindi);%></td>
              <td><%out.print(maths);%></td>
              <td><%out.print(sci);%></td>
              <td><%out.print(soc);%></td>
              <td><b><%out.print(obt);%></b></td>
              <td><%out.print(tot);%></td>
              <td><b><%out.print(per);%></b></td>
              </tr><%
              
            }
            %>
            
            </table>
            <%
    
      }

      else if(cl.equals("13"))
      {
            res = stmt.executeQuery("select * from marks where class='III'");
            int c = 1;
            %>
            <font size="6" face="courier new"><b>CLASS III_RESULT</b></font><br><br>
            <table class = "table table-striped table-bordered table-responsive w-auto" width="20%">
            <tr class="active">
              <th><font size="3" face="courier new">SNO</th>
              <th><font size="3" face="courier new">NAME</th>
              <th><font size="3" face="courier new">ENG</th>
              <th><font size="3" face="courier new">HINDI</th>
              <th><font size="3" face="courier new">MATHS</th>
              <th><font size="3" face="courier new">SCIENCE</th>
              <th><font size="3" face="courier new">SOCIAL</th>
              <th><font size="2" face="courier new">OBTAINED<br>MARKS</th>
              <th><font size="2" face="courier new">TOTAL<br>MARKS</th>
              <th><font size="3" face="courier new">PERCENTAGE</th>
            </tr>
            
            <%
            while(res.next())
            {
            
            
              String name = res.getString(2);
              int eng = res.getInt(3);
              int hindi = res.getInt(4);
              int maths = res.getInt(5);
              int sci = res.getInt(6);
              int soc = res.getInt(7);
              int obt = eng + hindi + maths+sci+soc;
              int tot = 500;
              double per = ((double)obt/(double)tot)*100;
              %>
              <tr>
              <td><%out.print(c++);%></td>
              <td><b><%out.print(name.toUpperCase());%></b></td>
              <td><%out.print(eng);%></td>
              <td><%out.print(hindi);%></td>
              <td><%out.print(maths);%></td>
              <td><%out.print(sci);%></td>
              <td><%out.print(soc);%></td>
              <td><b><%out.print(obt);%></b></td>
              <td><%out.print(tot);%></td>
              <td><b><%out.print(per);%></b></td>
              </tr><%
              
            }
            %>
            
            </table>
            <%
    
      }

      else if(cl.equals("14"))
      {
            res = stmt.executeQuery("select * from marks where class='IV'");
            int c = 1;
            %>
            <font size="6" face="courier new"><b>CLASS IV_RESULT</b></font><br><br>
            <table class = "table table-striped table-bordered table-responsive w-auto" width="20%">
            <tr class="active">
              <th><font size="3" face="courier new">SNO</th>
              <th><font size="3" face="courier new">NAME</th>
              <th><font size="3" face="courier new">ENG</th>
              <th><font size="3" face="courier new">HINDI</th>
              <th><font size="3" face="courier new">MATHS</th>
              <th><font size="3" face="courier new">SCIENCE</th>
              <th><font size="3" face="courier new">SOCIAL</th>
              <th><font size="2" face="courier new">OBTAINED<br>MARKS</th>
              <th><font size="2" face="courier new">TOTAL<br>MARKS</th>
              <th><font size="3" face="courier new">PERCENTAGE</th>
            </tr>
            
            <%
            while(res.next())
            {
            
            
              String name = res.getString(2);
              int eng = res.getInt(3);
              int hindi = res.getInt(4);
              int maths = res.getInt(5);
              int sci = res.getInt(6);
              int soc = res.getInt(7);
              int obt = eng + hindi + maths+sci+soc;
              int tot = 500;
              double per = ((double)obt/(double)tot)*100;
              %>
              <tr>
              <td><%out.print(c++);%></td>
              <td><b><%out.print(name.toUpperCase());%></b></td>
              <td><%out.print(eng);%></td>
              <td><%out.print(hindi);%></td>
              <td><%out.print(maths);%></td>
              <td><%out.print(sci);%></td>
              <td><%out.print(soc);%></td>
              <td><b><%out.print(obt);%></b></td>
              <td><%out.print(tot);%></td>
              <td><b><%out.print(per);%></b></td>
              </tr><%
              
            }
            %>
            
            </table>
            <%
    
      }

      else if(cl.equals("15"))
      {
            res = stmt.executeQuery("select * from marks where class='V'");
            int c = 1;
            %>
            <font size="6" face="courier new"><b>CLASS V_RESULT</b></font><br><br>
            <table class = "table table-striped table-bordered table-responsive w-auto" width="20%">
            <tr class="active">
              <th><font size="3" face="courier new">SNO</th>
              <th><font size="3" face="courier new">NAME</th>
              <th><font size="3" face="courier new">ENG</th>
              <th><font size="3" face="courier new">HINDI</th>
              <th><font size="3" face="courier new">MATHS</th>
              <th><font size="3" face="courier new">SCIENCE</th>
              <th><font size="3" face="courier new">SOCIAL</th>
              <th><font size="2" face="courier new">OBTAINED<br>MARKS</th>
              <th><font size="2" face="courier new">TOTAL<br>MARKS</th>
              <th><font size="3" face="courier new">PERCENTAGE</th>
            </tr>
            
            <%
            while(res.next())
            {
            
            
              String name = res.getString(2);
              int eng = res.getInt(3);
              int hindi = res.getInt(4);
              int maths = res.getInt(5);
              int sci = res.getInt(6);
              int soc = res.getInt(7);
              int obt = eng + hindi + maths+sci+soc;
              int tot = 500;
              double per = ((double)obt/(double)tot)*100;
              %>
              <tr>
              <td><%out.print(c++);%></td>
              <td><b><%out.print(name.toUpperCase());%></b></td>
              <td><%out.print(eng);%></td>
              <td><%out.print(hindi);%></td>
              <td><%out.print(maths);%></td>
              <td><%out.print(sci);%></td>
              <td><%out.print(soc);%></td>
              <td><b><%out.print(obt);%></b></td>
              <td><%out.print(tot);%></td>
              <td><b><%out.print(per);%></b></td>
              </tr><%
              
            }
            %>
            
            </table>
            <%
    
      }

      else if(cl.equals("16"))
      {
            res = stmt.executeQuery("select * from marks where class='VI'");
            int c = 1;
            %>
            <font size="6" face="courier new"><b>CLASS VI_RESULT</b></font><br><br>
            <table class = "table table-striped table-bordered table-responsive w-auto" width="20%">
            <tr class="active">
              <th><font size="3" face="courier new">SNO</th>
              <th><font size="3" face="courier new">NAME</th>
              <th><font size="3" face="courier new">ENG</th>
              <th><font size="3" face="courier new">HINDI</th>
              <th><font size="3" face="courier new">MATHS</th>
              <th><font size="3" face="courier new">SCIENCE</th>
              <th><font size="3" face="courier new">SOCIAL</th>
              <th><font size="2" face="courier new">OBTAINED<br>MARKS</th>
              <th><font size="2" face="courier new">TOTAL<br>MARKS</th>
              <th><font size="3" face="courier new">PERCENTAGE</th>
            </tr>
            
            <%
            while(res.next())
            {
            
            
              String name = res.getString(2);
              int eng = res.getInt(3);
              int hindi = res.getInt(4);
              int maths = res.getInt(5);
              int sci = res.getInt(6);
              int soc = res.getInt(7);
              int obt = eng + hindi + maths+sci+soc;
              int tot = 500;
              double per = ((double)obt/(double)tot)*100;
              %>
              <tr>
              <td><%out.print(c++);%></td>
              <td><b><%out.print(name.toUpperCase());%></b></td>
              <td><%out.print(eng);%></td>
              <td><%out.print(hindi);%></td>
              <td><%out.print(maths);%></td>
              <td><%out.print(sci);%></td>
              <td><%out.print(soc);%></td>
              <td><b><%out.print(obt);%></b></td>
              <td><%out.print(tot);%></td>
              <td><b><%out.print(per);%></b></td>
              </tr><%
              
            }
            %>
            
            </table>
            <%
    
      }

      else if(cl.equals("17"))
      {
            res = stmt.executeQuery("select * from marks where class='VII'");
            int c = 1;
            %>
            <font size="6" face="courier new"><b>CLASS VII_RESULT</b></font><br><br>
            <table class = "table table-striped table-bordered table-responsive w-auto" width="20%">
            <tr class="active">
              <th><font size="3" face="courier new">SNO</th>
              <th><font size="3" face="courier new">NAME</th>
              <th><font size="3" face="courier new">ENG</th>
              <th><font size="3" face="courier new">HINDI</th>
              <th><font size="3" face="courier new">MATHS</th>
              <th><font size="3" face="courier new">SCIENCE</th>
              <th><font size="3" face="courier new">SOCIAL</th>
              <th><font size="2" face="courier new">OBTAINED<br>MARKS</th>
              <th><font size="2" face="courier new">TOTAL<br>MARKS</th>
              <th><font size="3" face="courier new">PERCENTAGE</th>
            </tr>
            
            <%
            while(res.next())
            {
            
            
              String name = res.getString(2);
              int eng = res.getInt(3);
              int hindi = res.getInt(4);
              int maths = res.getInt(5);
              int sci = res.getInt(6);
              int soc = res.getInt(7);
              int obt = eng + hindi + maths+sci+soc;
              int tot = 500;
              double per = ((double)obt/(double)tot)*100;
              %>
              <tr>
              <td><%out.print(c++);%></td>
              <td><b><%out.print(name.toUpperCase());%></b></td>
              <td><%out.print(eng);%></td>
              <td><%out.print(hindi);%></td>
              <td><%out.print(maths);%></td>
              <td><%out.print(sci);%></td>
              <td><%out.print(soc);%></td>
              <td><b><%out.print(obt);%></b></td>
              <td><%out.print(tot);%></td>
              <td><b><%out.print(per);%></b></td>
              </tr><%
              
            }
            %>
            
            </table>
            <%
    
      }

      else if(cl.equals("18"))
      {
            res = stmt.executeQuery("select * from marks where class='VIII'");
            int c = 1;
            %>
            <font size="6" face="courier new"><b>CLASS VIII_RESULT</b></font><br><br>
            <table class = "table table-striped table-bordered table-responsive w-auto" width="20%">
            <tr class="active">
              <th><font size="3" face="courier new">SNO</th>
              <th><font size="3" face="courier new">NAME</th>
              <th><font size="3" face="courier new">ENG</th>
              <th><font size="3" face="courier new">HINDI</th>
              <th><font size="3" face="courier new">MATHS</th>
              <th><font size="3" face="courier new">SCIENCE</th>
              <th><font size="3" face="courier new">SOCIAL</th>
              <th><font size="2" face="courier new">OBTAINED<br>MARKS</th>
              <th><font size="2" face="courier new">TOTAL<br>MARKS</th>
              <th><font size="3" face="courier new">PERCENTAGE</th>
            </tr>
            
            <%
            while(res.next())
            {
            
            
              String name = res.getString(2);
              int eng = res.getInt(3);
              int hindi = res.getInt(4);
              int maths = res.getInt(5);
              int sci = res.getInt(6);
              int soc = res.getInt(7);
              int obt = eng + hindi + maths+sci+soc;
              int tot = 500;
              double per = ((double)obt/(double)tot)*100;
              %>
              <tr>
              <td><%out.print(c++);%></td>
              <td><b><%out.print(name.toUpperCase());%></b></td>
              <td><%out.print(eng);%></td>
              <td><%out.print(hindi);%></td>
              <td><%out.print(maths);%></td>
              <td><%out.print(sci);%></td>
              <td><%out.print(soc);%></td>
              <td><b><%out.print(obt);%></b></td>
              <td><%out.print(tot);%></td>
              <td><b><%out.print(per);%></b></td>
              </tr><%
              
            }
            %>
            
            </table>
            <%
    
      }

      else if(cl.equals("19"))
      {
            res = stmt.executeQuery("select * from marks where class='IX'");
            int c = 1;
            %>
            <font size="6" face="courier new"><b>CLASS IX_RESULT</b></font><br><br>
            <table class = "table table-striped table-bordered table-responsive w-auto" width="20%">
            <tr class="active">
              <th><font size="3" face="courier new">SNO</th>
              <th><font size="3" face="courier new">NAME</th>
              <th><font size="3" face="courier new">ENG</th>
              <th><font size="3" face="courier new">HINDI</th>
              <th><font size="3" face="courier new">MATHS</th>
              <th><font size="3" face="courier new">SCIENCE</th>
              <th><font size="3" face="courier new">SOCIAL</th>
              <th><font size="2" face="courier new">OBTAINED<br>MARKS</th>
              <th><font size="2" face="courier new">TOTAL<br>MARKS</th>
              <th><font size="3" face="courier new">PERCENTAGE</th>
            </tr>
            
            <%
            while(res.next())
            {
            
            
              String name = res.getString(2);
              int eng = res.getInt(3);
              int hindi = res.getInt(4);
              int maths = res.getInt(5);
              int sci = res.getInt(6);
              int soc = res.getInt(7);
              int obt = eng + hindi + maths+sci+soc;
              int tot = 500;
              double per = ((double)obt/(double)tot)*100;
              %>
              <tr>
              <td><%out.print(c++);%></td>
              <td><b><%out.print(name.toUpperCase());%></b></td>
              <td><%out.print(eng);%></td>
              <td><%out.print(hindi);%></td>
              <td><%out.print(maths);%></td>
              <td><%out.print(sci);%></td>
              <td><%out.print(soc);%></td>
              <td><b><%out.print(obt);%></b></td>
              <td><%out.print(tot);%></td>
              <td><b><%out.print(per);%></b></td>
              </tr><%
              
            }
            %>
            
            </table>
            <%
    
      }

      else if(cl.equals("10"))
      {
            res = stmt.executeQuery("select * from marks where class='X'");
            int c = 1;
            %>
            <font size="6" face="courier new"><b>CLASS X_RESULT</b></font><br><br>
            <table class = "table table-striped table-bordered table-responsive w-auto" width="20%">
            <tr class="active">
              <th><font size="3" face="courier new">SNO</th>
              <th><font size="3" face="courier new">NAME</th>
              <th><font size="3" face="courier new">ENG</th>
              <th><font size="3" face="courier new">HINDI</th>
              <th><font size="3" face="courier new">MATHS</th>
              <th><font size="3" face="courier new">SCIENCE</th>
              <th><font size="3" face="courier new">SOCIAL</th>
              <th><font size="2" face="courier new">OBTAINED<br>MARKS</th>
              <th><font size="2" face="courier new">TOTAL<br>MARKS</th>
              <th><font size="3" face="courier new">PERCENTAGE</th>
            </tr>
            
            <%
            while(res.next())
            {
            
            
              String name = res.getString(2);
              int eng = res.getInt(3);
              int hindi = res.getInt(4);
              int maths = res.getInt(5);
              int sci = res.getInt(6);
              int soc = res.getInt(7);
              int obt = eng + hindi + maths+sci+soc;
              int tot = 500;
              double per = ((double)obt/(double)tot)*100;
              %>
              <tr>
              <td><%out.print(c++);%></td>
              <td><b><%out.print(name.toUpperCase());%></b></td>
              <td><%out.print(eng);%></td>
              <td><%out.print(hindi);%></td>
              <td><%out.print(maths);%></td>
              <td><%out.print(sci);%></td>
              <td><%out.print(soc);%></td>
              <td><b><%out.print(obt);%></b></td>
              <td><%out.print(tot);%></td>
              <td><b><%out.print(per);%></b></td>
              </tr><%
              
            }
            %>
            
            </table>
            <%
    
      }


%>
</body>
</html>