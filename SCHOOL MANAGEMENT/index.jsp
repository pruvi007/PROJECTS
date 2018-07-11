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

             <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.5.6/angular.min.js"></script>

             <style>
             	body{
             		
             	}
             	.panel-default > .panel-heading{
             			background: #333;
             		color:gray;
             	
             		
             		
             		

             	}
             	.btn
             	{
             		background-color: #323232;
             	}
             	#clock
             	{
             		position: fixed;
             		top:7%;
             		left:10%;
             	}
             	#bharti 
             	{
             		position: absolute;
             		top:4%;
             		left:30%;
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
	<script>
		alert("WELCOME TO SHIKSHA BHARTI");
	</script>
	<!--SCRIPTS ANGUALR-->

	<script>
			var app = angular.module("myApp",[]);
			app.controller('myCtrl',function($scope,$interval)
			{
				$scope.time = new Date().toLocaleTimeString();
				$interval(function()
					{
						$scope.time = new Date().toLocaleTimeString();
					},1000);
			});

			var app1 = angular.module('myApp1', []);
			app1.controller('myCtrl1', function($scope) {
				$scope.name ="";
			});

			angular.element(document).ready(function() {
			  angular.bootstrap(document.getElementById("app2"), ["myApp1"]);
			});   
	</script>

	<!--ALL SCRIPTS ABOVE-->





	<!--ANGULAR CLOCK-->        
	<div  id="clock" ng-app="myApp" ng-controller="myCtrl">
		<font size="5" face="Courier New"><b>{{time}}</b> </font>
	</div>

	<!--HEADER-->
	<center>
	<div class="container">
  	<div class="page-header">
  		 <div id="bharti">
	        <img src="logo.jpg" width="100%"/>
	      </div>
    <h1><b><font face="courier new">SHIKSHA BHARTI</font></b></h1>  
    </div>    
  </div>
  </center>
  <!--HEADER ENDS-->


		
	<!--CLOCK ENDS-->
	<br><br>


		<script>
				var request;
				function send()
				{
					var f = document.login.first.value;  
					var p = document.login.pass.value;  
					var s = f
					var url = "login_ajax.jsp?name="+s;
					if(window.XMLHttpRequest)
					{
						request = new XMLHttpRequest();
					}

					try
					{
						request.onreadystatechange = getInfo;
						request.open("GET",url,true);
						request.send();
					}
					catch(e)
					{
						alert("UNABLE TO PERFORM AJAX");
					}
				}



				function getInfo()
				{
					if(request.readyState==4)
					{
						var val = request.responseText;
						document.getElementById("ajax").innerHTML = val;
					}
				}

		</script>
		<!--LOGIN FORM-->
		<center>
		<div id = "div_login">
			<div id = "app2" ng-app="myApp1" ng-controller="myCtrl1">
			   <div  class="mx-auto" style="width: 500px;">
		          
		                <div class="panel panel-default">
		                <div class="panel-heading">
		                 <center><font size="5" face="courier new"><b>LOGIN</b></font><center></div>
		                <div class="panel-body">

		           		<!--NOT REQ VALIDATION
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
		            -->


		              <!--REDIRECT/ERROR-->

           
            	
        				 <form class = "form-inline" action = "http://localhost:8080/School/login_check.jsp" name="login">
		              <!--<table class = "table ">
		              <tr class="active ">-->
		              <center>
		              <div class = "form-group row">
		               	 <div class="col-lg-12">
		                	
		                   <font size="3" face="Courier New"><b>FIRST-NAME</b></font><br><input ng-model="name" name="first" class="form-control" placeholder="USERNAME"  onkeyup="send()" size="30%" autocomplete="off" required="required" style="font-size:15px;font-family:Courier New;font-weight: bold;">
		                    
		                    


		                    </div>
		                    <br>
		                    <br>
		                    <br>
		                    <br>
		                   <div class = "form-group row">
		                            <div class="col-lg-12">
		                   <label for = "first" class = "sr-only">Password</label>
		                    <font size="3" face="Courier New"><b>PASSWORD</b></font><br><input type="password" name="pass" id="pass" class="form-control" placeholder="PASSWORD" onkeyup="send()" size="30%" required="required" style="font-size:15px;font-family:Courier New;font-weight: bold;"/>
		                   </div></div>
		                  <br>
		                  <span id="ajax"></span>
		                  <br>
		                  
		              <tr><th><center><button class = "btn btn-danger" type="submit" value = "SUBMIT" name="submit"><h4>&nbsp&nbsp&nbsp&nbsp&nbsp&nbspSUBMIT&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp</h4></button></center></th></tr>
		            </form>
		            </div>
		            </div>
		            </div>
		         
		            </div>
		            <h2><font face="Courier new"><b>Hi {{name}} !</b></font></h2>

		            
		             </div>
		            
            </div>

            <!--ENDS HERE-->
		            
		          


            <!--LOGIN ENDS-->



            </body>
            </html>

