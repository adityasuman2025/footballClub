<?php
	include_once('connect_db.php');

	if(isset($_POST['JSON']))
	{
		$array = $_POST['JSON'];
	
	//making query
		$query = "INSERT INTO `football_clubs` (`club_state`, `club_name`, `club_city`, `club_league`) VALUES";

		foreach ($array as $key => $club)
		{
			$club_state = trim(mysqli_real_escape_string($connect_link, $club['club_state']));

			$club_name = trim(mysqli_real_escape_string($connect_link, $club['club_name']));
			$club_city = trim(mysqli_real_escape_string($connect_link, $club['club_city']));
			$club_league = trim(mysqli_real_escape_string($connect_link, $club['club_league']));

			$temp = " ('$club_state', '$club_name', '$club_city', '$club_league'),";

			$query = $query . $temp;
		}
		$query = rtrim($query, ",");

	//running the query	
		if(mysqli_query($connect_link, $query))
			echo 1;
		else
			echo 0;
	}
	else
		echo -1;
?>