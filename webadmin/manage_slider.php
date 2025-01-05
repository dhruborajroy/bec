<?php 
include("header.php");
$id="";
$title="";
$user_id="";
$details="";
$added_on="";
$sub_title="";
$button_link="";
$button_text="";
if(isset($_GET['id']) && $_GET['id']!==""){
	$id=get_safe_value($_GET['id']);
    $swl="select * from `sliders` where md5(id)='$id'";
    $res=mysqli_query($con,$swl);
    if(mysqli_num_rows($res)>0){
        $row=mysqli_fetch_assoc($res);
        $title=$row['title'];
        $sub_title=$row['sub_title'];
        $button_text=$row['button_text'];
        $button_link=$row['button_link'];
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
	$sub_title=get_safe_value($_POST['sub_title']);
	$button_text=get_safe_value($_POST['button_text']);
	$button_link=get_safe_value($_POST['button_link']);
    $user_id=$_SESSION['ADMIN_ID'];
    $added_on=time();
   if($id==''){
        $id=uniqid();
        $sql="INSERT INTO `sliders` (`id`, `title`, `sub_title`,`button_text`,`button_link`, `added_on`,`updated_on`, `added_by`, `status`) VALUES 
                                    ('$id', '$title', '$sub_title','$button_text','$button_link', '$added_on', '','$user_id', '1')";
        if(mysqli_query($con,$sql)){
            $_SESSION['TOASTR_MSG']=array(
                'type'=>'success',
                'body'=>'Data Inserted',
                'title'=>'Success',
            );
            // redirect('./sliders');
        }else{
            echo $sql;
        }
    }else{
        $updated_on=time();
        $sql="update `sliders` set  `title`='$title', `sub_title`='$sub_title',`updated_on`='$updated_on',`added_by`='$user_id' where md5(id)='$id'";
        if(mysqli_query($con,$sql)){
            $_SESSION['TOASTR_MSG']=array(
                'type'=>'success',
                'body'=>'Data Updated',
                'title'=>'Success',
            );
            // redirect('./sliders');
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
        <div class="col-4-xxxl col-12">
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
                                    value="<?php echo $title?>">
                            </div>
                            <div class="col-12-xxxl col-lg-6 col-12 form-group">
                                <label>Sub Title</label>
                                <input type="text"  placeholder="Enter Subtitle" class="form-control" name="sub_title" id="sub_title"
                                    value="<?php echo $sub_title?>">
                            </div>
                            <div class="col-12-xxxl col-lg-6 col-12 form-group">
                                <label>Button Text</label>
                                <input type="text" required placeholder="Enter Button Text" class="form-control" name="button_text" id="button_text"
                                    value="<?php echo $button_text?>">
                            </div>
                            <div class="col-12-xxxl col-lg-6 col-12 form-group">
                                <label>Button Link</label>
                                <input type="text"  placeholder="Enter Button Link" class="form-control" name="button_link" id="button_link"
                                    value="<?php echo $button_link?>">
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