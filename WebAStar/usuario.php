<?php include("src/conexion.php"); ?>
<?php include("src/VerificarLogin.php"); ?>
<?php
	if (! empty($_GET["cod_usuario"])){
		$cod_usuario = $_GET["cod_usuario"];
		if($cod_usuario > 0){
	 		$sql = "update usuario set estado = 0 where cod_usuario=".$cod_usuario;
	 		$res=$conn->query($sql);
			if ($res == 1 ) {
				header("location: usuario.php");
			} 		
	  	}	  	
	} 

	$sql = "select * from usuario where estado = 1 and tipo = 0";
	$result=$conn->query($sql);

?>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<title>Panel de Control Usuario</title>
	<link rel="stylesheet" type="text/css" href="css/bootstrap.css" />
	<link rel="stylesheet" type="text/css" href="css/style.css" />
	<script src="js/jquery-1.11.1.js"></script>
	<script src="js/bootstrap.min.js"></script>
</head>
<body>
<div class ="container">
	<div class ="col-md-12"> <!--  menu-->
		<ul class="nav nav-tabs nav-justified">
		  	<li class="active"><a href="inicio.php">Inicio</a></li>
		  	<li class="active"><a href="usuario.php">Usuario</a></li>
		  	<li class="active"><a href="nodo.php">Nodo</a></li>
		  	<li class="active"><a href="destino.php">Destino</a></li>
		  	<li class="active"><a href="arista.php">Arista</a></li>
		  	<li class="active"><a href="grafo.php">Grafo</a></li>
		  	<li><a href="cerrarSesion.php">Cerrar Sesion</a></li>
		</ul>
	</div>
			</div>

			<div class="row">&nbsp; </div>
			<div class="panel panel-default">
			  	<div class="panel-heading">
			  		<h3>LISTADO DE USUARIOS<div style="float:right; padding-right:35px">
			  		<a href="usuario_frm.php"><span class="glyphicon glyphicon-plus" aria-hidden="true"></span></a></h3>
			  	</div>
			  		
		  		</div>
		  		<table class="table table-hover">
		  			<thead>
		  				<tr>
		  					<th>NOMBRE COMPLETO</th>
		  					<th>CORREO</th>
		  					<th>USUARIO</th>
		  					<th>CONTRASEÑA</th>
		  					<th>ESTADO</th>
		  					<th>ACCION</th>
		  				</tr>
		  			</thead>
		  			<tbody>
		  				<?php
		  					$i=1; 
		  					while($row = $result->fetch_assoc()){
		  				?>
		  				<tr>
		  					<td><?php echo $row["u_nombre"] . ' ' . $row["ap_pat"]. ' ' . $row["ap_mat"] ?></td>
							<td><?php echo $row["correo"] ?></td>
							<td><?php echo $row["usuario"] ?></td>
							<td><?php echo $row["contrasena"] ?></td>
							<td><?php echo $row["estado"] ?></td>
							<th>
								<a href="usuario_frm.php?cod_usuario=<?php echo $row["cod_usuario"]; ?>"><span class="glyphicon glyphicon-pencil" aria-hidden="true"></span></a>
								&nbsp;&nbsp;&nbsp;&nbsp;
								<a href="usuario.php?cod_usuario=<?php echo $row["cod_usuario"]; ?>"><span class="glyphicon glyphicon-remove" aria-hidden="true"></span></a>
							</th>
		  				</tr>
		  				<?php } ?>
		  			</tbody>
		  		</table>
			</div>
		</div>
		<h4>Bienvenido(a) <?php echo $_SESSION["u_nombre"] ?> <?php echo $_SESSION["cod_usuario"] ?> <?php echo $_SESSION["ap_pat"] ?>  </h4>
	</body>
</html>