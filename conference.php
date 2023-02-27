<?php

@include 'config.php';

if(isset($_POST['submit'])){

   $name = mysqli_real_escape_string($conn, $_POST['name']);
   $email = mysqli_real_escape_string($conn, $_POST['email']);
   $forconference = $_POST['forconference'];
  
  
   $select = " SELECT * FROM conference WHERE name = '$name' && email = '$email' && forconference='$forconference' ";

   $result = mysqli_query($conn, $select);

   if(mysqli_num_rows($result) > 0){

      $error[] = 'project already exist!';

   }else{

    $insert = "INSERT INTO conference(name, email, forconference) VALUES('$name','$email','$forconference')";
    mysqli_query($conn, $insert);
    header('location:regsuccess.html');
   }
};


?>
<!DOCTYPE html>
<!---Coding By CodingLab | www.codinglabweb.com--->
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <meta http-equiv="X-UA-Compatible" content="ie=edge" />
    <!--<title>Registration Form in HTML CSS</title>-->
    <!---Custom CSS File--->
    <link rel="stylesheet" href="forms.css" />
    <style>
        select{
            width: 100%;
            padding: 12px 20px;
            margin: 8px 0;
            display: inline-block;
            border-radius: 4px;
            box-sizing: border-box;
}
    </style>
  </head>
  <body>
    <section class="container">
      <header>Enrollment Form</header>
      <form action="" method="post" class="form">
      <?php
      if(isset($error)){
         foreach($error as $error){
            echo '<span class="error-msg">'.$error.'</span>';
         };
      };
      ?>
        <div class="input-box">
          <label>Full Name</label>
          <input type="text" placeholder="Enter full name" required name="name"/>
        </div>

        <div class="input-box">
          <label>Email Address</label>
          <input type="email" placeholder="Enter valid email address" required name="email"/>
        </div>
        <div class="input-box">
          <label>Email Address</label>
        <select name="forconference">
            <option value="Conference">Select Conference or Seminar</option>
            <option value="Conference1">Conference1</option>
            <option value="Seminar1">Seminar1</option>
            <option value="Conference2">Conference2</option>
            <option value="Seminar2">Seminar2</option>
        </select>
    </div>
        <button type="submit" name="submit">Enroll for Event</button>
      </form>
    </section>
  </body>
</html>

