<?php

require 'require.php';
require 'connect.inc.php';

if (isset($_POST['username']) && isset($_POST['password'])) {
	
	$username = $_POST['username'];
	$password = $_POST['password'];
	
	if (!empty($username) && !empty($password)) {


		$query0 = "SELECT password from user WHERE email = '$username'";
		$result = $conn->query($query0);
		$row = mysqli_fetch_row($result);
		
		if($result->num_rows == 1)
    	{
        	
    	}
		$pass = $row[0];


		// $query0= "SELECT password FROM user WHERE email = ?";
		// $stmt0 = $conn->prepare($query0);
		// $stmt0->bind_param("s",$username);
		$state=true;
		// $pass ="";
		// if($stmt0->execute()){
		// while ($row0 = $stmt0->fetch()) {
				
		// 		$pass = $row0[0];
		// 		$state=true;

		// 	}
		// }
		if($state){
			
			
		// $status = password_verify ( $password , $pass );
		$status = password_verify( $password , $row[0] );
		echo $status;
			
		if($status){
		$query = "SELECT  name, member_id FROM user WHERE email = ?";
		$stmt = $conn->prepare($query);
		$stmt->bind_param("s",$username);
		

		$found = false;
		if ($stmt->execute()) {
		

			while ($row = $stmt->fetch()) {
				
				$name = $row[0];
				$ktj_id = $row[1] ;
			
				
				$found = true;

			}
		}
		
			$query1 = "SELECT q_on, last_time, score, rank FROM relic WHERE email = ? AND ktj_id= ?";
			$stmt1 = $conn->prepare($query1);
		
			$stmt1->bind_param(1,$username);
			$stmt1->bind_param(2,$ktj_id);

			$status= false;
			if($stmt1->execute()){
				while ($row = $stmt1->fetch()) {
				
				$q_on = $row[0];
				$last_time = $row[1];
				
				$score = $row[2];
				$rank = $row[3];
			
				
				$status = true;

			}
		}
		if($status){
			
			$_SESSION['name'] = $name;
			$_SESSION['email'] = $username;
			$_SESSION['ktj_id'] = $ktj_id;
			$_SESSION['q_on'] = $q_on;
			$_SESSION['last_time'] = $last_time;
		
			$_SESSION['score'] = $score;
			$_SESSION['rank'] = $rank;
			echo "allwell";

			


		}else{
			
		$null = 'NULL';
        $query2 = "INSERT INTO relic VALUES ( :id , :name , :email ,:ktj_id ,:q_on, :last_time, :score, :rank )";
        $stmt2 = $conn->prepare($query2);
        $zero='0';
        $one= '1';
        $login_time= time();
        $login_score= 1548527399-$login_time;
        $stmt2->bind_param(':id',$null);
        $stmt2->bind_param(':name',$name);
        $stmt2->bind_param(':email',$username);
        $stmt2->bind_param(':ktj_id',$ktj_id);
        $stmt2->bind_param(':q_on', $one);
        $stmt2->bind_param(':last_time', $login_time);
        $stmt2->bind_param(':score', $login_score);
        $stmt2->bind_param(':rank', $null);


			
		
        if (($stmt2->execute())) {
         	//echo "Successful registration";
			$_SESSION['name'] = $name;
			$_SESSION['email'] = $username;
			$_SESSION['ktj_id'] = $ktj_id;
			$_SESSION['q_on'] = $one;
			$_SESSION['last_time'] = $login_time;
			$_SESSION['score'] = $login_score;
			$_SESSION['rank'] = $zero;
			
			echo "allwell";

        } else {
          echo "Some error happened while registration";
        
        }




		}
	}else {
			echo 'Incorrect password';
		}
	}else{
		echo 'Email address not found, please register on ktj.in first';
	}
	} else {
		echo 'Enter Some data';
	}
} else 
	header('Location: index.php');


//echo $current_file;


?>
