<?php

require 'require.php';
if (!loggedin()) {
	header('Location: index.php');
	
	die();
}else{




if (isset($_POST['answer'])) {

if($_SESSION['q_on'] > 18){
   $data["status"]= "You already Completed the Game!";
    echo json_encode($data);

}else{

  if(!empty($_POST['answer'])){
 
  $user_ans = strtolower($_POST['answer']);
  require 'connect.inc.php';
  $query = "SELECT ans1, ans2 FROM relic_ques WHERE ques_no = ?";
    $stmt = $dbh->prepare($query);
    $stmt->bindParam(1,$_SESSION['q_on']);
    $check= false;
    if($stmt->execute()){

      while ($row = $stmt->fetch()) {
        
        $ans1 = $row[0];
        $ans2 = $row[1];
        $check= true;

      }
    }

    if($check){

      $ans1 = strtolower($ans1);
      $ans2 = strtolower($ans2);

      if($user_ans == $ans1 || $user_ans == $ans2){
       
       $_SESSION['q_on'] = $_SESSION['q_on'] + 1;
       $q_on = $_SESSION['q_on'];
       $last_time = time();
       $_SESSION['last_time'] =  $last_time;
       $_SESSION['score']= $_SESSION['score'] + 20000000 + (1548527399-$last_time);
         $score= $_SESSION['score'];

        $query1 ="UPDATE relic SET q_on=?, last_time=?, score=? WHERE email=? AND ktj_id=?";

       $dbh->prepare($query1)->execute([$q_on, $last_time, $score, $_SESSION['email'], $_SESSION['ktj_id']]);
       if($q_on > 18){
                     $data0["question"] = "Hurray!! You completed the game";
                     $data0["hint"]= "Follow Leader Board to check if you win";
                     $data0["img_p"]= "winner.png";
                     $data0["ques_on"]= "Over";
                     $data0["status"]= "correct";
                     echo json_encode($data0);
       }else{

      $query2 = "SELECT ques, hint, img_p FROM relic_ques WHERE ques_no = ?";
      $stmt2 = $dbh->prepare($query2);
      $stmt2->bindParam(1, $q_on);

      if ($stmt2->execute()) {
            
            while ($row = $stmt2->fetch()) {
                     $data1["question"] = $row[0];
                     $data1["hint"]= $row[1];
                     $data1["img_p"]= $row[2];
                     
            }
          }
          $data1["ques_on"]= $q_on;
          $data1["status"]= "correct";
          echo json_encode($data1);
        }
           
          
      }else{
        $data1["status"]= "incorrect";
        echo json_encode($data1);
      }


    }else{
        $data2["status"]= "some error";
        echo json_encode($data2);
      }
}else{
        $data3["status"]= "Fill the answer fill first!";
        echo json_encode($data3);
}
}
}
else
 header('Location: index.php');

}


?>
