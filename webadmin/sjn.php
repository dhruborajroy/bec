
<?php 



if($info['mime']=="image/jpeg"){
    $img=imagecreatefromjpeg($_FILES['image']['tmp_name']);
}elseif($info['mime']=="image/png"){
    $img=imagecreatefrompng($_FILES['image']['tmp_name']);
}else{
    $msg= "Only select jpg or png image";
}


    
}