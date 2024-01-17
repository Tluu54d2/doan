<?php      
     // CONTROLLER DÙNG ĐỂ GỌI CÁC HÀM TRONG MODEL


    require_once('./model_admin/lienhe.php'); // đã gọi được rồi

    /**
     * 
     */
    class lienhecontroller
    {
    	var $lienhe_model;

    	public function __construct()
    	{
    		$this->lienhe_model = new lienhe();
    	}

    	public function list()
    	{
    		 if(isset($_POST['timkiem_hd'])){
                $timkiem_hd = $_POST['timkiem_hd'];
                $data = $this->lienhe_model->timkiem_hd($timkiem_hd);
            }else{
                $data = $this->lienhe_model->all();
            }
            require_once('views_admin/index.php');
    	}

    	 public function details() //đang
        {
            $id = isset($_GET['id']) ? $_GET['id'] : 1;
            $data = $this->lienhe_model->find($id);
            require_once('views_admin/index.php');
        } 

        public function update()
       {
             $status = filter_input(INPUT_POST, 'status');
            

            $this->lienhe_model->update($status);

         }

         public function xoalienhe()    //chưa
         {
            $id = isset($_GET['id']) ? $_GET['id'] : '';

            $this->lienhe_model->delete($id);
         }

        //  public function chitiet_hoadon()
        //  {
        //     $id = isset($_GET['id']) ? $_GET['id'] : '1';

        //     $data = $this->lienhe_model->find($id);

        //     $idUser = isset($_GET['idUser']) ? $_GET['idUser'] : '1';

        //     $name_user = $this->lienhe_model->user($idUser);

        //     $idSP = isset($_GET['idSP']) ? $_GET['idSP'] : '1';

        //     $name_sanpham = $this->lienhe_model->sanpham($idSP);

        //     require_once('views_admin/index.php');
            
        //  }

        




       }

?>