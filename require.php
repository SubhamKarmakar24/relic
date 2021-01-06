<?php

ob_start();
session_start();
function loggedin() {
	if ((isset($_SESSION['ktj_id']))&&(isset($_SESSION['email']))&&(!empty($_SESSION['ktj_id']))&&(!empty($_SESSION['email']))) {
		return true;
	} else {
		return false;
	}
}
?>