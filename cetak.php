<?php
require 'pdfcrowd.php';

$client = new \Pdfcrowd\HtmlToPdfClient("sahrulrasyid", "360c2654be6b37707a1c512bdcb39db8");
$pdf = $client->convertUrl("https://en.wikipedia.org/wiki/Main_Page");
?>


