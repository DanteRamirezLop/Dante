<?php include("src/conexion.php"); ?>
<?php include("src/VerificarLogin.php"); ?>
<?php 
	$res="";  
	$cod_arista = 0;
	$cod_nodo_1 = 0;
	$cod_nodo_2 = 0;

	if (! empty($_GET["cod_arista"])){
		$cod_arista = $_GET["cod_arista"];
		$sql = "select * from arista where cod_arista=".$cod_arista;
		$result=$conn->query($sql);
		//if(count($result)>0){
			$row = $result->fetch_assoc();	
			$cod_arista = $row["cod_arista"];
			$cod_nodo_1 = $row["cod_nodo_1"];
			$cod_nodo_2 = $row["cod_nodo_2"];
		//}
	}else if($_POST){
		if (! empty($_POST["cod_arista"]) || $_POST["cod_arista"]==0){
			$cod_arista = $_POST["cod_arista"]; 
			$cod_nodo_1 = $_POST["txtnodoi"]; 
			$cod_nodo_2  = $_POST["txtnodof"];

		  	$sql = "";
		  	if($cod_arista > 0){
		 		$sql = "update arista set cod_nodo_1='".$cod_nodo_1."', cod_nodo_2='".$cod_nodo_2."' where cod_arista=".$cod_arista;		
		  	}else{
		  		$sql  = "insert into arista (cod_nodo_1, cod_nodo_2, estado) values ";
		  		$sql .= "('". $cod_nodo_1 ."', '". $cod_nodo_2 ."',1 )";
				echo '<script language="javascript">alert("'.$sql.'");</script>';
		  		$sql  = "insert into arista (cod_nodo_1, cod_nodo_2, estado) values ";
		  		$sql .= "('". $cod_nodo_1 ."', '". $cod_nodo_2 ."',1 )";
				echo '<script language="javascript">alert("'.$sql.'");</script>';
		  	}
		  		  	
	  		$res=$conn->query($sql);
	  		if ($res == 1 ) {
	  			header("location: arista.php");
	  			//echo '<script language="javascript">alert("'.$sql.'");</script>';
	  		}
	  	}
	}
	//llenar nodos
	$sqlnodos1 = "select * from nodo where estado = 1";
	$nodo1=$conn->query($sqlnodos1);
	$sqlnodos2 = "select * from nodo where estado = 1";
	$nodo2=$conn->query($sqlnodos2);

?>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
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
	<!--  <div style="width:50%">-->
		<div class="col-md-12">
			<div class="row">   
	        </div>
	        <div class="row">
	            <div class="col-md-12 text-center ">
	                <h3 class="page-header">REGISTRAR ARISTA</h3>
	            </div>
	        </div>
	        <form name="frmarista" action="arista_frm.php" method="POST" class="col-md-8 col-md-offset-2 ">
	        	<input type="hidden"  name="id" id="id" class="form-control" value="<?php echo $cod_arista ?>">
	            <br>
	            <div class="col-md-12 left">
	            		<label for="txtnodoi">NODO DE INICIO</label>
		            	<select id="txtnodoi" name="txtnodoi" class="form-control"   > <!-- onchange="llamar();"  -->
		            		<option value=""></option>
					  		<?php 
					  		while($nod = $nodo1->fetch_assoc()) { 
					  		?>
					    		<option value="<?php echo $nod["cod_nodo"];?>" <?php echo ($cod_nodo_1 == $nod["cod_nodo"]) ? 'selected' : ''; ?>> 
					    		 <?php echo $nod["n_nombre"] ?>
					    		</option>
						    <?php 
						    } 
						    ?>
						</select>
				</div>
				<br>
				<div class="col-md-12 left">
	            		<label for="txtnodof">NODO FINAL</label>
		            	<select id="txtnodof" name="txtnodof" class="form-control"   > <!-- onchange="llamar();"  -->
		            		<option value=""></option>
					  		<?php 
					  		while($nod = $nodo2->fetch_assoc()) { 
					  		?>
					    		<option value="<?php echo $nod["cod_nodo"];?>" <?php echo ($cod_nodo_2 == $nod["cod_nodo"]) ? 'selected' : ''; ?>> 
					    		 <?php echo $nod["n_nombre"] ?>
					    		</option>
						    <?php 
						    } 
						    ?>
						</select>
				</div>
			</div>
			<div>
	            <br>
	            <br>
	            <div class="row">
	            	<br>
	                <div class="col-md-12 center">
	                    <button class="btn btn-success" name="GRABAR" >Guardar</button>
	                    <a href="arista.php" class="btn btn-primary">Cancelar</a>
	                    <hr>
	                </div>
	            </div>
	            <!--<?php echo $cod_arista;?>
	        -->
	        </form>

		</div>
	</div>
</body>
</html>