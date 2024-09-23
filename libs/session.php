<?php

if (session_status() != PHP_SESSION_ACTIVE) {
    session_start();
}

function saveUserSession($user)
{
    $_SESSION['user'] = $user;
}

function isUserLogged()
{
    if (isset($_SESSION['user'])) {
        return true;
    }
    return false;
}

function getUserSession()
{
    if (isUserLogged()) {
        return $_SESSION['user'];
    }
    return null;
}

function clearUserSession()
{
    unset($_SESSION['user']);
    return true;
}

function ceklogin()
{
    if (!isUserLogged()) {
        header('location: login.php');
        die();
    }
}
