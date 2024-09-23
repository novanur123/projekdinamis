<?php

require_once "libs/session.php";

$request_method = $_SERVER['REQUEST_METHOD'];

if ($request_method == "POST") {
    clearUserSession();

    header('location: login.php');
    die();
}
