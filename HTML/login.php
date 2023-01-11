<?php
   require_once 'db.php';
   $email=$_POST['email'];
   $passwd=$_POST['password'];
   $sql  = "select cname from members where email='$email' and password='$passwd'";
   $result =$db->query($sql);
   $num=$result->numRows();
   $row=$result->fetchRow();
   $cname=$row[0];
   if ($num>0){
      $_SESSION['cname']=$cname;
      $_SESSION['email']=$email;
      header("Location:report.php");
   }
?>
