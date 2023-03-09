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
    case "POST":
        $user = json_decode(file_get_contents('php://input'));
        $sql = "INSERT INTO `order` (`id`, `orderId`, `orderName`, `orderPrice`, `orderQuantity`) VALUES (NULL, :orderId, :orderName, :orderPrice, :orderQuantity);";
        $stmt = $conn->prepare($sql);
        $stmt->bindParam(':orderId', $user->orderId);
        $stmt->bindParam(':orderName', $user->orderName);
        $stmt->bindParam(':orderPrice', $user->orderPrice);
        $stmt->bindParam(':orderQuantity', $user->orderQuantity);

        if ($stmt->execute()) {
            $response = ['status' => 1, 'message' => 'Record created successfully.'];
        } else {
            $response = ['status' => 0, 'message' => 'Failed to create record.'];
        }
        echo json_encode($response);
        break;
    case "PUT":
    case "DELETE":
}
