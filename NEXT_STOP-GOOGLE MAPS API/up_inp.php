<?php
	$con = mysqli_connect('localhost','root','pagal.com','next');
	
	$str = $_POST['str'];
	//echo $str.'<br>';
	$s = explode(",",$str);
	//echo $s[0];
	$name = $s[0];
	$drop = $s[1];
	//echo $name." ".$drop;



    $sql = "select pickup,fare from passenger where name='$name'";
    $res = $con->query($sql);
    while($row = $res->fetch_assoc())
    {
    	$pick = $row['pickup'];
    	$fare_prev = $row['fare'];
    	break;
    }  


    $api = file_get_contents("https://maps.googleapis.com/maps/api/distancematrix/json?units=imperial&origins=".$pick."&destinations=".$drop."&key=AIzaSyDvQDfUUccUtRojyjq5_uadoM2x3eh_LUU");

		
        $data = json_decode($api); 

    $distance = ((int)$data->rows[0]->elements[0]->distance->value/1000);
    $fare =  ((int)$data->rows[0]->elements[0]->distance->value/1000)*2;

	$sql = "select name from passenger where name='$name'";
	$res = $con->query($sql);

	//echo $fare.' '.$fare_prev;
	$c=0;
	while($row = $res->fetch_assoc())
	{
		$c=$c+1;
	}
	$extra = $fare-$fare_prev;
	if($c>0)
	{
		$sql = "update passenger set dropp='$drop',fare='$fare',distance='$distance' where name='$name'";
		if($con->query($sql))
			echo '<font color="green">UPDATED SUCCESSFULLY<br><h5><strong>NEW FARE:  '.$fare.'<br>EXTRA FARE:  '.round($extra).'</strong></h5></font>';
		
	}
	else
	{
		echo '<font color="red">PASSENGER NOT RIDING, SORRY!</font>';
	}

	

	$con->close();
?>