<?php 
	$tv="select * from footer limit 0,1";
	$tv_1=mysqli_query($conn,$tv);
	$tv_2=mysqli_fetch_array($tv_1);
	echo $tv_2['html'];
?>
<?php 
//Mở
	$fp="dem.txt";
	$fo=fopen($fp, 'r');
	$fr=fread($fo, filesize($fp));		$fr++;
	$fc=fclose($fo);
//ghi lại
	$fo=fopen($fp, 'w');
	$fw=fwrite($fo, $fr);
	$fc=fclose($fo);
?>
<table align="center"><tr><td colspan="2"><b>Số lượt truy cập website: </b></td>
					<td><b><?php echo $fr ?></b></td></tr></table>