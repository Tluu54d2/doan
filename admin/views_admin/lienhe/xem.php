<div id="viewport">

<div class="container-fluid" id="noidung">
      <h4>Database hoadon</h4>

      
      <div style="background-color: #e5e5e5; padding: 60px 50px 10px; color:gray;border-radius: 20px;">
      <form action="?action=sualienhe" method="post"enctype="multipart/form-data">
        <table border="1" cellpadding="5">
          <tr>
            <td><h4>id </h4></td>
             <!-- có thể thay = $data['idUser'] là php echo "hello". $data['idUser']; -->
            <td><h4> &emsp;<?= $data['id'];   ?>  </h4></td>
          </tr>
          <tr>
            <td><h4>tên khách hàng</h4></td>
            <td><h4> &emsp; <?= $data['name'];   ?>   </h4></td>
          </tr>
          <tr>
            <td><h4>email</h4></td>
            <td><h4> &emsp; <?= $data['email'];   ?>   </h4></td>
          </tr>
          <tr>
            <td><h4>Subject</h4></td>
            <td><h4> &emsp; <?= $data['subject'];   ?>   </h4></td>
          </tr>
          <tr>
            <td><h4>message </h4></td>
            <td><h4> &emsp; <?= $data['message'];   ?>   </h4></td>
          </tr>
          <tr>
            <td><div class="form-check form-check-inline">
                            <input class="form-check-input" name="status" type="radio"  id="inlineRadio1" value="0"  <?php if($data['status'] == 0){ ?> checked <?php } ?>>
                            <label class="form-check-label" for="inlineRadio1"> <span class="badge badge-info">đã liên hệ </span></label>
                          </div></td>
            <td><div class="form-check form-check-inline">
                            <input class="form-check-input" name="status" type="radio"  id="inlineRadio2" value="1" <?php if($data['status'] == 1){ ?> checked <?php } ?>>
                            <label class="form-check-label" for="inlineRadio2">
                              <span class="badge badge-warning">chưa liên hệ</span>


                            </label>
                          </div> </h4></td>
          </tr>
          
          
        </table>
    <button type="submit"> Cập nhât</button>
      </form>
        <br>
        <br>
        <br>
      </div>
     

</div>

</div>