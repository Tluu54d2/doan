<?php 
$loi="";

if (isset($_POST['submit']) == true) {

    $email= $_POST['email_laymk'];

    $conn = new PDO("mysql:host=localhost; dbname=qlbx; charset=utf8", "root", ""); 
    $conn->setAttribute (PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

    $sql= "SELECT* FROM user WHERE email = ?";

    $stmt = $conn->prepare($sql); //Teo 1 prepare stement 
    
    $stmt->execute( [$email] );

    $count = $stmt->rowCount();

    if ($count=0){

        $loi ="Email bạn nhập chưa đăng ký thành viên với chúng tôi";

    } else
        {
            
            $matkhau = substr( rand (0,999999), 0, 10); 
            $matkhaumoi = md5($matkhau);
            $sql =  "UPDATE user SET matkhau = ? WHERE email = ?";

            $stmt = $conn ->prepare($sql); //Too 1 prepare stement 
            $stmt->execute( [$matkhaumoi,$email ] );

            echo "Đã cập nhật";
            GuiMail($email,$matkhau);
        }
    }

?>
<?php 
function GuiMail($email,$matkhaumoi) {
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
        $mail->SMTPSecure = 'ssl';  // encryption TLS/SSL 
        $mail->Port = 465;  // port to connect to                
        $mail->setFrom('thykhoacomputerdanang@gmail.com', 'Khoa' ); 
        $mail->addAddress($email); 
        $mail->isHTML(true);  // Set email format to HTML
        $mail->Subject = 'Thư gủi lại mật khẩu';
        $noidungthu = "Bạn được nhận lại mật khẩu là: {$matkhaumoi}"; 
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
<div class="tab-products single-products section-padding extra-padding-top">
    <div class="container">
        <div class="row">
            <div class="col-xs-12">
                <div class="section-title text-center">
                    <div class="product-tab">
                        <ul>
                           <li class="active dangnhap"><a data-toggle="tab" href="#arrival">Quên mật khẩu</a></li>
                       
                        </ul>
                    </div>
                </div>
            </div>
        </div>



        <div class="text-center tab-content">
            <div class="tab-pane  fade in active" id="arrival">
                <div class="wrapper">
                    <ul class="load-list load-list-three">
                      
                        <li>
                            <div class="row text-center">


                        <div class="container"> 



                         <div class="roww"> 
                          <div class="col-xs-12 col-sm-12 col-md-4 well well-sm col-md-offset-4 onee"> 
                           <legend>
                            Hãy nhập thông tin của bạn
                           </legend> 

                           <form action="?action=laymatkhau_submit" method="POST" class="form" role="form"> 
                             <input class="form-control" type="text" name="email_laymk" placeholder="Nhập Email của bạn">

                                  <button class="btn btn-lg btn-primary btn-block button2" type="submit" name="submit">Lấy mật khẩu</button>


                           </form> 


                           <div class="text-center">
                            <br>
                            <span> Bạn đã có tài khoản? </span>
                            <a class="dn" href="?action=dangnhap" title="" >Đăng nhập</a> </div>
                             <div class="text-center">
                            <br>

                          </div> 
                          </div> 
                         </div>
                        </div>    
                            </div>
                        </li>
                      
                       
                    </ul>
                </div>
            </div>
            <!-- popular product end -->




                                </div>
                            </div>
                        </div>

                        
