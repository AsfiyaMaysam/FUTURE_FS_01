<?php
// Default WAMP credentials – change only if you set a root password
$host     = "localhost";
$user     = "root";
$pass     = "";               // usually empty in fresh WAMP install
$database = "portfolio_db";   // must match the database name you created

$conn = new mysqli($host, $user, $pass, $database);

// Check connection
if ($conn->connect_error) {
    // For production you would log this, for now we show error
    header("Location: ../index.html?status=error#contact");
    exit;
}

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $name    = $conn->real_escape_string($_POST['name']    ?? '');
    $email   = $conn->real_escape_string($_POST['email']   ?? '');
    $subject = $conn->real_escape_string($_POST['subject'] ?? '');
    $message = $conn->real_escape_string($_POST['message'] ?? '');

    if (empty($name) || empty($email) || empty($message)) {
        header("Location: ../index.html?status=error#contact");
        exit;
    }

    $sql = "INSERT INTO messages (name, email, subject, message) 
            VALUES ('$name', '$email', '$subject', '$message')";

    if ($conn->query($sql) === TRUE) {
        header("Location: ../index.html?status=success#contact");
    } else {
        header("Location: ../index.html?status=error#contact");
    }
}

$conn->close();
?>