<?php include("src/conexion.php"); ?>
<?php include("src/VerificarLogin.php"); ?>
<?php 
	$res="";
	$cod_destino = 0;  
	$cod_nodo = 0;
	$d_nombre= '';
	$descripcion='';
	$imagen='';
	$estado='';


	if (! empty($_GET["cod_destino"])){
		$cod_destino = $_GET["cod_destino"];
		$sql = "select * from destino where cod_destino=".$cod_destino;
		$result=$conn->query($sql);
		//if(count($result)>0){
			$row = $result->fetch_assoc();	
			$cod_destino = $row["cod_destino"];
			$cod_nodo = $row["cod_nodo"];
			$d_nombre = $row["d_nombre"];
			$descripcion= $row["descripcion"];
			$imagen = $row["imagen"];
			$estado= $row["estado"];
		//}
	}else if($_POST){
		if (! empty($_POST["cod_destino"]) || $_POST["cod_destino"] == 0){
			$cod_destino = $_POST["cod_destino"];
			$cod_nodo = $_POST["cod_nodo"];
			$d_nombre = $_POST["d_nombre"];
			$descripcion= $_POST["descripcion"];
			$imagen = $_POST["imagen"];
			$estado= $_POST["estado"];

			$imagenaux='';
			$target_path = "img/destinos/";
			if($_FILES["foto"]["name"]==""){
				$imagenaux=$imagen;
			}else{
				$imagenaux= $target_path.$_FILES["foto"]["name"];
			}
		  	copy($ruta,$destino);
		  	echo "Archivo Guardado";
		  	$sql = "";
		  	if($cod_destino > 0){
		 		$sql = "update destino set d_nombre='".$d_nombre."', descripcion='".$descripcion."', 
		 				cod_nodo = '".$cod_nodo."', imagen = '".$imagenaux."' where cod_destino=".$cod_destino;
		  	}else{
		  		$sql  = "insert into destino (d_nombre, descripcion, cod_nodo, cod_usuario,   imagen, estado) values ";
		  		$sql .= "('". $d_nombre ."', '". $descripcion ."',".$cod_nodo.",". $_SESSION["cod_usuario"] .", 'img/destinos/". $imagen .".jpg',1 )";
				echo '<script language="javascript">alert("'.$sql.'");</script>';

		  	}

	  		$res=$conn->query($sql);
	  		if ($res == 1 ) {
	  			header("location: destino.php");
	  		}
	  	}
	}
	//llenar nodos
	$sqlnodos = "select * from nodo where estado = 1";
	$nodoaux=$conn->query($sqlnodos);

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


		<div class="col-md-12">
	        <div class="row">
	            <div class="col-md-12 text-center ">
	                <h3 class="page-header">REGISTRAR DESTINO</h3>
	            </div>
	        </div>
	        
     		<form name="frmdestino" action="destino_frm.php" method="POST" class="col-md-8 col-md-offset-2 " enctype="multipart/form-data">
		        <div class="col-md-8 left">
		            <div class="form-group" >
		                <label for="txtnomdestino">NOMBRE DEL DESTINO</label>
		                <input id="txtnomdestino" value="<?php echo $d_nombre ?>" type="text" maxlength="450" class="form-control" name="d_nombre"  placeholder="" >
		             </div>
		        </div>
		        <div class="col-md-8 left">
		            <div class="form-group" ><!-- ng-class="{'has-error': frm.txtNombres.$invalid, 'has-success': frm.txtNombres.$valid}" -->
		                <label for="txtdescripcion">DESCRIPCION DEL DESTINO</label>
		                <input id="txtdescripcion" value="<?php echo $descripcion ?>" type="text" maxlength="450" class="form-control" name="descripcion"  placeholder="" >
		            </div>

		            
		                <label for="txtimagen">IMAGEN</label><br>
		                <?php
		                	if ($imagen=='') {
		                		echo "Seleccione imagen";?>
		                		<input type="file" name="foto" id="foto">

	            				<?php
                			} else {
		                		echo "<img src='".$imagen."' width='100' heigth='100'>";?>
		                		<input type="file" name="foto" id="foto">
	            				<?php
	                		}
		                ?>
		         	
		         	

		         	<div class="col-md-12 left">
		            		<label for="txtnodo">NODO ASIGNADO</label>
			            	<select id="txtnodo" name="cod_nodo" class="form-control"   > <!-- onchange="llamar();"  -->
			            		<option value=""></option>
						  		<?php 
						  		while($nod = $nodoaux->fetch_assoc()) { 
						  		?>
						    		<option value="<?php echo $nod["cod_nodo"];?>" <?php echo ($cod_nodo == $nod["cod_nodo"]) ? 'selected' : ''; ?>> 
						    		 <?php echo $nod["n_nombre"] ?>
						    		</option>
							    <?php 
							    } 
							    ?>
							</select>
					</div>
		        </div>



	        	<input type="hidden" name="cod_destino" id="id" class="form-control" value="<?php echo $cod_destino ?>">
	        	</div>
            	<div class="row">
	        	<input type="hidden" name="imagen" id="id" class="form-control" value="<?php echo $imagen ?>">
	            </div>
	            <br>
	            <div class="row">
	                <div class="col-md-12 center">
	                    <button class="btn btn-success" name="GRABAR" >Guardar</button>
	                    <a href="destino.php" class="btn btn-primary">Cancelar</a>
	                    <hr>
	                </div>
	            </div>
	        </form>

		</div>
	</div>

</body>
</html>