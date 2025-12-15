<?php
// Credenciales de la Base de Datos
$host = "localhost";
$user = "root"; // Usuario por defecto de XAMPP
$password = ""; // Contraseña por defecto de XAMPP (vacía)
$db = "mis_alquil_db"; // Nombre de la DB que creaste

// Crear la conexión
$con = mysqli_connect($host, $user, $password, $db);

// Chequear la conexión
if (!$con) {
    // Detiene la ejecución y muestra un error si la conexión falla (útil para diagnóstico)
    die("Error al conectar con la base de datos: " . mysqli_connect_error());
}
?>