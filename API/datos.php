<?php
    header('Content-Type: application/json');
    header("Access-Control-Allow-Origin: *");
    include_once 'consultas.php';


if($_GET['variable']== 'nodo'){
        $nodo = new Nodo();
        $nodos = array();
        $nodos["nodos"] = array();
        $res = $nodo->obtenerNodo();
        if($res->rowCount()){
            while ($row = $res->fetch(PDO::FETCH_ASSOC)){
    
                $item=array(
 
                    'cod_nodo'=> $row['cod_nodo'],
                    'coordenada_x'=> $row['coordenada_x'],
                    'coordenada_y'=> $row['coordenada_y'],
                    'estado'=> $row['estado'],
                );
                array_push($nodos["nodos"], $item);
            }
        
            echo json_encode($nodos);

         }else{
            echo json_encode(array('mensaje' => 'No hay elementos'));
        }

}else{
        
        if($_GET['variable']== 'arista'){
             $arista = new Arista();
             $aristas = array();
             $aristas["aristas"] = array();
             $res = $arista->obtenerArista();
             if($res->rowCount()){
                 while ($row = $res->fetch(PDO::FETCH_ASSOC)){
                   $item=array(
 
                    'cod_arista'=> $row['cod_arista'],
                    'cod_nodo_1'=> $row['cod_nodo_1'],
                    'cod_nodo_2'=> $row['cod_nodo_2'],
                    'estado'=> $row['estado'],
                    );
                    array_push($aristas["aristas"], $item);
                    }
        
                 echo json_encode($aristas);
                }else{
                     echo json_encode(array('mensaje' => 'No hay elementos'));
                }
        }else{
                if($_GET['variable']== 'destino'){
                    $destino = new Destino();
                    $destinos = array();
                    $destinos["destinos"] = array();
                    $res = $destino->obtenerDestino();
                    if($res->rowCount()){
                        while ($row = $res->fetch(PDO::FETCH_ASSOC)){
                         $item=array(
 
                         'cod_destino'=> $row['cod_destino'],
                         'd_nombre'=> $row['d_nombre'],
                         'descripcion'=> $row['descripcion'],
                         'cod_nodo'=> $row['cod_nodo'],
                         'imagen'=> $row['imagen'], // cambiar el tipo blob por una ruta
                         'estado'=> $row['estado'],

                        );
                        array_push($destinos["destinos"], $item);
                        }
                        echo json_encode($destinos);
                    }else{
                     echo json_encode(array('mensaje' => 'No hay elementos'));
                    }
                }else{
                    echo 'solicitud no encontrada';
                }
        }
    }

?>