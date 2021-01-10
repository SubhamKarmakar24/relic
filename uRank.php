<?php
require 'require.php';
if (!loggedin()) {

  header('Location: index.php');
  die();

}else{
	require 'connect.inc.php';
  $query2 = "SELECT name, ktj_id, q_on, last_time, email FROM relic ORDER BY score DESC";
  $result = $conn->query($query2);
  $result1 = $conn->query($query2);
              
  $check= false;
  if($result->num_rows > 0)
  {
    $i=0;
    // $rank = array_search($_SESSION['ktj_id'], array_column($result->toArray(), 'ktj_id'));
    $ktjid = $_SESSION['ktj_id'];
    $usn = $_SESSION['email'];
    
    while($i < $result->num_rows)
    {
      $row1 = $result1->fetch_assoc();
      $email = $row1['email'];
      if($email == $usn)
      {
        $rank = $i + 1;
        break;
      }
      $i++;
    }

    $i=0;
    while ($i < 10) {
      $row = $result->fetch_assoc();
      $naam = $row['name'];
      $qusetion_on = $row['q_on']-1;
      $last_correct = $row['last_time'];
      date_default_timezone_set("Asia/Kolkata");
      $ti = date('Y-m-d H:i:s', $last_correct);
      $position["rank".($i+1)] = ($i+1);
      $position["name".($i+1)]= $naam;
      $position["q_on".($i+1)]= $qusetion_on;
      $position["time".($i+1)]= $ti;
      $i++;
    }
    $position["myrank"]= $rank+1;
  }
  echo json_encode($position);
}

?>