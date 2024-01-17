<?php 


if (isset($_POST['submit']) == true) {

    $email= $_POST['email'];
    $name= $_POST['name'];
    $subject= $_POST['subject'];
    $message= $_POST['message'];

    $conn = new PDO("mysql:host=localhost; dbname=qlbx; charset=utf8", "root", ""); 
    $conn->setAttribute (PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

    $sql= "INSERT INTO contact (id,email,name,subject,message,status)
    Value (NULL,'$email','$name','$subject','$message',1) ";

    $stmt = $conn->query($sql); //Teo 1 prepare stement 
    
    // $stmt->execute( [$email] );

    // $count = $stmt->rowCount();

   
            GuiMail($email,$message,$subject,$name);
    
}
?>
<?php 
function GuiMail($email,$message,$subject,$name) {
    require "PHPMailer-master/src/PHPMailer.php"; 
    require "PHPMailer-master/src/SMTP.php"; 
    require 'PHPMailer-master/src/Exception.php'; 
    $mail = new PHPMailer\PHPMailer\PHPMailer(true);//true:enables exceptions
    try {
        $mail->SMTPDebug = 0; //0,1,2: chế độ debug
        $mail->isSMTP();  
        $mail->CharSet  = "utf-8";
        $mail->Host = 'smtp.gmail.com';  //SMTP servers
        $mail->SMTPAuth = true; // Enable authentication
        $mail->Username = 'thykhoacomputerdanang@gmail.com'; // SMTP username
        $mail->Password = 'zeog ytlp jdqh gjoi';   // SMTP password
        $mail->SMTPSecure = 'tls';  // encryption TLS/SSL 
        $mail->Port = 587;  // port to connect to                
        $mail->setFrom($email, $name ); 
        $mail->addAddress('thykhoacomputerdanang@gmail.com'); 
        $mail->addReplyTo($email);
        $mail->isHTML(true);  // Set email format to HTML
        $mail->Subject = $subject;
        $noidungthu = "Tên: {$name}"."<br>"." Email: {$email}". "<br>"." message: {$message} "; 
        $mail->Body = $noidungthu;
        $mail->smtpConnect( array(
            "ssl" => array(
                "verify_peer" => false,
                "verify_peer_name" => false,
                "allow_self_signed" => true
            )
        ));
        $mail->send();
        echo 'Đã gửi mail xong';
    } catch (Exception $e) {
        echo 'lỗi khong: ', $mail->ErrorInfo;
    }
}
?> 
<div class="cuahang">
<h1>Liên hệ</h1>
</div>

<section id="cart_items" style="margin-top: -50px; margin-bottom: -50px;">
        <div class="container">
            <div class="breadcrumbs">
            <form action="?action=lienhe1" method="POST" class="form" role="form"> 
                             <input class="form-control" type="text" name="email" placeholder="Nhập Email của bạn">
                             <input class="form-control" type="text" name="name" placeholder="Nhập name của bạn">
                             <input class="form-control" type="text" name="subject" placeholder="Nhập subject của bạn">
                             <input class="form-control" type="text" name="message" placeholder="Nhập message của bạn">

                                  <button class="btn btn-lg btn-primary btn-block button2" type="submit" name="submit">Gửi email</button>


                           </form> 
            </div>
        </div>
    </section>



<br>
<br>


                    
   </div>  <!-- div thứ 3 -->






                     <div class="col-sm-9 padding-right c_cn2">
                   <!-- hiển thị sản phẩm -->

                    <div class="features_items"><!--features_items-->
                       
                    

                        

                    </div><!--features_items-->

                    <!-- 
                        <ul class="pagination">
                            <li class="active"><a href="">1</a></li>
                            <li><a href="">2</a></li>
                            <li><a href="">3</a></li>
                            <li><a href="">&raquo;</a></li>
                        </ul>
                    -->
                </div>


</div>   <!-- div row -->

</div>


<br>
<br>
<br>
<br>
<br>
<style>
  b.km_km{
    color: red;
  }
  strike i{
    color: black;
    font-weight: normal;
  }
</style>