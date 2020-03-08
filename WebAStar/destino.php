<?php include("src/conexion.php"); ?>
<?php include("src/VerificarLogin.php"); ?>
<?php
	if (! empty($_GET["cod_destino"])){
		$cod_destino = $_GET["cod_destino"];
		if($cod_destino > 0){
	 		$sql = "update  destino set estado = 0 where cod_destino=".$cod_destino;
	 		$res=$conn->query($sql);
			if ($res == 1 ) {
				header("location: destino.php");
			} 		
	  	}	  	
	} 
	$sql = " select d.cod_destino, d.d_nombre, d.descripcion, d.cod_usuario, d.cod_nodo, d.imagen, d.estado, u.u_nombre, n.n_nombre FROM destino d INNER JOIN usuario u ON d.cod_usuario = u.cod_usuario INNER JOIN nodo n ON d.cod_nodo = n.cod_nodo where d.estado = 1";
	$result=$conn->query($sql);

?>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<title>SISTEMA</title>
		<link rel="stylesheet" type="text/css" href="css/bootstrap.css" />
		<link rel="stylesheet" type="text/css" href="css/style.css" />
		<script  src="js/jquery-1.11.1.js"></script>
		<script  src="js/bootstrap.min.js"></script>
	</head>
	<body>
		<div class="container">
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
			
			<div class="row">&nbsp; </div>
			<div class="panel panel-default">
			  	<div class="panel-heading">
			  		<h3>LISTADO DE DESTINOS
			  		<a href="destino_frm.php"><span class="glyphicon glyphicon-plus" aria-hidden="true"></span></a></h3>
			  		
		  		</div>
		  	</div>

		  		<table class="table table-hover">
		  			<thead>
		  				<tr>
		  					<th>NOMBRE</th>
		  					<th>DESCRIPCION</th>
		  					<th>NODO</th>
		  					<th>USUARIO</th>
		  					<th>IMAGEN</th>
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
		  					<td><?php echo $row["d_nombre"] ?></td>
							<td><?php echo $row["descripcion"] ?></td>
							<td><?php echo $row["n_nombre"] ?></td>
							<td><?php echo $row["u_nombre"] ?></td>
							<td><?php echo "<img src='".$row["imagen"]."' width='100' heigth='100'>" ?></td>
							<td><?php echo $row["estado"] ?></td>
							<th>
								<a href="destino_frm.php?cod_destino=<?php echo $row["cod_destino"]; ?>"><span class="glyphicon glyphicon-pencil" aria-hidden="true"></span></a>
								&nbsp;&nbsp;&nbsp;&nbsp;
								<a href="destino.php?cod_destino=<?php echo $row["cod_destino"]; ?>"><span class="glyphicon glyphicon-remove" aria-hidden="true"></span></a>				
							</th>
		  				</tr>
		  				<?php } ?>
		  			</tbody>
		  		</table>
			</div>
		</div>
	</body>
</html>