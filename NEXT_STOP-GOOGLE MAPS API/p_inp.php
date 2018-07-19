<?php

	$con = mysqli_connect('localhost','root','pagal.com','next');
	
	$str = $_POST['str'];
	//echo $str.'<br>';
	$s = explode(",",$str);
	//echo $s[0];
	$name = $s[0];
	$pick = $s[1];
	$drop = $s[2];
	
	$api = file_get_contents("https://maps.googleapis.com/maps/api/distancematrix/json?units=imperial&origins=".$pick."&destinations=".$drop."&key=AIzaSyDvQDfUUccUtRojyjq5_uadoM2x3eh_LUU");

        $data = json_decode($api);

    $distance = ((int)$data->rows[0]->elements[0]->distance->value/1000);
    $fare =  ((int)$data->rows[0]->elements[0]->distance->value/1000)*2;

	$sql = "select count(*) as c from passenger";
	$res = $con->query($sql);
	while($row = $res->fetch_assoc())
	{
		$c = $row['c'];
	}
	$c = $c+1;
	//echo $c;
	$sql ="insert into passenger values('$c','$name','$pick','$drop','$fare','$distance')";
	
	if($con->query($sql))
		echo 'PASSENGER ADDED SUCCESSFULLY<br><h5><strong>FARE:  '.$fare.'</strong></h5>';
	else echo '<font color="red">SOMETHING WENT WRONG</font>';

	
	$con->close();
	
?>