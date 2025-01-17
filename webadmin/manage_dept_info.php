<?php 
include("header.php");
$id="";
$title="";
$user_id="";
$details="";
$added_on="";
if(isset($_GET['id']) && $_GET['id']!==""){
	$dept_id=get_safe_value($_GET['dept_id']);
	$type=get_safe_value($_GET['type']);
    $swl="select * from `dept_general_info` where md5(id)='$id'";
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
        $added_on=$row['added_on'];
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
        WHERE id = '$id'";
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
            <li>Notices </li>
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
                            <h3>Create A Notice</h3>
                        </div>
                    </div>
                    <form id="validate" class="new-added-form" method="post">
                        <div class="row">
                            <div class="col-12-xxxl col-lg-6 col-12 form-group">
                                <label>Title</label>
                                <input type="text" required placeholder="" class="form-control" name="title" id="title"
                                    value="<?php echo $type?>">
                            </div>
                            <div class="col-12-xxxl col-lg-12 col-12 form-group">
                                <label>Details</label>
                                <textarea name="details" id="editor" cols="30" rows="10"><?php echo $details?></textarea>
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
    <script src="https://cdn.ckeditor.com/ckeditor5/35.0.1/classic/ckeditor.js"></script>

    <script>
            ClassicEditor
                    .create( document.querySelector( '#editor' ) )
                    .then( editor => {
                            console.log( editor );
                    } )
                    .catch( error => {
                            console.error( error );
                    } );
    </script>