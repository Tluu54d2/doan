<?php
    class ketnoi
    {
        var $connect;
        
        function __construct()
        {
            //các thông số cần thiết kết nối database
            $host = "localhost";
            $username ="root";
            $password = "";
            $dbname = "qlbx";

            //tạo kết nối với cơ sở dữ liệu
            $this->connect = new mysqli($host,$username,$password,$dbname);
            $this->connect->set_charset('utf8');

            //kiểm tra kết nối
            if ($this->connect->connect_error) {
                die(" Lỗi khi kết nối đến server: ".$this->connect->connect_error);
            }
            
            // if ($mysqli -> connect_errno) {
            //   echo "Failed to connect to MySQL: " . $mysqli -> connect_error;
            //   exit();
            // }

        }
    }
?>

