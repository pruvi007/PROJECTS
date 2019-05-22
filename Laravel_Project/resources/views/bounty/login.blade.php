<html>
<head>
    <meta charset="UTF-8">
    <title>Login</title>

    <meta name='csrf_token' content='{{ csrf_token() }}' />
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
                <h3>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbspLog In</h3>
                <center>
                <div class="panel-body">
                    
                  
                  
                    <form class="form-horizontal" id="login" role="form"  action='/login_form_check' method="POST" enctype="multipart/form-data">
                        @csrf
                        
                        <div class="form-group">
                            <div class="col-sm-10">
                                <span class="glyphicon glyphicon-user">
                                    <input id="id_username" maxlength="30" name="username" type="text" placeholder="USERNAME"  style="font-family: Courier New;font-size: 15px;border: none; border-bottom: 2px solid black;">
                                    </span>
                            </div>
                        </div>
                        <div id="data"></div>

                        <div class="form-group">
                           
                            <div class="col-sm-10">
                                <strong><span class="glyphicon glyphicon-asterisk"></strong>&nbsp&nbsp&nbsp
                                    <input id="id_password" maxlength="30" name="password" type="password"  placeholder="PASSWORD" style="font-family: Courier New;font-size: 15px; border: none; border-bottom: 2px solid black;"></span>
                            </div>
                        </div>
                        </center>
                        <div class="form-group">
                            &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp<button type="submit" class="btn btn-success">Submit</button>
                        </div>
                        <div id='data2'></div>
                    </form>
                    
                </div>

                <div class="panel-footer">
                    Don't have an account? <a href="/register">Click here</a> to register.
                </div>
                
            </div>
        
    

</div>

<script>
        $.ajaxSetup({
            headers: {
                'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
                    }
        });

        $(document).ready(function(){

            $("#id_username").change(function () {

              var username = $("#id_username").val();
              // alert(username);
              var password = $("#id_password").val();
              $.ajax({
                type:'POST',
                url: '/login_check/',
                data:{
                    'str':username,
                    'pass': password
                },
                success: function (data) {
                    // alert("done")
                    // if(data.is_taken)
                    // {
                    //     var ht = '<img src="{% static "images/tick.png" %}" width="20%">';
                    //     $("#data").html(ht);
                    // }
                    // else
                    // {
                    //     var ht = '<img src="{% static "images/cross.png" %}" width="10%">';
                    //     // alert("YES");
                    //     $("#data").html(ht);
                    // }
                    var data = JSON.parse(data);
                    console.log(data);
                    if(data['exist']==1)
                    {
                        var ht = '<img src="{{"img/tick.png" }}" width="20%">';
                        $("#data").html(ht);
                    }
                    else
                    {
                        var ht = '<img src="{{ "img/cross.png" }}" width="10%">';
                        $("#data").html(ht);
                    }
                   
                    
                }
              });

            });

           

        });

        
    
</script>

</body>
</html>
