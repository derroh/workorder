<?php
  require('../func/config.php');

   $Skills = $_REQUEST['tags'];
   $Name = $_REQUEST['Name'];
   $Email = $_REQUEST['Email'];
   $Username = $_REQUEST['Username'];
   $PhoneNumber = $_REQUEST['PhoneNumber'];
   $Password = $_REQUEST['Password'];
   $hashedpassword = $user->password_hash($Password, PASSWORD_BCRYPT);
   $uID = $_REQUEST['uID'];

  $stmt = $db->prepare('UPDATE profilemaster SET Name=:Name,Email=:Email,Username=:Username,PhoneNumber=:PhoneNumber,Password=:Password WHERE Id=:uID ');
  // $stmt = $db->prepare('UPDATE profilemaster SET Status=:Status, Photo=:photo WHERE Id=:uID AND tokenCode=:code');
  // $stmt->bindParam(':Photo',$userpic);
  $stmt->bindParam(':Name',$Name);
  $stmt->bindParam(':Email',$Email);
  $stmt->bindParam(':Username',$Username);
  $stmt->bindParam(':PhoneNumber',$PhoneNumber);
  $stmt->bindParam(':Password',$hashedpassword);
  $stmt->bindParam(':uID',$uID);


  if($stmt->execute())
  {
    // update skills
    $sql = "UPDATE worker_skill SET Skills=:Skills WHERE WorkerId=:WorkerId";
    $stmt2 = $db->prepare($sql);
    $stmt2->bindParam(':Skills',$Skills);
    $stmt2->bindParam(':WorkerId',$uID);
    if($stmt2->execute())
    {
      echo "Thank you! Your information was successfully updated!";
      //start session
      $user->login($Email,$Password);
      //session variables
      $_SESSION["username"] = $Username;
      $_SESSION['usersfullname'] = $Name;
    }

  }else{
    echo "Failed to save";
  }
 ?>
