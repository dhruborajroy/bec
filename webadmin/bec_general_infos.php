<?php 
define('SECURE_ACCESS', true);
include("header.php");
?>
<div class="dashboard-content-one">
    <!-- Breadcubs Area Start Here -->
    <div class="breadcrumbs-area">
        <h3>Noticeboard</h3>
        <ul>
            <li>
                <a href="index.php">Home</a>
            </li>
            <li>Notice</li>
        </ul>
    </div>
    <!-- Breadcubs Area End Here -->
<?php 
$sql="select * from general_info";
$res=mysqli_query($con,$sql);
if(mysqli_num_rows($res)>0){
$i=1;
while($row=mysqli_fetch_assoc($res)){
?>
<div class="card ui-tab-card">
   <div class="card-body">
      
      <div class="heading-layout1 mg-b-25">
         <div class="item-title">
            <h3>General Infos</h3>
         </div>
         <div class="dropdown">
               <a href="manage_general_info"> <button type="submit"
                     class="btn-fill-lg btn-gradient-yellow btn-hover-bluedark">Add new Slider</button>
               </a>
         </div>
      </div>
      <div class="basic-tab">
         <ul class="nav nav-tabs" role="tablist">
            <li class="nav-item">
               <a class="nav-link active show" data-toggle="tab" href="#history" role="tab" aria-selected="true">
               history
               </a>
            </li>
            <li class="nav-item">
               <a class="nav-link" data-toggle="tab" href="#vision_mission" role="tab" aria-selected="false">
               Vision Mission
               </a>
            </li>
            <li class="nav-item">
               <a class="nav-link" data-toggle="tab" href="#organogram" role="tab" aria-selected="false">
               Organogram
               </a>
            </li>
            <li class="nav-item">
               <a class="nav-link" data-toggle="tab" href="#bec_at_a_glance" role="tab" aria-selected="false">
               At a Glance
               </a>
            </li>
            <li class="nav-item">
               <a class="nav-link" data-toggle="tab" href="#bec_monogram" role="tab" aria-selected="false">
               Monogram
               </a>
            </li>
         </ul>
         <div class="tab-content">
                <div class="tab-pane fade active show col-12 form-group" id="history" role="tabpanel">
                    <div class="col-12 form-group mg-t-8">
                        <p><?php echo $row['history']?>
                        </p>
                    </div>
                </div>
                <div class="tab-pane fade show col-12 form-group" id="vision_mission" role="tabpanel">
                    <div class="col-12 form-group mg-t-8">
                        <p><?php echo $row['vision_mission']?>
                        </p>
                    </div>
                    
                </div>
                <div class="tab-pane fade  show col-12 form-group" id="organogram" role="tabpanel">
                    <div class="col-12 form-group mg-t-8">
                        <p><?php echo $row['organogram']?>
                        </p>
                    </div>
                    
                </div>
                <div class="tab-pane fade  show col-12 form-group" id="bec_at_a_glance" role="tabpanel">
                    <div class="col-12 form-group mg-t-8">
                        <p><?php echo $row['bec_at_a_glance']?>
                        </p>
                    </div>
                    
                </div>
                <div class="tab-pane fade  show col-12 form-group" id="bec_monogram" role="tabpanel">
                    <div class="col-12 form-group mg-t-8">
                        <p><?php echo $row['bec_monogram']?>
                        </p>
                    </div>
                </div>
         </div>
      </div>
   </div>
</div>

<?php 
$i++;
} } else { ?>
No data found
<?php } ?>
<?php include('footer.php');?>