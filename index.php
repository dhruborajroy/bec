<?php include("header.php")?>
<!--=================================Banner -->
<section class="banner position-ralative">
   <div id="main-slider" class="swiper-container h-800 h-lg-700 h-md-600 h-sm-400">
      <div class="swiper-wrapper">
         <?php
            $active="";
              $slider_sql="select * from `sliders` order by added_on desc";
              $slider_res=mysqli_query($con,$slider_sql);
              if(mysqli_num_rows($slider_res)>0){
              $i=1;
              while($slider_row=mysqli_fetch_assoc($slider_res)){
              if($i=='2'){
                  $active="active";
              }
            ?>
         <!-- Swiper Slider 1-->
         <div class="swiper-slide align-items-center d-flex bg-overlay-black-10" style="background-image: url(images/sliders/<?php echo $slider_row['image']?>); background-size: cover; background-position: center center;">
            <div class="swipeinner container">
               <div class="row justify-content-center text-center">
                  <div class="col-lg-10 col-md-12">
                     <div class="slider-1">
                        <div class="animated" data-swiper-animation="fadeInUp" data-duration="1s" data-delay="0.25s">
                           <h1 class="animated text-white mb-4" data-swiper-animation="fadeInUp" data-duration="1.5s" data-delay="0.25s"><?php echo $slider_row['title']?></h1>
                           <div class="animated text-white px-lg-5" data-swiper-animation="fadeInUp" data-duration="2.5s" data-delay="0.25s"><?php echo $slider_row['sub_title']?>
                           </div>
                        </div>
                     </div>
                  </div>
               </div>
            </div>
         </div>
         <?php 
            $i++;
            } } else { ?>
         <!-- Swiper Slider 1-->
         <div class="swiper-slide align-items-center d-flex bg-overlay-black-40" style="background-image: url(images/sliders/1.png  ); background-size: cover; background-position: center center;">
            <div class="swipeinner container">
               <div class="row justify-content-center text-center">
                  <div class="col-lg-10 col-md-12">
                     <div class="slider-1">
                        <div class="animated" data-swiper-animation="fadeInUp" data-duration="1s" data-delay="0.25s">
                           <h1 class="animated text-white mb-4" data-swiper-animation="fadeInUp" data-duration="1.5s" data-delay="0.25s">Default Slider</h1>
                           <div class="animated text-white px-lg-5" data-swiper-animation="fadeInUp" data-duration="2.5s" data-delay="0.25s">
                           </div>
                        </div>
                     </div>
                  </div>
               </div>
            </div>
         </div>
         <?php } ?>
      </div>
   </div>
   <!-- Pagination -->
   <div class="swiper-button-prev text-white"><i class="fa fa-arrow-left"></i></div>
   <div class="swiper-button-next text-white"><i class="fa fa-arrow-right"></i></div>
</section>
<!--=================================Banner -->


<!--=================================Notice -->
<div class="spotlight-content">
   <div class="d-flex">
      <div class="flex-shrink-0 spotlight-title p-2">
         <span>Latest Info</span>
      </div>
      <div class="flex-grow-1 marquee-spotlight p-1">
         <marquee onmouseover="this.stop()" onmouseout="this.start()" scrollamount="10">
            <?php
               $notice_res=mysqli_query($con,"select * from notice where status=1 order by added_on desc");
               while($notice_res_row=mysqli_fetch_assoc($notice_res)){
               ?>
            <a href="pdfreports/notice.php?notice_id=<?php echo $notice_res_row['id']?>" target="_blank"  style="padding-left:100px">
              <span class="spotlight-date" style="color:red;"><i class="far fa-calendar-check mr-1"></i> <?php echo date("d-M-Y",$notice_res_row['added_on'])?></span>
              <span class="spotlight-notice"> <?php echo $notice_res_row['title']?> </span>
            </a>
            <?php }?>
         </marquee>
      </div>
   </div>
</div>


<!--=================================About -->
<section class="space-ptb">
   <div class="container-fluid">
      <div class="row no-guuters align-items-center col-lg-12">
         <div class="col-lg-6 mb-4 mb-lg-7 pr-xl-6">
            <div class="section-title mb-4">
               <h2 class="title">Short Introduction</h2>
               <p class="lead mb-0">Barishal Engineering College (Bengali: বরিশাল প্রকৌশল মহাবিদ্যালয়) commonly referred to as BEC (Bengali: বইক) is a public undergraduate college in Barishal, Bangladesh. </p>
            </div>
         </div>
         <div class="col-lg-6 pr-lg-6">
            <div class="row">
               <div class="col-sm-12">
                  <img class="img-fluid w-100 border-radius" src="images/01.jpg" alt="">
               </div>
            </div>
         </div>
      </div>
   </div>
</section>
<!--=================================About -->
<!--=================================Counter -->
<section class="space-pb bg-light">
   <div class="container">
      <div class="row " style="padding-top: 70px;">
         <div class="col-sm-6 col-lg-3 mb-4 mb-lg-0">
            <div class="counter">
               <div class="counter-icon">
                  <i class="flaticon-team-1"></i>
               </div>
               <div class="counter-content">
                  <span class="timer" data-to="1790" data-speed="10000">1790</span>
                  <label>Students</label>
               </div>
            </div>
         </div>
         <div class="col-sm-6 col-lg-3 mb-4 mb-lg-0">
            <div class="counter">
               <div class="counter-icon">
                  <i class="flaticon-diploma-1"></i>
               </div>
               <div class="counter-content align-self-center">
                  <span class="timer" data-to="245" data-speed="10000">245</span>
                  <label>Teachers</label>
               </div>
            </div>
         </div>
         <div class="col-sm-6 col-lg-3 mb-4 mb-md-0">
            <div class="counter">
               <div class="counter-icon">
                  <i class="flaticon-support"></i>
               </div>
               <div class="counter-content">
                  <span class="timer" data-to="491" data-speed="10000">491</span>
                  <label>Graduates</label>
               </div>
            </div>
         </div>
         <div class="col-sm-6 col-lg-3">
            <div class="counter">
               <div class="counter-icon">
                  <i class="flaticon-trophy-1"></i>
               </div>
               <div class="counter-content">
                  <span class="timer" data-to="1090" data-speed="10000">1090</span>
                  <label>Institutes</label>
               </div>
            </div>
         </div>
      </div>
   </div>
</section>
<!--=================================Counter -->
<!--=================================Course item -->
<section class="space-ptb">
   <div class="container">
      <div class="row">
         <div class="col-sm-8">
            <div class="section-title">
               <h2 class="title">Our Popular Courses</h2>
            </div>
         </div>
         <div class="col-sm-4 text-md-right mb-4 mb-sm-0">
            <a class="btn btn-primary" href="#">All Courses</a>
         </div>
      </div>
      <div class="row">
         <div class="col-md-12">
            <div class="filters-group mb-lg-4">
               <button class="btn-filter  active" data-group="all">All</button>
               <button class="btn-filter" data-group="branding">Courses</button>
            </div>
            <div class="my-shuffle-container columns-3 popup-gallery full-screen">
               <!-- item START -->
               <div class="grid-item" data-groups='["branding"]'>
                  <div class="course-item">
                     <div class="coures-img">
                        <img class="img-fluid" src="images/courses/01.jpg" alt="">
                        <div class="course-tag">
                           <a href="#">Business</a>
                        </div>
                     </div>
                     <div class="course-conten">
                        <a href="#" class="course-author d-flex align-items-center mb-3">
                        <img class="avatar img-fluid" src="images/avatar/01.jpg" alt="">
                        <span class="author-name">Alice Williams</span>
                        </a>
                        <h5 class="mb-3">
                           <a href="course-detail.html">Aeronautical & Manufacturing Engineering</a>
                        </h5>
                     </div>
                  </div>
               </div>
               <!-- item End -->
            </div>
         </div>
      </div>
   </div>
</section>
<!--=================================Course item -->
<!--=================================Why choose us -->
<section class="bg-dark">
   <div class="container-fluid">
      <div class="row no-guuters">
         <div class="col-lg-6 bg-holder d-none d-lg-block" style="background-image: url(images/bg/01.jpg);">
         </div>
         <div class="col-lg-6 px-4 px-md-5 px-lg-6 py-6 px-lg-6" style="background-image: url(images/about/pattern.png);">
            <div class="section-title">
               <h2 class="title">Why Choose Us</h2>
               <p class="mb-0">Let success motivate you. Find a picture of what epitomizes success to you and then pull it out when you are in need of motivation.Let success motivate you. Find a picture of what epitomizes success to you and then pull it out when you are in need of motivation.Let success motivate you. Find a picture of what epitomizes success to you and then pull it out when you are in need of motivation.Let success motivate you. Find a picture of what epitomizes success to you and then pull it out when you are in need of motivation.Let success motivate you. Find a picture of what epitomizes success to you and then pull it out when you are in need of motivation.Let success motivate you. Find a picture of what epitomizes success to you and then pull it out when you are in need of motivation.Let success motivate you. Find a picture of what epitomizes success to you and then pull it out when you are in need of motivation.Let success motivate you. Find a picture of what epitomizes success to you and then pull it out when you are in need of motivation.Let success motivate you. Find a picture of what epitomizes success to you and then pull it out when you are in need of motivation.Let success motivate you. Find a picture of what epitomizes success to you and then pull it out when you are in need of motivation.Let success motivate you. Find a picture of what epitomizes success to you and then pull it out when you are in need of motivation.Let success motivate you. Find a picture of what epitomizes success to you and then pull it out when you are in need of motivation.Let success motivate you. Find a picture of what epitomizes success to you and then pull it out when you are in need of motivation.Let success motivate you. Find a picture of what epitomizes success to you and then pull it out when you are in need of motivation.Let success motivate you. Find a picture of what epitomizes success to you and then pull it out when you are in need of motivation.Let success motivate you. Find a picture of what epitomizes success to you and then pull it out when you are in need of motivation.Let success motivate you. Find a picture of what epitomizes success to you and then pull it out when you are in need of motivation.Let success motivate you. Find a picture of what epitomizes success to you and then pull it out when you are in need of motivation.Let success motivate you. Find a picture of what epitomizes success to you and then pull it out when you are in need of motivation.Let success motivate you. Find a picture of what epitomizes success to you and then pull it out when you are in need of motivation.Let success motivate you. Find a picture of what epitomizes success to you and then pull it out when you are in need of motivation.Let success motivate you. Find a picture of what epitomizes success to you and then pull it out when you are in need of motivation.Let success motivate you. Find a picture of what epitomizes success to you and then pull it out when you are in need of motivation.Let success motivate you. Find a picture of what epitomizes success to you and then pull it out when you are in need of motivation.Let success motivate you. Find a picture of what epitomizes success to you and then pull it out when you are in need of motivation.Let success motivate you. Find a picture of what epitomizes success to you and then pull it out when you are in need of motivation.Let success motivate you. Find a picture of what epitomizes success to you and then pull it out when you are in need of motivation.</p>
            </div>
         </div>
      </div>
   </div>
</section>
<!--=================================
   Why choose us -->
<!--=================================
   Event -->
<section class="space-ptb">
   <div class="container">
      <div class="row">
         <div class="col-lg-12">
            <div class="row">
               <div class="col-md-7">
                  <div class="section-title">
                     <h2 class="title">Latest Events</h2>
                     <p class="mb-0">Success isn’t really that difficult. There is a significant portion of the population</p>
                  </div>
               </div>
               <div class="col-md-5 text-md-right mb-4 mb-md-0">
                  <a class="btn btn-primary btn-round" href="#">View All</a>
               </div>
            </div>
            <div class="row">
               <div class="col-lg-12">
                  <div class="events">
                     <div class="row">
                        <div class="col-12">
                           <div class="events shadow p-4 bg-white border-radius">
                              <div class="row">
                                 <div class="col-lg-3">
                                    <div class="events-img mb-4 mb-lg-0">
                                       <img class="img-fluid border-0" src="images/events/01.jpg" alt="">
                                    </div>
                                 </div>
                                 <div class="col-lg-6 align-self-center">
                                    <div class="events-content">
                                       <div class="events-tag mb-3">
                                          <a href="#" class="badge-danger">Art Competition</a>
                                       </div>
                                       <a href="event-detail.html" class="text-dark h5">Young leaders in tech policy fellowship</a>
                                       <div class="events-meta my-3">
                                          <ul class="list-unstyled mb-0 d-flex">
                                             <li class="mr-3"><a href="#"><i class="fas fa-calendar-alt pr-1"></i> 5 Oct, 2020</a></li>
                                             <li><a href="#"><i class="fas fa-clock pr-1"></i>  9:00 AM - 11:00 AM</a></li>
                                          </ul>
                                       </div>
                                       <p class="text-dark mb-lg-0">Franklin’s extraordinary success in life and politics can be attributed to his perseverance to overcome his personal liabilities, and his desire to constantly become better.</p>
                                    </div>
                                 </div>
                                 <div class="col-lg-3 align-self-center text-lg-right text-left">
                                    <a class="btn btn-dark btn-round" href="#">Join Event</a>
                                 </div>
                              </div>
                           </div>
                        </div>
                     </div>
                  </div>
               </div>
            </div>
         </div>
      </div>
   </div>
</section>
<!--=================================
   Event -->
<!--=================================Team -->
<section class="space-ptb bg-light">
   <div class="container">
      <div class="row justify-content-center">
         <div class="col-lg-8 col-md-10 text-center">
            <!-- Section Title START -->
            <div class="section-title">
               <h2>Meet Our Team</h2>
               <!-- <p>Meet the outstanding performers in our industry-award-winning team of professionals</p> -->
            </div>
            <!-- Section Title END -->
         </div>
      </div>
      <div class="row">
         <div class="col-lg-4 col-md-4 col-sm-6 mb-4 mb-md-0">
            <!-- team-01 START -->
            <div class="team">
               <div class="team-img">
                  <img class="img-fluid" src="images/team/01.jpg" alt="">
               </div>
               <div class="team-info">
                  <a href="teachers-single.html" class="team-name">Mellissa Doe</a>
                  <p class="team-leader">Team Leader</p>
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
<!--=================================
   Team -->
<!--=================================Articles -->
<section class="space-ptb position-relative">
   <div class="container">
      <div class="row justify-content-center">
         <div class="col-lg-7 col-md-10 text-center">
            <!-- Section Title START -->
            <div class="section-title">
               <h2 class="title">Latest Articles</h2>
               <p>Check out our latest blog posts, articles, client success stories and essential announcement</p>
            </div>
            <!-- Section Title END -->
         </div>
      </div>
      <div class="row">
         <div class="col-lg-6 col-md-12 mb-0">
            <!-- Blog 02 START -->
            <div class="blog d-md-flex border-bottom mb-4 pb-4">
               <!-- Blog image -->
               <div class="blog-image mr-0 mr-sm-3">
                  <img class="img-fluid border-radius" src="images/blog/01.jpg" alt="">
               </div>
               <!-- Blog content -->
               <div class="blog-content pt-4 pt-md-0 border-0">
                  <h5 class="blog-title mb-3"><a href="blog-detail.html">Colleges with the most hispanic students</a></h5>
                  <div class="blog-meta mb-0">
                     <ul class="list-unstyled mb-0 d-flex">
                        <li class="mr-3"><a href="#"><i class="fas fa-calendar-alt pr-1"></i> 20 Sept, 2020</a></li>
                        <li><a href="#"><i class="fas fa-clock pr-1"></i>  12:00 PM - 3:00 PM</a></li>
                     </ul>
                  </div>
               </div>
            </div>
            <!-- Blog 02 END -->
            <!-- Blog 02 START -->
            <div class="blog d-md-flex border-bottom mb-4 pb-4">
               <!-- Blog image -->
               <div class="blog-image mr-0 mr-sm-3">
                  <img class="img-fluid border-radius" src="images/blog/01.jpg" alt="">
               </div>
               <!-- Blog content -->
               <div class="blog-content pt-4 pt-md-0 border-0">
                  <h5 class="blog-title mb-3"><a href="blog-detail.html">Get a job, internship during COVID-19</a></h5>
                  <div class="blog-meta mb-0">
                     <ul class="list-unstyled mb-0 d-flex">
                        <li class="mr-3"><a href="#"><i class="fas fa-calendar-alt pr-1"></i> 05 Nov, 2020</a></li>
                        <li><a href="#"><i class="fas fa-clock pr-1"></i>  2:00 PM - 4:00 PM</a></li>
                     </ul>
                  </div>
               </div>
            </div>
            <!-- Blog 02 END -->
            <!-- Blog 02 START -->
            <div class="blog d-md-flex">
               <!-- Blog image -->
               <div class="blog-image mr-0 mr-sm-3">
                  <img class="img-fluid border-radius" src="images/blog/08.jpg" alt="">
               </div>
               <!-- Blog content -->
               <div class="blog-content pt-4 pt-md-0 border-0">
                  <h5 class="blog-title mb-3"><a href="blog-detail.html">Why student loan default rate matters</a></h5>
                  <div class="blog-meta mb-0">
                     <ul class="list-unstyled mb-0 d-flex">
                        <li class="mr-3"><a href="#"><i class="fas fa-calendar-alt pr-1"></i> 27 Nov, 2020</a></li>
                        <li><a href="#"><i class="fas fa-clock pr-1"></i>  4:00 PM - 6:00 PM</a></li>
                     </ul>
                  </div>
               </div>
            </div>
            <!-- Blog 02 END -->
         </div>
      </div>
   </div>
</section>
<!--=================================Articles -->
<?php include("footer.php")?>