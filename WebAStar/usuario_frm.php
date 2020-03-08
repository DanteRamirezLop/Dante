<?php include("src/conexion.php"); ?>
<?php include("src/VerificarLogin.php"); ?>


<?php 
	$res="";
	$cod_usuario = 0; 
	$nombres=''; 
	$ap_pat = ''; 
	$ap_mat = '';
	$correo = '';  
	$usuario = ''; 	 
	$contrasena = ''; 
	$tipo= 0;	 
	if (! empty($_GET["cod_usuario"])) {
		$id = $_GET["cod_usuario"];
		$sql = "select * from usuario where cod_usuario=".$id." and estado = 1 ";
		$result=$conn->query($sql);
		if(is_integer(count($result))>0){
			$row = $result->fetch_assoc();	
			$cod_usuario = $row["cod_usuario"];
			$nombres = $row["u_nombre"];
			$ap_pat = $row["ap_pat"];
			$ap_mat = $row["ap_mat"];
			$correo = $row["correo"];
			$usuario = $row["usuario"];
			$contrasena = $row["contrasena"];
			$tipo = $row["tipo"];
			echo '<script language="javascript">console.log("llena usuario");</script>';
		}
	}else if($_POST){
		if (! empty($_POST["id"]) || $_POST["id"]==0){
			$cod_usuario= $_POST["id"]; 
			$nombres= $_POST["txtNombres"]; 
			$ap_pat= $_POST["txtAp_pat"];
			$ap_mat= $_POST["txtAp_mat"];
			$correo= $_POST["txtcorreo"];
			$usuario = $_POST["txtUsuario"]; 	 
		  	$contrasena= $_POST["txtClave"];
		  	$tipo= $_POST["txtTipo"];
		  	$sql = "";
		  	if($cod_usuario > 0){
		 		$sql = "update usuario set u_nombre='".$nombres."', ap_pat='".$ap_pat."', ap_mat='".$ap_mat."',correo='".$correo."',usuario='".$usuario."', contrasena='".$contrasena."' where cod_usuario=".$cod_usuario; echo '<script language="javascript">console.log("actualiza");</script>';
		  	}else{
		  		$sql  = "insert into usuario(u_nombre,ap_pat, ap_mat,correo,usuario, contrasena, tipo,estado) values ";
		  		$sql .= "('". $nombres ."', '". $ap_pat ."', '". $ap_mat ."', '". $correo ."','". $usuario ."', '". $contrasena ."',0,1)";
		  		echo '<script language="javascript">console.log("'.$sql.'");</script>';
		  	}
		  	echo '<script language="javascript">console.log("'.$sql.'");</script>';	  	
	  		$res=$conn->query($sql);
	  		if ($res == 1 ) {
	  			header("location: usuario.php");
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
		  	<li><a href="cerrarSesion.php">Cerrar Sesion</a></li>
		</ul>
	</div>
	<!--  <div style="width:50%">-->
		<div class="col-md-12">
			<div class="row">   
	        </div>
	        <div class="row">
	            <div class="col-md-12 text-center ">
	                <h3 class="page-header">REGISTRAR PERSONA</h3>
	            </div>
	        </div>
	        <form name="frmUsuario" action="usuario_frm.php" method="POST" class="col-md-8 col-md-offset-2 ">
	        	<input type="hidden"  name="id" id="id" class="form-control" value="<?php echo $cod_usuario ?>"><!-- -->
	        	
	            <div class="row">
	            	<div class="col-md-12 left"><hr></div>
            	</div>
            	<div class="row">
	                <div class="col-md-6 left">
	                    <div class="form-group" ng-class="{'has-error': frm.txtNombres.$invalid, 'has-success': frm.txtNombres.$valid}">
	                        <label for="txtNombres">NOMBRES</label>
	                        <input id="txtNombres" value="<?php echo $nombres ?>" type="text" maxlength="30" class="form-control" name="txtNombres" required="" placeholder="" autofocus="">
	                    </div>
	                </div>
	                <div class="col-md-6 left">
	                    <div class="form-group" ng-class="{'has-error': frm.txtAp_pat.$invalid, 'has-success': frm.txtAp_pat.$valid}">
	                        <label for="txtAp_pat">APELLIDO PATERNO</label>
	                        <input id="txtAp_pat" value="<?php echo $ap_pat ?>" type="text" maxlength="30" class="form-control" name="txtAp_pat" required="" placeholder="">
	                    </div>
	                </div>
                </div>
                <div class="row">
	                <div class="col-md-6 left">
	                    <div class="form-group" ng-class="{'has-error': frm.txtAp_mat.$invalid, 'has-success': frm.txtAp_mat.$valid}">
	                        <label for="txtAp_mat">APELLIDO MATERNO</label>
	                        <input id="txtAp_mat" value="<?php echo $ap_mat ?>" type="text" maxlength="8" class="form-control" name="txtAp_mat" required="" placeholder="">
	                    </div>
	                </div>
	                
	            </div>
	            <div class="row">
	                <div class="col-md-12 left">
	                    <div class="form-group" ng-class="{'has-error': frm.txtcorreo.$invalid, 'has-success': frm.txtcorreo.$valid}">
	                        <label for="txtcorreo">CORREO</label>
	                        <input id="txtcorreo" value="<?php echo $correo ?>" type="text" maxlength="100" class="form-control" name="txtcorreo" required="" placeholder="">
	                    </div>
	                </div>
	            </div>
	            <div class="row" id="validaroculto">
	                <div class="col-md-6 left">
	                    <div class="form-group"><!--  ng-class="{'has-error': frm.txtUsuario.$invalid, 'has-success': frm.txtUsuario.$valid}" -->
	                        <label for="txtUsuario">USUARIO</label>
	                        <input id="txtUsuario" value="<?php echo $usuario ?>" type="text" maxlength="100" class="form-control" name="txtUsuario" required="" placeholder="">
	                    </div><!--  -->
	                </div>
	                <div class="col-md-6 left">
	                    <div class="form-group"> <!--  ng-class="{'has-error': frm.txtClave.$invalid, 'has-success': frm.txtClave.$valid}" -->
	                        <label for="txtClave">CLAVE</label>
	                        <input id="txtClave" value="<?php echo $contrasena ?>" type="password" maxlength="100" class="form-control" name="txtClave" required="" placeholder="">
	                    </div>
	                </div>
	            </div>
	            <div class="row">
	                <div class="col-md-12 center">
	                    <button class="btn btn-success" name="GRABAR" >Guardar</button><!-- ng-disabled="frm.$invalid" -->
	                    <a href="usuario.php" class="btn btn-primary">Cancelar</a>
	                    <hr>
	                </div>
	            </div>
	        </form>
		</div>
	</div>
</body>
<script type="text/javascript">


		function llamar(){

			var selectBox = document.getElementById("txtTipo"); 
    		var selectedValue = selectBox.options[selectBox.selectedIndex].value ; 
    		//alert( selectedValue ); 
    		if (selectedValue == 1) {
    			document.getElementById('validaroculto').style.display = 'block'; //mostrar
    			//document.getElementById('txtUsuario').value = ' ';
    			//document.getElementById('txtClave').value = ' ';
    		}
    		if (selectedValue == 2) {
    			document.getElementById('validaroculto').style.display = 'none'; //ocultar
    			document.getElementById('txtUsuario').removeAttribute("required"); 
    			document.getElementById('txtClave').removeAttribute("required"); 
    		}
		}
		llamar();

</script>
</html>