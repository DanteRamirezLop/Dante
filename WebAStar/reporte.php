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
	<link rel="stylesheet" type="text/css" href="js/jquery-ui.min.css">


	<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.9.0/jquery.min.js"></script>
	<script src="http://cdnjs.cloudflare.com/ajax/libs/raphael/2.1.0/raphael-min.js"></script>
	<link rel="stylesheet"  href="libs/morris.css">
	<script src="libs/morris.min.js" charset="utf-8"></script>
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
		  	<li class="active"><a href="reporte.php">Reporte Visitas</a></li> 
		  	<li><a href="cerrarSesion.php">Cerrar Sesion</a></li>
		</ul>
	</div>
	
	<div class="row">
		<div class="text-center col-md-12" style="color:#827717;">
			<h3>Visitantes</h3>
		</div>

	<form name="form3" method="post">
   		 <div class="col-md-12">
    		<p>Seleccionar Fecha: <input type="text" id="datepicker" name="FechaPicker">
    		<button class="btn btn-success" name="Aceptar" >Aceptar</button></p> 
		</div>
    </form>
    <div class="col-md-12">
		
    <?php
      function contador()
  	  {

  	    if(isset($_POST['Aceptar'])){
    		$Fecha=$_POST['FechaPicker'];
    		$dato = explode("/", $Fecha); 
    		$mes= (int) $dato[0];
    		$dia=(int) $dato[1];
    		$anio=(int) $dato[2];
 			
 			echo "$anio-$mes-$dia ";
    	}

	switch ($dia) {
    case 1:
        $archivo="Noviembre/1.txt";
        break;
    case 2:
        $archivo="Noviembre/2.txt";
        break;
    case 3:
        $archivo="Noviembre/3.txt";
        break;
    case 4:
        $archivo="Noviembre/4.txt";
        break;
    case 5:
        $archivo="Noviembre/5.txt";
        break;
    case 6:
        $archivo="Noviembre/6.txt";
        break;
    case 7:
        $archivo="Noviembre/7.txt";
        break;
    case 8:
        $archivo="Noviembre/8.txt";
        break;
    case 9:
        $archivo="Noviembre/9.txt";
        break;
    case 10:
        $archivo="Noviembre/10.txt";
        break;
    case 11:
        $archivo="Noviembre/11.txt";
        break;
    case 12:
        $archivo="Noviembre/12.txt";
        break;
    case 13:
        $archivo="Noviembre/13.txt";
        break;
    case 14:
        $archivo="Noviembre/14.txt";
        break;
    case 15:
        $archivo="Noviembre/15.txt";
        break;
    case 16:
        $archivo="Noviembre/16.txt";
        break;
    case 17:
        $archivo="Noviembre/17.txt";
        break;
    case 18:
        $archivo="Noviembre/18.txt";
        break;
    case 19:
        $archivo="Noviembre/19.txt";
        break;
    case 20:
        $archivo="Noviembre/20.txt";
        break;
    case 21:
        $archivo="Noviembre/21.txt";
        break;
    case 22:
        $archivo="Noviembre/22.txt";
        break;
    case 23:
        $archivo="Noviembre/23.txt";
        break;
    case 24:
        $archivo="Noviembre/24.txt";
        break;
    case 25:
        $archivo="Noviembre/25.txt";
        break;
    case 26:
        $archivo="Noviembre/26.txt";
        break;
    case 27:
        $archivo="Noviembre/27.txt";
        break;
    case 28:
        $archivo="Noviembre/28.txt";
        break;
    case 29:
        $archivo="Noviembre/29.txt";
        break;
    case 30:
        $archivo="Noviembre/30.txt";
        break;          
     }
    //--------------------------------
		$f = fopen($archivo, "r");
		$contador=0;
		if($f)
		{
			$contador = fread($f,filesize($archivo));
			//$contador= $contador+1;
			fclose($f);
		}

		$f = fopen($archivo, "w+");
		if($f)
		{
			fwrite($f, $contador);
			fclose($f);
		}
		return $contador;
 	}
 	$visitante = contador();
 	echo "Numero de visitantes  :" . $visitante;	
    ?>
	</div>

	<div class="col-md-12">
    <?php
	 $hoy = getdate();
   		 $d = $hoy['mday'];
   		 $m = $hoy['mon'];
   		 $y = $hoy['year'];
   		 echo "Hoy: ";
   		 echo "$d-$m-$y"; //getdate converted day
    	?>	
    </div>
    <?php
    //---------------------
	function contador2()
  	{
  		$todayh = getdate();
    	$d = $todayh['mday'];
    	$m = $todayh['mon'];
    	$y = $todayh['year'];
    //echo "$d-$m-$y"; //getdate converted day
    //----------------------------
		switch ($d) {
    	case 1:
        	$archivo="Noviembre/1.txt";
        	break;
    	case 2:
        	$archivo="Noviembre/2.txt";
        	break;
    	case 3:
        	$archivo="Noviembre/3.txt";
        	break;
    	case 4:
        	$archivo="Noviembre/4.txt";
        	break;
    	case 5:
        	$archivo="Noviembre/5.txt";
        	break;
    	case 6:
        	$archivo="Noviembre/6.txt";
        	break;
    	case 7:
        	$archivo="Noviembre/7.txt";
        	break;
    	case 8:
        	$archivo="Noviembre/8.txt";
        	break;
    	case 9:
        	$archivo="Noviembre/9.txt";
        	break;
    	case 10:
        	$archivo="Noviembre/10.txt";
        	break;
    	case 11:
        	$archivo="Noviembre/11.txt";
        	break;
    	case 12:
        	$archivo="Noviembre/12.txt";
        	break;
    	case 13:
        	$archivo="Noviembre/13.txt";
        	break;
    	case 14:
        	$archivo="Noviembre/14.txt";
        	break;
    	case 15:
        	$archivo="Noviembre/15.txt";
        	break;
    	case 16:
        	$archivo="Noviembre/16.txt";
        	break;
    	case 17:
        	$archivo="Noviembre/17.txt";
        	break;
    	case 18:
        	$archivo="Noviembre/18.txt";
        	break;
    	case 19:
        	$archivo="Noviembre/19.txt";
        	break;
    	case 20:
        	$archivo="Noviembre/20.txt";
        	break;
    	case 21:
        	$archivo="Noviembre/21.txt";
        	break;
    	case 22:
        	$archivo="Noviembre/22.txt";
        	break;
    	case 23:
        	$archivo="Noviembre/23.txt";
        	break;
    	case 24:
        	$archivo="Noviembre/24.txt";
        	break;
    	case 25:
        	$archivo="Noviembre/25.txt";
        	break;
    	case 26:
        	$archivo="Noviembre/26.txt";
        	break;
    	case 27:
        	$archivo="Noviembre/27.txt";
        	break;
    	case 28:
        	$archivo="Noviembre/28.txt";
        	break;
    	case 29:
        	$archivo="Noviembre/29.txt";
        	break;
    	case 30:
        	$archivo="Noviembre/30.txt";
        	break;          
     	}

		$f = fopen($archivo, "r");
		$contador=0;
		if($f)
		{
			$contador = fread($f,filesize($archivo));
			//$contador= $contador+1;
			fclose($f);
		}

		$f = fopen($archivo, "w+");
		if($f)
		{
			fwrite($f, $contador);
			fclose($f);
		}
		return $contador;
 	}
    //---------------------
    $visitanteHoy = contador2();
    ?>
  
	<div class="col-md-12">
    	<div id="myfirstchart" style="height: 250px;"></div>
		<!--<script src="linea.js" charset="utf-8"></script>
		!-->
		<script>
			
  new Morris.Bar({
  // ID of the element in which to draw the chart.
  element: 'myfirstchart',
  // Chart data records -- each entry in this array corresponds to a point on
  // the chart.
  data: [
    { year: 'dia 1', value: 20 },
    { year: 'dia 2', value: 10 },
    { year: 'dia 3', value: 4 },
    { year: 'dia 4', value: 5 },
    { year: 'dia 5', value: 4 },
    { year: 'dia 6', value: 25 },
    { year: 'dia 7', value: 5 },
    { year: 'dia 8', value: 5 },
    { year: 'dia 9', value: 5 },
    { year: 'dia 10', value: 5 },
    { year: 'dia 11', value: <?php echo $visitanteHoy; ?> },
    { year: 'dia 12', value: 0 },
    { year: 'dia 13', value: 0 },
    { year: 'dia 14', value: 0 },
    { year: 'dia 15', value: 0 },
    { year: 'dia 16', value: 0 },
    { year: 'dia 17', value: 0 },
    { year: 'dia 18', value: 0 },
    { year: 'dia 19', value: 0 },
    { year: 'dia 20', value: 0 },
    { year: 'dia 21', value: 0 },
    { year: 'dia 22', value: 0 },
    { year: 'dia 23', value: 0 },
    { year: 'dia 24', value: 0 },
    { year: 'dia 25', value: 0 },
    { year: 'dia 26', value: 0 },
    { year: 'dia 27', value: 0 },
    { year: 'dia 28', value: 0 },
    { year: 'dia 29', value: 0 },
    { year: 'dia 30', value: 0 }
  ],
  // The name of the data record attribute that contains x-values.
  xkey: 'year',
  // A list of names of data record attributes that contain y-values.
  ykeys: ['value'],
  // Labels for the ykeys -- will be displayed when you hover over the
  // chart.
  labels: ['Value']
});
		</script>	

	</div>


	</div>
</div>
<script type="text/javascript" src="js/jquery-3.4.1.min.js"></script>
<script type="text/javascript" src="js/jquery-ui.min.js"></script>	

<script>
$("#datepicker").datepicker();
</script>



</body>
</html>