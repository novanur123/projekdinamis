<?php
require_once "./koneksi.php";

$id = $_GET['id'];
$mkaanan = $db->query("SELECT * FROM jenismakanan WHERE id = $id")->fetch_array();
?>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Dashboard</title>
    <link rel="stylesheet" href="style.css?v=<?= time() ?>" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.6.0/css/all.min.css" integrity="sha512-Kc323vGBEqzTmouAECnVceyQqyqdsSiqLQISBL29aUW4U/M7pSPA/gEUZQqv1cwx4OnYxTxve5UMg5GT6L4JJg==" crossorigin="anonymous" referrerpolicy="no-referrer" />
</head>

<body>
    <div class="container">
        <aside class="sidebar">
            <h2>Menu</h2>
            <hr>
            <br>
            Dashboard
            <ul>
                <li><a href="./">Dashboard</a></li>
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
                <h1>Jenis Makanan</h1>
                <div class="user-info">
                    <a href="./jenismakanan.php"><button><i class="fa fa-arrow-left"></i></button></a>
                    <a href="login.php"><button>Logout</button></a>
                </div>
            </header>
            <section class="content">
                <div class="makanan-details">
                    <h1><?= $mkaanan['name'] ?></h1>
                    <div class="makanan-details-row">
                        <img src="uploads/<?= $mkaanan['image'] ?>" alt="XXXX">
                        <p class="makanan-deskripsi">
                            <?= $mkaanan['deskripsi'] ?>
                        </p>
                    </div>
                </div>
            </section>
        </main>
    </div>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.6.0/js/all.min.js" integrity="sha512-6sSYJqDreZRZGkJ3b+YfdhB3MzmuP9R7X1QZ6g5aIXhRvR1Y/N/P47jmnkENm7YL3oqsmI6AK+V6AD99uWDnIw==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
</body>

</html>