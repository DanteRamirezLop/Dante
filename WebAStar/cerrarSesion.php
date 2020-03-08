<?php 
	session_start();
 	unset($_SESSION["id_persona"], $_SESSION["id_tipo_persona"]);
 	header("location: index.php");
?>