<html>
<head>
    <meta charset="UTF-8">
    <title>Register</title>

    
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
    <link href='https://fonts.googleapis.com/css?family=Satisfy' rel='stylesheet' type='text/css'>
    <!-- <link rel="stylesheet" type="text/css" href="{% static 'esop/style.css' %}"/> -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
    <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
    <!-- <script src="{% static 'music/js/main.js' %}"></script> -->
    <style>
         #data
          {
            position: absolute;
            top:26%;
            left:55%;
          }
          
          
    </style>
</head>
<body>
<nav class="navbar navbar">
    <div class="container-fluid">

     

        <!-- Items -->
        <div class="collapse navbar-collapse" id="topNavBar" style="background-color: black;">
            <ul class="nav navbar-nav">
                <li ><a href="/register"><font color='white'>Register</font></a></li>
                <li ><a href="/login"><font color='white'>Log In</font></a></li>
            </ul>
        </div>

    </div>
</nav>

<div class="container-fluid" style="position: absolute;top:20%;left:35%;width:30%;">

   
            <div class="panel panel-default">
                <h3>&nbsp&nbsp&nbsp&nbsp&nbspRegister</h3>
                <center>
                <div class="panel-body">
                    
                    
                        <div class="form-group">
                            
                            <div class="col-sm-10">
                                 <span class="glyphicon glyphicon-user">&nbsp<input id="id_name" size="25%" maxlength="30" name="name" type="text" placeholder="NAME" title="Must be atleast 4 characters long. Contains only alphanumeric characters" onkeyup="checkAndEnableButton()" 
                                    style="font-family: Courier New;font-size: 15px;border: none; border-bottom: 2px solid black;" required> 
                            </div>
                            
                        </div>
                        
                        <div class="form-group">
                            <br>
                            <div class="col-sm-10">
                                 <span class="glyphicon glyphicon-user">&nbsp<input id="id_username" size="25%" maxlength="30" name="username" type="text" placeholder="USERNAME" title="Must be atleast 4 characters long. Contains only alphanumeric characters" onkeyup="checkAndEnableButton()" 
                                    style="font-family: Courier New;font-size: 15px;border: none; border-bottom: 2px solid black;"> 
                            </div>
                            <div id="reg_username"></div>
                        </div>
                        
                        <div class="form-group">
                            <br>
                            <div class="col-sm-10">
                                <span class="glyphicon glyphicon-envelope">&nbsp<input id="id_email" size="25%" maxlength="50" name="email" type="text" placeholder="EMAIL" title="Must be a valid email." onkeyup="checkAndEnableButton()" 
                                    style="font-family: Courier New;font-size: 15px;border: none; border-bottom: 2px solid black;">
                            </div>
                            <div id="reg_email"></div>
                        </div>
                        
                        <div class="form-group">
                            <br>
                            <div class="col-sm-10">
                                <span class="glyphicon glyphicon-asterisk">&nbsp<input id="id_password" size="25%" maxlength="30" name="password" type="password" placeholder="PASSWORD" title="Must be atleast 4 characters long."  onkeyup="checkAndEnableButton()" 
                                    style="font-family: Courier New;font-size: 15px;border: none; border-bottom: 2px solid black;">
                            </div>
                        </div>
                        
                        <div class="form-group">
                            <br>
                            <div class="col-sm-10">
                                <span class="glyphicon glyphicon-asterisk">&nbsp<input id="id_password2" size="25%" maxlength="30" name="password2" type="password" placeholder="CONFIRM-PASSWORD" title="Must be atleast 4 characters long." onkeyup="checkAndEnableButton()" 
                                    style="font-family: Courier New;font-size: 15px;border: none; border-bottom: 2px solid black;">
                            </div>
                            <div id = "reg_password"></div>
                        </div>
                        
                        </center>
                        <div class="form-group">
                            
                                &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp<button type="submit" class="btn btn-success" id="id_submit">Submit</button>

                            
                        </div>
                        <div id="reg_submit"></div>
                    
                    <br>
                </div>


                <div class="panel-footer">
                    Already have an account? <a href="/login">Click here</a> to log in.
                </div>
            </div>
    

</div>


<script>
        $.ajaxSetup({
            headers: {
                'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
                    }
        });

        $("#id_username").change(function () {

          var username = $("#id_username").val();
          // alert(username);
          
          $.ajax({
            type:'POST',
            url: '/reg_username',
            data:{
                'user':username,
                
            },
            success: function (data) {
                var data = JSON.parse(data);
                if(data.exist)
                {
                    var st = '<img src="{{ "img/cross.png" }}" width="6%">';
                    $("#reg_username").html(st);
                }
                else 
                {
                    var st = '<img src="{{ "img/tick.png" }}" width="10%">';
                    $("#reg_username").html(st);
                }
                
                
                
            }
          });

        });


        $("#id_email").change(function () {

          var email = $("#id_email").val();
          // alert(username);
          
          $.ajax({
            type:'POST',
            url: '/reg_email',
            data:{
                'email':email,
                
            },
            success: function (data) {
                var data = JSON.parse(data);
                if(!data.email || data.present)
                {
                    var st = '<img src="{{ "img/cross.png" }}" width="6%">';
                    $("#reg_email").html(st);
                }

                else if(data.email)
                {
                    var st = '<img src="{{ "img/tick.png" }}" width="10%">';
                    $("#reg_email").html(st);
                }
                
                
                
            }
          });

        });

        $("#id_password2").change(function () {

          var pass1 = $("#id_password").val();
          var pass2 = $("#id_password2").val();
          // alert(username);
          var str = pass1 + "," + pass2
          $.ajax({
            type:'POST',
            url: '/reg_password',
            data:{
                'pass':str,
                
            },
            success: function (data) {
                var data = JSON.parse(data);
                if(data.password)
                {
                    var st = '<img src="{{"img/tick.png" }}" width="10%">';
                    $("#reg_password").html(st);
                }
                else
                {
                    var st = '<img src="{{ "img/cross.png" }}" width="6%">';
                    $("#reg_password").html(st);
                }
                
                
                
            }
          });

          

        });


        $("#id_submit").click( function(e){
                e.preventDefault();
                var name = $("#id_name").val();
                var username = $("#id_username").val();
                var email = $("#id_email").val();
                var password = $("#id_password").val();
                var str = username+","+email+","+password;
                $.ajax({
                  type: "POST",
                  url: '/reg_submit',
                  data:{
                    'name':name,
                    'user':username,
                    'email':email,
                    'pass':password
                },
                  success: function(data){
                    $("#reg_submit").html(data);
                  }
                });
                
                document.getElementById("id_name").reset();
                document.getElementById("id_username").reset();
                document.getElementById("id_email").reset();
                document.getElementById("id_password").reset();
                document.getElementById("id_password2").reset();

            });


        
        // $("#reg").on('input', checkAndEnableButton);
        $(document).ready(function() {
          $("#id_submit").prop('disabled', true);
        });

        

        function checkAndEnableButton() {
            

          var username = $("#id_username").val();
          var email = $("#id_email").val();
          var p1 = $("#id_password").val();
          var p2 = $("#id_password2").val();

          

          var u=0,e=0,p=0;
          if(p1==p2 && p1.length>=4 && p2.length>=4)
          {
                p=1;
          }
            

          $.ajax({
            type:'POST',
            url: '/reg_username',
            data:{
                'user':username,
                
            },
            
            success: function (data) {  
                var data = JSON.parse(data);
                if(!data.exist)
                {
                    
                    u=1;
                    

                    var breakFlag = (p && e && u) ;
                      if (breakFlag) {
                        $("#id_submit").prop('disabled', false);
                      }
                      if (breakFlag==0) {
                        $("#id_submit").prop('disabled', true);
                      }
                }
                  
            }
          });

          $.ajax({
            type:'POST',
            url: '/reg_email',
            data:{
                'email':email,
                
            },
            
            success: function (data) {
                var data = JSON.parse(data);
                if(data.email)
                {
                    
                    e=1;
                    

                    var breakFlag = (p && e && u) ;
                      if (breakFlag) {
                        $("#id_submit").prop('disabled', false);
                      }
                      if (breakFlag==0) {
                        $("#id_submit").prop('disabled', true);
                      }

                }
                
                
                
            }
          });
          
          

        }


    
</script>