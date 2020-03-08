<?php include("src/conexion.php"); ?>
<?php include("src/VerificarLogin.php"); ?>
<?php
	if (! empty($_GET["cod_nodo"])){
		$cod_nodo = $_GET["cod_nodo"];
		if($cod_nodo > 0){
	 		$sql = "update nodo set estado = 0 where cod_nodo=".$cod_nodo;
	 		$res=$conn->query($sql);
			if ($res == 1 ) {
				header("location: nodo.php");
			} 		
	  	}	  	
	} 
	$sql = " select n.cod_nodo, n.n_nombre , n.coordenada_x, n.coordenada_y, n.estado, u.u_nombre from nodo n INNER JOIN usuario u on n.cod_usuario = u.cod_usuario where n.cod_nodo = cod_nodo and n.estado = 1";
	$result=$conn->query($sql);

?>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<title>Panel de Control Nodo</title>
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
			  		<h3>LISTADO DE NODOS<div style="float:right; padding-right:35px">
			  		<a href="nodo_frm.php"><span class="glyphicon glyphicon-plus" aria-hidden="true"></span></a></h3>
			  	</div>
			  		
		  	</div>
		  		<table class="table table-hover">
		  			<thead>
		  				<tr>
		  					<th>NOMBRE</th>
		  					<th>COORDENADA X</th>
		  					<th>COORDENADA Y</th>
		  					<th>USUARIO</th>
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
		  					<td><?php echo $row["n_nombre"] ?></td>
							<td><?php echo $row["coordenada_x"] ?></td>
							<td><?php echo $row["coordenada_y"] ?></td>
							<td><?php echo $row["u_nombre"] ?></td>
							<td><?php echo $row["estado"] ?></td>
							<th>
								<a href="nodo_frm.php?cod_nodo=<?php echo $row["cod_nodo"]; ?>"><span class="glyphicon glyphicon-pencil" aria-hidden="true"></span></a>
								&nbsp;&nbsp;&nbsp;&nbsp;
								<a href="nodo.php?cod_nodo=<?php echo $row["cod_nodo"]; ?>"><span class="glyphicon glyphicon-remove" aria-hidden="true"></span></a>
							</th>
		  				</tr>
		  				<?php } ?>
		  			</tbody>
		  		</table>
			</div>
		</div>
	</body>
</html>