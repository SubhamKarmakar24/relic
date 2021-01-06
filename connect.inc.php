<?php

$db_user = 'root';
$db_pass = '';

try {
	$dbh = new PDO('mysql:host=localhost;dbname=kshitij', $db_user , $db_pass);

} catch (PDOException $e) {
	print "Error".$e->getMessage();
	print 'Cannot connect to database.Try again Later';
	die();
} 



?>
