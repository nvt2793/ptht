<?php $obj=new PDO("mysql:host=localhost; dbname=ban_hang","root","");
$obj->query("set names 'utf8' ");
?>

    <div class="row">
<div class="col-md-6 col-md-offset-3 text-center thongbaoloi" style=" padding-top:30px;font-size: 18px; ;margin-left:560px">
<?php
if(isset($_POST["submit"]))
{
    if(empty($_POST['username']) or empty($_POST['mk1']))
    {
       
        echo '<p> Vui lòng không để trống </p>';
    }
    else
    {
        $user=$_POST['username'];
        $pass=$_POST['mk1'];
        $pass2=$_POST['mk2'];
        if(strlen($user)< 6 or strlen($pass) <6)
        {
            echo '<p style="color:red"> Tài khoản và mật khẩu phải trên 6 ký tự </p>';
        }
        else {
            if($pass2 != $pass )
            {   
            echo '<p style="color:red"> Mật khẩu không trùng nhau </p>';
            }
            else
            {
                $data="insert into khach_hang(username,mk1,mk2,diachi,sdt)
                values(:username,:mk1,:mk2,:diachi,:sdt)";
        $array=array(":username"=>$_POST["username"],":mk1"=>$_POST["mk1"],":mk2"=>$_POST["mk2"],":diachi"=>$_POST["diachi"],":sdt"=>$_POST["sdt"]);
        $stm=$obj->prepare($data);
        $stm->execute($array);
        $n=$stm->rowCount();
        if ($n >0)
            {
?>
  
<script type="text/javascript">
    alert('Bạn đã đăng ký thành công');
</script>
<?php 
            }
            }
        }
    }
}

?>
</div>
</div>
<div class="row">
    <div class="col-md-6 col-md-offset-3">
        <form action="dangki.php" method="post">
        <div class="to">
            <div class="form">
                <h2>Đăng Ký</h2>
                <i class="fab fa-app-store-ios"></i>

                <label style="margin-left: -150px;">Tài Khoản</label>
                <input type="text" name="username"  > 
                <label style="margin-left: -150px;">Mật Khẩu</label>
                <input type="password" name="mk1"  >
                <label style="margin-left: -90px;">Nhập lại mật khẩu</label>
                <input type="password" name="mk2"  >
                <label style="margin-left: -160px;">Địa Chỉ</label>
                <input type="text" name="diachi">
                <label style="margin-left: -122px">Số điện thoại</label>
                <input type="text" name="sdt"> 

                
                <input id="submit" type="submit" name="submit" value="Gửi">
            </div>                
        </div>
    </form>
    </div>
</div>
<style type="text/css">
 
*{
    margin:0;
    padding:0;
    border:none;
    font-family: 'Open Sans', sans-serif;
}
body {
    overflow: hidden;
    background-color: #ededed;
}
.to {
    display: grid;
    grid-template-columns: repeat(12,1fr);
    grid-template-rows: minmax(70px,auto);
}
 
.form {
    border: 1px solid #80808000;
    
    height: 300px;
    width: 292px;
    display: flex;
    flex-direction: column;
    align-items: center;
    position: relative;
    border-radius: 15px;
    
}
h2 {
    margin-top: 40px;
    margin-bottom: 30px;
}
i.fab.fa-app-store-ios {
    display: block;
    margin-bottom: 3px;
    font-size: 28px;
}
 
label {
    margin-left: -126px;
    display: block;
    font-weight: lighter;
 
}
input{
    display: block;
    border-bottom: 2px solid #00BCD4;
    margin-top: 6px;
    margin-bottom: 10px;
    outline-style: none;
}
input[type="text"] {
    padding: 5px;
    width: 70%;
}
input[type="password"] {
    padding: 5px;
    width: 70%;
}

 
input#submit {
    padding: 10px;
    width: 50%;
    border-radius: 10px;
    position: inherit;
    bottom: 10px;
    background: linear-gradient(to right);
}
input#submit:hover{
 
    background: linear-gradient(to right, #fc466b, #3f5efb); 
}
 </style>


