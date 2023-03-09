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
        $sql = "SELECT * FROM customer";
        $path = explode('/', $_SERVER['REQUEST_URI']);
        if (isset($path[3]) && is_numeric($path[3])) {
            $sql .= " WHERE id = :id";
            $stmt = $conn->prepare($sql);
            $stmt->bindParam(':id', $path[3]);
            $stmt->execute();
            $users = $stmt->fetch(PDO::FETCH_ASSOC);
        } else {
            $stmt = $conn->prepare($sql);
            $stmt->execute();
            $users = $stmt->fetchAll(PDO::FETCH_ASSOC);
        }

        echo json_encode($users);
        break;
    case "POST":
        $user = json_decode(file_get_contents('php://input'));
        $sql = "INSERT INTO customer(id, CustomerID, Name, Surname, Role, Salary,OT) VALUES(null, :CustomerID, :Name, :Surname, :Role, :Salary, :OT)";
        $stmt = $conn->prepare($sql);
        $stmt->bindParam(':CustomerID', $user->CustomerID);
        $stmt->bindParam(':Name', $user->Name);
        $stmt->bindParam(':Surname', $user->Surname);
        $stmt->bindParam(':Role', $user->Role);
        $stmt->bindParam(':Salary', $user->Salary);
        $stmt->bindParam(':OT', $user->OT);
        $data = "SELECT * FROM `customer` ORDER BY id DESC LIMIT 1;";
        $stmt1 = $conn->prepare($data);
        $stmt1->execute();
        $data = $stmt1->fetch(PDO::FETCH_ASSOC);

        if ($stmt->execute()) {
            $response = ['status' => 1, 'message' => 'Record created successfully.', 'data' => $data];
        } else {
            $response = ['status' => 0, 'message' => 'Failed to create record.'];
        }
        echo json_encode($response);
        break;

    case "PUT":
        $user = json_decode(file_get_contents('php://input'));
        $sql = "UPDATE customer SET CustomerID =:CustomerID, Name =:Name, Surname =:Surname, Role =:Role, Salary =:Salary, OT =:OT WHERE id = :id";
        $stmt = $conn->prepare($sql);
        $stmt->bindParam(':id', $user->id);
        $stmt->bindParam(':CustomerID', $user->CustomerID);
        $stmt->bindParam(':Name', $user->Name);
        $stmt->bindParam(':Surname', $user->Surname);
        $stmt->bindParam(':Role', $user->Role);
        $stmt->bindParam(':Salary', $user->Salary);
        $stmt->bindParam(':OT', $user->OT);

        if ($stmt->execute()) {
            $response = ['status' => 1, 'message' => 'Record updated successfully.'];
        } else {
            $response = ['status' => 0, 'message' => 'Failed to update record.'];
        }
        echo json_encode($response);
        break;

    case "DELETE":
        $sql = "DELETE FROM customer WHERE id = :id";
        $path = explode('/', $_SERVER['REQUEST_URI']);

        $stmt = $conn->prepare($sql);
        $stmt->bindParam(':id', $path[3]);

        if ($stmt->execute()) {
            $response = ['status' => 1, 'message' => 'Record deleted successfully.'];
        } else {
            $response = ['status' => 0, 'message' => 'Failed to delete record.'];
        }
        echo json_encode($response);
        break;
}
