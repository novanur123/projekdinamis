<?php
require_once './koneksi.php';

function handle_upload($file, $uploadDir = './uploads')
{
    // Pastikan direktori upload ada
    if (!is_dir($uploadDir)) {
        mkdir($uploadDir, 0755, true);
    }

    // Validasi file
    $allowedExtensions = ['jpg', 'jpeg', 'png', 'gif'];
    $fileExtension = strtolower(pathinfo($file['name'], PATHINFO_EXTENSION));
    if (!in_array($fileExtension, $allowedExtensions)) {
        die('Jenis file tidak diperbolehkan.');
    }

    // Buat nama file baru dengan menghindari nama duplikat
    $filename = bin2hex(random_bytes(16)) . '.' . $fileExtension;
    $uploadFilePath = $uploadDir . '/' . $filename;

    // Pindahkan file yang diunggah ke direktori tujuan
    if (move_uploaded_file($file['tmp_name'], $uploadFilePath)) {
        return $filename;
    } else {
        die('Gagal mengunggah gambar.');
    }
}

$request_method = $_SERVER['REQUEST_METHOD'];
if ($request_method == 'POST') {
    $image = $_FILES['image'];
    $nama = $_POST['name'];
    $deskripsi = $_POST['deskripsi'];

    $image_file = handle_upload($image);
    $query = "insert into jenismakanan values(null, '$nama', '$image_file', '$deskripsi')";
    $db->query($query);
}
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
                <h1>Tambah Data</h1>
                <div class="user-info">
                    <a href="./jenismakanan.php"><button><i class="fa fa-arrow-left"></i></button></a>
                    <a href="login.php"><button>Logout</button></a>
                </div>
            </header>
            <section class="content">
                <div class="content-card">

                    <form action="" method="post" enctype="multipart/form-data">
                        <div class="form-group">
                            <label for="image">Image</label>
                            <input type="file" name="image" id="image" class="form-input" />
                        </div>
                        <div class="form-group">
                            <label for="nama">Nama</label>
                            <input type="text" name="name" id="name" class="form-input" />
                        </div>
                        <div class="form-group">
                            <label for="deskripsi">Deskripsi</label>
                            <textarea type="text" name="deskripsi" id="deskripsi" class="form-input">

                            </textarea>
                        </div>
                        <div class="form-group">
                            <button class="btn">Simpan</button>
                            <button class="btn" type="reset">Batal</button>
                        </div>
                    </form>
                </div>
            </section>
        </main>
    </div>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.6.0/js/all.min.js" integrity="sha512-6sSYJqDreZRZGkJ3b+YfdhB3MzmuP9R7X1QZ6g5aIXhRvR1Y/N/P47jmnkENm7YL3oqsmI6AK+V6AD99uWDnIw==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
</body>

</html>