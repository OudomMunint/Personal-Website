<?php

$name = $_POST['firstname'];
$email = $_POST['lastname'];
$message = $_POST['email'];

$mailheader = "From:".$firstname."<".$email.">\r\n";

$recipient = "oudommunint@gmail.com";

mail($recipient, $message, $mailheader)
or die("Error! your request could not be processed");

echo"We will be in touch!";

/* Template */
/* $name = $_POST['firstname'];
$email = $_POST['lastname'];
$message = $_POST['email'];

$mailheader = "From:".$firstname."<".$email.">\r\n";

$recipient = "oudommunint@gmail.com";

mail($recipient, $message, $mailheader)
or die("Error! your request could not be processed");

echo"We will be in touch!"; */
class ContactFormTest extends PHPUnit_Framework_TestCase
{
    public function testContactFormSubmission()
    {
        // Arrange
        $postData = [
            'firstname' => 'John',
            'lastname' => 'Doe',
            'email' => 'johndoe@example.com',
            'message' => 'This is a test message'
        ];

        // Act
        ob_start(); // Start output buffering
        $_POST = $postData; // Set the POST data
        include 'contact-form.php'; // Include the PHP code
        $output = ob_get_clean(); // Get the output buffer

        // Assert
        $this->assertContains('We will be in touch!', $output);
        // Check that the output contains the success message

        // Assert that an email was sent
        $this->assertTrue(mail_sent());
        // Assumes you have a function called mail_sent() that checks if an email was sent
    }
}

?>
