<?php include("src/conexion.php"); ?>
<?php include("src/VerificarLogin.php"); ?>
<?php
	if (! empty($_GET["cod_arista"])){
		$cod_arista = $_GET["cod_arista"];
		if($cod_arista > 0){
	 		$sql = "update  arista set estado = 0 where cod_arista=".$cod_arista;
	 		$res=$conn->query($sql);
			if ($res == 1 ) {
				header("location: arista.php");
			} 		
	  	}	  	
	} 
	//$sql = "select * from servicio ";
	$sql = " select a.cod_arista, n1.cod_nodo, n1.n_nombre as nombre1, n2.cod_nodo, n2.n_nombre as nombre2 FROM arista a INNER JOIN nodo n1 ON a.cod_nodo_1= n1.cod_nodo INNER JOIN nodo n2 ON a.cod_nodo_2 = n2.cod_nodo where a.estado = 1";
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
			  		<h3>LISTADO DE ARISTAS<div style="float:right; padding-right:35px">
			  		<a href="arista_frm.php"><span class="glyphicon glyphicon-plus" aria-hidden="true"></span></a></h3>
			  	</div>
			  		
		  		</div>
		  		<table class="table table-hover">
		  			<thead>
		  				<tr>
		  					<th>ARISTA</th>
		  					<th>NODO 1</th>
		  					<th>NODO 2</th>
		  					<th>ACCION</th>
		  				</tr>
		  			</thead>
		  			<tbody>
		  				<?php
		  					$i=1; 
		  					while($row = $result->fetch_assoc()){
		  				?>
		  				<tr>
		  					<td><?php echo $row["cod_arista"] ?></td>
							<td><?php echo $row["nombre1"] ?></td>
							<td><?php echo $row["nombre2"] ?></td>
							<th>
								<a href="arista_frm.php?cod_arista=<?php echo $row["cod_arista"]; ?>"><span class="glyphicon glyphicon-pencil" aria-hidden="true"></span></a>
								&nbsp;&nbsp;&nbsp;&nbsp;
								<a href="arista.php?cod_arista=<?php echo $row["cod_arista"]; ?>"><span class="glyphicon glyphicon-remove" aria-hidden="true"></span></a
							</th>
		  				</tr>
		  				<?php } ?>
		  			</tbody>
		  		</table>
			</div>
		</div>
	</body>
</html>