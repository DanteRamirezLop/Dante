<?php include("src/conexion.php"); ?>
<?php include("src/VerificarLogin.php"); ?>
<?php 
	$res="";
	$cod_nodo = 0;  
	$cod_usuario = 1;
	$n_nombre='';
	$coordenada_x='';
	$coordenada_y='';	
	if (! empty($_GET["cod_nodo"])){
		$cod_nodo = $_GET["cod_nodo"];
		$sql = "select * from nodo where cod_nodo=".$cod_nodo;
		$result=$conn->query($sql);
		//if(count($result)>0){
			$row = $result->fetch_assoc();	
			$cod_nodo = $row["cod_nodo"];
			$n_nombre = $row["n_nombre"];
			$coordenada_x= $row["coordenada_x"];
			$coordenada_y= $row["coordenada_y"];
			$cod_usuario = $row["cod_usuario"];
		//}
	}else if($_POST){
		if (! empty($_POST["id"]) || $_POST["id"]==0){
			$cod_nodo = $_POST["id"]; 
			$n_nombre 	= $_POST["txtn_nombre"]; 
			$coordenada_x  = $_POST["txtcoordenada_x"];
			$coordenada_y  = $_POST["txtcoordenada_y"];
			$cod_usuario = $row["txtcod_usuario"]; 
		  	$sql = "";
		  	if($cod_nodo > 0){
		 		$sql = "update nodo set coordenada_x = '".$coordenada_x."', coordenada_y = '".$coordenada_y."', n_nombre = '".$n_nombre."' where cod_nodo=".$cod_nodo;		
		  	}else{
		  		$sql  = "insert into nodo (n_nombre,coordenada_x,coordenada_y,cod_usuario,estado) values ";
		  		$sql .= "('". $n_nombre ."', '". $coordenada_x ."','". $coordenada_y ."',". $_SESSION["cod_usuario"] .",1)";
				echo '<script language="javascript">alert("'.$sql.'");</script>';
		  		
		  	}
		  		  	
	  		$res=$conn->query($sql);
	  		if ($res == 1 ) {
	  			header("location: nodo.php");
	  			//echo '<script language="javascript">alert("'.$sql.'");</script>';
	  		}
	  	}
	}
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
	                <h3 class="page-header">REGISTRAR NODO</h3>
	            </div>
	        </div>
	        <form name="frmNodo" action="nodo_frm.php" method="POST" class="col-md-8 col-md-offset-2 ">
	        	<input type="hidden"  name="id" id="id" class="form-control" value="<?php echo $cod_nodo ?>">
	            <br>
	            </div>
	            <br>
            	<div class="row">
	                <div class="col-md-6 left">
	                    <div class="form-group" ng-class="{'has-error': frm.txtn_nombres.$invalid, 'has-success': frm.txtn_nombre.$valid}">
	                        <label for="txtn_nombre">NOMBRE DEL NODO</label>
	                        <input id="txtn_nombre" value="<?php echo $n_nombre ?>" type="text" maxlength="30" class="form-control" name="txtn_nombre" required="" placeholder="" autofocus="">
	                    </div>
	                </div>
	                <div class="col-md-6 left">
	                    <div class="form-group" ng-class="{'has-error': frm.txtcoordenada_x.$invalid, 'has-success': frm.txtcoordenada_x.$valid}">
	                        <label for="txtcoordenada_x">COORDENADA X</label>
	                        <input id="txtcoordenada_x" value="<?php echo $coordenada_x ?>" type="text" maxlength="30" class="form-control" name="txtcoordenada_x" required="" placeholder="">
	                    </div>
	                </div>
                </div>
                <div class="row">
	                <div class="col-md-6 left">
	                    <div class="form-group" ng-class="{'has-error': frm.txtcoordenada_y.$invalid, 'has-success': frm.txtcoordenada_y.$valid}">
	                        <label for="txtcoordenada_y">COORDENADA Y</label>
	                        <input id="txtcoordenada_y" value="<?php echo $coordenada_y ?>" type="text" maxlength="30" class="form-control" name="txtcoordenada_y" required="" placeholder="" autofocus="">
	                    </div>
	                </div>
                </div>
	            <div class="row">
	                <div class="col-md-12 center">
	                    <button class="btn btn-success" name="GRABAR" >Guardar</button><!-- ng-disabled="frm.$invalid" -->
	                    <a href="nodo.php" class="btn btn-primary">Cancelar</a>
	                    <hr>
	                </div>
	            </div>
	        </form>

		</div>
	</div>
	<?php echo $_SESSION["cod_usuario"] ?>
</body>
<script type="text/javascript">


		function llamar(){

			var selectBox = document.getElementById("txtNodo"); 
    		var selectedValue = selectBox.options[selectBox.selectedIndex].value ; 
    		//alert( selectedValue ); 
		}
		llamar();

</script>
</html>