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
        $sql = "SELECT * FROM calendar";
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
        $calendar = json_decode(file_get_contents('php://input'));
        $sql = "INSERT INTO `calendar` (`id`, `title`, `description`, `start`, `end`) VALUES (NULL, :title, :description, :start, :end);";
        $stmt = $conn->prepare($sql);
        $stmt->bindParam(':title', $calendar->title);
        $stmt->bindParam(':description', $calendar->description);
        $stmt->bindParam(':start', $calendar->start);
        $stmt->bindParam(':end', $calendar->end);

        if ($stmt->execute()) {
            $response = ['status' => 1, 'message' => 'Record created successfully.'];
        } else {
            $response = ['status' => 0, 'message' => 'Failed to create record.'];
        }
        echo json_encode($response);
        break;
    case "PUT":
        $calendar = json_decode(file_get_contents('php://input'));
        $sql = "UPDATE calendar SET title =:title, description =:description, start =:start, end =:end WHERE id = :id";
        $stmt = $conn->prepare($sql);
        $stmt->bindParam(':id', $calendar->id);
        $stmt->bindParam(':title', $calendar->title);
        $stmt->bindParam(':description', $calendar->description);
        $stmt->bindParam(':start', $calendar->start);
        $stmt->bindParam(':end', $calendar->end);

        if ($stmt->execute()) {
            $response = ['status' => 1, 'message' => 'Record updated successfully.'];
        } else {
            $response = ['status' => 0, 'message' => 'Failed to update record.'];
        }
        echo json_encode($response);
        break;
    case "DELETE":
}
