<?php
include("conexion.php");
header('Content-Type: application/json');

$datos = json_decode(file_get_contents("php://input"), true);

if (!empty($datos)) {
    $nombre = $conexion->real_escape_string($datos['nombre']);
    $correo = $conexion->real_escape_string($datos['correo']);
    $telefono = $conexion->real_escape_string($datos['telefono']);
    $direccion = $conexion->real_escape_string($datos['direccion']);
    $ciudad = $conexion->real_escape_string($datos['ciudad']);
    $pais = $conexion->real_escape_string($datos['pais']);
    $cantidad = (int)$datos['cantidad'];
    $metodo_pago = $conexion->real_escape_string($datos['metodo_pago']);
    $descripcion = $conexion->real_escape_string($datos['descripcion']);
    $total = (float)$datos['total'];

    $nombres_productos = [];
    foreach ($datos['carrito'] as $prod) {
        $nombres_productos[] = $prod['nombre'];
    }
    $productos_texto = $conexion->real_escape_string(implode(", ", $nombres_productos));

    $sql = "INSERT INTO pedidos (usuario_nombre, usuario_email, telefono, direccion, ciudad, pais, cantidad, metodo_pago, descripcion_adicional, productos, total) 
            VALUES ('$nombre', '$correo', '$telefono', '$direccion', '$ciudad', '$pais', '$cantidad', '$metodo_pago', '$descripcion', '$productos_texto', '$total')";

    if ($conexion->query($sql) === TRUE) {
        echo json_encode(["status" => "success"]);
    } else {
        echo json_encode(["status" => "error", "mensaje" => $conexion->error]);
    }
} else {
    echo json_encode(["status" => "error", "mensaje" => "No llegaron datos del formulario"]);
}
?>