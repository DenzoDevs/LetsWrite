<?php
define('DB_SERVER','localhost');
define('DB_USER','Lets Write Admin');
define('DB_PASS' ,'AM]-icdk-c]Q(9*H');
define('DB_NAME','letswrite');
$con = mysqli_connect(DB_SERVER,DB_USER,DB_PASS,DB_NAME);
// Check connection
if (mysqli_connect_errno())
{
 echo "Failed to connect to MySQL: " . mysqli_connect_error();
}
?>