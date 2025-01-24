<?php 
define('SECURE_ACCESS', true);
include('header.php');
$msg="";
$id="";
$name='';
$fname='';
$mname='';
$phoneNumber='';
$presentAddress='';
$permanentAddress='';
$required='required';
$paymentStatus='';
$dob='';
$gender='';
$religion='';
$bloodGroup='';
$image='';
$email='';
$batch='';
$deptId="";
if(isset($_GET['id']) && $_GET['id']!=""){
	$id=get_safe_value($_GET['id']);
    $res=mysqli_query($con,"select * from students where md5(id)='$id'");
	if(mysqli_num_rows($res)>0){
        $row=mysqli_fetch_assoc($res);
        $name=$row['name'];
        $class_roll=$row['class_roll'];
        $reg_no=$row['reg_no'];
        $fname=$row['fName'];
        $mname=$row['mName'];
        $phoneNumber=$row['phoneNumber'];
        $presentAddress=$row['presentAddress'];
        $permanentAddress=$row['permanentAddress'];
        $dob=$row['dob'];
        $gender=$row['gender'];
        $religion=$row['religion'];
        $bloodGroup=$row['bloodGroup'];
        $image=$row['image'];
        $email=$row['email'];
        $dept_id=$row['dept_id'];
        $batch=$row['batch'];
        $required='';
    }else{
        $_SESSION['TOASTR_MSG']=array(
            'type'=>'error',
            'body'=>'You don\'t have the permission to access the location!',    
            'title'=>'Error',
        );
    }
}
if(isset($_POST['submit'])){
	$name=ucfirst(get_safe_value($_POST['name']));
	$class_roll=get_safe_value($_POST['roll']);
	$fName=ucfirst(get_safe_value($_POST['fName']));
	$mName=ucfirst(get_safe_value($_POST['mName']));
	$phoneNumber=get_safe_value($_POST['phoneNumber']);
	$presentAddress=get_safe_value($_POST['presentAddress']);
	$permanentAddress=get_safe_value($_POST['permanentAddress']);
	$dob=get_safe_value($_POST['dob']);
	$gender=get_safe_value($_POST['gender']);
	$religion=get_safe_value($_POST['religion']);
	$bloodGroup=get_safe_value($_POST['bloodGroup']);
	$email=get_safe_value($_POST['email']);
    $dept_id=get_safe_value($_POST['dept_id']);
    $batch=get_safe_value($_POST['batch']);
    $time=time();

    if($id==''){
        $info=getimagesize($_FILES['image']['tmp_name']);
        $width = $info[0];
        $height = $info[1];
        if(isset($info['mime'])){
            if($info['mime']=="image/jpeg"){
                $img=imagecreatefromjpeg($_FILES['image']['tmp_name']);
            }elseif($info['mime']=="image/png"){
                $img=imagecreatefrompng($_FILES['image']['tmp_name']);
            }else{
                $msg= '<div class="alert alert-danger col-lg-12" role="alert">
                        Only select jpg or png image
                    </div>';
            }
            if(mysqli_num_rows(mysqli_query($con,"select id from students where phoneNumber='$phoneNumber'"))>0){
                $msg='<div class="alert alert-danger col-lg-12" role="alert">
                        Phone number is already added
                    </div>';
            }elseif(mysqli_num_rows(mysqli_query($con,"select id from students where email='$email'"))>0){
                $msg='<div class="alert alert-danger col-lg-12" role="alert">
                        Email is already added.
                    </div>';
            }else{
                if(isset($img)){
                    if (($_FILES["image"]["size"] > 300000)) {//2000000 = 2Mb
                        $msg= "Image size exceeds 300 kb";
                    }else{
                        $random_password=uniqid();
                        $password=password_hash($random_password,PASSWORD_DEFAULT);
                        $image=time().'.jpg';
                        move_uploaded_file($_FILES['image']['tmp_name'],UPLOAD_STUDENT_IMAGE.$image);
                        $sql="INSERT INTO `students` (`name`,  `class_roll`,`fName`,  `mName`,  `phoneNumber`, `presentAddress`, `permanentAddress`, `dob`, `gender`, `religion`,  `bloodGroup`, `image`,`email`,`dept_id`,`batch`,`password`,`status`)
                                                VALUES ( '$name', '$class_roll','$fName',  '$mName',  '$phoneNumber','$presentAddress','$permanentAddress','$dob','$gender','$religion','$bloodGroup','$image','$email','$dept_id','$batch','$password', 1)";
                        send_email($email,"Your account has been created. Your password is <b>".$random_password." </b>. Please login and change your password <br>  ".FRONT_SITE_PATH."/students\/","Account Created");
                        mysqli_query($con,$sql);
                        $_SESSION['INSERT']=1;
                        redirect("students.php");
                    }
                }
                
            }
        }else{
            $msg= "Only select jpg or png image";
        }
    }else{
        if($_FILES['image']['name']!=''){
            $info=getimagesize($_FILES['image']['tmp_name']);
            // $width = $info[0];
            // $height = $info[1];
            if(isset($info['mime'])){
                if($info['mime']=="image/jpeg"){
                    $img=imagecreatefromjpeg($_FILES['image']['tmp_name']);
                }elseif($info['mime']=="image/png"){
                    $img=imagecreatefrompng($_FILES['image']['tmp_name']);
                }else{
                    $msg= "Only select jpg or png image";
                }
                if(isset($img)){
                    if (($_FILES["image"]["size"] > 300000)) {//2000000 = 2Mb
                        $msg= "Image size exceeds 200 kb";
                    }else{
                        $image=time().'.jpg';
                        // $image=imagejpeg($img,$image,40);
                        move_uploaded_file($_FILES['image']['tmp_name'],UPLOAD_STUDENT_IMAGE.$image);
                        $sql="update `students` set  `name`='$name',`class_roll`='$class_roll', `fName`='$fName',`mName`='$mName',`phoneNumber`='$phoneNumber',`permanentAddress`='$permanentAddress',`dob`='$dob',`gender`='$gender',`religion`='$religion',`batch`='$batch',`bloodGroup`='$bloodGroup',`image`='$image', `email`='$email', `dept_id`='$dept_id'  where md5(id)='$id'";
                        mysqli_query($con,$sql);
                        $_SESSION['UPDATE']=1;
                        redirect("students.php");
                    }
                }
            }else{
                $msg= "Only select jpg or png image";
            }
        }else{
            $sql="update `students` set  `name`='$name',`class_roll`='$class_roll', `fName`='$fName',`mName`='$mName',`phoneNumber`='$phoneNumber',`permanentAddress`='$permanentAddress',`dob`='$dob',`gender`='$gender',`religion`='$religion',`batch`='$batch',`bloodGroup`='$bloodGroup', `email`='$email', `dept_id`='$dept_id'  where md5(id)='$id'";

            mysqli_query($con,$sql);
            $_SESSION['UPDATE']=1;
            redirect("students.php");
        }
    }

}
?>
<div class="dashboard-content-one">
    <!-- Breadcubs Area Start Here -->
    <div class="breadcrumbs-area">
        <h3>Students</h3>
        <ul>
            <li>
                <a href="index.php">Home</a>
            </li>
            <li>Student Admit Form</li>
        </ul>
    </div>
    <!-- Breadcubs Area End Here -->

    <!-- Admit Form Area Start Here -->
    <div class="card height-auto">
        <div class="card-body">
            <div class="heading-layout1">
                <div class="item-title">
                    <h3>Manage Details</h3>
                    <br>
                    <?php echo $msg?>
                </div>
            </div>
            <form class="new-added-form" id="validate" method="post" enctype="multipart/form-data">
                <div class="row">
                    <div class="col-xl-3 col-lg-6 col-12 form-group">
                        <label>Student's Name *</label>
                        <input class="form-control" placeholder="Student's Name" name="name" id="name" type="text"
                            value="<?php echo $name?>" required>
                    </div>
                    <div class="col-xl-3 col-lg-6 col-12 form-group">
                        <label>Class Roll *</label>
                        <input class="form-control" placeholder="Student's ID" name="roll" id="roll" type="number"
                            value="<?php echo $class_roll?>" required>
                    </div>
                    <div class="col-xl-3 col-lg-6 col-12 form-group">
                        <label>Father's Name *</label>
                        <input class="form-control" placeholder="Father's Name" autocomplete="off" name="fName"
                            value="<?php echo $fname?>" id="fName" type="text" required>
                    </div>
                    <div class="col-xl-3 col-lg-6 col-12 form-group">
                        <label>Mother's Name *</label>
                        <input class="form-control" placeholder="Mother's Name" autocomplete="off" name="mName"
                            type="text" required value="<?php echo $mname?>">
                    </div>
                    <div class="col-xl-3 col-lg-6 col-12 form-group">
                        <label>Phone Number *</label>
                        <input class="form-control"  placeholder="Phone Number" autocomplete="off" name="phoneNumber"
                            type="tel" required value="<?php echo $phoneNumber?>">
                    </div>
                    <div class="col-xl-3 col-lg-6 col-12 form-group">
                        <label>Email *</label>
                        <input class="form-control" placeholder="Email" autocomplete="off" name="email" type="email"
                            required value="<?php echo $email?>">
                    </div>
                    <div class="col-xl-3 col-lg-6 col-12 form-group">
                        <label>Present Address*</label>
                        <input class="form-control" placeholder="Present Address" autocomplete="off"
                            name="presentAddress" type="text" required value="<?php echo $presentAddress?>">
                    </div>
                    <div class="col-xl-3 col-lg-6 col-12 form-group">
                        <label>Permanent Address *</label>
                        <input class="form-control" placeholder="Permanent Address" autocomplete="off"
                            name="permanentAddress" type="text" required value="<?php echo $permanentAddress?>">
                    </div>
                    <div class="col-xl-3 col-lg-6 col-12 form-group">
                        <label>Date of Birth *</label>
                        <input name="dob" value="<?php echo $dob?>" type="text" placeholder="dd/mm/yyyy"
                            class="form-control air-datepicker" data-position="bottom right" required>
                    </div>
                    <div class="col-xl-3 col-lg-6 col-12 form-group">
                        <label>Gender *</label>
                        <select class="select2" name="gender" required>
                            <option>Please Select Gender </option>
                            <?php
                        $data=[
                                'name'=>[
                                    'Male',
                                    'Female',
                                ]
                            ];
                            $count=count($data['name']);
                            for($i=0;$i<$count;$i++){
                                if($data['name'][$i]==$gender){
                                    echo "<option selected='selected' value=".$data['name'][$i].">".$data['name'][$i]."</option>";
                                }else{
                                    echo "<option value=".$data['name'][$i].">".$data['name'][$i]."</option>";
                                }                                                        
                            }
                        ?>
                        </select>
                    </div>
                    <div class="col-xl-3 col-lg-6 col-12 form-group">
                        <label>Blood Group *</label>
                        <select class="form-control select2" name="bloodGroup">
                            <option>Select Blood Group</option>
                            <?php
                            $data=[
                                'name'=>[
                                    'A+',
                                    'A-',
                                    'B+',
                                    'B-',
                                    'AB+',
                                    'AB-',
                                    'O+',
                                    'O-',
                                ]
                            ];
                            $count=count($data['name']);
                            for($i=0;$i<$count;$i++){
                                if($data['name'][$i]==$bloodGroup){
                                    echo "<option selected='selected' value=".$data['name'][$i].">".$data['name'][$i]."</option>";
                                }else{
                                    echo "<option value=".$data['name'][$i].">".$data['name'][$i]."</option>";
                                }                                                        
                            }
                            ?>
                        </select>
                    </div>
                    <div class="col-xl-3 col-lg-6 col-12 form-group">
                        <label>Religion *</label>
                        <select class="select2" name="religion" required>
                            <option>Please Select Religion </option>
                            <?php
                        $data=[
                                'name'=>[
                                    'Islam',
                                    'Hinduism',
                                    'Christian',
                                    'Buddhism',
                                    'Other',
                                ]
                            ];
                            $count=count($data['name']);
                            for($i=0;$i<$count;$i++){
                                if($data['name'][$i]==$religion){
                                    echo "<option selected='selected' value=".$data['name'][$i].">".$data['name'][$i]."</option>";
                                }else{
                                    echo "<option value=".$data['name'][$i].">".$data['name'][$i]."</option>";
                                }                                                        
                            }
                        ?>
                        </select>
                    </div>
                    <div class="col-xl-3 col-lg-6 col-12 form-group">
                        <label>Dept *</label>
                        <select class="form-control select2" name="dept_id">
                            <option>Select Department</option>
                            <?php
                            $res=mysqli_query($con,"SELECT * FROM `depts_lab_list` where public_view='1' and status='1'");
                            while($row=mysqli_fetch_assoc($res)){
                                if($row['id']==$dept_id){
                                    echo "<option selected='selected' value=".$row['id'].">".$row['name']."</option>";
                                }else{
                                    echo "<option value=".$row['id'].">".$row['name']."</option>";
                                }                                                        
                            }
                            ?>
                        </select>
                    </div>
                    <div class="col-xl-3 col-lg-6 col-12 form-group">
                        <label>Batch *</label>
                        <select class="form-control select2" name="batch">
                            <option>Select Batch</option>
                            <?php
                            $res=mysqli_query($con,"SELECT * FROM `batch` where status='1' order by numaric_value asc");
                            while($row=mysqli_fetch_assoc($res)){
                                if($row['id']==$batch){
                                    echo "<option selected='selected' value=".$row['id'].">".$row['name']." (".$row['session']." session)</option>";
                                }else{
                                    echo "<option value=".$row['id'].">".$row['name']." (".$row['session']." session)</option>";
                                }                                                        
                            }
                            ?>
                        </select>
                    </div>
                    <div class="col-lg-6 col-12 form-group">
                        <div class="col-sm-12 img-body">
                            <div class="center">
                                <div class="form-input">
                                    <div class="preview">
                                        <img id="file_ip_1-preview" <?php if($image!=''){
                                                    echo 'src="../images/students/'.$image.'"';}
                                                    ?> style="width:200px;height: 200px">
                                    </div>
                                    <label for="file_ip_1">Upload Image</label>
                                    <input type="file" name="image" id="file_ip_1" accept="image/*"
                                        onchange="showPreview(event);" <?php echo $required?>
                                        value="<?php echo $image?>">
                                </div>
                            </div>
                            <script type="text/javascript">
                            function showPreview(event) {
                                if (event.target.files.length > 0) {
                                    var src = URL.createObjectURL(event.target.files[0]);
                                    var preview = document.getElementById("file_ip_1-preview");
                                    preview.src = src;
                                    preview.style.display = "block";
                                }
                            }
                            </script>
                        </div>

                    </div>
                    <div class="col-12 form-group mg-t-8">
                        <button type="submit" name="submit"
                            class="btn-fill-lg btn-gradient-yellow btn-hover-bluedark">Save</button>
                    </div>
                </div>
            </form>
        </div>
    </div>
    <!-- Admit Form Area End Here -->

    <?php include('footer.php');?>