<?php
    
    session_start();
    require 'connect.inc.php';
   
?>
<!DOCTYPE html>
<html lang="en">
    <head>
     <script src="js/jquery-3.3.1.min.js"></script>
     <script src='https://cdn.jsdelivr.net/npm/sweetalert2'></script>
     <script src='https://cdn.jsdelivr.net/npm/promise-polyfill'></script>
    <script>
        $(document).ready(function() {
    $('#login').click(function(event){
                event.preventDefault();
                
                $.ajax({
                    
                    url: "login.php",
                    method: "post",
                    data: $('#loginform').serialize(),
                    dataType: "text",
                    success: function(strMessage) {
                        // alert(strMessage);
                        if(strMessage == "allwell") {
                            
                            
                            window.location = "qpage.php";
                        } else {
                            //alert(strMessage);
                            console.log(strMessage);
                            Swal({
                              type: 'error',
                              title: 'Oops...',
                              text: strMessage
                            })
                        } 
                        }
                    
                })
                closeForm1();
                reload();
            })
        
        
        
        
        $('#register1').click(function(event){
                event.preventDefault();
                
                $.ajax({
                /*Registration*/
                {
                    url: "register.php",
                    method: "post",
                    data: $('#registform').serialize(),
                    dataType: "text",
                    success: function(strMessage) {
                        // alert(strMessage);
                        if(strMessage == "allwell") {
                            
                            
                            window.location = "index.php";
                        } else {
                            //alert(strMessage);
                            console.log(strMessage);
                            Swal({
                              type: 'error',
                              title: 'Oops...',
                              text: strMessage
                            })
                            
                        }
                    }
                }
                })
                closeForm1();
                reload();
        })
        
        
        
        }
        
        
        
        
        )
</script>   
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta http-equiv="X-UA-Compatible" content="ie=edge">
        <meta name="keywords" content="Relic Hunter, relichunter, relic, IIT kgp, kshitij, kshitij kgp" />

        <link href="https://fonts.googleapis.com/css?family=Lato:100,300,400,700,900" rel="stylesheet">
        <link href='https://fonts.googleapis.com/css?family=Allan' rel='stylesheet'>
        <link href='https://fonts.googleapis.com/css?family=Damion' rel='stylesheet'>
        <!--<link rel="stylesheet" href="css/icon-font.css">-->

        <link rel="stylesheet" href="cssnew/style.css">
        <link rel="stylesheet" href="cssnew/overiden.css">
        <link rel="shortcut icon" type="image/png" href="img/favicon.png">
        <script type="text/javascript">
            function openForm2()
            {
                document.getElementById("myloginForm").style.display = "block";
            }
      
            function openForm1()
            {
                document.getElementById("myregistrationForm").style.display = "block";
            }
      
            function closeForm2()
            {
                document.getElementById("myloginForm").style.display = "none";
            }
      
            function closeForm1()
            {
                document.getElementById("myregistrationForm").style.display = "none";
            }



        </script>
        <title>Relic Hunter</title>
        <style>
        .header{
            background-image:none;
        }
            body{
                background:black;
                background-color:#380028;
            }
            .heading-primary{
                color: #d79f47;
            }
            .heading-primary--main {
    display: block;
    font-size: 8rem;
    font-weight: 900;
    letter-spacing: 2.5rem;
    -webkit-animation-name: moveInLeft;
    animation-name: moveInLeft;
    -webkit-animation-duration: 1s;
    animation-duration: 1s;
    -webkit-animation-timing-function: ease-out;
    animation-timing-function: ease-out;
    font-family: 'Damion';
}
.heading-primary--sub {
    display: block;
    font-size: 4rem;
    font-weight: 400;
    letter-spacing: 0.75rem;
    -webkit-animation: moveInRight 1s ease-out;
    animation: moveInRight 1s ease-out;
}
.btn, .btn:link, .btn:visited {
    text-transform: uppercase;
    text-decoration: none;
    padding: 1.5rem 4rem;
    display: inline-block;
    border-radius: 1rem;
    -webkit-transition: all .2s;
    transition: all .2s;
    position: relative;
    font-size: 1.6rem;
    border: none;
    cursor: pointer;
    width: 200px;
}
.btn--white {

    background-color: #927de4;
    color: white;
}

        .section-about {
        background-color: #380028;
        }

    .btn--white::after {
    background-color: none;
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
    border: none;
    cursor: pointer;
    width: 200px;
    background-color: #927de4;
    color: white;

}

.center-button:hover {
  transform: translateY(-3px);
  box-shadow: 0 1rem 2rem rgba(0, 0, 0, 0.2); }
  .btn:hover::after {
    transform: scaleX(1.4) scaleY(1.6);
    opacity: 0; }



    .form-container {
    max-width: 431px;
    padding: 18px;
    background-color: white;
}

.section-about {
    padding: 25rem 0;
    margin-top: -36vh;
}

.heading-secondary{
    background-image: linear-gradient(to right, #FF9900, #FFCC00);
}
.message
{
    font-size: 20px;
}
        </style>
    </head>

    <body>
 
       <!-- <div class="navigation">
            <input type="checkbox" class="navigation__checkbox" id="navi-toggle">
            
 
            <label for="navi-toggle" class="navigation__button">
                <span class="navigation__icon">&nbsp;</span>
            </label>

            <div class="navigation__background">&nbsp;</div>
            
            <nav class="navigation__nav">
                <ul class="navigation__list">
                    <li class="navigation__item"><a href="#aboutopen" class="navigation__link"><span></span>About</a></li>
                    <li class="navigation__item"><a href="#rules" class="navigation__link"><span></span>Rules</a></li>
                    <li class="navigation__item"><a href="#teamopen" class="navigation__link"><span></span>Our team</a></li>
                    <li class="navigation__item"><a href="#contactopen" class="navigation__link"><span></span>Contact</a></li>
                    </ul>
            </nav>-->
            
        </div>

        <header class="header">
            <div class="header__text-box">
                <h1 class="heading-primary">
                    <span class="heading-primary--main">Relic Hunter</span>
                    <span class="heading-primary--sub">KSHITIJ 2021</span>
                </h1>

 
                <p class="message">
                <?php
                if(isset($_SESSION['log'])) {
                    echo $_SESSION['log'];
                    ?>
                    <a class="center-button " href="qpage.php">PLAY</a>
                    <?php
                    }
                    else
                    {
                     ?>   
                <a onclick="openForm1()" class="center-button">REGISTER</a>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
               

                <a onclick="openForm2()" class="center-button">SIGN IN</a>
                <br/>
                <br/>
                <br/>
                     
                    <?php
                    }
                ?>
                </p> 


            </div>
            
            <div class="form-popup" id="myloginForm">
                    <form action='login.php' method="post" id="loginform" autocomplete="off" class="form-container">
                     

                      <label for="email"><b>Email</b></label>
                      <input type="text" placeholder="Email registered on ktj.in" name="username" required>

                      <label for="psw"><b>Password</b></label>
                      <input type="password" placeholder="Password of ktj account" name="password" required>

                      <button type="submit" id="login" class="btn">Login</button>
                      <button type="button" class="btn cancel" onclick="closeForm2()">Close</button>
                    </form>
            </div>
            
            <div class="form-popup" id="myregistrationForm">
                    <form action='register.php' method="post" id="registform" autocomplete="off" class="form-container">
                     
                        <label for="name"><b>Name</b></label>
                        <input type="text" placeholder="Enter your full name" name="namer" required>

                        <label for="email"><b>Email</b></label>
                        <br/>
                        <input type="email" placeholder="Enter your Email" name="usernamer" required style="width:100%;padding: 15px; margin: 5px 0 22px 0; border: none; background: #f1f1f1;">
                        <br/>
                        <label for="ktj-id"><b>KTJ-ID</b></label>
                        <input type="text" placeholder="Enter your KTJ-ID" name="ktjr" required>
                        <label for="psw"><b>Password</b></label>
                        <input type="password" placeholder="Choose a Password" name="passwordr" required
                        pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}"
                        title="Must contain at least one number and one uppercase and lowercase letter, and at least 8 or more characters">

                        <button type="submit" id="register1" class="btn">Register</button>
                        <button type="button" class="btn cancel" onclick="closeForm1()">Close</button>
                    </form>
            </div>
        </header>
        <br><br>
        <main>
            <section class="section-about">
                <div id="aboutopen" class="u-center-text u-margin-bottom-big">
                    <h2 class="heading-secondary">
                        About
                    </h2>
                    <p style="font-size:20px; margin:0% 20%;color:white;">
                        Kshitij presents you, Relic Hunter. 
                    </p>
                </div>
                <div class="u-margin-bottom-big" id="rules">
                    <center><h2 class=" heading-secondary">
                        Rules
                    </h2></center>
                    <ol style="font-size:20px; margin:0% 20%;color:white;">
                        <li>There are 18 questions put up in this event.</li>
                        <li>Hints and background image will be provided based on the question, utilize them wisely.</li>
                        <li>If answer contains two name, seperate then with 'and'.</li>
                        <li>Answer are case insensitive.</li>
                        <li>You can’t jump into the next question unless and until you crack the preceding one.</li>
                        <li>A leaderboard will be put up parallelly, in which results will be updated automatically.</li>
                        <li>Registration on ktj.in is must otherwise one can't participate in this event.</li>
                        <li>Note down your KTJ ID for future reference, in case of any discrepency contact us immediately.</li>
                    </ol>
                </div>
          <!--      <div id="teamopen" class="u-center-text u-margin-bottom-big">
                    <h2 class="heading-secondary">
                        Our Web Team
                    </h2>
                </div>

                <div class="row">
                    <div class="col-1-of-2">
                        <h3 class="heading-tertiary u-margin-bottom-small">Web Team Heads And Coordinators</h3>
                        <p class="paragraph">
                             Shashi Ranjan
                            <br>Raj Shekhar Dev
                            <br>Rishi Kant Rajpoot
                            <br>Himanshu Sachan
                            <br>Sudhanshu Parashar
                            <br>Shubham Garg
                        </p>
                    </div>
                    <div class="col-1-of-2">
                        <div class="composition">

                            <img srcset="img/s4.jpg 300w, img/s4.jpg 1000w"
                                 sizes="(max-width: 66.25em) 20vw, (max-width: 47.5em) 30vw, 300px"
                                 alt="Photo 1"
                                 class="composition__photo composition__photo--p1"
                                 src="img/s4.jpg">

                            <img srcset="img/s5.jpg 300w, img/s5.jpg 1000w"
                                 sizes="(max-width: 66.25em) 20vw, (max-width: 47.5em) 30vw, 300px"
                                 alt="Photo 2"
                                 class="composition__photo composition__photo--p2"
                                 src="img/s5.jpg">

                            <img srcset="img/s6.jpg 300w, img/s6.jpg 1000w"
                                 sizes="(max-width: 66.25em) 20vw, (max-width: 47.5em) 30vw, 300px"
                                 alt="Photo 3"
                                 class="composition__photo composition__photo--p3"
                                 src="img/s6.jpg">

                           
                        </div>
                    </div>
                </div>
            </section>
            <section class="section-about u-margin-bottom-big">
                <div class="row u-margin-bottom-small">
                    <div class="col-1-of-2">
                        <h3 class="heading-tertiary u-margin-bottom-small">Web Team Sub-Heads And Sub-Coordinators</h3>
                        <p class="paragraph">
                            Anand Mani Tripathi
                            <br> Arnab Dey
                            <br>Joydip Sing
                            <br> Anurag Porte
                        </p>
                      
                    </div>
                    <div class="col-1-of-2">
                        <div class="composition">

                            <img srcset="img/s1.jpg 300w, img/s1.jpg 1000w"
                                 sizes="(max-width: 66.25em) 20vw, (max-width: 47.5em) 30vw, 300px"
                                 alt="Photo 1"
                                 class="composition__photo composition__photo--p1"
                                 src="img/s1.jpg">

                            <img srcset="img/s2.jpg 300w, img/s2.jpg 1000w"
                                 sizes="(max-width: 66.25em) 20vw, (max-width: 47.5em) 30vw, 300px"
                                 alt="Photo 2"
                                 class="composition__photo composition__photo--p2"
                                 src="img/s2.jpg">

                        </div>
                    </div>
                </div>
            </section>-->
        </main>
    </body>
</html>

<!--
            <section id="contactopen" class="section-tours" id="section-tours">
                <div class="u-center-text u-margin-bottom-big">
                    <h2 class="heading-secondary">
                        Get in touch
                    </h2>
                </div>
                <div class="row">
                    <div class="col-1-of-2">
                       <div class="card">
                           <div class="card__side card__side--front">
                                <div class="card__picture card__picture--1 l1">
                                    &nbsp;
                                </div>
                                <h4 class="card__heading">
                                    <span class="card__heading-span card__heading-span--1">Contact Us</span>
                                </h4>
                                <div class="card__details">
                                    <ul>
                                        <li>K. yashwant</li>
                                        <li>9647772965</li>
                                        <li>yashwant.kolliboyana@ktj.in</li>
                                    </ul>
                                </div>
                           </div>
                           <div class="card__side card__side--back card__side--back-1">
                                <div class="card__cta">
                                    <div class="card__price-box">
                                        <p class="card__price-only">Event</p>
                                        <p class="card__price-value">Head</p>
                                    </div>
                                </div>
                            </div>
                       </div>
                    </div>


                    <div class="col-1-of-2">
                        <div class="card">
                            <div class="card__side card__side--front">
                                <div class="card__picture card__picture--2 l2">
                                    &nbsp;
                                </div>
                                <h4 class="card__heading">
                                    <span class="card__heading-span card__heading-span--2">Notes</span>
                                </h4>
                                <div class="card__details">
                                    <ul>
                                        <li>If you don't have KTJ-ID yet, then Register on <bold style="color:red;">ktj.in</bold></li>
                                        <li>You can register for this event at <bold style="color:red;">https://ktj/.in/genesis</bold></li>
                                        <li>Fest Duration: <bold style="color:red;">18th-20th of January 2021</bold></li>
                                    </ul>
                                </div>

                            </div>
                            <div class="card__side card__side--back card__side--back-2">
                                <div class="card__cta">
                                    <div class="card__price-box">
                                        <p class="card__price-only">Visit</p>
                                        <p class="card__price-value">www.ktj.in</p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>                
                            </section>
        -->