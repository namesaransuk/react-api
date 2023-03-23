<?php
error_reporting(E_ALL);
ini_set('display_errors', 1);
header("Access-Control-Allow-Origin: *");
header("Access-Control-Allow-Headers: *");
header("Access-Control-Allow-Methods: *");

$data = json_decode(file_get_contents('php://input'));
$message = $data->message;
$token = "N6A16kujVGbToSvhZgu80TpCPL6EJbWAhoEz0Nwtjlv"; // ใส่ Token ที่สร้างไว้

$ch = curl_init();
curl_setopt($ch, CURLOPT_URL, "https://notify-api.line.me/api/notify");
curl_setopt($ch, CURLOPT_SSL_VERIFYHOST, 0);
curl_setopt($ch, CURLOPT_SSL_VERIFYPEER, 0);
curl_setopt($ch, CURLOPT_POST, 1);
curl_setopt($ch, CURLOPT_POSTFIELDS, "message=" . $message);
$headers = array(
    'Content-type: application/x-www-form-urlencoded',
    'Authorization: Bearer ' . $token . '',
);
curl_setopt($ch, CURLOPT_HTTPHEADER, $headers);
curl_setopt($ch, CURLOPT_RETURNTRANSFER, 1);
$result = curl_exec($ch);

if (curl_error($ch)) {
    echo 'error:' . curl_error($ch);
} else {
    $res = json_decode($result, true);
    echo "status : " . $res['status'];
    echo "message : " . $res['message'];
}
curl_close($ch);
