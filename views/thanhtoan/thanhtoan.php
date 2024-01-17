<!-- trang checkout -->


<div class="pages-title section-padding">
	<div class="container">
		<div class="row">
			<div class="col-xs-12">
				<div class="pages-title-text text-center">
					<h2>Thanh Toán</h2>
				</div>
			</div>
		</div>
	</div>
</div>



<section id="cart_items"  style="margin-top: -50px; margin-bottom: -50px;">
		<div class="container">
			<div class="breadcrumbs">
				<ol class="breadcrumb">
				  <li><a href="#">Home</a></li>
				  <li class="active">Thanh toán</li>
				</ol>
			</div>
		</div>
	</section>



<section class="pages checkout section-padding">
	<div class="container">
		<div class="row">
			<div class="col-sm-6">
				<div class="main-input single-cart-form padding60">
					<div class="log-title">
						<h3><strong>Chi tiết hóa đơn</strong></h3>
					</div>
					<div class="custom-input">
						<form action="?action=hoanthanhdonhang&idUser=<?php echo $data_user['idUser']; ?>" method="post">
							<input type="text" name="NguoiNhan" placeholder="Người nhận" required value="<?php echo $data_user['ho'].' '.$data_user['ten']; ?>"/>
							<input type="email" name="Email" placeholder="Địa chỉ Email.." required  value="<?php echo $data_user['email']; ?>"/>
							<input type="text" name="SDT" placeholder="Số điện thoại.." required pattern="[0-9]+" minlength="10"  value="<?php echo $data_user['sodienthoai']; ?>"/>
							<input type="text" name="DiaChi" placeholder="Đại chỉ giao hàng" required  value="<?php echo $data_user['diachi']; ?>"/>
							<br>
							<div class="submit-text">
								 <button type="submit">Thanh toán</button>
							</div>
						</form>
					</div>
				</div>
			</div>
			<div class="col-xs-12 col-sm-6">
				<div class="padding60">
					<div class="log-title">
						<h3><strong>Hóa đơn</strong></h3>
					</div>
					<div class="cart-form-text pay-details table-responsive">
						<table>
							<thead>
								<tr>
									<th>Sản phẩm</th>
									<td>Thành Tiền</td>
								</tr>
							</thead>
							<tbody>
								
								<tr>
									<th><?php foreach ($_SESSION['sanpham'] as $key=>$value) { ?>
										    <?php echo $value['tenSP']; ?>
										    <?php echo "SL: ".$value['soluong'].'<br>'; ?>
										<?php } ?>
									</th>
									<td>
										<?php echo $_SESSION['tongtien'].' vnd<br>'; ?>
									</td>
								</tr>
						
						<tr>
							<th>Giảm Giá</th>  <!-- lấy a trên địa chỉ rồi inner join với bảng khuyễn mã để lấy giá trị khuyến mãi -->
							<td><?php 
								$_SESSION['giatriKM'] = $data_sanpham['giatriKM']; 
								echo $_SESSION['giatriKM'].'%'; 
							?>
							</td>
						</tr>
						<tr>
							<th>Vat</th>
							<td>0 VNĐ</td>
						</tr>
							</tbody>
							<tfoot>
								<tr>
									<th>Tổng</th>
									<td>
										<?php 
										if($_SESSION['giatriKM'] != 0){
								         	$_SESSION['tongtien_KM'] = ( $_SESSION['tongtien'] - ($_SESSION['tongtien'] * ($data_sanpham['giatriKM'] )) / 100 );
									        echo $_SESSION['tongtien_KM'] ;
									    }
									    else{
									    	echo $_SESSION['tongtien'];
									    }
									     ?> VNĐ
							       </td>
								   
								</tr>
							
								
							</tfoot>
						</table>
						<div class="your-order-body">
                            <ul class="payment_methods methods">
                                <li class="payment_method_bacs">
                                    <input id="payment_method_bacs" type="radio" class="input-radio" name="payment_method" value="COD" checked="checked" data-order_button_text="">
                                    <label for="payment_method_bacs">Thanh toán khi nhận hàng </label>
                                    <div class="payment_box payment_method_bacs" style="display: block;">
                                        Được kiểm tra hàng khi nhận hàng
                                    </div>						
                                </li>

                            
                            </ul>
							<ul class="payment_methods methods">
                                <li class="payment_method_cheque">
                                    <input id="payment_method_cheque" type="radio" class="input-radio" name="payment_method" value="COD" checked="checked" data-order_button_text="">
                                    <label for="payment_method_cheque">Thanh toán chuyển khoản </label>
                                    <div class="payment_box payment_method_cheque" style="display: block;">
                                        Vui lòng chuyển khoản qua:<br>
										+STK : 123456789<br>
										+Người nhận : Nguyễn Văn A<br>
									    +Ngân hàng : Sacombank<br>
										+Nội dung CK:email + sđt + tên đăng nhập
                                    </div>						
                                </li>

                            
                            </ul>
                        </div>
					</div>
				</div>
			</div>

		</div>
	</div>
</section>
<script>
    document.addEventListener('DOMContentLoaded', function () {
        // Lấy danh sách tất cả các phương thức thanh toán
        var paymentMethods = document.querySelectorAll('.payment_methods li');

        // Lặp qua từng phương thức thanh toán và thêm sự kiện click
        paymentMethods.forEach(function (method) {
            method.addEventListener('click', function () {
                // Ẩn tất cả các hộp thanh toán
                var paymentBoxes = document.querySelectorAll('.payment_box');
                paymentBoxes.forEach(function (box) {
                    box.style.display = 'none';
                });

                // Lấy phương thức thanh toán được chọn
                var selectedMethod = method.querySelector('input:checked').value;

                // Hiển thị hộp thanh toán tương ứng
                var selectedBox = method.querySelector('.payment_box');
                if (selectedBox) {
                    selectedBox.style.display = 'block';
                }
            });
        });
    });
</script>
