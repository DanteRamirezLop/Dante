<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>UNIMAPS</title>
	<link rel="stylesheet" type="text/css" href="css/bootstrap.css" />
	<link rel="stylesheet" type="text/css" href="css/style.css" />
	<script  src="js/jquery-1.11.1.js"></script>
</head>
<body class ="login">
	<div class="container " style="width:30%; padding-top: 9%;">
      	
      	<form action="src/ValidarUsuario.php" method="POST">
	        <h2 class="form-signin-heading">
	        	<img class="profile-img"  style="width: 30%;"src="img/login.png"alt="">Iniciar Sesion
	    	</h2>

	        <label for="txtUsuario" class="sr-only">Login</label>
	        <input type="text" name="txtUsuario" id="txtUsuario" class="form-control" placeholder="Usuario" required autofocus>
	        
	        <label for="txtClave" class="sr-only">Clave</label>
	        <input type="password" name="txtClave" id="txtClave" class="form-control" placeholder="Clave" required>
	       
	        <div class="checkbox">
	          <label>
	            <input type="checkbox" value="remember-me"> Recuerdame
	          </label>
	        </div>
	        <button class="btn btn-lg btn-primary btn-block" name="LOGIN" value="LOGIN" type="submit">Login</button>
      	</form>
    </div>
</body>
</html>