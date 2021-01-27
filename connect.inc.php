<?php

	$conn = new mysqli('localhost','u472889586_KTJadmin','KTJadmin@123','u472889586_relichunter');
	if($conn->connect_error)
	{
		echo "$conn->connect_error";
		die("Connection Failed : ". $conn->connect_error);
	}




?>
