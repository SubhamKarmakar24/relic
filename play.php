<?php
require 'require.php';
if (!loggedin()) {
  header('Location: index.php');
  die();
}
else{
  require 'connect.inc.php';
  $q_on=  $_SESSION['q_on'];
  if($q_on >= 19){
    $q_on="";
    $ques ="Hurray!! You completed the game";
    $hint= "Follow Leader Board to check if you win.";
    $img_p="winner.png";
  }
  else{
  $query = "SELECT ques, hint, img_p FROM relic_ques WHERE ques_no = ?";
  $stmt = $dbh->prepare($query);
  $stmt->bindParam(1, $q_on);
  if ($stmt->execute()) {  
    while ($row = $stmt->fetch()) {
      $ques = $row[0];
      $hint= $row[1];
      $img_p= $row[2];
    }
  }
}
?>
<!DOCTYPE html>
<html>
<head>
  <title>Play Braniac</title>
  <script src="jquery-3.3.1.min.js"></script>
  <script>


    $(document).ready(function() {


      $('#qSubmit').click(function(event){
        event.preventDefault();
        $.ajax({ 
          url: "aCheck.php",
          method: "POST",
          data: $('form').serialize(),
          dataType: "JSON",
          success: function(response) {
            // $('#message').text(strMessage)
             console.log(response);
            if(response.status == "correct"){
              $('#question').html(response.question);
              $('#hint').html(response.hint);
              $('#img_p').html(response.img_p);
              $('#question_no').html(response.ques_on);

              alert("Correct Answer");
              console.log(response.status);
            }else if(response.status == "incorrect"){
              alert("Wrong Answer");
            }else{
              alert(response.status);
            }
          }
        });
      });


      setInterval(function(){ 
        $.ajax({ 
          url: "uRank.php",
          method: "GET",
          dataType: "JSON",
          success: function(response1) {
            console.log(response1);
            for(var i=1; i<=10;i++){
              $('#rank'+i).html(i);
              $('#name'+i).html(response1["name"+ i]);
              $('#q_on'+i).html(response1["q_on"+ i]);
              $('#time'+i).html(response1["time"+ i]);
              $('#myrank').html(response1.myrank);
            }
          }
        });
      }, 10000);

      var to= 9
      var t=to;
      var myVar = setInterval(myTimer, 1000);

      function myTimer() {
        $('#timer').html(t);
        if(t==0)
        t=to;
        t--;
      }


    });


  </script>
  <style>
    table, th, td {
      border: 0.1px solid black;
    }
    body{}
  </style>
</head>
<body>




  <span><?php echo $_SESSION['name'];?></span><br/>
  <span><?php echo $_SESSION['ktj_id'];?></span><br/>
 
  Question Number : <div id="question_no"><?php echo $q_on; ?></div>
  <div id="question"><?php echo $ques; ?></div>
  <div id="hint"><?php echo $hint; ?></div>
  <div id="img_p"><?php echo $img_p; ?></div>



  <form autocomplete="off" method="POST">         
    <input type="text" id="answer" name="answer" placeholder="Your Answer" required>
    <button id="qSubmit" type="submit">Submit</button>               
  </form><!--id="qSubmit"-->




  Timer:<span id="timer"></span>
  <table>
    <tr>
      <th>Rank</th>
      <th>Name</th>
      <th>Solved</th>
      <th>Last Correct at</th>
    </tr>



    <?php
 
    $query2 = "SELECT name, ktj_id, q_on, last_time FROM relic ORDER BY score DESC";
    $stmt2 = $dbh->prepare($query2);

    $check= false;
    if($stmt2->execute()){
      $i=0;
      $alldata = $stmt2->fetchAll(PDO::FETCH_ASSOC);
      $rank = array_search($_SESSION['ktj_id'], array_column($alldata, 'ktj_id'));
      
      while ($i < 10){
        $row = $alldata[$i];
        $naam = $row['name'];
        $qusetion_on = $row['q_on']-1;
        $last_correct = $row['last_time'];
        date_default_timezone_set("Asia/Kolkata");
        $ti= date('Y-m-d H:i:s', $last_correct);
        echo "<tr>";
        echo "<td id='rank".($i + 1)."'>".($i + 1)."</td>";
        echo "<td id='name".($i + 1)."'>".$naam."</td>";
        echo "<td id='q_on".($i + 1)."'>".$qusetion_on."</td>";
        echo "<td id='time".($i + 1)."'>".$ti."</td>";
        echo "</tr>";
        $i++;
         
      }
      $myrank= $rank + 1;
    }
    ?>
  </table>


  Your Rank: <span id="myrank"><?php echo $myrank; ?></span>
  


</body>
</html>
<?php
}
?>
