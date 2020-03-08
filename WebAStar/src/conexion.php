<?php
$servername="127.0.0.1";
$username="root";
$password="root";
$dbname="bd_tesis";
echo '<script language="javascript">console.log("entro");</script>';
//crear conexion
$conn= new mysqli($servername, $username, $password, $dbname);

//verificar conexion
if($conn->connect_error){
	die("Connection failed: " .$conn->connect_error);
	echo '<script language="javascript">alert("Error");</script>';
}

?>