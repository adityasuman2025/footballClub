<?php
	require_once "connect_db.php";
	
//getting data from sent in form of json from frontend
	$data = json_decode(file_get_contents("php://input"), TRUE);
	
	if(is_array($data))
	{
		$club_id = $data['club_id'];
		$old_likes = $data['old_likes'];

		if($club_id != "" && $old_likes != "")
		{
			$club_id = htmlentities(mysqli_real_escape_string($connect_link, $club_id));
			$old_likes = htmlentities(mysqli_real_escape_string($connect_link, $old_likes));
			
			$new_likes = $old_likes + 1;

			$mysql_qry = "UPDATE football_clubs SET club_likes = '$new_likes' WHERE club_id = '$club_id'";
			if(@mysqli_query($connect_link ,$mysql_qry))
			{
				echo 1;
			}
			else 
			{
				echo 0;
			}
		}
		else
			echo -1;
	}
	else
		echo -1;
?>