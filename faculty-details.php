<?php include("header.php");

if(isset($_GET['id']) && $_GET['id']>0){
	  $id=get_safe_value($_GET['id']);
    $res=mysqli_query($con,"select * from `faculty` where md5(id)='$id'");
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
}else{
  $_SESSION['TOASTR_MSG']=array(
     'type'=>'error',
     'body'=>'You don\'t have the permission to access the location!',    
     'title'=>'Error',
  );
  // redirect("index.php");
}
?>
    <!--=================================inner-header -->
    <section class="inner-banner bg-overlay-black-70 bg-holder" style="background-image: url('images/bg/02.jpg');">
      <div class="container">
        <div class="row d-flex justify-content-center">
          <div class="col-md-12">
            <div class="text-center">
              <h1 class="text-white">Faculty Details</h1>
            </div>
          </div>
        </div>
      </div>
    </section>
    <!--=================================inner-header -->

    <!--=================================Team-single -->
    <section class="space-pt">
      <div class="container">
        <div class="row">
          <div class="col-lg-12">
            <div class="row">
              <div class="col-md-4 mb-4 mb-md-0">
              <div class="bd-example">
  <ul class="nav nav-pills mb-3" id="pills-tab" role="tablist">
    <li class="nav-item" role="presentation">
      <button class="nav-link active" id="pills-home-tab" data-bs-toggle="pill" data-bs-target="#pills-home" type="button" role="tab" aria-controls="pills-home" aria-selected="true">Home</button>
    </li>
    <li class="nav-item" role="presentation">
      <button class="nav-link" id="pills-profile-tab" data-bs-toggle="pill" data-bs-target="#pills-profile" type="button" role="tab" aria-controls="pills-profile" aria-selected="false">Profile</button>
    </li>
    <li class="nav-item" role="presentation">
      <button class="nav-link" id="pills-contact-tab" data-bs-toggle="pill" data-bs-target="#pills-contact" type="button" role="tab" aria-controls="pills-contact" aria-selected="false">Contact</button>
    </li>
  </ul>
  <div class="tab-content" id="pills-tabContent">
    <div class="tab-pane fade show active" id="pills-home" role="tabpanel" aria-labelledby="pills-home-tab">
      <p><strong>This is some placeholder content the Home tab's associated content.</strong> Clicking another tab will toggle the visibility of this one for the next. The tab JavaScript swaps classes to control the content visibility and styling. You can use it with tabs, pills, and any other <code>.nav</code>-powered navigation.</p>
    </div>
    <div class="tab-pane fade" id="pills-profile" role="tabpanel" aria-labelledby="pills-profile-tab">
      <p><strong>This is some placeholder content the Profile tab's associated content.</strong> Clicking another tab will toggle the visibility of this one for the next. The tab JavaScript swaps classes to control the content visibility and styling. You can use it with tabs, pills, and any other <code>.nav</code>-powered navigation.</p>
    </div>
    <div class="tab-pane fade" id="pills-contact" role="tabpanel" aria-labelledby="pills-contact-tab">
      <p><strong>This is some placeholder content the Contact tab's associated content.</strong> Clicking another tab will toggle the visibility of this one for the next. The tab JavaScript swaps classes to control the content visibility and styling. You can use it with tabs, pills, and any other <code>.nav</code>-powered navigation.</p>
    </div>
  </div>
</div>
                <div class="team-single is-sticky">
                  <div class="team-img">
                  <img class="img-fluid border-radius" src="images/teachers/<?php echo $row['image']?>" alt="">
                  </div>
                  <div class="social mt-4 text-center">
                    <ul class="pl-0">
                      <li><a href="<?php echo $row['facebook']?>" target="_blank"><i class="fab fa-facebook-f"></i></a></li>
                      <li><a href="<?php echo $row['linked_in']?>" target="_blank"><i class="fab fa-linkedin-in"></i></a></li>
                      <li><a href="mailto:<?php echo $row['email']?>"><i class="fa fa-envelope"></i></a></li>
                    
                    </ul>
                  </div>
                </div>
              </div>
              <div class="col-md-8">
                <div class="team-info">
                  <a href="#" class="team-name h4"><?php echo $row['name']?></a>
                  <h6 class="border-bottom text-primary my-3 pb-3"><?php echo $row['designation']?></h6>
                  <div class="d-flex">
                    <h6>Phone:</h6>
                    <label class="ml-3"><?php echo $row['phone']?></label>
                  </div>
                  <div class=" d-flex">
                    <h6>Email:</h6>
                    <label class="ml-3"><?php echo $row['email']?></label>
                  </div>
                  <!-- <div class=" d-flex">
                    <h6>Address:</h6>
                    <label class="ml-3">sd</label>
                  </div> -->
                  <!-- <p class="mt-4"><?php //echo $row['bio']?></p> -->
                </div>
                <div class="blockquote mt-5">
                  <div class="blockquote-info">
                    <div class="blockquote-quote">
                      <i class="fas fa-quote-left"></i>
                    </div>
                    <div class="blockquote-content">
                      <?php echo $row['bio']?>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>

    <!--=================================others info -->
    <section class="space-ptb">
      <div class="container-fluid">
        <div class="row justify-content-center">
          <div class="col-lg-12">
            <div class="accordion" id="career-opportunities">
              <div class="card">
                <div class="accordion-icon card-header" id="headingOne">
                  <h4 class="mb-0">
                  <button class="btn" type="button" data-toggle="collapse" data-target="#security-manager" aria-expanded="true" aria-controls="security-manager">Education</button>
                  </h4>
                </div>
                <div id="security-manager" class="collapse show" aria-labelledby="headingOne" data-parent="#career-opportunities">
                  <div class="card-body">
                    <p class="mb-4">
                      <?php echo $row['education']?>
                    </p>
                    
                  </div>
                </div>
              </div>
              <div class="card">
                <div class="accordion-icon card-header" id="headingOne">
                  <h4 class="mb-0">
                  <button class="btn" type="button" data-toggle="collapse" data-target="#security-manager" 
                  aria-expanded="true" aria-controls="security-manager">Education</button>
                  </h4>
                </div>
                <div id="security-manager" class="collapse show" aria-labelledby="headingOne" data-parent="#career-opportunities">
                  <div class="card-body">
                    <p class="mb-4">
                      <?php echo $row['education']?>
                    </p>
                    
                  </div>
                </div>
              </div>
              <div class="card">
                <div class="accordion-icon card-header" id="headingOne">
                  <h4 class="mb-0">
                  <button class="btn" type="button" data-toggle="collapse" data-target="#security-manager" 
                  aria-expanded="true" aria-controls="security-manager">Experience</button>
                  </h4>
                </div>
                <div id="security-manager" class="collapse show" aria-labelledby="headingOne" data-parent="#career-opportunities">
                  <div class="card-body">
                    <p class="mb-4">
                      <?php echo $row['experience']?>
                    </p>
                    
                  </div>
                </div>
              </div>
              <div class="card">
                <div class="accordion-icon card-header" id="headingOne">
                  <h4 class="mb-0">
                  <button class="btn" type="button" data-toggle="collapse" 
                  data-target="#security-manager" aria-expanded="true" aria-controls="security-manager">Publication</button>
                  </h4>
                </div>
                <div id="security-manager" class="collapse show" aria-labelledby="headingOne" data-parent="#career-opportunities">
                  <div class="card-body">
                    <p class="mb-4">
                      <?php echo $row['publication']?>
                    </p>
                    
                  </div>
                </div>
              </div>
              <div class="card">
                <div class="accordion-icon card-header" id="headingOne">
                  <h4 class="mb-0">
                  <button class="btn" type="button" data-toggle="collapse" data-target="#scholarship_award" 
                  aria-expanded="true" aria-controls="scholarship_award">Scholarships & Awards</button>
                  </h4>
                </div>
                <div id="scholarship_award" class="collapse show" aria-labelledby="headingOne" 
                data-parent="#career-opportunities">
                  <div class="card-body">
                    <p class="mb-4">
                      <?php echo $row['scholarship_award']?>
                    </p>
                    
                  </div>
                </div>
              </div>
              <div class="card">
                <div class="accordion-icon card-header" id="headingOne">
                  <h4 class="mb-0">
                  <button class="btn" type="button" data-toggle="collapse" data-target="#research" 
                  aria-expanded="true" aria-controls="research">Research</button>
                  </h4>
                </div>
                <div id="research" class="collapse show" aria-labelledby="headingOne" data-parent="#career-opportunities">
                  <div class="card-body">
                    <p class="mb-4">
                      <?php echo $row['research']?>
                    </p>
                    
                  </div>
                </div>
              </div>
              <div class="card">
                <div class="accordion-icon card-header" id="headingOne">
                  <h4 class="mb-0">
                  <button class="btn" type="button" data-toggle="collapse" data-target="#teaching_supervision" aria-expanded="true" aria-controls="teaching_supervision">Education</button>
                  </h4>
                </div>
                <div id="teaching_supervision" class="collapse show" aria-labelledby="headingOne" data-parent="#career-opportunities">
                  <div class="card-body">
                    <p class="mb-4">
                      <?php echo $row['teaching_supervision']?>
                    </p>
                    
                  </div>
                </div>
              </div>
              <div class="card">
                <div class="accordion-icon card-header" id="headingOne">
                  <h4 class="mb-0">
                  <button class="btn" type="button" data-toggle="collapse" data-target="#teaching_supervision" aria-expanded="true" aria-controls="teaching_supervision">Teaching & Supervision</button>
                  </h4>
                </div>
                <div id="teaching_supervision" class="collapse show" aria-labelledby="headingOne" data-parent="#career-opportunities">
                  <div class="card-body">
                    <p class="mb-4">
                      <?php echo $row['teaching_supervision']?>
                    </p>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </section>
    <!--=================================Faq -->

      <!--=================================Team -->
    <section class="space-pb">
      <div class="container">
        <div class="row justify-content-center">
          <div class="col-lg-8 col-md-10 text-center">
            <!-- Section Title START -->
            <div class="section-title">
              <h2>Meet Our Team</h2>
              <p class="mb-0">Meet the outstanding performers in our industry-award-winning team of professionals</p>
            </div>
            <!-- Section Title END -->
          </div>
        </div>
        <div class="row">

        <?php
            $sql="select * from faculty";
            $res=mysqli_query($con,$sql); 
            if(mysqli_num_rows($res)>0){
              $i=1;        
              while($row=mysqli_fetch_assoc($res)){
            ?>
            <div class="col-xl-3 col-lg-6 col-sm-6 mb-4">
            <!-- team-01 START -->
            <div class="team">
              <div class="team-img">
                <img class="img-fluid" src="images/teachers/<?php echo $row['image']?>" alt="">
              </div>
              <div class="team-info">
                <a href="faculty-details?id=<?php echo md5($row['id'])?>" class="team-name"><?php echo $row['name']?></a>
                <p class="team-leader"><?php echo $row['designation']?></p>
                <ul class="list-unstyled">
                  <li><a href="<?php echo $row['facebook']?>"><i class="fab fa-facebook-f"></i></a></li>
                  <li><a href="<?php echo $row['linked_in']?>"><i class="fab fa-linkedin-in"></i></a></li>
                  <li><a href="mailto:<?php echo $row['email']?>"><i class="fab fa-instagram"></i></a></li>
                </ul>
              </div>
            </div>
            <!-- team-01 END -->
          </div>

            <?php 
                $i++;
                } } else { ?>
                
                <div class="col-xl-3 col-lg-6 col-sm-6 mb-4">
                  <!-- team-01 START -->
                  <div class="team">
                    <div class="team-img">
                      <img class="img-fluid" src="images/teachers/rabbani.jpg" alt="">
                    </div>
                    <div class="team-info">
                      <a href="faculty-details" class="team-name">Md. Liton Rabbani</a>
                      <p class="team-leader">Principal(In-charge)</p>
                      <ul class="list-unstyled">
                        <li><a href="#"><i class="fab fa-facebook-f"></i></a></li>
                        <li><a href="#"><i class="fab fa-twitter"></i></a></li>
                        <li><a href="#"><i class="fab fa-linkedin-in"></i></a></li>
                        <li><a href="#"><i class="fab fa-instagram"></i></a></li>
                      </ul>
                    </div>
                  </div>
                  <!-- team-01 END -->
                </div>
            <?php } ?>


        </div>
      </div>
    </section>
      </div>
    </section>
    <!--=================================Team-single -->

<?php include("footer.php")?>