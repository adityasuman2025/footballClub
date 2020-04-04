<?php
	include_once "connect_db.php";
	
//getting data from sent in form of json from frontend
	$data = json_decode(file_get_contents("php://input"), TRUE);
	
	if(is_array($data))
	{
		$selectedState = $data['selectedState'];
		$limit = $data['limit'];
		$offset = $data['offset'];

		if($selectedState != "")
		{
			$selectedState = htmlentities(mysqli_real_escape_string($connect_link, $selectedState));
			$limit = htmlentities(mysqli_real_escape_string($connect_link, $limit));
			$offset = htmlentities(mysqli_real_escape_string($connect_link, $offset));
			
			$mysql_qry = "SELECT * FROM football_clubs WHERE club_state = '$selectedState' LIMIT $limit OFFSET $offset";
			if($result = @mysqli_query($connect_link ,$mysql_qry))
			{
				$result_array = array();

				while($row = mysqli_fetch_assoc($result))
				{
					array_push($result_array, $row);
				}
				
				print_r(json_encode($result_array));
			}
			else 
				echo 0;
		}
		else
			echo -10;
	}
	else
		echo -1;
?>