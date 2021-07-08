<?php
// $dbn = 'mysql:dbname=gsacf_d08_10;charset=utf8;port=3306;host=localhost';
// $user = 'root';
// $pwd = '';

// try {
//   $pdo = new PDO($dbn, $user, $pwd);
// } catch (PDOException $e) {
//   echo json_encode(["db error" => "{$e->getMessage()}"]);
//   exit();
// }
include('functions.php'); // 関数を記述したファイルの読み込み
$pdo = connect_to_db(); // 関数実行

$sql = 'SELECT * FROM t_customer';

$stmt = $pdo->prepare($sql);
$status = $stmt->execute();

if ($status == false) {
  $error = $stmt->errorInfo();
  echo json_encode(["error_msg" => "{$error[2]}"]);
  exit();
} else {
  $result = $stmt->fetchAll(PDO::FETCH_ASSOC);  // データの出力用変数（初期値は空文字）を設定
  $output = "";
  // foreach ($result as $record) {
  //   $output .= "<tr>";
  //   $output .= "<td>{$record["deadline"]}</td>";
  //   $output .= "<td>{$record["todo"]}</td>";
  //   // edit deleteリンクを追加

  //   $output .= "</tr>";
  // }
  foreach ($result as $record) {
    $output .= "<tr>";
    $output .= "<td>{$record["last_name"]}</td>";
    $output .= "<td>{$record["first_name"]}</td>";
    $output .= "<td>{$record["rubi_last_name"]}</td>";
    $output .= "<td>{$record["rubi_first_name"]}</td>";
    $output .= "<td>{$record["email"]}</td>";
    $output .= "<td>{$record["birthday"]}</td>";
    $output .= "<td>{$record["sex"]}</td>";
    $output .= "<td>{$record["tel"]}</td>";
    $output .= "<td>{$record["job"]}</td>";
    $output .= "<td>{$record["zip"]}</td>";
    $output .= "<td>{$record["address"]}</td>";
    // edit deleteリンクを追加
    $output .= "<td>
           <a href='todo_edit.php?id={$record["id"]}'>edit</a>
           </td>";
    $output .= "<td>
           <a href='todo_delete.php?id={$record["id"]}'>delete</a>
           </td>";
    $output .= "</tr>";
  }
  // $recordの参照を解除する．解除しないと，再度foreachした場合に最初からループしない
  // 今回は以降foreachしないので影響なし
  unset($record);
}
?>

<!DOCTYPE html>
<html lang="ja">

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <!-- bootstrap -->
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-giJF6kkoqNQ00vy+HMDP7azOuL0xtbfIcaT9wjKHr8RbDVddVHyTfAAsrekwKmP1" crossorigin="anonymous">
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-ygbV9kiqUc6oa4msXn9868pTtWMgiQaeYH7/t7LECLbyPA2x65Kgf80OJFdroafW" crossorigin="anonymous"></script>
  <title>ユーザー情報一覧</title>
</head>

<body>
  <fieldset>
    <legend>ユーザー情報一覧</legend>
    <a href="todo_input.php">入力画面</a>
    <table border="1" class="table table-hover" class="table-responsive">
      <thead>
        <tr>
          <th>姓</th>
          <th>名</th>
          <th>かな（姓）</th>
          <th>かな（名）</th>
          <th>メールアドレス</th>
          <th>生年月日</th>
          <th>性別</th>
          <th>電話番号</th>
          <th>職業</th>
          <th>郵便番号</th>
          <th>住所</th>
        </tr>
      </thead>
      <tbody>
        <?= $output ?>
      </tbody>
    </table>
  </fieldset>
</body>

</html>