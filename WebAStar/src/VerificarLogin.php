<?php 
	session_start();
	if(empty($_SESSION["cod_usuario"])){
		header("location: ../index.php");
	}
?>




