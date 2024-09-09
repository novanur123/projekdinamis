<?php

$db = new mysqli(
    'localhost',
    'root',
    '',
    'projekdinamis'
);

if ($db->connect_errno) {
    die('Database tidak terkoneksi');
}
