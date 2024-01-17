<div id="viewport">

<div class="container-fluid" id="noidung">
      <h4>Database lienhe</h4>

      <div class="search_box pull-right" style="margin-right: 50px; margin-top: 0px;">
          <form method="POST" action="?action=lienhe">
          <input type="text" placeholder="Search By idUser" name="timkiem_hd">&ensp;
          <button type="submit"><i class="fa fa-search"></i></button>
          <a href="?action=lienhe" style="font-size: 15px;">All</a>
        </form>
      </div>

      <br>
      <br>
   
      <table border="3" cellpadding="10" style="font-size: 15px;">
          
          <thead>
               <tr>
                  <th>id</th>
                  <th class="theadd">email</th>
                  <th class="theadd">name</th>
                  <th class="theadd">subject</th>
                  <th class="theadd">message</th>
                
                 
                  <th>Hành động</th>
               </tr>
          </thead>
          <tbody>
            <?php foreach ($data as $value) { ?>
                 
           
              <tr>
                  <td scope="row"><?= $value['id'] ?></td>
                 <td><?= $value['email'] ?>  </td>
                  <td><?= $value['name'] ?></td>
                  <td><?= $value['subject'] ?></td>
                  <td><?= $value['message']?></td>
              
                  
                  <td>
                      <!-- để ý dấu bằng trong href -->
                       <a href="?action=xemlienhe&id=<?= $value['id'] ?>" type="button" class="btn btn-light">Chi tiết</a>

          <?php if($_SESSION['admin'] == true){ ?>
                  <?php if($value['status'] == 0){ ?>
                    <a href="?action=duyetlienhe&id=<?= $value['id'] ?>" type="button" class="btn btn-primary">đã liên hệ</a>
                  <?php }else{
                    ?>  <a href="?action=duyetlienhe&id=<?= $value['id'] ?>" type="button" class="btn btn-warning">chưa liên hệ</a> <?php
                  } ?>
                    <a href="?action=xoalienhe&id=<?= $value['id'] ?>" onclick="return confirm('Bạn có thật sự muốn xóa ?');" type="button" class="btn btn-danger" title="Xóa">
                      <i class="fa fa-times"></i></a>
          <?php }else{} ?>
          
                  </td> 
              </tr>

              <?php } ?>
             
          </tbody>
      </table>

      <br>
      <br>
      <br>
     

</div>

</div>



