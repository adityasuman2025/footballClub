<?php header('Access-Control-Allow-Origin: *'); ?>
<?php
	date_default_timezone_set('Asia/Kolkata');
	$now = date('Y-m-d H:i:s');

	$website = $_SERVER['HTTP_HOST']; //dns address of the site 

//iit patna server	
	if($website == "localhost")
	{
		$mysql_host = "localhost";
		$mysql_username  = "root";
		$mysql_password  = "";
		$mysql_db = "test";
	}
	else
	{
		$mysql_host = "localhost";
		$mysql_username  = "mngo_root";
		$mysql_password  = "aditya@123";
		$mysql_db = "mngo_test";
	}	
	
	$connect_link = @mysqli_connect($mysql_host, $mysql_username, $mysql_password, $mysql_db);
	if(!$connect_link)
	{
		die("-100");
	}
?>