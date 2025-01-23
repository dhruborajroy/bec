<?php 
define('SECURE_ACCESS', true);
include("header.php");
$id="";
$dept_publication="";
$dept_research="";
$dept_scholarships="";
$dept_about="";
$dept_vision_mission="";
$dept_head_msg="";
$dept_booklet="";
if(isset($_GET['dept_id']) && $_GET['dept_id']!==""){
	$dept_id=get_safe_value($_GET['dept_id']);
    $swl="select * from `dept_general_info` where md5(dept_id)='$dept_id'";
    $res=mysqli_query($con,$swl);
    if(mysqli_num_rows($res)>0){
        $row=mysqli_fetch_assoc($res);
        $dept_publication=$row['dept_publication'];
        $dept_research=$row['dept_research'];
        $dept_scholarships=$row['dept_scholarships'];
        $dept_about=$row['dept_about'];
        $dept_vision_mission=$row['dept_vision_mission'];
        $dept_head_msg=$row['dept_head_msg'];
        $dept_booklet=$row['dept_booklet'];
    }else{
        $_SESSION['TOASTR_MSG']=array(
           'type'=>'error',
           'body'=>'You don\'t have the permission to access the location!',    
           'title'=>'Error',
        );
        // redirect("index.php");
    }
}
if(isset($_POST['submit'])){
	$title=get_safe_value($_POST['title']);
	$details=get_safe_value($_POST['details']);
    $user_id=$_SESSION['ADMIN_ID'];
    $added_on=time();
   if($id==''){
        $id=uniqid();
        $sql="INSERT INTO `dept_general_info` (`id`, `dept_id`, `dept_publication`, `dept_research`, `dept_scholarships`, `dept_about`, `dept_vision_mission`, `dept_head_msg`, `dept_booklet`, `status`) VALUES 
                                            ('$id', '$dept_id', '$dept_publication', '$dept_research', '$dept_scholarships', '$dept_about', '$dept_vision_mission', '$dept_head_msg', '$dept_booklet', 'active')";
        if(mysqli_query($con,$sql)){
            $_SESSION['TOASTR_MSG']=array(
                'type'=>'success',
                'body'=>'Data Inserted',
                'title'=>'Success',
            );
            // redirect('./about_us');
        }else{
            echo $sql;
        }
    }else{
        $updated_on=time();
        $sql = "UPDATE dept_general_info 
        SET dept_id = '$dept_id', 
            dept_publication = '$dept_publication', 
            dept_research = '$dept_research', 
            dept_scholarships = '$dept_scholarships', 
            dept_about = '$dept_about', 
            dept_vision_mission = '$dept_vision_mission', 
            dept_head_msg = '$dept_head_msg', 
            dept_booklet = '$dept_booklet', 
            status = 'active'
        WHERE md5(id) = '$dept_id'";
        if(mysqli_query($con,$sql)){
            $_SESSION['TOASTR_MSG']=array(
                'type'=>'success',                
                'body'=>'Data Updated',
                'title'=>'Success',
            );
            // redirect('./about_us');
        }else{
            echo $sql;
        }
    }
}

?>
<div class="dashboard-content-one">
    <!-- Breadcubs Area Start Here -->
    <div class="breadcrumbs-area">
        <h3>Notice board</h3>
        <ul>
            <li>
                <a href="index.php">Home</a>
            </li>
            <li>Department Infos </li>
        </ul>
    </div>
    <!-- Breadcubs Area End Here -->
    <div class="row">
        <!-- Add Notice Area Start Here -->
        <div class="col-12-xxxl col-12">
            <div class="card height-auto">
                <div class="card-body">
                    <div class="heading-layout1">
                        <div class="item-title">
                            <h3>Department Infos</h3>
                        </div>
                    </div>
                    <form id="validate" class="new-added-form" method="post">
                        <div class="row">
                            <div class="col-12-xxxl col-lg-12 col-12 ">
                                <h1>Department Publication</h1>
                                <textarea class="full_input" name="dept_publication" id="dept_publication"><?php echo $dept_publication?></textarea class="full_input">
                            </div>
                            <div class="col-12-xxxl col-lg-12 col-12 ">
                                <h1>Department Research</h1>
                                <textarea class="full_input" name="dept_research" id="dept_research" cols="30" rows="30"><?php echo $dept_research?></textarea class="full_input">
                            </div>
                            <div class="col-12-xxxl col-lg-12 col-12 ">
                                <h1>Department Scholarships</h1>
                                <textarea class="full_input" name="dept_scholarships" id="dept_scholarships" cols="30" rows="30"><?php echo $dept_scholarships?></textarea class="full_input">
                            </div>
                            <div class="col-12-xxxl col-lg-12 col-12 ">
                                <h1>Department About</h1>
                                <textarea class="full_input" name="dept_about" id="dept_about" cols="30" rows="30"><?php echo $dept_about?></textarea class="full_input">
                            </div>
                            <div class="col-12-xxxl col-lg-12 col-12 ">
                                <h1>Department vision mission</h1>
                                <textarea class="full_input" name="dept_vision_mission" id="dept_vision_mission" cols="30" rows="30"><?php echo $dept_vision_mission?></textarea class="full_input">
                            </div>
                            <div class="col-12-xxxl col-lg-12 col-12 ">
                                <h1>Department head message</h1>
                                <textarea class="full_input" name="dept_head_msg" id="dept_head_msg" cols="30" rows="30"><?php echo $dept_head_msg?></textarea class="full_input">
                            </div>
                            <div class="col-12-xxxl col-lg-12 col-12 ">
                                <h1>Department booklet</h1>
                                <textarea class="full_input" name="dept_booklet" id="dept_booklet" cols="30" rows="30"><?php echo $dept_booklet?></textarea class="full_input">
                            </div>
                            <div class="col-12 form-group mg-t-8">
                                <input type="submit" class="btn-fill-lg btn-gradient-yellow btn-hover-bluedark"
                                    name="submit">
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
        <!-- Add Notice Area End Here -->
    </div>
    <?php include("footer.php")?>