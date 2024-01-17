<?php    
                                       // MODEL CHO CÁC THÔNG TIN SẢN PHẨM
    require_once('ketnoi.php');

    /**
     * 
     */
    class lienhe
    {
    	var $conn;
    	
    	function __construct()
    	{
    		$connect_obj = new ketnoi();
    		$this->conn = $connect_obj->connect;
    	}
    	
    	function all()
    	{
    		$query = "SELECT * FROM contact ";

    		$result = $this->conn->query($query);

    		$data = array();

    		while ($row = $result->fetch_assoc()) {
       		   $data[] = $row;
    		}

    		return $data;
    	}


         function timkiem_hd($timkiem_hd)
        {
            $query = "SELECT * FROM contact WHERE id LIKE '%$timkiem_hd%' ";

            $result = $this->conn->query($query);

            $data = array();

            while ($row = $result->fetch_assoc()) {
               $data[] = $row;
            }

            return $data;
        }




    	function find($id)   
        {
            $query = "SELECT * FROM contact WHERE id=$id";
            return $this->conn->query($query)->fetch_assoc();
        }


         function delete($id)        //đang
         {
            $query = "DELETE FROM contact WHERE id='$id' ";
            $result = $this->conn->query($query);

            if($result == true){

                echo "<script>";
                echo "location.href='?action=lienhe';</script>";

            }else{
                echo "<script> ";
                echo "location.href='?action=lienhe';</script>";
            }
         }
         function update($status)
         {
             
 
      
              $query="UPDATE contact SET status='$status'";        
 
             $result = $this->conn->query($query);
 
             if($result == true){
 
                 header('Location: ?action=lienhe');
             }
         
 
          }

         //duyệt hóa đơn
          

        //   function sanpham_tru($id, $sotru)     
        //  {
        //     $query = "UPDATE sanpham SET soluong = soluong - '$sotru' WHERE idSP = '$id'";
            
        //     $result = $this->conn->query($query);

        //     if($result == true){

        //         echo "<script>";
        //         echo "location.href='?action=hoadon';</script>";

        //     }else{
        //         echo "<script> ";
        //         echo "location.href='?action=hoadon';</script>";
        //     }
        //  }




        //  //xem chi tiết hóa đơn

        //  function user($id)
        //  {
        //      $query = "SELECT * FROM user WHERE idUser=$id";

        //     return $this->conn->query($query)->fetch_assoc();

        //  }

        //  function sanpham($id)
        //  {
        //      $query = "SELECT * FROM sanpham WHERE idSP=$id";

        //      return $this->conn->query($query)->fetch_assoc();

        //  }







    }
     
?>