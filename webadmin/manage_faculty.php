<?php include("header.php");
// Initialize all variables as blank
$id="";
$name = "";
$designation = "";
$phone = "";
$email = "";
$research_interest = "";
$bio = "";
$facebook = "";
$linked_in = "";
$education = "";
$experience = "";
$publication = "";
$scholarship_award = "";
$research = "";
$teaching_supervision = "";
$joined_at = "";
$visibility = "public"; // Default value for visibility
$dept_head = 0; // Default value for checkbox (0 = unchecked)
$status = "active"; // Default value for status


if(isset($_GET['id']) && $_GET['id']>0){
	$id=get_safe_value($_GET['id']);
    $res=mysqli_query($con,"select * from `faculty` where id='$id'");
    if(mysqli_num_rows($res)>0){
        $row=mysqli_fetch_assoc($res);
        // Retrieve all variables
        $name = $row['name'];
        $designation = $row['designation'];
        $phone = $row['phone'];
        $email = $row['email'];
        $research_interest = $row['research_interest'];
        $bio = $row['bio'];
        $facebook = $row['facebook'];
        $linked_in = $row['linked_in'];
        $education = $row['education'];
        $dept = $row['dept'];
        $experience = $row['experience'];
        $publication = $row['publication'];
        $scholarship_award = $row['scholarship_award'];
        $research = $row['research'];
        $teaching_supervision = $row['teaching_supervision'];
        $joined_at = $row['joined_at'];
        $visibility = $row['visibility'];
        $dept_head = $row['dept_head'];
        $status = $row['status'];
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
    $name = get_safe_value($_POST['name']);
    $designation = get_safe_value($_POST['designation']);
    $phone = get_safe_value($_POST['phone']);
    $email = get_safe_value($_POST['email']);
    $research_interest = get_safe_value($_POST['research_interest']);
    $bio = get_safe_value($_POST['bio']);
    $facebook = get_safe_value($_POST['facebook']);
    $linked_in = get_safe_value($_POST['linked_in']);
    $education = get_safe_value($_POST['education']);
    $experience = get_safe_value($_POST['experience']);
    $dept = get_safe_value($_POST['dept']);
    $publication = get_safe_value($_POST['publication']);
    $scholarship_award = get_safe_value($_POST['scholarship_award']);
    $research = get_safe_value($_POST['research']);
    $teaching_supervision = get_safe_value($_POST['teaching_supervision']);
    $joined_at = get_safe_value($_POST['joined_at']);
    $visibility = get_safe_value($_POST['visibility']);
    $dept_head = isset($_POST['dept_head']) ? 1 : 0; // Convert checkbox value to boolean
    $_SESSION['ADMIN_ID'];
    $added_on=time();
   if($id==''){
        $id=uniqid();
        $sql = "INSERT INTO faculty (id, name, designation, phone, email, research_interest, bio, facebook, linked_in, education, experience, publication, scholarship_award, research, teaching_supervision, joined_at, visibility, dept_head, status) 
        VALUES ('$id','$name', '$designation', '$phone', '$email', '$research_interest', '$bio', '$facebook', '$linked_in', '$education', '$experience', '$publication', '$scholarship_award', '$research', '$teaching_supervision', '$joined_at', '$visibility', $dept_head, '$status')";
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
        $sql = "UPDATE faculty SET name='$name', designation='$designation', phone='$phone', email='$email', research_interest='$research_interest', bio='$bio', facebook='$facebook', linked_in='$linked_in', education='$education', experience='$experience', publication='$publication', scholarship_award='$scholarship_award', research='$research', teaching_supervision='$teaching_supervision', joined_at='$joined_at', visibility='$visibility', dept_head=$dept_head, status='$status' WHERE id='$id'";
        if(mysqli_query($con,$sql)){
            $_SESSION['TOASTR_MSG']=array(
                'type'=>'success',
                'body'=>'Data updated',
                'title'=>'Success',
            );
            // redirect('./about_us');
        }else{
            echo $sql;
        }
    }
    // echo $sql;
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
                            <h3>Create A Faculty Profile</h3>
                        </div>
                    </div>
                    <form id="validate" class="new-added-form" method="post">
                            <div class="row ">
                            <div class="col-12-xxxl col-lg-12 col-12 form-group">
                                <label for="name">Name</label>
                                <input type="text" name="name" id="name" value="<?php echo htmlspecialchars($name); ?>" class="form-control">
                            </div>
                            <div class="col-12-xxxl col-lg-12 col-12 form-group">
                                <label for="designation">Designation</label>
                                <input type="text" name="designation" id="designation" value="<?php echo htmlspecialchars($designation); ?>" class="form-control">
                            </div>
                            <div class="col-12-xxxl col-lg-12 col-12 form-group">
                                <label for="phone">Phone</label>
                                <input type="text" name="phone" id="phone" value="<?php echo htmlspecialchars($phone); ?>" class="form-control">
                            </div>
                            <div class="col-12-xxxl col-lg-12 col-12 form-group">
                                <label for="email">Email</label>
                                <input type="email" name="email" id="email" value="<?php echo htmlspecialchars($email); ?>" class="form-control">
                            </div>
                            <div class="col-12-xxxl col-lg-12 col-12 form-group">
                                <label for="research_interest">Research Interest</label>
                                <input type="text" name="research_interest" id="research_interest" value="<?php echo htmlspecialchars($research_interest); ?>" class="form-control">
                            </div>
                            <div class="col-12-xxxl col-lg-12 col-12 form-group">
                                <label for="bio">Bio</label>
                                <textarea name="bio" id="bio" cols="30" rows="5" class="form-control"><?php echo htmlspecialchars($bio); ?></textarea>
                            </div>
                            <div class="col-12-xxxl col-lg-12 col-12 form-group">
                                <label for="Dept">Department</label>
                                <input type="text" name="dept" id="dept" value="<?php echo htmlspecialchars($Dept); ?>" class="form-control">
                            </div>
                            <div class="col-12-xxxl col-lg-12 col-12 form-group">
                                <label for="facebook">Facebook</label>
                                <input type="text" name="facebook" id="facebook" value="<?php echo htmlspecialchars($facebook); ?>" class="form-control">
                            </div>
                            <div class="col-12-xxxl col-lg-12 col-12 form-group">
                                <label for="linked_in">LinkedIn</label>
                                <input type="text" name="linked_in" id="linked_in" value="<?php echo htmlspecialchars($linked_in); ?>" class="form-control">
                            </div>
                            <div class="col-12-xxxl col-lg-12 col-12 form-group">
                                <label for="education">Education</label>
                                <textarea name="education" id="education" cols="30" rows="5" class="form-control"><?php echo htmlspecialchars($education); ?></textarea>
                            </div>
                            <div class="col-12-xxxl col-lg-12 col-12 form-group">
                                <label for="experience">Experience</label>
                                <textarea name="experience" id="experience" cols="30" rows="5" class="form-control"><?php echo htmlspecialchars($experience); ?></textarea>
                            </div>
                            <div class="col-12-xxxl col-lg-12 col-12 form-group">
                                <label for="publication">Publication</label>
                                <textarea name="publication" id="publication" cols="30" rows="5" class="form-control"><?php echo htmlspecialchars($publication); ?></textarea>
                            </div>
                            <div class="col-12-xxxl col-lg-12 col-12 form-group">
                                <label for="scholarship_award">Scholarship & Awards</label>
                                <textarea name="scholarship_award" id="scholarship_award" cols="30" rows="5" class="form-control"><?php echo htmlspecialchars($scholarship_award); ?></textarea>
                            </div>
                            <div class="col-12-xxxl col-lg-12 col-12 form-group">
                                <label for="research">Research</label>
                                <textarea name="research" id="research" cols="30" rows="5" class="form-control"><?php echo htmlspecialchars($research); ?></textarea>
                            </div>
                            <div class="col-12-xxxl col-lg-12 col-12 form-group">
                                <label for="teaching_supervision">Teaching & Supervision</label>
                                <textarea name="teaching_supervision" id="teaching_supervision" cols="30" rows="5" class="form-control"><?php echo htmlspecialchars($teaching_supervision); ?></textarea>
                            </div>
                            <div class="col-12-xxxl col-lg-12 col-12 form-group">
                                <label for="joined_at">Joined At</label>
                                <input type="date" name="joined_at" id="joined_at" value="<?php echo htmlspecialchars($joined_at); ?>" class="form-control">
                            </div>
                            <div class="col-12-xxxl col-lg-12 col-12 form-group">
                                <label for="visibility">Visibility</label>
                                <select name="visibility" id="visibility" class="form-control">
                                    <option value="public" <?php echo $visibility == 'public' ? 'selected' : ''; ?>>Public</option>
                                    <option value="private" <?php echo $visibility == 'private' ? 'selected' : ''; ?>>Private</option>
                                </select>
                            </div>
                            <div class="col-12-xxxl col-lg-12 col-12 form-group">
                                <label for="dept_head">Department Head</label>
                                <input type="checkbox" name="dept_head" id="dept_head" value="1" <?php echo $dept_head == 1 ? 'checked' : ''; ?>>
                            </div>
                            <div class="col-12-xxxl col-lg-12 col-12 form-group">
                                <label for="status">Status</label>
                                <select name="status" id="status" class="form-control">
                                    <option value="active" <?php echo $status == 'active' ? 'selected' : ''; ?>>Active</option>
                                    <option value="inactive" <?php echo $status == 'inactive' ? 'selected' : ''; ?>>Inactive</option>
                                </select>
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
    // Select all textareas on the page
    const textAreas = document.querySelectorAll('textarea');
    textAreas.forEach(textArea => {
        ClassicEditor.create(textArea).catch(error => console.error(error));
    });
</script>