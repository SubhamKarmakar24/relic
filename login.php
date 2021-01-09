<?php

require 'require.php';
require 'connect.inc.php';

if (isset($_POST['username']) && isset($_POST['password']))
{
	
	$username = $_POST['username'];
	$password = $_POST['password'];
	
	if (!empty($username) && !empty($password))
	{

		$query0 = "SELECT password from user WHERE email = '$username'";
		$result = $conn->query($query0);
		
		$state = false;
		if($result->num_rows > 0)
    	{
			$state = true;
			$row = mysqli_fetch_row($result);
    	
			$pass = $row[0];

			if($state)
			{
				$status = password_verify( $password , $pass );
					
				if($status)
				{
					$query1 = "SELECT name, email from user WHERE email = '$username'";
					$result = $conn->query($query1);

					$found = false;
					if($result->num_rows > 0)
					{
						$row = mysqli_fetch_row($result);
						$found = true;
						$name = $row[0];
						$ktjid = $row[1];
					}
				
				
					$query2 = "SELECT q_on, last_time, score, rank FROM relic WHERE email = '$username' AND ktj_id = '$ktjid'";
					$result = $conn->query($query2);

					$status= false;
					
					if($result->num_rows > 0)
					{
						$row = mysqli_fetch_row($result);
						$status = true;
						$q_on = $row[0];
						$last_time = $row[1];
						$score = $row[2];
						$rank = $row[3];
					}

					if($status)
					{
					
						$_SESSION['name'] = $name;
						$_SESSION['email'] = $username;
						$_SESSION['ktj_id'] = $ktjid;
						$_SESSION['q_on'] = $q_on;
						$_SESSION['last_time'] = $last_time;
						$_SESSION['score'] = $score;
						$_SESSION['rank'] = $rank;
						echo "allwell";
						$_SESSION['messageREG'] = "Logged IN";
					}
					else
					{
						$null = 'NULL';
						$login_time= time();
						$login_score= 1548527399-$login_time;
						$zero='0';
						$one= '1';

						$query3 = "INSERT INTO relic (name, email, ktj_id, q_on, last_time, score, rank) VALUES ( '$name' , '$username' ,'$ktjid' ,'$one', '$login_time', '$login_score', $null )";
						if($conn->query($query3) === true)
						{
							echo "New record created successfully";
							$_SESSION['name'] = $name;
							$_SESSION['email'] = $username;
							$_SESSION['ktj_id'] = $ktjid;
							$_SESSION['q_on'] = $one;
							$_SESSION['last_time'] = $login_time;
							$_SESSION['score'] = $login_score;
							$_SESSION['rank'] = $zero;
							echo "allwell";
							$_SESSION['messageREG'] = "Logged IN";
						}
						else
						{
							echo "Error: " . $query3 . "<br>" . $conn->error;
						}

					}
				}
				else
				{
					echo 'Incorrect password';
				}
			}
		}
		else
		{
			echo 'Email address not found, please register on ktj.in first';
		}
	}
	else
	{
		echo 'Enter Some data';
	}
}
else 
	header('Location: index.php');
	header('Location: index.php');

//echo $current_file;


?>
