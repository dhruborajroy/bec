<?php include("header.php")?>


    <!--=================================
    inner-header -->
    <section class="inner-banner bg-overlay-black-70 bg-holder" style="background-image: url('images/bg/02.jpg');">
      <div class="container">
        <div class="row d-flex justify-content-center">
          <div class="col-md-12">
            <div class="text-center">
              <h1 class="text-white">Teachers</h1>
            </div>  
          </div>
        </div>
      </div>
    </section>
    <!--=================================inner-header -->

    <!--=================================Team -->
    <section class="space-ptb">
      <div class="container">
        <div class="row justify-content-center">
          <div class="col-lg-8 col-md-10 text-center">
          </div>
        </div>
        <div class="row mb-xl-4">
          <div class="col-xl-3 col-lg-6 col-sm-6 mb-4">


          <?php
            $sql="select * from faculty";
            $res=mysqli_query($con,$sql); 
            if(mysqli_num_rows($res)>0){
              $i=1;        
              while($row=mysqli_fetch_assoc($res)){
            ?>
            <!-- team-01 START -->
            <div class="team">
              <div class="team-img">
                <img class="img-fluid" src="images/teachers/<?php echo $row['image']?>" alt="">
              </div>
              <div class="team-info">
                <a href="faculty-details?id=<?php echo $row['id']?>" class="team-name"><?php echo $row['name']?></a>
                <p class="team-leader"><?php echo $row['designation']?></p>
                <ul class="list-unstyled">
                  <li><a href="<?php echo $row['facebook']?>"><i class="fab fa-facebook-f"></i></a></li>
                  <li><a href="#"><i class="fab fa-twitter"></i></a></li>
                  <li><a href="#"><i class="fab fa-linkedin-in"></i></a></li>
                  <li><a href="#"><i class="fab fa-instagram"></i></a></li>
                </ul>
              </div>
            </div>
            <!-- team-01 END -->

            <?php 
                $i++;
                } } else { ?>
                      
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

            <?php } ?>
            
          </div>
        </div>
      </div>
    </section>
    <!--=================================Team -->

<?php include("footer.php")?>