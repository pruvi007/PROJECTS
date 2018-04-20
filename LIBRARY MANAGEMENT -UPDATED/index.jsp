<%@ page import = "java.io.*" %>
<%@ page import = "java.sql.*" %>
<%@ page import = "java.util.*" %>

<html>
<title>LOGIN</title>
      <head>
            <!--minfied CSS compiled -->
             <script src = "https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
             <script src = "//maxcdn.bootstrapcdn.com/bootstrap/3.3.1/js/bootstrap.min.js"></script>
            <link href = "//maxcdn.bootstrapcdn.com/bootstrap/3.3.1/css/bootstrap.min.css" rel = "stylesheet">

            <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css">

            <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
            <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css%22">


            <style>

              
                  .footer {
                      position: fixed;
                      
                      bottom: 0;
                      width: 100%;
                      background-color: #2586a3;
                      color: white;
                      text-align: center;
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
                  top: 740px;
                  left: 330px;
                  position: absolute;
                  
                }
                #wrapper2 {
                  top: 740px;
                  left: 330px;
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
      <body>
      
<%
      Class.forName("com.mysql.jdbc.Driver");
      String connectionURL= "jdbc:mysql://localhost:3306/Diablo";

      Connection connection = null;
      connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/Library","root","pagal.com");

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

       <!-- <video autoplay muted loop id="myVideo">
            <source src="back.mp4" type="video/mp4">
            </video>-->


         <%
          //FINE CALCULATION

          res = stmt.executeQuery("show tables");
          String who_stu[] = new String[100];
          int c_who=0;
          while(res.next())
          {
              String table_name = res.getString(1);
              //out.println(table_name);
              res2 = stmt2.executeQuery("select NAME from STUDENT");
              int created=0;
              while(res2.next())
              {
                  String stu_name = res2.getString(1);
                  if(stu_name.length()>0 && stu_name.equalsIgnoreCase(table_name) )
                  {
                      created=1;
                      //out.print(stu_name+" "+table_name);
                      who_stu[c_who++]=table_name;                //got names of students who have issued any book
                      break;
                  }

              }
          }
          /*for(int i=0;i<c_who;i++)
            out.println(who_stu[i]+"\n");*/
          for(int i=0;i<c_who;i++)
          {
                String comp_name = who_stu[i];
                //out.println(comp_name);
                
                res2 = stmt2.executeQuery("select CURDATE()");
                res2.next();
                String cur = res2.getString(1);
                //out.println(cur);
               res = stmt.executeQuery("select END from "+comp_name);
               int sno = 1;
                while(res.next())
                {         
                          String end = res.getString(1);
                          res3 = stmt3.executeQuery("select timestampdiff(DAY,STR_TO_DATE('"+end+"', '%Y-%m-%d'),CURDATE())");
                          res3.next();
                          int diff = res3.getInt(1);
                          //out.println(diff);
                          if(diff>0)
                          {
                                  prep = connection.prepareStatement("UPDATE "+comp_name+" set FINE =  ? where SNO=?");
                                  prep.setInt(1,diff*5);
                                  prep.setInt(2,sno);
                                  prep.executeUpdate();
                          }
                          sno++;
                }
                %><%

          }

          //END FINE CALCULATION



         %>


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
        
<br><br>
          <div class="container">
            <div class="row">
                <div class="col-sm-12">

                    <div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
                        <!-- Indicators -->
                        <ol class="carousel-indicators">
                            <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
                            <li data-target="#carousel-example-generic" data-slide-to="1"></li>
                            <li data-target="#carousel-example-generic" data-slide-to="2"></li>
                        </ol>

                        <!-- Wrapper for slides -->
                        <div class="carousel-inner" role="listbox">
                            <div class="item active">
                                <img src="lms.jpg" alt="LIBRARY" >
                                <div class="carousel-caption">
                                    <h1>LMS</h1>
                                    <p>LIBRARY MANAGEMENT SYSTEM</p>
                                </div>
                            </div>
                            <div class="item">
                                <img src="lib2.jpg" alt="LIBRARY2" >
                                <div class="carousel-caption">
                                    <h1>LMS</h1>
                                    <p>LIBRARY MANAGEMENT SYSTEM</p>
                                </div>
                            </div>

                            <div class="item">
                                <img src="libr.jpg" alt="LIBRARY2" >
                                <div class="carousel-caption">
                                    <h1>LMS</h1>
                                    <p>LIBRARY MANAGEMENT SYSTEM</p>
                                </div>
                            </div>
                            
                        </div>

                      <!-- Controls -->
                      <a class="left carousel-control" href="#carousel-example-generic" role="button" data-slide="prev">
                            <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
                            <span class="sr-only">Previous</span>
                      </a>
                      <a class="right carousel-control" href="#carousel-example-generic" role="button" data-slide="next">
                            <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
                            <span class="sr-only">Next</span>
                      </a>
                    </div>
                </div>
                </div>
                

            


              
            


                 <center>

                 <div class = "jumbotron" style="background:black !important">

            <h1><font color="#0f68b3" face="courier new"><b>Library Management System</b></font></h1>
                </div>
                </div>


            <!--NAV TABS-->
            <ul class="nav nav-tabs">
              <li class="active"><a data-toggle="tab" href="#wrapper"><font size="5" face = "courier new"><b>LOGIN</b></font></a></li>
              <li><a data-toggle="tab" href="#wrapper2"><font size="5" face = "courier new"><b>REGISTER</b></font></a></li>
              
            </ul>

            <div class="tab-content">
                <div id = "wrapper" class="tab-pane fade in active">
                <div class="mx-auto" style="width: 600px;">
          
                <div class="panel panel-primary">
                <div class="panel-heading">
                  <h1 class="panel-title"><h1><b><center>LOGIN<center></b></h1></h1></div>
                <div class="panel-body">

           
              <script type="text/javascript">
                
                function myFunction() 
                {
                      var x = document.forms["login"]["first"].value;
                      var pass = document.forms["login"]["pass"].value;
                      if(x="")
                      {
                          alert("UserName Is blank.!");
                          return false;
                      }
                      if(pass="")
                      {
                          alert("Password Is Blank.!");
                          return false;
                      }
                      else
                      {
                          alert("ALL INPUTS OK!\nRedirecting.....");
                          return true;
                      }
                      
                }


            </script>




            <form class = "form-inline" action = "login_res.jsp" name="login" onsubmit="return myFunction()" method="post">
              <!--<table class = "table ">
              <tr class="active ">-->
              <center>
              <div class = "form-group row">
                  <div class="col-lg-12">
                <label for = "first" class ="sr-only">First Name</label>
                   <font size="4" face="Courier New"><b>FIRST-NAME</b></font><br><input type="text" name="first" id="first" class="form-control" placeholder="USERNAME" size="50%" required="required" style="font-size:15px;font-family:Courier New;font-weight: bold;"/>
                    </div></div>
                    <br>
                    <br>
                   <div class = "form-group row">
                            <div class="col-lg-12">
                   <label for = "first" class = "sr-only">Password</label>
                    <font size="4" face="Courier New"><b>PASSWORD</b></font><br><input type="password" name="pass" id="pass" class="form-control" placeholder="PASSWORD" size="50%" required="required" style="font-size:15px;font-family:Courier New;font-weight: bold;"/>
                   </div></div>
                  <br>
                  <br>
                   <center> <font size="4" face="Courier New"><b>Admin</b></font></font></b>&nbsp&nbsp&nbsp&nbsp&nbsp<input type="radio" name="admin" value="yes" checked/><br>

                     <font size="4" face="Courier New"><b>Student</b></font></font></b>&nbsp&nbsp&nbsp&nbsp<input type = "radio" name="admin" value="no"/>
                   <br><br>
              <tr><th><center><button class = "btn btn-danger" type="submit" value = "SUBMIT"><h4>&nbsp&nbsp&nbsp&nbsp&nbsp&nbspSUBMIT&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp</h4></button></center></th></tr>
            </form>
            </div>
            </div>
            </div>
            <br><br><br><br><br><br>
            </div>
          
            </center>
            
            <br><br>

            
            <div id = "wrapper2" class="tab-pane">
            <div class="mx-auto" style="width: 650px;">
          
             <div class="panel panel-primary">
               <div class="panel-heading">
               <h1 class="panel-title"><h1><b><center>REGISTER</center></b></h1></h1></div>
              <div class="panel-body">

           
            
            <script type="text/javascript">
                function register()
                {
                    var first = document.forms["reg"]["first"].value;
                    var f_first=0;
                    for(var i = 0;i<first.length;i++)
                    {
                          var c = first.charAt(i);
                          if((c>='a' && c<='z') || (c>='A' && c<='Z'))
                              continue;
                          else
                          {
                              f_first = 1;
                              break;
                          }
                    }
                    var f_sex = 0;

                    var sex = document.forms["reg"]["sex"].value;
                    sex = sex.toUpperCase();

                    if(sex=="MALE" || sex=="FEMALE")
                      f_sex = 1;

                    var dob = document.forms["reg"]["dob"].value;
                    var f_dob = 0;
                    var ff_dob=0;
                    for(var i = 0;i<dob.length;i++)
                    {
                        var ch = dob.charAt(i);
                        if((ch>='0' && ch<='9') || ch=='/')
                          continue;
                        else
                        {
                            f_dob=1;
                        }
                    }
                    if(f_dob==0)
                    {
                        var str = dob.split("/");
                        var year = parseInt(str[0]);
                        if(str[0].length!=4 && year>0)
                            ff_dob=1;
                        var month = parseInt(str[1]);
                        if(month<1 || month>12)
                            ffdob=1;
                        var day = parseInt(str[2]);
                        if(day<1 || day>31)
                            ff_dob = 1;
                    }
                    if(f_first==1 || f_sex==0 || f_dob==1 || ff_dob==1)
                    {
                        if(f_first==1)
                        {
                            alert("FIRSTNAME Has Wrong Format!");
                            return false;
                        }
                        if(f_sex==0)
                        {
                            alert("SEX is Undefined.!");
                            return false;
                        }
                        if(f_dob==1 || ff_dob==1)
                        {
                            alert("DOB format is Wrong!!");
                            return false;
                        }
                    }
                    else
                    {
                        alert("ALL INPUTS OKK!");
                        return true;
                    }
                }

            </script>

            <form class ="form-inline" action = "register_res.jsp" name="reg" onsubmit="return register()" method="post">
            <center>
                <div class = "form-group row">
                  <div class="col-lg-12">
                <label for = "first" class ="sr-only">First Name</label>
                   <font size="4" face="Courier New"><b>FIRST-NAME</b></font><br><input type = "text" name = "first"  id="first" class="form-control" placeholder="FIRST-NAME" size="50%" required="required" style="font-size:15px;font-family:Courier New;font-weight: bold;"/></div></div>
                  <br>
                  <br>
                  <div class = "form-group row">
                  <div class="col-lg-12">
                <label for = "first" class ="sr-only">Password</label>
                   <font size="4" face="Courier New"><b>PASSWORD</b></font><br><input type = "password" name = "pass"  id="pass" class="form-control" placeholder="PASSWORD" size="50%" required="required" style="font-size:15px;font-family:Courier New;font-weight: bold;"/></div></div>

                  <br>
                  <br>
                  <div class = "form-group row">
                  <div class="col-lg-12">
                <label for = "first" class ="sr-only">SEX</label>
                    <font size="4" face="Courier New"><b>SEX</b></font><br><input type = "text" name = "sex" id="sex" class="form-control" placeholder="SEX" size="50%" required="required" style="font-size:15px;font-family:Courier New;font-weight: bold;"/></div></div>

                   <br>
                   <br>
                   <div class = "form-group row">
                  <div class="col-lg-12">
                <label for = "first" class ="sr-only">DOB(YYYY/MM/DD)</label>
                   <font size="4" face="Courier New"><b>DOB</b></font><br><input type="text" name = "dob" id="dob" class="form-control" placeholder="DOB(YYYY/MM/DD)" size="50%" required="required" style="font-size:15px;font-family:Courier New;font-weight: bold;"/></div></div>
                  <br>
                  <br>
                  <div class = "form-group row">
                  <div class="col-lg-12">
                <label for = "first" class ="sr-only">DEPARTMENT</label>
                   <font size="4" face="Courier New"><b>DEPARTMENT</b></font><br><input type="text" name="dept" id="dept" class="form-control" placeholder="DEPARTMENT" size="50%" required="required" style="font-size:15px;font-family:Courier New;font-weight: bold;"/></div></div>


                  <br>
                  <br>
                  <button class = "btn btn-danger" input type = "submit" value="SUBMIT"><h4>&nbsp&nbsp&nbsp&nbsp&nbsp&nbspSUBMIT&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp</h4></button>
           </form>
           </center>
            </div></div></div><br><br><br><br><br><br></div></div>


           
           <div class="footer">
              <font size="2" face="courier new"><b>LIBRARY MANAGEMENT SYSTEM</font></b><br><font size="2" face="courier new">PRAVEEN ASHOK VIKASH<br></font>
            </div>
            
     



       

     <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
      <script src = "https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
      
      <!-- Include all compiled plugins (below), or include individual files as needed -->
      <script src = "//maxcdn.bootstrapcdn.com/bootstrap/3.3.1/js/bootstrap.min.js"></script>
      </body>
</html>
