<br><b>
Giỏ hàng </b><br><br>

<?php 
	$so_luong=0;
	if(isset($_SESSION['id_them_vao_gio']))
	{
		for($i=0;$i<count($_SESSION['id_them_vao_gio']);$i++)
		{
			$so_luong=$so_luong+$_SESSION['sl_them_vao_gio'][$i];
		}
	}
?>

<b>Số sản phẩm : </b><?php echo $so_luong; ?>
<br><br>
<a href="?thamso=gio_hang"><img src="https://img.icons8.com/ios-glyphs/30/000000/shopping-cart.png"> <b>GIỎ HÀNG </b></a>
