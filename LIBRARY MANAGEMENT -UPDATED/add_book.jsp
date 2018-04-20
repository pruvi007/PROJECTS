<%@ page import = "java.io.*" %>
<%@ page import = "java.sql.*" %>
<%@ page import = "java.util.*" %>


<html>
      <title>ADD_BOOK</title>
      <head>
            <!--minfied CSS compiled -->
            <link href = "//maxcdn.bootstrapcdn.com/bootstrap/3.3.1/css/bootstrap.min.css" rel = "stylesheet">

            <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css">



             <!--JAVSCRIPT TO VALIDATE-->
            <script type="text/javascript">

            function validate()
            {
                  var x = document.forms["add"]["year"].value;
                  var ff_year=0;
                  for(var i=0;i<x.length;i++)
                  {
                        if(x.charAt(i)>='0' && x.charAt(i)<='9')
                        {
                              continue;
                        }
                        else
                        {
                              ff_year=1;
                              break;
                        }
                  }

                  if(ff_year==1)
                  {
                        alert("WRONG YEAR!!!\nERROR");
                        return false;

                  }
                  if(ff_year==0)
                  {
                         var year = parseInt(x);
                              var f_year=0;
                              if(year==0 || x.length!=4)
                                    f_year=1;
                        if(f_year==1)
                        {
                              alert("WRONG YEAR!!!\nERROR");
                              return false;
                        }
                  }
                 
                  var f_num=0,ff_num=0;
                  var y = document.forms["add"]["num"].value;
                  for(var i=0;i<y.length;i++)
                  {
                        if(y.charAt(i)>='0' && y.charAt(i)<='9')
                              continue;
                        else
                        {
                              ff_num=1;
                              break;
                        }
                  }
                  if(ff_num==1)
                  {
                        alert("NUMBER OF COPIES FIELD, ERROR!!");
                        return false;
                  }
                  if(ff_num==0)
                  {
                         var num = parseInt(y);
                         if(num>0 && num<=20)
                              continue;
                        else {
                              f_num=1;
                        }
                        if(f_num==1)
                        {
                              alert("NUMBER OF COPIES FIELD, ERROR!!");
                              return false;
                        }
                  }
                  var z = document.forms["add"]["auth"].value;
                  var f_auth=0;
                  for(var i=0;i<z.length;i++)
                  {
                        if((z.charAt(i)>='a' && z.charAt(i)<='z') || (z.charAt(i)>='A' && z.charAt(i)<='Z'))
                              continue;
                        else
                        {
                              f_auth=1;
                              break;
                        }
                  }
                  if(f_auth==1)
                  {
                        alert("AUTHOR NAME HAS ERROR");
                        return false;
                  }
                  var a = document.forms["add"]["isbn"].value;
                  var f_isbn=0;
                  for(var i=0;i<a.length;i++)
                  {
                        if(a.charAt(i)>='0' && a.charAt(i)<='9')
                              continue;
                        else
                        {
                              f_isbn=1;
                              break;

                        }
                  }
                  if(f_isbn==1)
                  {
                        alert("ISBN HAS ERROR!!");
                        return false;
                  }
                  //document.write(f_num+" "+ff_num+" "+f_year+" "+f_auth+" "+f_isbn);
                  if(f_num==1 || ff_num==1 || f_year==1 || f_auth==1 || f_isbn==1 || ff_year==1)
                  {
                        alert("SOME FIELDS ARE WRONG!!");
                        return false;
                  }
                  else
                  {
                        alert("ALL INPUTS OK!\nREDIRECTING..");
                        return true;
                  }
                 

            }
            

      </script>






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

                  #log2{
                        position:fixed;
                        top:5px;
                        left:1100px;
                        z-index: 10009;
                  }
                
                .carousel-inner{
                  width:100%;
                  max-height:300px;
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

                .select-style {
                      border: 4px solid indigo;
                      width: 400px;
                      border-radius: 3px;
                      overflow: hidden;
                      font-family: courier new;
                      font-weight: bold;
                      
                  }

                  .select-style select {
                      padding: 5px 8px;
                      width: 130%;
                      border: none;
                      box-shadow: none;
                      background: transparent;
                      background-image: none;
                      -webkit-appearance: none;
                  }

                  .select-style select:focus {
                      outline: none;
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


%>

<body>

<!--LOG OUT-->

 <div id="log2">
            <div class="container">
            <a href="admin_res.jsp" class="btn btn-warning">
             <span class="glyphicon glyphicon-log-out"></span>&nbsp&nbspADMIN
             </a>
            </p> 
            </div>
            </div>
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
        <br><br>


       <!--PANEL-->
      <br>
      <center><div class="mx-auto" style="width: 1000px;">
                         <div class="panel panel-primary">
                        <div class="panel-heading">
                        <h1 class="panel-title"><h1><center><b><h1>ADD BOOK</h1></b></center></h1></h1></div>
                        <div class="panel-body">

                        <script>
                        alert("ADD BOOK");
                        </script>
      <!--JAVSCRIPT TO VALIDATE-->
      <script type="text/javascript">

            function validate()
            {
                  var x = document.forms["add"]["year"].value;
                  var ff_year=0;
                  for(var i=0;i<x.length;i++)
                  {
                        if(x.charAt(i)>='0' && x.charAt(i)<='9')
                        {
                              continue;
                        }
                        else
                        {
                              ff_year=1;
                              break;
                        }
                  }

                  if(ff_year==1)
                  {
                        alert("WRONG YEAR!!!\nERROR");
                        return false;

                  }
                  if(ff_year==0)
                  {
                         var year = parseInt(x);
                              var f_year=0;
                              if(year==0 || x.length!=4)
                                    f_year=1;
                        if(f_year==1)
                        {
                              alert("WRONG YEAR!!!\nERROR");
                              return false;
                        }
                  }
                 
                  var f_num=0,ff_num=0;
                  var y = document.forms["add"]["num"].value;
                  for(var i=0;i<y.length;i++)
                  {
                        if(y.charAt(i)>='0' && y.charAt(i)<='9')
                              continue;
                        else
                        {
                              ff_num=1;
                              break;
                        }
                  }
                  if(ff_num==1)
                  {
                        alert("NUMBER OF COPIES FIELD, ERROR!!");
                        return false;
                  }
                  if(ff_num==0)
                  {
                         var num = parseInt(y);
                         if(num>0 && num<=20)
                              continue;
                        else {
                              f_num=1;
                        }
                        if(f_num==1)
                        {
                              alert("NUMBER OF COPIES FIELD, ERROR!!");
                              return false;
                        }
                  }
                  var z = document.forms["add"]["auth"].value;
                  var f_auth=0;
                  for(var i=0;i<z.length;i++)
                  {
                        if((z.charAt(i)>='a' && z.charAt(i)<='z') || (z.charAt(i)>='A' && z.charAt(i)<='Z'))
                              continue;
                        else
                        {
                              f_auth=1;
                              break;
                        }
                  }
                  if(f_auth==1)
                  {
                        alert("AUTHOR NAME HAS ERROR");
                        return false;
                  }
                  var a = document.forms["add"]["isbn"].value;
                  var f_isbn=0;
                  for(var i=0;i<a.length;i++)
                  {
                        if(a.charAt(i)>='0' && a.charAt(i)<='9')
                              continue;
                        else
                        {
                              f_isbn=1;
                              break;

                        }
                  }
                  if(f_isbn==1)
                  {
                        alert("ISBN HAS ERROR!!");
                        return false;
                  }
                  //document.write(f_num+" "+ff_num+" "+f_year+" "+f_auth+" "+f_isbn);
                  if(f_num==1 || ff_num==1 || f_year==1 || f_auth==1 || f_isbn==1 || ff_year==1)
                  {
                        alert("SOME FIELDS ARE WRONG!!");
                        return false;
                  }
                  else
                  {
                        alert("ALL INPUTS OK!\nREDIRECTING..");
                        return true;
                  }
                 

            }
            

      </script>





      
      <form class="form-inline" action = "added.jsp" name="add"  onsubmit="return validate()" method="post">
            <center><font size="4" face="Courier New"><b>Name<br><input type = "text" name="name" class="form-control" placeholder="NAME" size="50%" required="required" style="font-size:15px;font-family:Courier New;font-weight: bold;"/></b></font><br>

            <center><font size="4" face="Courier New"><b>Year<br><input type = "text" name = "year" class="form-control" placeholder="YEAR" size="50%" required="required" style="font-size:15px;font-family:Courier New;font-weight: bold;"/></b></font><br>

            <br>
            <font size="4" face="Courier New"><b>Language</b></font>&nbsp&nbsp&nbsp&nbsp
            <div class="select-style">
             <select name="lang" id="lang">
              <option value="GERMAN" selected><font size="4" face="Courier New"><b>GERMAN</option>
              <option value="ENGLISH"><font size="4" face="Courier New"><b>ENGLISH</option>
              <option value="SPANISH"><font size="4" face="Courier New"><b>SPANISH</option>
              <option value="MANDARIN"><font size="4" face="Courier New"><b>MANDARIN</option>
              <option value="BHOJPURI"><font size="4" face="Courier New"><b>BHOJPURI</option>
              <option value="RUSSIAN"><font size="4" face="Courier New"><b>RUSSIAN</option>
              <option value="HINDI"><font size="4" face="Courier New"><b>HINDI</option>
            </select> 
            </div>
            <br>

            
            <font size="4" face="Courier New"><b>ID</b></font>&nbsp&nbsp&nbsp&nbsp
            <div class="select-style">
             <select name="id" id="id">
              <option value="101" selected><font size="4" face="Courier New"><b>101</option>
              <option value="102"><font size="4" face="Courier New"><b>102</option>
              <option value="103"><font size="4" face="Courier New"><b>103</option>
              <option value="104"><font size="4" face="Courier New"><b>104</option>
              <option value="105"><font size="4" face="Courier New"><b>105</option>
              <option value="106"><font size="4" face="Courier New"><b>106</option>
              <option value="107"><font size="4" face="Courier New"><b>107</option>
            </select> 
            </div>
            <br>
           

            

            <font size="4" face="Courier New"><b>Number OF Copies<br><input type="text" name="num" class="form-control" placeholder="COPIES" size="50%" required="required" style="font-size:15px;font-family:Courier New;font-weight: bold;"/></b></font><br>

             <font size="4" face="Courier New"><b>AUTHOR<br><input type="text" name="auth" class="form-control" placeholder="AUTHOR" size="50%" required="required" style="font-size:15px;font-family:Courier New;font-weight: bold;"/></b></font><br>

              <font size="4" face="Courier New"><b>ISBN<br><input type="text" name="isbn" class="form-control" placeholder="ISBN" size="50%" required="required" style="font-size:15px;font-family:Courier New;font-weight: bold;"/></b></font><br>
              <br><br>
            <button class = "btn btn-danger" type = "submit" value="Submit" name="submit"><h4>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp<b>SUBMIT</b>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp</h4></button>
      </form>
      <%
            /*Scanner scan = new Scanner(System.in);
            out.println("Enter The Name: ");
            String name = scan.next();
            out.println("Enter Year: ");
            String year = scan.next();
            out.println("Enter Language: ");
            String lang = scan.next();
            out.println("Enter ID: ");
            int id = scan.nextInt();
            out.println("Enter Actual Copies: ");
            int ac = scan.nextInt();
            out.println("Enter Remainging Copies: ");
            int rem = scan.nextInt();*/





       %>

       </b></font></option></b></font></option></b></font></option></b></font></option></b></font></option></b></font></option></b></font></option></select></div></b></font></option></b></font></option></b></font></option></b></font></option>

       <div class="footer">
              <font size="2" face="courier new"><b>LIBRARY MANAGEMENT SYSTEM</font></b><br><font size="2" face="courier new">PRAVEEN ASHOK VIKASH<br></font>
            </div>

         <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
      <script src = "https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
      
      <!-- Include all compiled plugins (below), or include individual files as needed -->
      <script src = "//maxcdn.bootstrapcdn.com/bootstrap/3.3.1/js/bootstrap.min.js"></script>
 </body>
</html>
