<?php

$emailFrom = "cinthialgs@gmail.com";
$emailTo = "cinthialgs@gmail.com";
$subject = "Suggestions for next project";

$message = Trim(stripslashes($_POST['message'])); 

$body = "";

$body .= "Message: \n";
$body .= $message;
$body .= "\n";

mail($emailTo, $subject, $body, "From: <$emailFrom>");

header("Location: index.html");

?>