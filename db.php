<?php
$dsn = "mysql:host=localhost;dbname=project";
$username = "root";
$password = "mysql";

try{
    $db = new PDO($dsn, $username, $password);
    echo "Connected";
}catch(PDOException $e) {
    $error_message = $e->getMessage();
    echo $error_message;
    exit();
}
?>