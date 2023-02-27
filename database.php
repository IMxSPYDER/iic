<?php
$con=mysqli_connect('localhost','root','','user_db');

if(mysqli_connect_errno())
{
echo 'Failed to connect '.mysqli_connect_error();
}
?>