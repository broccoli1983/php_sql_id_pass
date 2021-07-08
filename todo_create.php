<?php

if (
  !isset($_POST['last_name']) || $_POST['last_name'] == '' ||
  !isset($_POST['first_name']) || $_POST['first_name'] == '' ||
  !isset($_POST['rubi_last_name']) || $_POST['rubi_last_name'] == '' ||
  !isset($_POST['rubi_first_name']) || $_POST['rubi_first_name'] == '' ||
  !isset($_POST['email']) || $_POST['email'] == '' ||
  !isset($_POST['birthday']) || $_POST['birthday'] == '' ||
  !isset($_POST['sex']) || $_POST['sex'] == '' ||
  !isset($_POST['tel']) || $_POST['tel'] == '' ||
  !isset($_POST['job']) || $_POST['job'] == '' ||
  !isset($_POST['zip']) || $_POST['zip'] == '' ||
  !isset($_POST['address']) || $_POST['address'] == ''
) {
  echo json_encode(["error_msg" => "no input"]);
  exit();
}
$id = $_POST['id'];
$last_name = $_POST['last_name'];
$first_name = $_POST['first_name'];
$rubi_last_name = $_POST['rubi_last_name'];
$rubi_first_name = $_POST['rubi_first_name'];
$email = $_POST['email'];
$birthday = $_POST['birthday'];
$sex = $_POST['sex'];
$tel = $_POST['tel'];
$job = $_POST['job'];
$zip = $_POST['zip'];
$address = $_POST['address'];

$dbn = 'mysql:dbname=gsacf_d08_10_002;charset=utf8;port=3306;host=localhost';
$user = 'root';
$pwd = '';

try {
  $pdo = new PDO($dbn, $user, $pwd);
} catch (PDOException $e) {
  echo json_encode(["db error" => "{$e->getMessage()}"]);
  exit();
}

$sql = 'INSERT INTO t_customer(id, last_name, first_name, rubi_last_name, rubi_first_name, email, birthday, sex, tel, job, zip, address, created_at, updated_at) VALUES(NULL,:last_name, :first_name, :rubi_last_name, :rubi_first_name, :email, :birthday, :sex, :tel, :job, :zip, :address, sysdate(), sysdate())';

$stmt = $pdo->prepare($sql);
$stmt->bindValue(':last_name', $last_name, PDO::PARAM_STR);
$stmt->bindValue(':first_name', $first_name, PDO::PARAM_STR);
$stmt->bindValue(':rubi_last_name', $rubi_last_name, PDO::PARAM_STR);
$stmt->bindValue(':rubi_first_name', $rubi_first_name, PDO::PARAM_STR);
$stmt->bindValue(':email', $email, PDO::PARAM_STR);
$stmt->bindValue(':birthday', $birthday, PDO::PARAM_STR);
$stmt->bindValue(':sex', $sex, PDO::PARAM_STR);
$stmt->bindValue(':tel', $tel, PDO::PARAM_STR);
$stmt->bindValue(':job', $job, PDO::PARAM_STR);
$stmt->bindValue(':zip', $zip, PDO::PARAM_STR);
$stmt->bindValue(':address', $address, PDO::PARAM_STR);
$status = $stmt->execute();

if ($status == false) {
  $error = $stmt->errorInfo();
  echo json_encode(["error_msg" => "{$error[2]}"]);
  exit();
} else {
  header("Location:todo_input.php");
  exit();
}
