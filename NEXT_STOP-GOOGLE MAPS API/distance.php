<?php
	header('Content-Type: text/xml');
	echo '<?xml version="1.0" encoding="UTF-8" standalone="yes" ?>';
	echo '<response>';
		//echo 'Hi\n';
		$str = $_GET['str'];
		//echo $str;
		$names = explode("/",$str);
		$o = explode(" ",$names[0]);
		$origin = $o[0];
		$d = explode(" ",$names[1]);
		$destination = $d[0];
		$api = file_get_contents("https://maps.googleapis.com/maps/api/distancematrix/json?units=imperial&origins=".$origin."&destinations=".$destination."&key=AIzaSyDvQDfUUccUtRojyjq5_uadoM2x3eh_LUU");

		
        $data = json_decode($api);

        echo '<table class="table table-striped">
        		<tr>
        		<th>Origin</th>
        		<th>'.$names[0].'</th></tr>
        		<tr><th>Destination</th>
        		<th>'.$names[1].'</th>
        		</tr></table><br>';
       
       echo 'ROUTE INFO<br>';
       echo '<table class="table table-striped">
        		<tr>
        		<th>Distance</th>
        		<th>'.((int)$data->rows[0]->elements[0]->distance->value/1000).'KM</th></tr>
        		<tr><th>Time</th>
        		<th>'.$data->rows[0]->elements[0]->duration->text.'</th>
        		<tr><th>Total Fare/Person</th>
        		<th>Rs.'.(((int)$data->rows[0]->elements[0]->distance->value/1000)*2).'</th></tr>
        		<tr><th>Total Fare<br>(75 Person)</th>
        		<th>Rs.'.((int)$data->rows[0]->elements[0]->distance->value/1000)*(150).'</th>
        		</tr></table><br><br>';

	echo '</response>';
?>