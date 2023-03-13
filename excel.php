<?php
error_reporting(E_ALL);
ini_set('display_errors', 1);
header("Access-Control-Allow-Origin: *");
header("Access-Control-Allow-Headers: *");
header("Access-Control-Allow-Methods: *");

include 'connect.php';
$objDb = new Connect;
$conn = $objDb->connect();

$method = $_SERVER['REQUEST_METHOD'];
switch ($method) {
    case "GET":
        $sql = "SELECT * FROM excel";
        $path = explode('/', $_SERVER['REQUEST_URI']);
        if (isset($path[3]) && is_numeric($path[3])) {
            $sql .= " WHERE id = :id";
            $stmt = $conn->prepare($sql);
            $stmt->bindParam(':id', $path[3]);
            $stmt->execute();
            $products = $stmt->fetch(PDO::FETCH_ASSOC);
        } else {
            $stmt = $conn->prepare($sql);
            $stmt->execute();
            $products = $stmt->fetchAll(PDO::FETCH_ASSOC);
        }

        echo json_encode($products);
        break;
    case "POST":
        $excel = json_decode(file_get_contents('php://input'));
        $sql = "INSERT INTO `excel` (`id`, `id_mt`, `name`, `remain`, `unit`) VALUES (NULL, :id, :name, :remain, :unit);";
        $stmt = $conn->prepare($sql);
        $stmt->bindParam(':id', $excel->id);
        $stmt->bindParam(':name', $excel->name);
        $stmt->bindParam(':remain', $excel->remain);
        $stmt->bindParam(':unit', $excel->unit);

        if ($stmt->execute()) {
            $response = ['status' => 1, 'message' => 'Record created successfully.'];
        } else {
            $response = ['status' => 0, 'message' => 'Failed to create record.'];
        }
        echo json_encode($response);
        break;
    case "PUT":
        $excel = json_decode(file_get_contents('php://input'));
        $sql = "UPDATE excel SET " . $excel->field . " = :value WHERE id = :id";
        $stmt = $conn->prepare($sql);
        // $idd = intval($excel->id);
        $stmt->bindParam(':id', $excel->id);
        // $stmt->bindParam(':field', $excel->field);
        $stmt->bindParam(':value', $excel->value);
        // $stmt->bindParam(':id_mt', $excel->id_mt);
        // $stmt->bindParam(':name', $excel->name);
        // $stmt->bindParam(':remain', $excel->remain);
        // $stmt->bindParam(':unit', $excel->unit);

        if ($stmt->execute()) {
            $response = ['status' => 1, 'message' => 'Record updated successfully.'];
        } else {
            $response = ['status' => 0, 'message' => 'Failed to update record.'];
        }
        echo json_encode($response);
        break;
    case "DELETE":
}
