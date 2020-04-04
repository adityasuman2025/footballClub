<?php
	include_once('connect_db.php');

	if(isset($_POST['JSON']))
	{
		$array = trim(mysqli_real_escape_string($connect_link, $_POST['JSON']));
	
	//making query
		$query = "INSERT INTO `football_clubs` (`club_id`, `club_state`, `club_name`, `club_city`, `club_league`)";

		foreach ($array as $key => $club)
		{
			$club_state = $club['club_state'];

			$club_name = $club['club_name'];
			$club_city = $club['club_city'];
			$club_league = $club['club_league'];

			$temp = " VALUES ('$club_state', '$club_name', '$club_city', '$club_league'),";

			$query = $query . $temp;
		}

		print_r($query);
	}
?>