<?php
session_start();
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
<html lang="zxx">
   <head>
       <title>BRANIAC</title>
      <!--meta tags -->
      <meta charset="UTF-8">
      <meta name="viewport" content="width=device-width, initial-scale=1">
      <meta name="keywords" content="Relic Hunter, relichunter, relic, IIT kgp, kshitij, kshitij kgp" />
      <script>
         addEventListener("load", function () {
         	setTimeout(hideURLbar, 0);
         }, false);
         
         function hideURLbar() {
         	window.scrollTo(0, 1);
         }
      </script>
      <script src="js/jquery-3.3.1.min.js"></script>
     <script src='https://cdn.jsdelivr.net/npm/sweetalert2'></script>
     <script src='https://cdn.jsdelivr.net/npm/promise-polyfill'></script>
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
            if(response.status == "correct"){
              $('#question').text(response.question);
              $('#hint').text(response.hint);
              $(".questionbox").css({"background-image": "url('"+ response.img_p +"')",
                                      "background-size": "cover"});
              $('#question_no').text(response.ques_on);
               
                Swal(
                'Good job!',
                'You got it correct!!',
                'success'
              )

              console.log(response.status);
            }else if(response.status == "incorrect"){
                Swal({
                              type: 'error',
                              title: 'Oops...',
                              text: 'Wrong answer! Try again'
                    })
             
            }else{
                Swal({
                              type: 'error',
                              title: 'Oops...',
                              text: response.status
                    })
            }
          }
        });
      });


      setInterval(function(){ 
        $.ajax({ 
          url: "uRank.php",
          method: "GET",
          dataType: "JSON",
          success: function(response) {
            console.log(response);
            for(var i=1; i<=10;i++){
              $('#rank'+i).html(i);
              $('#name'+i).html(response["name"+ i]);
              $('#q_on'+i).html(response["q_on"+ i]);
              $('#time'+i).attr("datetime", response["time"+ i]);
              $('#myrank').html(response.myrank);
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


      <!--//meta tags ends here-->
      <!--booststrap-->
      <link href="css/bootstrap.min.css" rel="stylesheet" type="text/css" media="all">
      <!--//booststrap end-->
      <!-- font-awesome icons -->
      <link href="css/fontawesome-all.min.css" rel="stylesheet" type="text/css" media="all">
      <!-- //font-awesome icons -->
      <!--stylesheets-->
      <link href="css/style.css" rel='stylesheet' type='text/css' media="all">
      <!--//stylesheets-->
      <!--lightbox slider-->
      <link rel="stylesheet" href="css/lightbox.css">
      <!-- lightbox slider-->
      <!-- Nav-CSS -->	
      <link href="css/nav.css" rel="stylesheet" type="text/css" media="all" />
      <script src="js/modernizr.custom.js"></script>
      <!-- //Nav-CSS -->
      <link href="https://fonts.googleapis.com/css?family=Cinzel+Decorative:400,700" rel="stylesheet">
      <link href="https://fonts.googleapis.com/css?family=Julius+Sans+One" rel="stylesheet">
      <link href="https://fonts.googleapis.com/css?family=Arimo" rel="stylesheet">
      <style type="text/css">
         .top_page-banner{
            text-align: center;
            /*background: url(images/b1.jpg) no-repeat center;*/
            background-size: cover;
            -webkit-background-size: cover;
            -moz-background-size: cover;
            -o-background-size: cover;
            -ms-background-size: cover;
            min-height: 150px;
            color: #d79f47;
            background-color:#260026;
            padding-top: 3.5em;
            border-bottom: 1px solid #d79f47;

         }
         .mycontainer1 {
    width: 100%;
    padding: 2em 1% 0 1%;
    /* background-color: skyblue; */
    height: 600px;
    margin-top: 0em;

    background-color: #380028  !important;
}

.overlay ul li a {

    color: #d79f47 !important;
}
.questionbox {
    width: 69%;
    height: 95%;
    float: left;
    /* box-shadow: 4px 4px 13px 2px #0000004d;
    style="background-image:url(<?= $img_p ?>); */
    background: #260026;
         border: 2px solid #d79f47;

}
.scoreboard {
    letter-spacing: 0px;
    width: 29%;
    float: right;
    /* background-color: white; */
    background-color: #260026 !important;
    height: 95%;
    margin-bottom: 10px;
    /* padding: 10px; */
    overflow: auto;
    box-shadow: 2px 2px 13px 1px #0000004d;
}
button#trigger-overlay {
    background: transparent;
    border: 2px solid #d79f47 !important;
    border-radius: 5px;
    /* color: #fff; */
    color: #d79f47 !important;
    font-size: 14px;
    outline: none;
    width: 37px;
    height: 37px;
    cursor: pointer;
}
.questionbox p {
    margin: 7% 5% 5% 5%;
    /* background-color: rgba(255,255,255,0.8); */
    word-wrap: break-word;
    font-size: 1.2em;
    border-radius: 10px;
    padding: 1em;
    letter-spacing: 0px;
    box-shadow: 2px 2px 9px 3px #00000080;
    color:#d79f47;
}

.questionbox p {
    margin: 8% 5% 1.5% 5%;
    background-color: rgba(255,255,255,0.2) !important;
    word-wrap: break-word;
    font-size: 1.3em;
}

.questionbox h3 {
    color: #d79f47 !important;
    text-transform: capitalize;
    margin-top: 15px;

}

.questionbox input {
    width: 50%;
    border: 1px solid #d79f47;
    border-radius: 4px;
    box-sizing: border-box;
    padding: 12px 20px;
    background: none;
    margin-top: 35px;
}
.questionbox input::placeholder {
  color: #d79f47;
}

.center-button{
   
   text-transform: uppercase;
   text-decoration: none;
   padding: 1.5rem 4rem;
   display: inline-block;
   border-radius: 1rem;
   -webkit-transition: all .2s;
   transition: all .2s;
   position: relative;
   font-size: 1.6rem;
   border: none !important;
   cursor: pointer;
   width: 200px;
   background-color: #927de4 !important;
   color: black !important;

}

.center-button:hover {
 transform: translateY(-3px);
 box-shadow: 0 1rem 2rem rgba(0, 0, 0, 0.2); }
 .btn:hover::after {
   transform: scaleX(1.4) scaleY(1.6);
   opacity: 0; }

   .hintmaterial {
    padding: 1em;
    box-shadow: 0px -1px 9px 4px #0003;
    background-color: #260026;
    color: #d79f47;
    border-top: 1px solid #d79f47;
    border-bottom: 1px solid #d79f47;
}
.scoreboard {
    letter-spacing: 0px;
    width: 29%;
    float: right;
    /* background-color: white; */
    background-color: #260026 !important;
    height: 95%;
    margin-bottom: 10px;
    /* padding: 10px; */
    overflow: auto;
    box-shadow: 2px 2px 13px 1px #0000004d;
    border: 2px solid;
    color: #d79f47;
}
.scoreboard h3 {
    /* background-color: #c5c5c5; */
    padding: 1em 1px;
    border-bottom: 1px solid;
    background:none;
}
.scoreboard tr:nth-child(2n+1) {
    background-color: none !important;
}

.scoreboard table {
    font-family: arial, sans-serif;
    border-collapse: collapse;
    width: 100%;
    color: #d79f47;
}
      </style>
   </head>
   <body>

<div id="myfailModal" class="modal fade" role="dialog">
  <div class="modal-dialog">
    <!-- Modal content-->
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal">&times;</button>
        <h4 class="modal-title">Oooops!</h4>
      </div>
      <div class="modal-body">
        <p>You missed it, try again.</p>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
      </div>
    </div>

  </div>
</div>

<div id="mysucModal" class="modal fade" role="dialog">
  <div class="modal-dialog">
    <!-- Modal content-->
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal">&times;</button>
        <h4 class="modal-title">Bravo!</h4>
      </div>
      <div class="modal-body">
        <p>You cracked it successfully.</p>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
      </div>
    </div>

  </div>
</div>

<!-- popup Jquery above-->
      <!--headder-->
      <div class="header-outs">
         <div class="header-w3layouts">
            <div class="container">
               <div class="right-side">
                  <p>
                     <button id="trigger-overlay" type="button">
                     <span class="fa fa-bars" aria-hidden="true"></span>
                     </button>
                  </p>
               </div>
               <!-- open/close -->
               <div class="overlay overlay-hugeinc">
                  <button type="button" class="overlay-close">Close</button>
                  <nav>
                     <ul>
                        <li><a href="index.php#aboutopen">ABOUT</a></li>
                        <li><a href="index.php#rules" >RULES</a></li>
                        <li><a href="index.php#teamopen">OUR TEAM</a></li>
                        <li><a href="index.php#contactopen">CONTACT</a></li>
                        <li><a href="logout.php">LOGOUT</a></li>
                     </ul>
                  </nav>
               </div>
               <div class="hedder-logo">
                  <h1><a href="index.php">   
                     <img src="images/rhlogo.png" style="width:5em;" class="img-fluid" alt="logo">2019</a>
                  </h1>
               </div>
               <!-- /open/close -->
               <!-- /navigation section -->
            </div>
            <div class="clearfix"> </div>
         </div>
      </div>
      <div class="clearfix"> </div>
      <!--//headder-->
      <!--//headder-->
      <!-- banner -->
      <div class="top_page-banner">
         <h2><?php echo $_SESSION['name'];?> | <?php echo $_SESSION['ktj_id'];?></h2>
      </div>
      <!--//banner -->
         <!--headder-->
            <!-- <div class="container py-lg-5 py-md-5 py-sm-4 py-4"> -->
               <div class="mycontainer1">
                  <div id="img_p" class="questionbox" style=" background-size: cover">
                     <center>
                     <h3 >Question <span id="question_no"> <?php echo $q_on; ?></span></h3>
                     <p id="question"><?php echo $ques; ?></p>
                     <form  autocomplete="off" method="POST">
                     <input type="text" id="answer" name="answer" placeholder="Put your answer here..."  required><br><br>
                     <button type="submit" id="qSubmit" class=" center-button" >SUBMIT</button>    <!--     -->
                     </form>
                     </center>
                  </div>

                  <div class="scoreboard scrollbar" id="style-10">
                    <center>
                        <h3>Top 10 Braniacs</h3>
                    </center>   
                    <table>
                          <tr style = "background:none;">
                            <th>Rank</th>
                            <th>Name</th>
                            <th>Solved</th>
                            <th>Last Solved at</th>
                            
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
                              echo '<tr style = "background:none;">';
                              echo "<td id='rank".($i + 1)."'>".($i + 1)."</td>";
                              echo "<td id='name".($i + 1)."'>".$naam."</td>";
                              echo "<td id='q_on".($i + 1)."'>".$qusetion_on."</td>";
                              echo "<td class='need_to_be_rendered' datetime='".$ti."'  id='time".($i + 1)."'>".$ti."</td>";
                              echo "</tr>";
                              $i++;
                               
                            }
                            $myrank= $rank + 1;
                          }
                        ?>
                    </table>
                  </div>
               </div>
               <div class="hintmaterial">
                <center>
                  <h4 >Hint: <span  id="hint"> <?php echo $hint; ?></span></h4><br>
                  <h4 >Your Rank: <span  id="myrank"> <?php echo $myrank; ?></span></h4>
                </center>  
              </div>
        
         <div style="background-color: green;"class="clearfix"></div>
         <!--Footer -->   
         <footer class="py-lg-4 py-md-3 py-sm-3 py-3">
             <div class="icons text-center p-3">
            <ul>
               <li><a href="https://www.facebook.com/ktj.iitkgp/" target="_blank"><span class="fab fa-facebook-f"></span></a></li>
               <li><a href="https://www.instagram.com/ktj.iitkgp/" target="_blank"><span class="fab fa-instagram"></span></a></li>
               <li><a href="https://www.youtube.com/user/ktjiitkgp" target="_blank"><span class="fab fa-youtube"></span></a></li>
               <li><a href="https://www.linkedin.com/company/kshitij-iit-kharagpur/" target="_blank"><span class="fab fa-linkedin"></span></a></li>
            </ul>
         </div>
            <div class="footer-below text-center">
              <p>Explore more about KSHITIJ-2019 at <a href="http://www.ktj.in" target="_blank"> ktj.in</a><br>
               <span>Date of Fest: <bold style="color:red;">18th-20th of January 2019</bold><span></p>
            </div>
         </footer>
         <!-- //Footer -->
         <!--nav menu-->
         <script src="js/classie.js"></script>
         <script src="js/demonav.js"></script>
         <!-- //nav menu-->
         <!--  light box js -->
         <script src="js/lightbox-plus-jquery.min.js"> </script> 
         <!-- //light box js-->   
         <!--bootstrap working-->
         <script src="js/bootstrap.min.js"></script>
         <!-- //bootstrap working-->
         <script src="js/timeago.min.js" type="text/javascript"></script>
         <script>timeago.render($('.need_to_be_rendered'));</script>
   </body>
</html>
<?php


}
?>