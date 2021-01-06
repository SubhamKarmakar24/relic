<?php
require 'require.php';
if (!loggedin()) {

  header('Location: index.php');
  die();

}else{
	require 'connect.inc.php';
  $query2 = "SELECT name, ktj_id, q_on, last_time FROM relic ORDER BY score DESC";
  $stmt2 = $dbh->prepare($query2);            
  $check= false;
  if($stmt2->execute()){
    $i=0;
    $alldata = $stmt2->fetchAll(PDO::FETCH_ASSOC);
    $rank = array_search($_SESSION['ktj_id'], array_column($alldata, 'ktj_id'));
    while ($i < 10) {
      $row = $alldata[$i];
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