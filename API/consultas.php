<?php
include_once 'conexion.php';
class Nodo extends DB{
    
    function obtenerNodo(){
        $query = $this->connect()->query('SELECT * FROM nodo');
        return $query;
    }
}

class Arista extends DB{
    
    function obtenerArista(){
        $query = $this->connect()->query('SELECT * FROM arista');
        return $query;
    }
}

class Destino extends DB{
    
    function obtenerDestino(){
        $query = $this->connect()->query('SELECT * FROM destino');
        return $query;
    }
}


?>