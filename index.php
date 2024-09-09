<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <title>Dashboard</title>
  <link rel="stylesheet" href="style.css?v=<?= time() ?>" />
</head>

<body>
  <div class="container">
    <aside class="sidebar">
      <h2>Menu</h2>
      <hr>
      <br>
      Dashboard
      <ul>
        <li><a href="#">Dashboard</a></li>
      </ul>
      <br>
      <br>
      Data
      <ul>
        <li><a href="./jenismakanan.php">Jenis Makanan</a></li>
        <li><a href="./tambahdata.php">Tambah Data</a></li>

      </ul>
    </aside>
    <main class="main-content">
      <header class="header">
        <h1>Welcome to the Dashboard</h1>
        <div class="user-info">
          <span>User: @nova_24</span>
          <a href="login.php"><button>Logout</button></a>
        </div>
      </header>
      <section class="content">

        <div class="card">
          <h3>Pengguna</h3>
          <p>1</p>
        </div>
        <div class="card">
          <h3>Makanan</h3>
          <p>15</p>
        </div>
      </section>
      <h1>Makanan Khas Sunda</h1>
    </main>
  </div>
</body>

</html>