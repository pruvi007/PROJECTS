<?php  
	//connection done
	$con = mysqli_connect('localhost','root','pagal.com','next');

	$sql = "select * from passenger";
	$res = $con->query($sql);
	$f=0;
	while($row = $res->fetch_assoc())
	{
		$f = $f+1;
		break;
	}
	if($f>0)
	{
		$c=1;
		echo '<table id="list_table" class="table table-striped">
				<tr>
					<th>SNO</th>
					<th>NAME</th>
					<th>PICKUP</th>
					<th>DROP</th>
					<th></th>
					<th>FARE</th>
				</tr>';
		while($row = $res->fetch_assoc())
		{
			$name = $row['name'];
			$pick = $row['pickup'];
			$drop = $row['dropp'];

			$distance = $row['distance'];
			$fare = $row['fare'];


			echo '<tr>
					<td>'.$c.'</td>
					<td>'.$name.'</td>
					<td>'.$pick.'</td>
					<td>'.$drop.'</td>
					<td>'.$distance.' KM</td>
					<td>Rs.'.$fare.'</td>
				</tr>';
			$c=$c+1;

		}
		echo '</table>';

	}
	else
		echo '<font color="red">NO PASSENGER YET !<font>';
	
	$con->close();
?>