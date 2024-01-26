<?php
    require_once("../includes/dbconn.php");
    if(!empty($_POST["emailid"])) {
        $email= $_POST["emailid"];
        if (filter_var($email, FILTER_VALIDATE_EMAIL)===false) {

            echo "خطا : لم تدخل بريدًا إلكترونيًا صالحًا.";
        } else {
            $result ="SELECT count(*) FROM userRegistration WHERE email=?";
            $stmt = $mysqli->prepare($result);
            $stmt->bind_param('s',$email);
            $stmt->execute();
    $stmt->bind_result($count);
    $stmt->fetch();
    $stmt->close();
    if($count>0){
    echo "<span style='color:red'> البريد الالكتروني موجود مسبقا! جرب استخدام واحدة جديدة.</span>";
        } else {
            echo "<span style='color:green'> البريد الإلكتروني متاح للتسجيل !!</span>";
        }
     }
    }

    if(!empty($_POST["oldpassword"])) {
    $pass=$_POST["oldpassword"];
    $pass=md5($pass);
    $result ="SELECT password FROM userregistration WHERE password=?";
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


    if(!empty($_POST["roomno"])) {
    $roomno=$_POST["roomno"];
    $result ="SELECT count(*) FROM registration WHERE roomno=?";
    $stmt = $mysqli->prepare($result);
    $stmt->bind_param('i',$roomno);
    $stmt->execute();
    $stmt->bind_result($count);
    $stmt->fetch();
    $stmt->close();
    if($count>0)
    echo "<span style='color:red'>$count. الغرفة ممتلئة بالفعل.</span>";
    else
        echo "<span style='color:red'>الغرفة متوفرة</span>";
    }
?>