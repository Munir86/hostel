<?php
    require_once("../includes/dbconn.php");
    if(!empty($_POST["emailid"])) {
        $email= $_POST["emailid"];
        if (filter_var($email, FILTER_VALIDATE_EMAIL)===false) {

            echo "error : You did not enter a valid email.";
        } else {
            $result ="SELECT count(*) FROM userRegistration WHERE email=?";
            $stmt = $mysqli->prepare($result);
            $stmt->bind_param('s',$email);
            $stmt->execute();
    $stmt->bind_result($count);
    $stmt->fetch();
    $stmt->close();
    if($count>0){
    echo "<span style='color:red'> البريد الالكتروني موجود مسبقا .</span>";
        } else {
            echo "<span style='color:green'> البريد الإلكتروني متاح للتسجيل .</span>";
        }
     }
    }

    if(!empty($_POST["oldpassword"])) {
    $pass=$_POST["oldpassword"];
    $result ="SELECT password FROM admin WHERE password=?";
    $stmt = $mysqli->prepare($result);
    $stmt->bind_param('s',$pass);
    $stmt->execute();
    $stmt -> bind_result($result);
    $stmt -> fetch();
    $opass=$result;
    if($opass==$pass) 
    echo "<span style='color:green'> كلمة المرور مطابقة.</span>";
    else echo "<span style='color:red'>كلمة السر غير متطابقة!</span>";
    }
?>