<?php

$connection = mysqli_connect(
  'localhost', 'root', 'root', 'asks-database'
);

// for testing connection
#if($connection) {
#  echo 'database is connected';
#}

?>
