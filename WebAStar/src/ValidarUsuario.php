<?php 
	include("conexion.php");

 	$usu =$_POST["txtUsuario"];
	$pass =$_POST["txtClave"];

	$sql="select * from usuario where usuario='$usu' and contrasena = '$pass'";
	$result=$conn->query($sql);

if($result->num_rows > 0){  //si hay resuktados se validara
    while($row = $result->fetch_assoc()){
	    session_start();
	 	$_SESSION["cod_usuario"]= $row["cod_usuario"];
	 	$_SESSION["u_nombre"]= $row["u_nombre"];
	 	$_SESSION["ap_pat"]= $row["ap_pat"];
	 	$_SESSION["ap_mat"]= $row["ap_mat"];
	 	$_SESSION["tipo"]= $row["tipo"];
	 	$_SESSION["estado"]= $row["estado"];
	}   
	if ($_SESSION["estado"]==1) {
	   	if ($_SESSION["tipo"]==1) {
	   		header("location: ../inicio.php");
	   	} else {
	   		header("location: ../inicio2.php");
	   	}
	} else {
	   	header("location: ../index.php");
	}
}else{
	header("location: ../index.php");
}

$conn->close();
?>
