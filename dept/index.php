<?php include("header.php")?>

<!--=================================Banner -->
<section class="banner position-ralative">
   <div id="main-slider" class="swiper-container h-800 h-lg-700 h-md-600 h-sm-400">
      <div class="swiper-wrapper">
         <?php
            $active="";
              $slider_sql="select * from `dept_sliders` order by added_on desc";
              $slider_res=mysqli_query($con,$slider_sql);
              if(mysqli_num_rows($slider_res)>0){
              while($slider_row=mysqli_fetch_assoc($slider_res)){
            ?>
         <!-- Swiper Slider 1-->
         <div class="swiper-slide align-items-center d-flex bg-overlay-black-10" style="background-image: url(../images/ce/sliders/<?php echo $slider_row['image']?>); background-size: cover; background-position: center center;">
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

    <!--=================================Banner -->
    <!-- <section class="bg-overlay-black-60 space-ptb" style="background-image: url(images/bg/03.jpg); background-size: cover; background-position: center center;">
      <div class="container">
        <div class="row align-items-center mt-2">
          <div class="col-xl-7 col-lg-7">
            <div>
                <h1 class="text-white mb-4">Personal Education. Lifetime Success.</h1>
                <div class="text-white">
                  <p>The first thing to remember about success is that it is a process nothing more, nothing less. There is really no magic to it and it’s not reserved only for a select few people.</p>
                </div>
                <a href="#" class="btn btn-primary mt-4">Learn More<span></span></a>
            </div>
          </div>
          <div class="col-xl-5 col-lg-5 mt-5 mt-lg-0">
            <div class="bg-primary p-4 p-sm-5 banner-form border-radius">
            <h3>Get Started Here </h3>
             <p class="text-white">The new way to find &amp; book a high-quality sitter.</p>
             <form class="form-row mt-4 align-items-center">
              <div class="form-group col-12">
                  <label class="text-white font-weight-bold">Full Name</label>
                  <input type="text" class="form-control" placeholder="">
                </div>
                <div class="form-group col-12">
                  <label class="text-white font-weight-bold">Email Address</label>
                  <input type="email" class="form-control" placeholder="">
                </div>
                <div class="form-group col-12">
                  <label class="text-white font-weight-bold">Mobile Number</label>
                  <input type="text" class="form-control" placeholder="">
                </div>
                <div class="form-group col-12 mb-4">
                  <label class="d-block text-white font-weight-bold">What is your preferred method of contact?</label>
                  <div class="custom-control custom-radio custom-control-inline form-radio">
                    <input type="radio" id="customRadioInline1" name="customRadioInline1" class="custom-control-input">
                    <label class="custom-control-label text-white font-weight-bold" for="customRadioInline1">Phone</label>
                  </div>
                  <div class="custom-control custom-radio custom-control-inline form-radio">
                    <input type="radio" id="customRadioInline2" name="customRadioInline1" class="custom-control-input">
                    <label class="custom-control-label text-white font-weight-bold" for="customRadioInline2">Email</label>
                  </div>
                </div>
                <div class="form-group col-sm-12 mb-0">
                  <button type="submit" class="btn btn-dark">Book Now</button>
                </div>
             </form>
            </div>
          </div>
        </div>
      </div>
    </section> -->
    <!--=================================
    Banner -->

    <!--=================================Fearture icon -->
    <section class="py-3 bg-primary">
      <div class="container-fluid">
        <div class="row">
          <div class="col-md-12">
            <div class="d-flex align-items-center">
              <div class="flex-grow-1 marquee-spotlight p-1">
                  <marquee onmouseover="this.stop()" onmouseout="this.start()" scrollamount="10">
                    <?php
                        $notice_res=mysqli_query($con,"select * from notice where status=1 order by added_on desc");
                        if(mysqli_num_rows($notice_res)>0){
                        while($notice_res_row=mysqli_fetch_assoc($notice_res)){
                        ?>
                          <a href="pdfreports/notice.php?notice_id=<?php echo $notice_res_row['id']?>" target="_blank"  style="padding-left:100px">
                          <span class="spotlight-date" style="color:red;"><i class="far fa-calendar-check mr-1"></i> <?php echo date("d-M-Y",$notice_res_row['added_on'])?></span>
                          <span class="spotlight-notice"> <?php echo $notice_res_row['title']?> </span>
                          </a>
                    <?php } }?>
                  </marquee>
              </div>
            </div>
          </div>
        </div>
      </div>
    </section>
    <!--=================================Fearture icon -->

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
              <button class="btn-filter" data-group="web">Events</button>
              <button class="btn-filter" data-group="photography">Students</button>
              <button class="btn-filter" data-group="advertising">Teachers</button>
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
                    <div class="course-rating mb-3 pb-3 border-bottom">
                      <div class="review-rating">
                        <i class="fas fa-star text-warning"></i>
                        <i class="fas fa-star text-warning"></i>
                        <i class="fas fa-star text-warning"></i>
                        <i class="fas fa-star text-warning"></i>
                        <i class="fas fa-star"></i>
                      </div>
                    </div>
                    <div class="course-meta">
                      <ul class="list-unstyled mb-0">
                        <li><i class="fa fa-user pr-2"></i>12 students</li>
                        <li><i class="fa fa-book-open pr-2"></i>08 lessons</li>
                        <li class="price"><span>$100</span> $50</li>
                      </ul>
                    </div>
                  </div>
                </div>
              </div>
              <!-- item End -->

              <!-- item START -->
              <div class="grid-item" data-groups='["web", "photography", "branding"]'>
                <div class="course-item">
                  <div class="coures-img">
                    <img class="img-fluid" src="images/courses/02.jpg" alt="">
                    <div class="course-tag">
                      <a href="#">Politics</a>
                    </div>
                  </div>
                  <div class="course-conten">
                    <a href="#" class="course-author d-flex align-items-center mb-3">
                      <img class="avatar img-fluid" src="images/avatar/04.jpg" alt="">
                      <span class="author-name">Mellissa Doe</span>
                    </a>
                    <h5 class="mb-3">
                      <a href="course-detail.html">Business & Management Studies</a>
                    </h5>
                    <div class="course-rating mb-3 pb-3 border-bottom">
                      <div class="review-rating">
                        <i class="fas fa-star text-warning"></i>
                        <i class="fas fa-star text-warning"></i>
                        <i class="fas fa-star text-warning"></i>
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                      </div>
                    </div>
                    <div class="course-meta">
                      <ul class="list-unstyled mb-0">
                        <li><i class="fa fa-user pr-2"></i>08 students</li>
                        <li><i class="fa fa-book-open pr-2"></i>04 lessons</li>
                        <li class="price"><span>$80</span> $40</li>
                      </ul>
                    </div>
                  </div>
                </div>
              </div>
              <!-- item End -->

              <!-- item START -->
              <div class="grid-item" data-groups='["photography"]'>
                <div class="course-item">
                  <div class="coures-img">
                    <img class="img-fluid" src="images/courses/03.jpg" alt="">
                    <div class="course-tag">
                      <a href="#">Psychology</a>
                    </div>
                  </div>
                  <div class="course-conten">
                    <a href="#" class="course-author d-flex align-items-center mb-3">
                      <img class="avatar img-fluid" src="images/avatar/02.jpg" alt="">
                      <span class="author-name">Paul Flavius</span>
                    </a>
                    <h5 class="mb-3">
                      <a href="course-detail.html">History of Art, Architecture & Design</a>
                    </h5>
                    <div class="course-rating mb-3 pb-3 border-bottom">
                      <div class="review-rating">
                        <i class="fas fa-star text-warning"></i>
                        <i class="fas fa-star text-warning"></i>
                        <i class="fas fa-star text-warning"></i>
                        <i class="fas fa-star text-warning"></i>
                        <i class="fas fa-star"></i>
                      </div>
                    </div>
                    <div class="course-meta">
                      <ul class="list-unstyled mb-0">
                        <li><i class="fa fa-user pr-2"></i>16 students</li>
                        <li><i class="fa fa-book-open pr-2"></i>10 lessons</li>
                        <li class="price"><span>$150</span> $80</li>
                      </ul>
                    </div>
                  </div>
                </div>
              </div>
              <!-- item End -->

              <!-- item START -->
              <div class="grid-item" data-groups='["advertising"]'>
                <div class="course-item">
                  <div class="coures-img">
                    <img class="img-fluid" src="images/courses/01.jpg" alt="">
                    <div class="course-tag">
                      <a href="#">Medicine</a>
                    </div>
                  </div>
                  <div class="course-conten">
                    <a href="#" class="course-author d-flex align-items-center mb-3">
                      <img class="avatar img-fluid" src="images/avatar/05.jpg" alt="">
                      <span class="author-name">Felica Queen</span>
                    </a>
                    <h5 class="mb-3">
                      <a href="course-detail.html">Communication & Media Studies</a>
                    </h5>
                    <div class="course-rating mb-3 pb-3 border-bottom">
                      <div class="review-rating">
                        <i class="fas fa-star text-warning"></i>
                        <i class="fas fa-star text-warning"></i>
                        <i class="fas fa-star text-warning"></i>
                        <i class="fas fa-star text-warning"></i>
                        <i class="fas fa-star"></i>
                      </div>
                    </div>
                    <div class="course-meta">
                      <ul class="list-unstyled mb-0">
                        <li><i class="fa fa-user pr-2"></i>21 students</li>
                        <li><i class="fa fa-book-open pr-2"></i>09 lessons</li>
                        <li class="price"><span>$180</span> $90</li>
                      </ul>
                    </div>
                  </div>
                </div>
              </div>
              <!-- item End -->

              <!-- item START -->
              <div class="grid-item" data-groups='["design", "advertising"]'>
                <div class="course-item">
                  <div class="coures-img">
                    <img class="img-fluid" src="images/courses/02.jpg" alt="">
                    <div class="course-tag">
                      <a href="#">Architecture</a>
                    </div>
                  </div>
                  <div class="course-conten">
                    <a href="#" class="course-author d-flex align-items-center mb-3">
                      <img class="avatar img-fluid" src="images/avatar/03.jpg" alt="">
                      <span class="author-name">Michael Bean</span>
                    </a>
                    <h5 class="mb-3">
                      <a href="course-detail.html">Geography & Environmental Science</a>
                    </h5>
                    <div class="course-rating mb-3 pb-3 border-bottom">
                      <div class="review-rating">
                        <i class="fas fa-star text-warning"></i>
                        <i class="fas fa-star text-warning"></i>
                        <i class="fas fa-star text-warning"></i>
                        <i class="fas fa-star text-warning"></i>
                        <i class="fas fa-star"></i>
                      </div>
                    </div>
                    <div class="course-meta">
                      <ul class="list-unstyled mb-0">
                        <li><i class="fa fa-user pr-2"></i>25 students</li>
                        <li><i class="fa fa-book-open pr-2"></i>15 lessons</li>
                        <li class="price"><span>$300</span> $200</li>
                      </ul>
                    </div>
                  </div>
                </div>
              </div>
              <!-- item End -->

              <!-- item START -->
              <div class="grid-item" data-groups='["branding", "web"]'>
                <div class="course-item">
                  <div class="coures-img">
                    <img class="img-fluid" src="images/courses/03.jpg" alt="">
                    <div class="course-tag">
                      <a href="#">Biological</a>
                    </div>
                  </div>
                  <div class="course-conten">
                    <a href="#" class="course-author d-flex align-items-center mb-3">
                      <img class="avatar img-fluid" src="images/avatar/06.jpg" alt="">
                      <span class="author-name">Sara Lisbon</span>
                    </a>
                    <h5 class="mb-3">
                      <a href="course-detail.html">Electrical & Electronic Engineering</a>
                    </h5>
                    <div class="course-rating mb-3 pb-3 border-bottom">
                      <div class="review-rating">
                        <i class="fas fa-star text-warning"></i>
                        <i class="fas fa-star text-warning"></i>
                        <i class="fas fa-star text-warning"></i>
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                      </div>
                    </div>
                    <div class="course-meta">
                      <ul class="list-unstyled mb-0">
                        <li><i class="fa fa-user pr-2"></i>35 students</li>
                        <li><i class="fa fa-book-open pr-2"></i>17 lessons</li>
                        <li class="price"><span>$500</span> $280</li>
                      </ul>
                    </div>
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

    <!--=================================Category -->
    <section class="space-ptb bg-light">
      <div class="container">
        <div class="row justify-content-center">
          <div class="col-lg-8 text-center">
            <h2 class="mb-5">Learn by Doing</h2>
          </div>
        </div>
        <div class="row justify-content-center">
          <div class="col-xl-2 col-md-4 mb-3 mb-xl-0">
            <div class="category text-center">
            <a href="#" class="category-item bg-dark border-radius py-4">
              <div class="category-icon">
                <i class="flaticon-medicine fa-3x text-white"></i>
              </div>
              <h5 class="mt-3">Medicine</h5>
            </a>
          </div>
          </div>
          <div class="col-xl-2 col-md-4 mb-3 mb-xl-0">
            <div class="category text-center">
            <a href="#" class="category-item py-4 bg-info border-radius">
              <div class="category-icon">
                <i class="flaticon-first-aid-kit fa-3x text-white"></i>
              </div>
              <h5 class="mt-3 text-white">Pharmacy</h5>
            </a>
          </div>
          </div>
          <div class="col-xl-2 col-md-4 mb-3 mb-xl-0">
            <div class="category text-center">
            <a href="#" class="category-item py-4 bg-warning border-radius">
              <div class="category-icon">
                <i class="flaticon-mental-health fa-3x text-white"></i>
              </div>
              <h5 class="mt-3 text-white">Psychology</h5>
            </a>
          </div>
          </div>
          <div class="col-xl-2 col-md-4 mb-3 mb-md-0">
            <div class="category text-center">
            <a href="#" class="category-item py-4 bg-success border-radius">
              <div class="category-icon">
                <i class="flaticon-global fa-3x text-white"></i>
              </div>
              <h5 class="mt-3 text-white">Economics</h5>
            </a>
          </div>
          </div>
          <div class="col-xl-2 col-md-4 mb-3 mb-md-0">
            <div class="category text-center">
            <a href="#" class="category-item py-4 bg-secondary border-radius">
              <div class="category-icon">
                <i class="flaticon-stock-market fa-3x text-white"></i>
              </div>
              <h5 class="mt-3 text-white">Business</h5>
            </a>
          </div>
          </div>
          <div class="col-xl-2 col-md-4">
            <div class="category text-center">
            <a href="#" class="category-item bg-danger border-radius py-4">
              <div class="category-icon">
                <i class="flaticon-politics fa-3x text-white"></i>
              </div>
              <h5 class="mt-3 text-white">Politics</h5>
            </a>
          </div>
          </div>
        </div>
        <div class="row justify-content-center">
        <a class="btn btn-dark mr-3 mt-5" href="#">View All Categories</a>
      </div>
      </div>
    </section>
    <!--=================================Category -->

    <!--=================================About -->
    <section class="space-ptb">
      <div class="container">
        <div class="row align-items-center">
          <div class="col-lg-6 mb-4 mb-lg-0 pr-lg-5">
            <div class="position-relative pb-md-0 h-100 pr-md-6 pb-md-6">
              <img class="img-fluid border-radius" src="images/about/05.jpg" alt="">
              <div class="position-absolute right-0 bottom-0 d-none d-md-block">
                <img class="img-fluid border-radius" src="images/about/06.jpg" alt="">
              </div>
            </div>
          </div>
          <div class="col-lg-6 pr-lg-6">
            <div class="section-title mb-4">
              <h2 class="title">Higher Education Begins Here</h2>
              <p class="lead mb-0">Commitment is something that comes from understanding that everything has its price and then having the willingness to pay that price.</p>
            </div>
            <p class="mb-4 mb-md-5">The other virtues practice in succession by Franklin were silence, order, resolution, frugality, industry, sincerity, Justice, moderation, cleanliness, tranquility, chastity and humility. For the summary order he followed a little scheme of employing his time each day.</p>
            <a href="#" class="btn btn-primary btn-round">Read More</a>
          </div>
        </div>
      </div>
    </section>
    <!--=================================About -->

    <!--=================================Skill -->
    <section class="space-pb">
      <div class="container">
        <div class="row align-items-center">
          <div class="col-lg-6 pr-lg-6">
            <div class="section-title">
              <h2 class="title">Let's Have a Look at Our Activity and Skills</h2>
              <p class="mb-0">Along with your plans, you should consider developing an action orientation that will keep you motivated to move forward at all times.</p>
            </div>
            <div class="our-partners">
              <h4 class="mb-4">Our Partners</h4>
              <div class="owl-carousel" data-nav-arrow="false" data-items="3" data-md-items="3" data-sm-items="3" data-xs-items="2" data-xx-items="1" data-space="0" data-autoheight="true">
                  <!-- item-01 START -->
                  <div class="item">
                    <img class="img-fluid center-block mx-auto grayscale" src="images/client/01.svg" alt="">
                  </div>
                  <!-- item-01 End -->

                  <!-- item-02 START -->
                  <div class="item">
                    <img class="img-fluid center-block mx-auto grayscale" src="images/client/02.svg" alt="">
                  </div>
                  <!-- item-02 End -->

                  <!-- item-03 START -->
                  <div class="item">
                    <img class="img-fluid center-block mx-auto grayscale" src="images/client/03.svg" alt="">
                  </div>
                  <!-- item-03 End -->

                  <!-- item-04 START -->
                  <div class="item">
                    <img class="img-fluid center-block mx-auto grayscale" src="images/client/04.svg" alt="">
                  </div>
                  <!-- item-04 End -->

                  <!-- item-05 START -->
                  <div class="item">
                    <img class="img-fluid center-block mx-auto grayscale" src="images/client/05.svg" alt="">
                  </div>
                  <!-- item-05 End -->

                  <!-- item-06 START -->
                  <div class="item">
                    <img class="img-fluid center-block mx-auto grayscale" src="images/client/06.svg" alt="">
                  </div>
                  <!-- item-06 End -->

                  <!-- item-07 START -->
                  <div class="item">
                    <img class="img-fluid center-block mx-auto grayscale" src="images/client/07.svg" alt="">
                  </div>
                  <!-- item-07 End -->
              </div>
            </div>
          </div>
          <div class="col-lg-6">
            <!-- Skill-bar START -->
            <div class="overflow-hidden">
              <div class="skill">
                <div class="skill-bar" data-percent="89" data-delay="0" data-type="%">
                  <div class="skill-title">Design</div>
                </div>
              </div>
              <div class="skill">
                <div class="skill-bar" data-percent="73" data-delay="0" data-type="%">
                  <div class="skill-title">Development</div>
                </div>
              </div>
              <div class="skill">
                <div class="skill-bar" data-percent="85" data-delay="0" data-type="%">
                  <div class="skill-title">Support</div>
                </div>
              </div>
              <div class="skill">
                <div class="skill-bar" data-percent="60" data-delay="0" data-type="%">
                  <div class="skill-title">Marketing</div>
                </div>
              </div>
            </div>
            <!-- Skill-bar END -->
          </div>
        </div>
      </div>
    </section>
    <!--=================================Skill -->

    <!--=================================Event -->
    <section class="space-ptb bg-dark">
      <div class="container">
        <div class="row">
          <div class="col-lg-5">
            <div class="bg-white border-radius">
              <div class="bg-primary rounded-top p-4">
                <h3>Get Started Here</h3>
                <p class="text-white mb-0">Success isn’t really that difficult.</p>
              </div>
              <form class="form-row mt-0 align-items-center p-4 p-lg-5">
                <div class="form-group col-12">
                  <label class="text-dark font-weight-bold">Full Name</label>
                  <input type="text" class="form-control" placeholder="">
                </div>
                <div class="form-group col-12">
                  <label class="text-dark font-weight-bold">Email Address</label>
                  <input type="email" class="form-control" placeholder="">
                </div>
                <div class="form-group col-12">
                  <label class="text-dark font-weight-bold">Your Phone</label>
                  <input type="text" class="form-control" placeholder="">
                </div>
                <div class="form-group col-12 mb-4">
                  <label class="text-dark font-weight-bold">Subject</label>
                  <input type="text" class="form-control" placeholder="">
                </div>
                <div class="form-group col-sm-12 mb-0">
                  <button type="submit" class="btn btn-primary">Submit Now</button>
                </div>
              </form>
            </div>
          </div>
          <div class="col-lg-7 mt-5 mt-lg-0">
            <div class="row mb-4 mb-md-0">
              <div class="col-md-8">
                <div class="section-title">
                  <h2>Latest Events</h2>
                  <p class="mb-0">Success isn’t really that difficult. There is a significant portion of the population</p>
                </div>
              </div>
              <div class="col-md-4 text-md-right">
                <a class="btn btn-white" href="#">View All</a>
              </div>
            </div>
            <div class="row">
              <div class="col-lg-12">
                <div class="event-list bg-white border-radius mb-3 p-3">
                  <div class="d-sm-flex">
                    <div class="event-img">
                      <img class="w-100 border-radius" src="images/events/list/01.jpg" alt="">
                    </div>
                    <div class="event-content pl-sm-4 pt-4 p-sm-0">
                      <a href="event-detail.html" class="text-dark h5">Young leaders in tech policy fellowship</a>
                      <div class="event-meta my-3">
                        <ul class="list-unstyled mb-0 d-flex">
                          <li class="mr-3"><a href="#"><i class="fas fa-calendar-alt pr-1"></i> 5 Oct, 2020</a></li>
                          <li><a href="#"><i class="fas fa-clock pr-1"></i>  9:00 AM - 11:00 AM</a></li>
                        </ul>
                      </div>
                      <p class="text-dark">Franklin’s extraordinary success in life and politics can be attributed to his perseverance.</p>
                      <a class="btn btn-sm btn-dark btn-round" href="#">Join Event</a>
                    </div>
                  </div>
                </div>
                <div class="event-list bg-white border-radius p-3">
                  <div class="d-sm-flex">
                    <div class="event-img">
                      <img class="w-100 border-radius" src="images/events/list/02.jpg" alt="">
                    </div>
                    <div class="event-content pl-sm-4 pt-4 p-sm-0">
                      <a href="event-detail.html#" class="text-dark h5">Protecting our most vulnerable populations</a>
                      <div class="event-meta my-3">
                        <ul class="list-unstyled mb-0 d-flex">
                          <li class="mr-3"><a href="#"><i class="fas fa-calendar-alt pr-1"></i> 22 Oct, 2020</a></li>
                          <li><a href="#"><i class="fas fa-clock pr-1"></i>  10:00 AM - 1:00 PM</a></li>
                        </ul>
                      </div>
                      <p class="text-dark">Next time you really want to achieve something, take time to focus on your own personal.</p>
                      <a class="btn btn-sm btn-dark btn-round" href="#">Join Event</a>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </section>
    <!--=================================Event -->

    <!--=================================Team -->
    <section class="space-ptb">
      <div class="container">
        <div class="row justify-content-center">
          <div class="col-lg-8 col-md-10 text-center">
            <!-- Section Title START -->
            <div class="section-title">
              <h2 class="title">Meet Our Heroes</h2>
              <p>Meet the outstanding performers in our industry-award-winning team of professionals</p>
            </div>
            <!-- Section Title END -->
          </div>
        </div>
        <div class="row">
          <div class="col-lg-3 col-sm-6 mb-4 mb-lg-0">
            <!-- team-01 START -->
            <div class="team-02">
              <div class="team-img">
                <img class="img-fluid border-radius" src="images/team/09.jpg" alt="">
              </div>
              <div class="team-info text-center">
                <a href="teachers-single.html" class="team-title">Ora Bryan</a>
                <p class="team-designation text-white">Illustration</p>
                <p class="text-white">The other virtues practice in succession.</p>
                <div class="team-social">
                  <ul>
                    <li><a href="#"><i class="fab fa-facebook-f"></i></a></li>
                    <li><a href="#"><i class="fab fa-twitter"></i></a></li>
                    <li><a href="#"><i class="fab fa-linkedin-in"></i></a></li>
                    <li><a href="#"><i class="fab fa-instagram"></i></a></li>
                  </ul>
                </div>
              </div>
            </div>
            <!-- team-01 END -->
          </div>
          <div class="col-lg-3 col-sm-6 mb-4 mb-lg-0">
            <!-- team-02 START -->
            <div class="team-02">
              <div class="team-img">
                <img class="img-fluid border-radius" src="images/team/10.jpg" alt="">
              </div>
              <div class="team-info text-center">
                <a href="teachers-single.html" class="team-title">Homer Reyes</a>
                <p class="team-designation text-white">Community</p>
                <p class="text-white"> From eight till twelve he worked at his trade.</p>
                <div class="team-social">
                  <ul>
                    <li><a href="#"><i class="fab fa-facebook-f"></i></a></li>
                    <li><a href="#"><i class="fab fa-twitter"></i></a></li>
                    <li><a href="#"><i class="fab fa-linkedin-in"></i></a></li>
                    <li><a href="#"><i class="fab fa-instagram"></i></a></li>
                  </ul>
                </div>
              </div>
            </div>
            <!-- team-02 END -->
          </div>
          <div class="col-lg-3 col-sm-6 mb-4 mb-sm-0">
            <!-- team-03 START -->
            <div class="team-02">
              <div class="team-img">
                <img class="img-fluid border-radius" src="images/team/11.jpg" alt="">
              </div>
              <div class="team-info text-center">
                <a href="teachers-single.html" class="team-title">Mellissa Doe</a>
                <p class="team-designation text-white">Team Leader</p>
                <p class="text-white">From twelve to one he read or overlooked.</p>

                <div class="team-social">
                  <ul>
                    <li><a href="#"><i class="fab fa-facebook-f"></i></a></li>
                    <li><a href="#"><i class="fab fa-twitter"></i></a></li>
                    <li><a href="#"><i class="fab fa-linkedin-in"></i></a></li>
                    <li><a href="#"><i class="fab fa-instagram"></i></a></li>
                  </ul>
                </div>
              </div>
            </div>
            <!-- team-03 END -->
          </div>
          <div class="col-lg-3 col-sm-6">
            <!-- team-04 START -->
            <div class="team-02">
              <div class="team-img">
                <img class="img-fluid border-radius" src="images/team/12.jpg" alt="">
              </div>
              <div class="team-info text-center">
                <a href="teachers-single.html" class="team-title">Felica Queen</a>
                <p class="team-designation text-white">Designer</p>
                <p class="text-white">In the last thing before retiring.</p>

                <div class="team-social">
                  <ul>
                    <li><a href="#"><i class="fab fa-facebook-f"></i></a></li>
                    <li><a href="#"><i class="fab fa-twitter"></i></a></li>
                    <li><a href="#"><i class="fab fa-linkedin-in"></i></a></li>
                    <li><a href="#"><i class="fab fa-instagram"></i></a></li>
                  </ul>
                </div>
              </div>
            </div>
            <!-- team-04 END -->
          </div>
        </div>
      </div>
    </section>
    <!--=================================Team -->

    <!--=================================Feature-box -->
    <section>
       <div class="container-fluid px-0">
         <div class="row no-gutters">
           <div class="col-lg-6 bg-dark p-0 p-xl-5">
            <div class="feature-box d-block d-sm-flex">
            <div class="feature-icon bg-white mb-4 mb-sm-0">
                <i class="flaticon-trophy-1 text-dark"></i>
              </div>
              <div class="feature-content ml-0 ml-sm-4 ml-lg-5  text-center text-sm-left">
            <h3 class="text-center text-sm-left">Prize Giving Ceremony</h3>
            <p class="mb-0 text-center text-sm-left">We all carry a lot of baggage, thanks to our upbringing. The majority of people carry with them, an entire series of self-limiting beliefs that will absolutely stop, and hold them back from, success.</p>
            <a href="#" class="btn btn-white btn-round mt-4">Read More</a>
          </div>
           </div>
         </div>
           <div class="col-lg-6 bg-primary p-0 p-xl-5">
            <div class="feature-box d-block d-sm-flex">
            <div class="feature-icon bg-white mb-4 mb-sm-0">
                <i class="flaticon-book-1  text-dark"></i>
              </div>
              <div class="feature-content ml-0 ml-sm-4 ml-lg-5 text-center text-sm-left">
            <h3 class="text-center text-sm-left">E-Learning Program</h3>
            <p class="mb-0 text-center text-sm-left">Things like “I’m not good enough”, “I’m not smart enough”, “I’m not lucky enough”, and the worst, “I’m not worthy” are but a few of the self-limiting beliefs I have encountered.</p>
            <a href="#" class="btn btn-white btn-round mt-4 text-center text-sm-left">Read More</a>
          </div>
           </div>
         </div>
         </div>
       </div>
    </section>
    <!--=================================Feature-box -->

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
          <div class="col-xl-4 col-md-6 mb-4 mb-xl-0">
            <!-- Blog 01 START -->
            <div class="blog">
              <!-- Blog image -->
              <div class="blog-image">
                <img class="img-fluid border-radius" src="images/blog/09.jpg" alt="">
              </div>
              <!-- Blog content -->
              <div class="blog-content pt-4">
                <h5 class="blog-title mb-3"><a href="blog-detail.html">The problem with the push for more college degrees</a></h5>
                <div class="blog-meta mb-0">
                  <ul class="list-unstyled mb-0 d-flex">
                    <li class="mr-3"><a href="#"><i class="fas fa-calendar-alt pr-1"></i> 15 Oct, 2020</a></li>
                    <li><a href="#"><i class="fas fa-clock pr-1"></i>  10:00 AM - 12:00 PM</a></li>
                  </ul>
                </div>
                <p class="mt-3 mb-0">Franklin’s extraordinary success in life and politics can be attributed to his perseverance to overcome his personal liabilities.</p>
              </div>
            </div>
            <!-- Blog 01 END -->
          </div>
          <div class="col-xl-4 col-md-6 mb-4 mb-xl-0">
            <!-- Blog 02 START -->
            <div class="blog">
              <!-- Blog image -->
              <div class="blog-image">
                <img class="img-fluid border-radius" src="images/blog/02.jpg" alt="">
              </div>
              <!-- Blog content -->
              <div class="blog-content pt-4">
                <h5 class="blog-title mb-3"><a href="blog-detail.html">Free college proposals should include private colleges</a></h5>
                <div class="blog-meta mb-0">
                  <ul class="list-unstyled mb-0 d-flex">
                    <li class="mr-3"><a href="#"><i class="fas fa-calendar-alt pr-1"></i> 20 Sept, 2020</a></li>
                    <li><a href="#"><i class="fas fa-clock pr-1"></i>  12:00 PM - 3:00 PM</a></li>
                  </ul>
                </div>
                <p class="mt-3 mb-0">Next time you really want to achieve something, take time to focus on your own personal journal. What is your temptation.</p>
              </div>
            </div>
            <!-- Blog 02 END -->
          </div>
          <div class="col-xl-4 col-md-6">
            <!-- Blog 03 START -->
            <div class="blog">
              <!-- Blog image -->
              <div class="blog-image">
                <img class="img-fluid border-radius" src="images/blog/08.jpg" alt="">
              </div>
              <!-- Blog content -->
              <div class="blog-content pt-4">
                <h5 class="blog-title mb-3"><a href="blog-detail.html">Universities must prepare for a technology-enabled future</a></h5>
                <div class="blog-meta mb-0">
                  <ul class="list-unstyled mb-0 d-flex">
                    <li class="mr-3"><a href="#"><i class="fas fa-calendar-alt pr-1"></i> 27 Nov, 2020</a></li>
                    <li><a href="#"><i class="fas fa-clock pr-1"></i>  4:00 PM - 6:00 PM</a></li>
                  </ul>
                </div>
                <p class="mt-3 mb-0">Get yourself nice and relaxed and settled. Concentrate on your breathing, engage in the moment and spend some time being still.</p>
              </div>
            </div>
            <!-- Blog 03 END -->
          </div>
        </div>
      </div>
    </section>
    <!--=================================Articles -->
    <?php include("footer.php")?>
