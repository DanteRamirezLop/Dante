
<?php include("src/VerificarLogin.php"); ?>

<!DOCTYPE html>
<html lang="en-us">
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <title>Panel de Control</title>
    <link rel="stylesheet" type="text/css" href="css/bootstrap.css" />
    <link rel="stylesheet" type="text/css" href="css/style.css" />
    <script src="js/jquery-1.11.1.js"></script>
    <script src="js/bootstrap.min.js"></script>


    
    <link rel="stylesheet" href="TemplateData/style.css">
    <script src="TemplateData/UnityProgress.js"></script>
    <script src="Build/UnityLoader.js"></script>
    <script>
      var unityInstance = UnityLoader.instantiate("unityContainer", "Build/WebUnityPrueba.json", {onProgress: UnityProgress});
    </script>
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

    <div class="webgl-content">
      <div id="unityContainer" style="width: 960px; height: 500px"></div>
      <div class="footer">
        <div class="fullscreen" onclick="unityInstance.SetFullscreen(1)"></div>
        <div class="title">Grafo UNPRG</div>
      </div>
    </div>
  </body>
</html>

