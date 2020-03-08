<?php include("src/VerificarLogin.php"); ?>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<title>Panel de Control</title>
	<link rel="stylesheet" type="text/css" href="css/bootstrap.css" />
	<link rel="stylesheet" type="text/css" href="css/style.css" />
	<script src="js/jquery-1.11.1.js"></script>
	<script src="js/bootstrap.min.js"></script>
</head>
<body>
<div class ="container">
	<div class ="col-md-12"> <!--  menu-->
		<ul class="nav nav-tabs nav-justified">
		  	<li class="active"><a href="inicio2.php">Inicio</a></li>
		  	<li class="active"><a href="nodo2.php">Nodo</a></li>
		  	<li class="active"><a href="destino2.php">Destino</a></li>
		  	<li class="active"><a href="arista2.php">Arista</a></li>
		  	<li class="active"><a href="grafo2.php">Grafo</a></li>
		  	<li><a href="cerrarSesion.php">Cerrar Sesion</a></li>
		</ul>
	</div>
	
	<div class="row">
		<div class="text-center col-md-12" style="color:#827717;">
			<h3>UNIMPAS</h3>
		</div>
		<div class="col-md-12">
			<div class="col-md-6 col-md-offset-3">
				<img src="img/unprg.jpg" width="100%" height="100%" class="img-responsive" alt="">
			</div>
		</div>

		<div class="col-md-12 text-center" style="color:#7CB342">
			<h4>Bienvenido(a) <?php echo $_SESSION["u_nombre"] ?> <?php echo $_SESSION["ap_pat"] ?>  </h4>
		</div>	
	</div>
</div>
</body>
</html>