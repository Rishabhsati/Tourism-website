<?php
session_start();
$db = mysqli_connect('localhost:3306','root','','travel');

// Check if logout button is clicked
if(isset($_POST['logout'])){
    // Destroy the session and redirect to login page
    session_destroy();
    header('location: index.html');
    exit();
}
