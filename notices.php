<?php include("header.php")?>
    <!--=================================
    campus-->
    <section class="space-ptb">
      <div class="container">
        <div class="row">
          <div class="col-lg-12">
            <div class="section-title text-center">
              <h2>University Campus Weather</h2>
              <p class="mb-0">All Notice Board</p>
            </div>
          </div>
        </div>
        <div class="row justify-content-center">
          <div class="col-lg-12">
            <div class="table-responsive">
              <table class="table table-striped text-center mb-0">
                <thead>
                  <tr class="bg-dark">
                    <th class="text-white" scope="col">Date</th>
                    <th class="text-white" scope="col">Title</th>
                  </tr>
                </thead>
                <tbody>
                <?php
               $notice_res=mysqli_query($con,"select * from notice where status=1 order by added_on desc");
               if(mysqli_num_rows($notice_res)>0){
               while($notice_res_row=mysqli_fetch_assoc($notice_res)){
               ?>
               <tr  style="font-size: 22px;">
                 <td style="color:red;"><i class="far fa-calendar-check mr-1"></i> <?php echo date("d-M-Y",$notice_res_row['added_on'])?></td>
                 <td><a href="pdfreports/notice.php?notice_id=<?php echo $notice_res_row['id']?>"><?php echo $notice_res_row['title']?></a></td>
               </tr>
              <?php } }?>
                </tbody>
              </table>
            </div>
          </div>
        </div>
      </div>
    </section>
    <!--=================================camps-->

<?php include("footer.php")?>