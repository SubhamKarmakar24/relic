<?php
    require 'require.php';
    if($_SESSION['currentimage']>=$_SESSION['totalimage'])
    {
        $_SESSION['currentimage'] = 1;
    }
    else
    {
        $_SESSION['currentimage'] = $_SESSION['currentimage'] + 1;
    }
    header('Location: qpage.php');
?>