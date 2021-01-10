<?php
  require 'require.php';
  $_SESSION['messageANS'] = "";
  if(!loggedin())
  {
	  header('Location: index.php');
	  die();
  }
  else
  {
    if(isset($_POST['answer']))
    {
      if($_SESSION['q_on'] > 20)
      {
        $data["status"]= "You already Completed the Game!";
        echo json_encode($data);
      }
      else
      {
        if(!empty($_POST['answer']))
        {
          $user_ans = strtolower($_POST['answer']);
          require 'connect.inc.php';
          $qno = $_SESSION['q_on'];
          
          $query1 = "SELECT ans1, ans2 FROM relic_ques WHERE ques_no = '$qno'";
          $result = $conn->query($query1);
          $check= false;
    
          if($result->num_rows > 0)
          {
            $row = mysqli_fetch_row($result);
            $ans1 = $row[0];
            $ans2 = $row[1];
            $check= true;
          }

          if($check)
          {
            $ans1 = strtolower($ans1);
            $ans2 = strtolower($ans2);

            if($user_ans == $ans1 || $user_ans == $ans2)
            {
       
              $_SESSION['q_on'] = $_SESSION['q_on'] + 1;
              $q_on = $_SESSION['q_on'];
              $last_time = time();
              $_SESSION['last_time'] =  $last_time;
              $_SESSION['score']= $_SESSION['score'] + 20000000 + (1610999063-$last_time);
              $score= $_SESSION['score'];
              $email = $_SESSION['email']; 
              $ktjid = $_SESSION['ktj_id'];

              $query2 ="UPDATE relic SET q_on = '$q_on', last_time = '$last_time', score = '$score' WHERE email = '$email'";
              if($conn->query($query2) === TRUE)
              {
                echo "Record updated successfully";
              }
              else
              {
                echo "Error updating record: " . $conn->error;
              }
              
              if($q_on >= 21)
              {
                $data0["question"] = "Hurray!! You completed the game";
                $data0["hint"]= "Follow Leader Board to check if you win";
                $data0["img_p"]= "img/winner.png";
                $_SESSION['image'] = "img/winner.png";
                $data0["ques_on"]= "Over";
                $data0["status"]= "correct";
                echo json_encode($data0);
                $_SESSION['messageANS'] = "";
                $_SESSION['currentimage'] = 1;
                header('Location: qpage.php');
              }
              else
              {
                $query3 = "SELECT ques, hint, img_p FROM relic_ques WHERE ques_no = '$q_on'";
                $result = $conn->query($query3);
                if($result->num_rows > 0)
                {
                  $row = mysqli_fetch_row($result);
                  $data1["question"] = $row[0];
                  $data1["hint"]= $row[1];
                  $data1["img_p"]= $row[2];
                  $_SESSION['image'] = $row[2];
                }
                
                $data1["ques_on"]= $q_on;
                $data1["status"]= "correct";
                $_SESSION['messageANS'] = "";
                $_SESSION['currentimage'] = 1;
                echo json_encode($data1);
                header('Location: qpage.php');
              }
            }
            else
            {
              $data1["status"]= "incorrect";
              $_SESSION['messageANS'] = "Incorrect Answer";
              echo json_encode($data1);
              header('Location: qpage.php');
            }
          }
          else
          {
            $data2["status"]= "some error";
            $_SESSION['messageANS'] = "Some error occurred";
            echo json_encode($data2);
            header('Location: qpage.php');
          }
        }
        else
        {
          $data3["status"]= "Fill the answer fill first!";
          $_SESSION['messageANS'] = "Fill the answer fill first!";
          echo json_encode($data3);
          header('Location: qpage.php');
        }
      }
    }
    else
      header('Location: index.php');

  }
?>
