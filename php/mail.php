<?php

$name = $_POST['firstname'];
$email = $_POST['lastname'];
$message = $_POST['email'];

$mailheader = "From:".$firstname."<".$email.">\r\n";

$recipient = "oudommunint@gmail.com";

mail($recipient, $message, $mailheader)
or die("Error!");

echo"We will be in touch!";
?>