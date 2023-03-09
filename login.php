
<?php
error_reporting(E_ALL);
ini_set('display_errors', 1);
header("Access-Control-Allow-Origin: *");
header("Access-Control-Allow-Headers: *");
header("Access-Control-Allow-Methods: *");

//connection
include("connect.php");
$objDb = new Connect;
$conn = $objDb->connect();

$method = $_SERVER['REQUEST_METHOD'];
switch ($method) {
    case "POST":
        $user = json_decode(file_get_contents('php://input'));

        if (isset($user->email)) {
            //รับค่า user & password
            $email = $user->email;
            $password = $user->password;
            //query 
            $sql = "SELECT * FROM member JOIN role ON member.role = role.id WHERE email='" . $email . "' AND password='" . $password . "' ";
            $stmt = $conn->prepare($sql);
            $stmt->execute();
            $users = $stmt->fetch(PDO::FETCH_ASSOC);
            $row_count = $stmt->rowCount();

            if ($row_count == 1) {
                $response = ['status' => 1, 'message' => 'Login successfully.', 'user' => $users];
            } else {
                $response = ['status' => 0, 'message' => 'Failed to login.'];
            }
            echo json_encode($response);

            // if (mysqli_num_rows($result) == 1) {

            //     $row = mysqli_fetch_array($result);

            //     $_SESSION["UserID"] = $row["ID"];
            //     $_SESSION["User"] = $row["Firstname"] . " " . $row["Lastname"];
            //     $_SESSION["Userlevel"] = $row["Userlevel"];

            //     if ($_SESSION["Userlevel"] == "A") { //ถ้าเป็น admin ให้กระโดดไปหน้า admin_page.php

            //         Header("Location: admin_page.php");
            //     } else if ($_SESSION["Userlevel"] == "M") {  //ถ้าเป็น member ให้กระโดดไปหน้า user_page.php

            //         Header("Location: user_page.php");
            //     } else {
            //         echo "<script>";
            //         echo "alert(\" Username หรือ  Password ไม่ถูกต้อง\");";
            //         echo "window.history.back()";
            //         echo "</script>";
            //     }
            // } else {
            //     echo "<script>";
            //     echo "alert(\" Username หรือ  Password ไม่ถูกต้อง\");";
            //     echo "window.history.back()";
            //     echo "</script>";
            // }
        }
}
// else {
//     Header("Location: form_login.php"); //user & password incorrect back to login again
// }
?>