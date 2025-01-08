<?php include("header.php")?>
    <!--=================================inner-header -->
    <section class="inner-banner bg-overlay-black-70 bg-holder" style="background-image: url('images/bg/09.jpg');">
      <div class="container">
        <div class="row d-flex justify-content-center">
          <div class="col-md-12">
            <div class="text-center">
              <h1 class="text-white">Gallery</h1>
            </div>
          </div>
        </div>
      </div>
    </section>
    <!--=================================inner-header -->


    
    <!--=================================
    Event -->
    <section class="space-ptb">
      <div class="container">
        <div class="course-archive bg-dark py-3 px-4 mb-5 border-radius">
          <div class="row d-flex align-items-center justify-content-between">
          <div class="col-md-8">
            <div class="d-flex">
              <div class="mr-3">
                <a class="text-white" href="events-grid.html"><i class="fa fa-th-large mr-2"></i></a>
                <a class="text-white" href="events-list.html"><i class="fa fa-list-ul"></i></a>
              </div>
              <div class="text-white">
                Showing 1-6 of 11 results
              </div>
            </div>
          </div>
          <div class="col-md-4 mt-4 mt-md-0">
            <form class="navbar-form search d-flex">
              <input type="text" name="q" class="form-control input-search rounded-0 bg-white" placeholder="search" autocomplete="off">
              <a href="#"><i class="fa fa-search text-white"></i></a>
            </form>
          </div>
         </div>
        </div>
        <div class="row">
          <div class="col-lg-12">
            <div class="row">
              <div class="col-lg-12">
                <div class="events">
                  <div class="row">
                    <div class="col-12">
                    <?php
                      $news_res=mysqli_query($con,"select * from news where status=1");
                      if(mysqli_num_rows($news_res)>0){
                      while($news_res_row=mysqli_fetch_assoc($news_res)){
                      ?>
                        <div class="events shadow p-4 bg-white border-radius">
                          <div class="row">
                            <div class="col-lg-3">
                              <div class="events-img mb-4 mb-lg-0">
                                <img class="img-fluid border-0" src="images/events/01.jpg" alt="">
                              </div>
                            </div>
                            <div class="col-lg-6 align-self-center">
                              <div class="events-content">
                                <a href="event-detail.html" class="text-dark h5"><?php echo $news_res_row['title']?></a>
                                <div class="events-meta my-2">
                                  <ul class="list-unstyled mb-0 d-flex">
                                    <li class="mr-3"><i class="fas fa-calendar-alt pr-1"></i> <?php echo date("d M Y",strtotime($news_res_row['added_on']))?></li>
                                  </ul>
                                </div>
                                <p class="text-dark mb-lg-0">
                                <?php 
                                  $maxLength = 600;

                                  if (strlen($news_res_row['details']) > $maxLength) {
                                      $truncatedString = substr_replace($news_res_row['details'], '...', $maxLength);
                                  } else {
                                      $truncatedString = $news_res_row['details'];
                                  }
                                  echo $truncatedString;
                                  ?></p>
                              </div>
                            </div>
                            <div class="col-lg-3 align-self-center text-lg-right text-left">
                              <a class="btn btn-dark btn-round" href="news-details.php?news_id=<?php echo md5($news_res_row['id'])?>">View News</a>
                            </div>
                          </div>
                        </div>

                        <?php } }else{
                          redirect("/");  
                        }?>
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


<?php include("footer.php")?>