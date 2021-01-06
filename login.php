<?php
session_start();
// require 'require.php';
// require 'connect.inc.php';

// if (isset($_POST['username']) && isset($_POST['password'])) {
	
// 	$username = $_POST['username'];
// 	$password = $_POST['password'];
	
// 	if (!empty($username) && !empty($password)) {


// 		$query0= "SELECT password FROM user WHERE email = ?";
// 		$stmt0 = $dbh->prepare($query0);
// 		$stmt0->bindParam(1,$username);
// 		$state=false;
// 		$pass ="";
// 		if($stmt0->execute()){
// 		while ($row0 = $stmt0->fetch()) {
				
// 				$pass = $row0[0];
// 				$state=true;

// 			}
// 		}
// 		if($state){
// 		$status = password_verify ( $password , $pass );

// 		if($status){
// 		$query = "SELECT  name, member_id FROM user WHERE email = ?";
// 		$stmt = $dbh->prepare($query);
// 		$stmt->bindParam(1,$username);
		

// 		$found = false;
// 		if ($stmt->execute()) {
		

// 			while ($row = $stmt->fetch()) {
				
// 				$name = $row[0];
// 				$ktj_id = $row[1] ;
			
				
// 				$found = true;

// 			}
// 		}
		
// 			$query1 = "SELECT q_on, last_time, score, rank FROM relic WHERE email = ? AND ktj_id= ?";
// 			$stmt1 = $dbh->prepare($query1);
		
// 			$stmt1->bindParam(1,$username);
// 			$stmt1->bindParam(2,$ktj_id);

// 			$status= false;
// 			if($stmt1->execute()){
// 				while ($row = $stmt1->fetch()) {
				
// 				$q_on = $row[0];
// 				$last_time = $row[1];
				
// 				$score = $row[2];
// 				$rank = $row[3];
			
				
// 				$status = true;

// 			}
// 		}
// 		if($status){
			
// 			$_SESSION['name'] = $name;
// 			$_SESSION['email'] = $username;
// 			$_SESSION['ktj_id'] = $ktj_id;
// 			$_SESSION['q_on'] = $q_on;
// 			$_SESSION['last_time'] = $last_time;
		
// 			$_SESSION['score'] = $score;
// 			$_SESSION['rank'] = $rank;
// 			echo "allwell";

			


// 		}else{
			
// 		$null = 'NULL';
//         $query2 = "INSERT INTO relic VALUES ( :id , :name , :email ,:ktj_id ,:q_on, :last_time, :score, :rank )";
//         $stmt2 = $dbh->prepare($query2);
//         $zero='0';
//         $one= '1';
//         $login_time= time();
//         $login_score= 1548527399-$login_time;
//         $stmt2->bindParam(':id',$null);
//         $stmt2->bindParam(':name',$name);
//         $stmt2->bindParam(':email',$username);
//         $stmt2->bindParam(':ktj_id',$ktj_id);
//         $stmt2->bindParam(':q_on', $one);
//         $stmt2->bindParam(':last_time', $login_time);
//         $stmt2->bindParam(':score', $login_score);
//         $stmt2->bindParam(':rank', $null);


			
		
//         if (($stmt2->execute())) {
//          	//echo "Successful registration";
// 			$_SESSION['name'] = $name;
// 			$_SESSION['email'] = $username;
// 			$_SESSION['ktj_id'] = $ktj_id;
// 			$_SESSION['q_on'] = $one;
// 			$_SESSION['last_time'] = $login_time;
// 			$_SESSION['score'] = $login_score;
// 			$_SESSION['rank'] = $zero;
			
// 			echo "allwell";

//         } else {
//           echo "Some error happened while registration";
        
//         }




// 		}
// 	}else {
// 			echo 'Incorrect password';
// 		}
// 	}else{
// 		echo 'Email address not found, please register on ktj.in first';
// 	}
// 	} else {
// 		echo 'Enter Some data';
// 	}
// } else 
// 	header('Location: index.php');


// //echo $current_file;


?>



<?php

require 'require.php';
require 'connect.inc.php';

if (!isset($_POST['username']) && !isset($_POST['password'])) {
	
	$username =  "Anand";               //$_POST['username'];
	$password =  "1234"  ;           //$_POST['password'];
	/*
	if (!empty($username) && !empty($password)) {


		$query0= "SELECT password FROM user WHERE email = ?";
		$stmt0 = $dbh->prepare($query0);
		$stmt0->bindParam(1,$username);
		$state=false;
		$pass ="";
		if($stmt0->execute()){
		while ($row0 = $stmt0->fetch()) {
				
				$pass = $row0[0];
				$state=true;

			}
		}
		if($state){
		$status = password_verify ( $password , $pass );

		if($status){
		$query = "SELECT  name, member_id FROM user WHERE email = ?";
		$stmt = $dbh->prepare($query);
		$stmt->bindParam(1,$username);
		

		$found = false;
		if ($stmt->execute()) {
		

			while ($row = $stmt->fetch()) {
				
				$name = $row[0];
				$ktj_id = $row[1] ;
			
				
				$found = true;

			}
		}
		
			$query1 = "SELECT q_on, last_time, score, rank FROM relic WHERE email = ? AND ktj_id= ?";
			$stmt1 = $dbh->prepare($query1);
		
			$stmt1->bindParam(1,$username);
			$stmt1->bindParam(2,$ktj_id);

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
        $stmt2 = $dbh->prepare($query2);
        $zero='0';
        $one= '1';
        $login_time= time();
        $login_score= 1548527399-$login_time;
        $stmt2->bindParam(':id',$null);
        $stmt2->bindParam(':name',$name);
        $stmt2->bindParam(':email',$username);
        $stmt2->bindParam(':ktj_id',$ktj_id);
        $stmt2->bindParam(':q_on', $one);
        $stmt2->bindParam(':last_time', $login_time);
        $stmt2->bindParam(':score', $login_score);
        $stmt2->bindParam(':rank', $null);


			
		
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
	}*/
	$_SESSION['name'] = "Anand";
			$_SESSION['email'] = $username;
			$_SESSION['ktj_id'] = "19KTJ826";
			$_SESSION['q_on'] = 1;
			$_SESSION['last_time'] =0;
			$_SESSION['score'] = 0;
			$_SESSION['rank'] = 0;
} else 
	header('Location: index.php');




//echo $current_file;


?>
