<?php

session_start();

?>
<?php
require 'connect.inc.php';
$name = $_POST['namer'];
$email = $_POST['usernamer'];
$ktjid = $_POST['ktjr'];
$password = $_POST['passwordr'];
$pass = password_hash($password, PASSWORD_DEFAULT);

// Database connection


    $sql = "SELECT email from user WHERE email = '$email'";
    $result = $conn->query($sql);
    if($result->num_rows > 0)
    {
        $_SESSION['messageREG'] = "This email is already registered";
    }
    else
    {
        $stmt = $conn->prepare("insert into user(name,password,email, ktjid) values(?, ?, ?, ?)");
        $stmt->bind_param("ssss", $name, $pass, $email, $ktjid);
        $execval = $stmt->execute();
        echo $execval;
        $_SESSION['messageREG'] = "Registration Successful";
    }
    
    header('Location: index.php');
    
    $stmt->close();
    $conn->close();

?>
