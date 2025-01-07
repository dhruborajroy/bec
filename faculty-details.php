<?php include("header.php");

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
                <div class="team-single is-sticky">
                  <div class="team-img">
                  <img class="img-fluid border-radius" src="images/teachers/<?php echo $row['image']?>" alt="">
                  </div>
                  <div class="social mt-4 text-center">
                    <ul class="pl-0">
                      <li><a href="<?php echo $row['facebook']?>"><i class="fab fa-facebook-f"></i></a></li>
                      <li><a href="#"><i class="fab fa-twitter"></i></a></li>
                      <li><a href="#"><i class="fab fa-linkedin-in"></i></a></li>
                      <li><a href="#"><i class="fab fa-instagram"></i></a></li>
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
    <!--=================================
    Faq -->

      <!--=================================
    Team --><section class="space-pb">
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
          <div class="col-xl-3 col-lg-6 col-sm-6 mb-4 mb-xl-0">
            <!-- team-01 START -->
            <div class="team">
              <div class="team-img">
                <img class="img-fluid" src="images/team/06.jpg" alt="">
              </div>
              <div class="team-info">
                <a href="#" class="team-name">Homer Reyes</a>
                <p class="team-leader">Community</p>
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
          <div class="col-xl-3 col-lg-6 col-sm-6 mb-4 mb-xl-0">
            <!-- team-01 START -->
            <div class="team">
              <div class="team-img">
                <img class="img-fluid" src="images/team/02.jpg" alt="">
              </div>
              <div class="team-info">
                <a href="#" class="team-name">Ora Bryan</a>
                <p class="team-leader">Illustration</p>
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
          <div class="col-xl-3 col-lg-6 col-sm-6 mb-4 mb-sm-0">
            <!-- team-01 START -->
            <div class="team">
              <div class="team-img">
                <img class="img-fluid" src="images/team/08.jpg" alt="">
              </div>
              <div class="team-info">
                <a href="#" class="team-name">Ben Aguilar</a>
                <p class="team-leader">Developer</p>
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
          <div class="col-xl-3 col-lg-6 col-sm-6">
            <!-- team-01 START -->
            <div class="team">
              <div class="team-img">
                <img class="img-fluid" src="images/team/03.jpg" alt="">
              </div>
              <div class="team-info">
                <a href="#" class="team-name">Gwen Bass</a>
                <p class="team-leader">Sales and Marketing</p>
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
        </div>
      </div>
    </section>
      </div>
    </section>
    <!--=================================Team-single -->

<?php include("footer.php")?>