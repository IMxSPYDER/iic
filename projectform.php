<?php

@include 'config.php';

if(isset($_POST['submit'])){

   $projectname = mysqli_real_escape_string($conn, $_POST['projectname']);
   $email = mysqli_real_escape_string($conn, $_POST['email']);
   $projectcat = mysqli_real_escape_string($conn, $_POST['projectcat']);
   $institute = mysqli_real_escape_string($conn, $_POST['institute']);
   $department = mysqli_real_escape_string($conn, $_POST['department']);
   $description = mysqli_real_escape_string($conn, $_POST['description']);
  
  
   $select = " SELECT * FROM registration WHERE projectname = '$projectname' && email = '$email' && projectcat='$projectcat' && institute='$institute' && department='$department' && description='$description' ";

   $result = mysqli_query($conn, $select);

   if(mysqli_num_rows($result) > 0){

      $error[] = 'project already exist!';

   }else{

    $insert = "INSERT INTO registration(projectname, email, projectcat, institute,department,description) VALUES('$projectname','$email','$projectcat','$institute','$department','$description')";
    mysqli_query($conn, $insert);
    header('location:uploadsection.php');
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
  </head>
  <body>
    <section class="container">
      <header>Project Form</header>
      <form action="" method="post" class="form">
      <?php
      if(isset($error)){
         foreach($error as $error){
            echo '<span class="error-msg">'.$error.'</span>';
         };
      };
      ?>
        <div class="input-box">
          <label>Project Name</label>
          <input type="text" placeholder="Enter project name" required name="projectname"/>
        </div>

        <div class="input-box">
          <label>Email Address</label>
          <input type="email" placeholder="Enter valid email address" required name="email"/>
        </div>

        <div class="column">
          <div class="input-box">
            <label>Team Name</label>
            <input type="text" placeholder="Team name (ex. Special 6)" required name="department"/>
          </div>
          <div class="input-box">
            <label>Project Category</label>
            <input type="text" placeholder="Category (ex. 'Robotics')" required name="projectcat"/>
          </div>
        </div>
        <div class="input-box">
          <label>Name of the Institute</label>
          <input type="text" placeholder="Enter institute name" required name="institute"/>
        </div>
        <div class="input-box">
          <label>Description of Project</label>
          <textarea  rows="5" type="text" required placeholder="Describe your project in short" name="description"></textarea> 
        </div>
        
        <button type="submit" name="submit">Go To Uploads</button>
      </form>
    </section>
  </body>
</html>

