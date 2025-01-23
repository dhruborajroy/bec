<?php 
define('SECURE_ACCESS', true);
include("header.php");
$title="";
$id="";
if(isset($_GET['id']) && $_GET['id']>0){
	$id=get_safe_value($_GET['id']);
    $res=mysqli_query($con,"select * from `notice` where id='$id'");
    if(mysqli_num_rows($res)>0){
        $row=mysqli_fetch_assoc($res);
        $title=$row['title'];
    }else{
        $_SESSION['TOASTR_MSG']=array(
           'type'=>'error',
           'body'=>'You don\'t have the permission to access the location!',    
           'title'=>'Error',
        );
        redirect("index.php");
    }
}
if(isset($_POST['submit'])){
	$title=get_safe_value($_POST['title']);
	$reference=get_safe_value($_POST['reference']);
	$details=$_POST['details'];
    $user_id=$_SESSION['ADMIN_ID'];
    $added_on=time();
    $ref_id=uniqid();
   if($id==''){
        $id=uniqid();
        $sql="INSERT INTO `notice` (`id`, `title`, `details`,`reference`, `added_on`,`updated_on`, `user_id`, `status`) VALUES 
                                    ('$id', '$title', '$details','$reference', '$added_on', '','$user_id', '1')";
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
        // print_r($_POST);
        $sql="update `notice` set  `title`='$title', `details`='$details',`reference`='$reference',`updated_on`='$updated_on' where id='$id'";
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
    }
    // echo $sql;
    redirect('../pdfreports/notice?notice_id='.$id);
    // redirect('./notices');
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
                                    value="<?php echo $title?>">
                            </div>
                            <div class="col-12-xxxl col-lg-12 col-12 row">
                                <div class="col-4-xxxl col-lg-4 col-4">
                                    <label>Upload Files</label>
                                    <input type="file" id="pdfUpload" accept="application/pdf">
                                </div>
                                <div class="col-8-xxxl col-lg-8 col-8">
                                    <label>Upload Files</label>
                                    <iframe id="pdfPreview" width="100%" height="500px" style="display: none;"></iframe>
                                </div>
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
    <script>
        document.getElementById('pdfUpload').addEventListener('change', function(event) {
            let file = event.target.files[0]; // Get the uploaded file

            if (file && file.type === 'application/pdf') {
                let fileURL = URL.createObjectURL(file); // Create object URL
                let pdfPreview = document.getElementById('pdfPreview');
                pdfPreview.style.display = "block"; // Show the iframe
                pdfPreview.src = fileURL; // Set the file URL as iframe source
            } else {
                alert('Please upload a valid PDF file.');
            }
        });
    </script>
