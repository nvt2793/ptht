<?php 
session_start();
 $obj=new PDO("mysql:host=localhost; dbname=ban_hang","root","");
$obj->query("set names 'utf8' ");
?>



    <div class="row">
<div class="col-md-6 col-md-offset-3 text-center thongbaoloi" style=" padding-bottom;margin-left:560px">
<?php
if(isset($_POST["submit"]))
{
    if(empty($_POST['username']) or empty($_POST['mk1']))
    {
       
        echo '<p style="color:red"> Vui lòng không để trống </p>';
    }
    else
    {
        $user=$_POST['username'];
        $pass=$_POST['mk1'];
        $data=$obj->query("select * from khach_hang where username='$user' and mk1='$pass'"); 
        $login=$data->rowCount();
        if ($login == 0)
            {
?>
  
<script type="text/javascript">
    alert('Tài khoản hoặc mật khẩu không đúng');
</script>
<?php 
            }
        else
        {
            
            $_SESSION['username']=$user;
            header('location:index.php');
        }
            
    }
}



?>
</div>
</div>
<div class="row">
    <div class="col-md-6 col-md-offset-3">
        <form action="dangnhap.php?login" method="post">
        <div class="to">
            <div class="form">
                <br>
                <h3><b>Chào mừng đến với </b> <i><b>LTMobile</b></i></h3><br>
                <br>
                <i class="fab fa-app-store-ios"></i>

                <label style="margin-left: -150px;">Tài Khoản</label>
                <input type="text" name="username"  > 
                <label style="margin-left: -150px;">Mật Khẩu</label>
                <input type="password" name="mk1"  >
                

                
                <input id="submit" type="submit" name="submit" value="Đăng nhập">
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
    position: inherit;;
    bottom: 10px;
    background: linear-gradient(to right);
}
input#submit:hover{
 
    background: linear-gradient(to right, #fc466b, #3f5efb); 
}
 </style>

