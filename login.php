<?php

require_once "koneksi.php";
require_once "libs/session.php";

$request_method = $_SERVER['REQUEST_METHOD'];
$errorMessage = "";

if ($request_method == "POST") {
  $username = $_POST['username'];
  $password = $_POST['password'];

  if ($username === '' && $password === '') {
    $errorMessage = 'Harap masukan username dan password';
  } else if ($username === '') {
    $errorMessage = 'Harap masukan username';
  } else if ($password == '') {
    $errorMessage = 'Harap masukan password';
  } else {
    $query = "SELECT * FROM login WHERE username = '$username' LIMIT 1";
    $data = $db->query($query)->fetch_array();
    if ($data) {
      if ($password == $data['password']) {
        saveUserSession($data);

        header('location: index.php');
      } else {
        $errorMessage = 'Maaf Password anda salah';
      }
    } else {
      $errorMessage = 'Maaf Username anda salah';
    }
  }
}
?>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <title>login</title>
  <link rel="stylesheet" href="login.css?v=<?= time() ?>" />
</head>

<body>
  <div class="container">
    <div class="form-box">
      <h1 class="form-title">Login Here</h1>
      <?php if ($errorMessage != "") { ?>
        <div class="alert alert-danger"><?= $errorMessage ?></div>
      <?php } ?>
      <form action="" method="post">
        <div class="form-group">
          <label for="username">Username</label>
          <input
            type="text"
            name="username"
            id="username"
            class="form-control" />
        </div>
        <div class="form-group">
          <label for="password">Password</label>
          <input
            type="password"
            name="password"
            id="password"
            class="form-control" />
        </div>
        <button
          class="btn"
          type="submit">
          Login
        </button>
      </form>
    </div>
  </div>
</body>

</html>