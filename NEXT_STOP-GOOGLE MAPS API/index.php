<html>
  <head>
    <title>Place Autocomplete</title>
    <meta name="viewport" content="initial-scale=1.0, user-scalable=no">
    <meta charset="utf-8">

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

      
     <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyDvQDfUUccUtRojyjq5_uadoM2x3eh_LUU&libraries=places&callback=initMap"
        async defer></script>
    <style>
      /* Always set the map height explicitly to define the size of the div
       * element that contains the map. */
      #map {
        position: absolute;
        height:83%;
        width:50%;
        top:14%;
        left:2%;
        border:1px solid black;
        box-shadow: 0 2px 6px rgba(0, 0, 0, 0.3);

      }
      /* Optional: Makes the sample page fill the window. */
      html, body {
        height: 100%;
        margin: 0;
        padding: 0;
      }
      .controls {
        margin-top: 10px;
        border: 1px solid transparent;
        border-radius: 2px 0 0 2px;
        box-sizing: border-box;
        -moz-box-sizing: border-box;
        height: 32px;
        outline: none;
        box-shadow: 0 2px 6px rgba(0, 0, 0, 0.3);
      }

      #origin-input,
      #destination-input {
        background-color: #fff;
        font-family: Roboto;
        font-size: 15px;
        font-weight: 300;
        margin-left: 12px;
        padding: 0 11px 0 13px;
        text-overflow: ellipsis;
        width: 200px;
      }

      #origin-input:focus,
      #destination-input:focus {
        border-color: #4d90fe;
      }

      #mode-selector {
        color: #fff;
        background-color: #4d90fe;
        margin-left: 12px;
        padding: 5px 11px 0px 11px;
      }

      #mode-selector label {
        font-family: Roboto;
        font-size: 13px;
        font-weight: 300;
      }
     
      #distance
      {
          position: absolute;
          right:32%;
          top:16%;
          
          font-size: 15px;
          color:green;
          overflow:auto;
          width:15%;
          height:80%;
          box-shadow:0 2px 6px rgba(0, 0, 0, 0.3);
          padding:10px;
      }
      #pd
      {
          position: absolute;
          right:1%;
          top:3.5%;
         
          font-size: 12px;
          color:black;
          overflow:auto;
          width:30%;
          height:92%;
          box-shadow:0 2px 6px rgba(0, 0, 0, 0.3);
          padding:10px;
      }
      #bus
      {
          position: absolute;
          top:12.5%;
          left:56%;
          color:black;
         
          font-size: 16px;
      }
      #submit
      {
          position: absolute;
          top:22%;
          left:40%;
          color:black;
          
          z-index:100;
           
      }

      #head
      {
          position: absolute;
          top:1%;
          left:8%;
          border:1px solid black ;
          box-shadow:0 2px 6px rgba(0, 0, 0, 0.3);
          padding:5px;

      }
      #clock
      {
        position: absolute;
        top:1%;
        left:42%;
      }
      #logo
      {
          position: absolute;
          top:1%;
          left:2%;
      }
      #data
      {
          font-size: 12px;
          color:green;
          
      }
      table
      {
         
          width:10%;
          height:20%;
          font-size:10px;
          color:green;

      }
      .nav
      {
          position: relative;
      }
      #view_list
      {
        position: absolute;
        top:10%;
      }
      #up_list
      {
        position: absolute;
        top:10%;
      }
      
    </style>
  </head>
  <body>
     
        <input id="origin-input" class="controls" type="text"
            name="o" placeholder="Enter an origin location" >

        <input id="destination-input" class="controls" type="text"
            name="d" placeholder="Enter a destination location" >

        <div id="mode-selector" class="controls">
          <input type="radio" name="type" id="changemode-walking" checked="checked">
          <label for="changemode-walking">Walking</label>

          <input type="radio" name="type" id="changemode-transit">
          <label for="changemode-transit">Transit</label>

          <input type="radio" name="type" id="changemode-driving">
          <label for="changemode-driving">Driving</label>

         
        </div>
        <div id="submit">
        <button type="submit" class="btn btn-danger btn-sm" value="Submit" onclick="send()" name="submit"> SUBMIT</button><br><br>
        </div>
        
      <script>
         
          function send()
          {
             var origin = document.getElementById("origin-input").value;
             var destination=document.getElementById("destination-input").value;
              var str = origin+"/"+destination;
              xhttp = new XMLHttpRequest();
               xhttp.onreadystatechange = function() 
                {
                  if (this.readyState == 4 && this.status == 200) {
                    document.getElementById("distance").innerHTML = this.responseText;
                  }
                };
                xhttp.open("GET", "distance.php?str="+str, true);
                xhttp.send();  

          }


      </script>
    <!--CLOCK-->
    <div id="clock">
       <div id="app_clock" ng-app="clock">
            <div ng-controller="myCtrl">
            <font size="5" face="Courier New" color="black"><b>{{time}}</b> </font>
            </div>
      </div>
    </div>

          <!--ANGULAR SCRIPT FOR CLOCK-->
          <script>
                         // var root = angular.module('root',['clock','myApp','quotes']);
                var app_clock = angular.module("clock",[]);
                app_clock.controller('myCtrl',function($scope,$interval)
                {
                      $scope.time = new Date().toLocaleTimeString();
                      $interval(function()
                            {
                                  $scope.time = new Date().toLocaleTimeString();
                            },1000);
                });    

          </script>
     

      <div id="logo">
          <img src="google.png" width="7%" class="img-responsive">
      </div>
     
     <div id="head">
    <h3><strong>NEXT STOP</strong></h3>
    </div>
   
    <div id="map"></div>

  
    
    <div id="bus"><strong>BUS ROUTE</strong></div>  
    <div id="distance"></div>

    
  
    <div id="pd">
      
      
          <ul class="nav nav-tabs" id="myTab" role="tablist">
          <li class="nav-item">
            <a class="nav-link" id="home-tab" data-toggle="tab" href="#form_fill" role="tab" aria-controls="form_fill" aria-selected="true" active>ADD</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" id="profile-tab" data-toggle="tab" href="#p_list" role="tab" aria-controls="p_list" aria-selected="false">VIEW</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" id="contact-tab" data-toggle="tab" href="#up_det" role="tab" aria-controls="up_det" aria-selected="false">UPADTE</a>
          </li>
        </ul>
      
      <div class="tab-content" id="myTabContent">
        <div class="tab-pane fade show active" id="form_fill" role="tabpanel" aria-labelledby="home-tab">
              <center>
                <br>
                 <form class="form-inline" id="myForm" method="post">
                    <div class = "form-group row">
                       <div class="col-lg-12">
                          NAME:<br><input type="text" class="form-control" id="name" name="name" placeholder="NAME" required="required" size="32%" style="font-size: 10px;"><br>
                        </div>
                      </div>
                      <div class = "form-group row">
                       <div class="col-lg-12">
                          PICKUP:<br><input type="text" class="form-control" id="pick" name="pick" placeholder="PICKUP POINT" required="required" size="32%" style="font-size: 10px;"><br>
                        </div>
                      </div>
                      <div class = "form-group row">
                       <div class="col-lg-12">
                          DROP:<br><input type="text" class="form-control" id="drop" name="drop" placeholder="DROP POINT" required="required" size="32%" style="font-size: 10px;"><br>
                        </div>
                      </div>
                      <br><br>
                  <input type="submit" class="btn btn-danger btn-sm" id="sub" value="SUBMIT"></button>
                </form>
                <div id="data" style="display:block;"></div>
              </center>
              

        </div>



        <div class="tab-pane fade" id="p_list" role="tabpanel" aria-labelledby="profile-tab">
          
            <center>
              <div id="view_list">
                <center>
                PASSENGER'S LIST<br>
                  <button name="up" class="btn btn-danger btn-sm" id="update">UPADTE</button></center>
                  <br><br>
                 
                  <div id="list"></div>
                
                </div>
              </center>

        </div>
        <div class="tab-pane fade" id="up_det" role="tabpanel" aria-labelledby="contact-tab">
            <center>
              <div id="up_list">
                       <form class="form-inline" id="myForm2" method="post">
                      <div class = "form-group row">
                         <div class="col-lg-12">
                            NAME:<br><input type="text" class="form-control" id="name2" name="name" placeholder="NAME" required="required" size="32%" style="font-size: 10px;"><br>
                          </div>
                        </div>
                       
                        <div class = "form-group row">
                         <div class="col-lg-12">
                            NEW DROP:<br><input type="text" class="form-control" id="drop2" name="drop" placeholder="NEW DROP POINT" required="required" size="32%" style="font-size: 10px;"><br>
                          </div>
                        </div>
                        <br><br>
                        <input type="submit" class="btn btn-danger btn-sm" id="sub" value="SUBMIT"></button>
                      </form>
                      <div id="up_data" style="display:block;"></div>
                    </div>

                </div>
              </center>
            </div>
        </div>
     
    <script>
          
            $("#myForm").submit( function(e){
                var name = $("#name").val();
                var pick = $("#pick").val();
                var drop = $("#drop").val();
                var str = name+","+pick+","+drop;
                $.ajax({
                  type: "POST",
                  url: "p_inp.php",
                  data: "str="+str,
                  success: function(data){
                    $("#data").html(data);
                  }
                });
                e.preventDefault();
                document.getElementById("myForm").reset();
            });
           
           function clear(){
            $("#myForm:input").each( function(){
              $(this).val(' ');
            });
          }

          
          $("#myForm2").submit( function(e){
                var name = $("#name2").val();
              
                var drop = $("#drop2").val();
                var str = name+","+drop;
                $.ajax({
                  type: "POST",
                  url: "up_inp.php",
                  data: "str="+str,
                  success: function(data){
                    $("#up_data").html(data);
                  }
                });
                e.preventDefault();
                document.getElementById("myForm2").reset();
            });

          
           
           
         
    </script>
    <script>

       

           $("#update").click(function(e){
            var s = "HI";
            e.preventDefault();
            $.ajax({
              type: "POST",
              url: "list.php",
              data: "str="+s,
              success: function(data){
                $("#list").html(data);
              }
            });
          });

      
       
          
    </script>
   
   
   

    <br>
   
    <script>
      // This example requires the Places library. Include the libraries=places
      // parameter when you first load the API. For example:
      // <script src="https://maps.googleapis.com/maps/api/js?key=YOUR_API_KEY&libraries=places">

      function initMap() {
        var map = new google.maps.Map(document.getElementById('map'), {
          mapTypeControl: false,
          center: {lat: 28.6139, lng: 77.2090},
          zoom: 13
        });

        new AutocompleteDirectionsHandler(map);
      }

       /**
        * @constructor
       */
      function AutocompleteDirectionsHandler(map) {
        this.map = map;
        this.originPlaceId = null;
        this.destinationPlaceId = null;
        this.travelMode = 'WALKING';
        var originInput = document.getElementById('origin-input');
        var destinationInput = document.getElementById('destination-input');
        var modeSelector = document.getElementById('mode-selector');
        this.directionsService = new google.maps.DirectionsService;
        this.directionsDisplay = new google.maps.DirectionsRenderer;
        this.directionsDisplay.setMap(map);

        var originAutocomplete = new google.maps.places.Autocomplete(
            originInput, {placeIdOnly: true});
        var destinationAutocomplete = new google.maps.places.Autocomplete(
            destinationInput, {placeIdOnly: true});

        this.setupClickListener('changemode-walking', 'WALKING');
        this.setupClickListener('changemode-transit', 'TRANSIT');
        this.setupClickListener('changemode-driving', 'DRIVING');

        this.setupPlaceChangedListener(originAutocomplete, 'ORIG');
        this.setupPlaceChangedListener(destinationAutocomplete, 'DEST');

        this.map.controls[google.maps.ControlPosition.TOP_LEFT].push(originInput);
        this.map.controls[google.maps.ControlPosition.TOP_LEFT].push(destinationInput);
        this.map.controls[google.maps.ControlPosition.TOP_LEFT].push(modeSelector);
      }

      // Sets a listener on a radio button to change the filter type on Places
      // Autocomplete.
      AutocompleteDirectionsHandler.prototype.setupClickListener = function(id, mode) {
        var radioButton = document.getElementById(id);
        var me = this;
        radioButton.addEventListener('click', function() {
          me.travelMode = mode;
          me.route();
        });
      };

      AutocompleteDirectionsHandler.prototype.setupPlaceChangedListener = function(autocomplete, mode) {
        var me = this;
        autocomplete.bindTo('bounds', this.map);
        autocomplete.addListener('place_changed', function() {
          var place = autocomplete.getPlace();
          if (!place.place_id) {
            window.alert("Please select an option from the dropdown list.");
            return;
          }
          if (mode === 'ORIG') {
            me.originPlaceId = place.place_id;
          } else {
            me.destinationPlaceId = place.place_id;
          }
          me.route();
        });

      };

      AutocompleteDirectionsHandler.prototype.route = function() {
        if (!this.originPlaceId || !this.destinationPlaceId) {
          return;
        }
        var me = this;

        this.directionsService.route({
          origin: {'placeId': this.originPlaceId},
          destination: {'placeId': this.destinationPlaceId},
          travelMode: this.travelMode
        }, function(response, status) {
          if (status === 'OK') {
            me.directionsDisplay.setDirections(response);
          } else {
            window.alert('Directions request failed due to ' + status);
          }
        });
      };

    </script>
  



  </body>
</html>
