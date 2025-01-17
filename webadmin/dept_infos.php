<?php 
   include('header.php');
   if(isset($_GET['type']) && $_GET['type']!=='' && isset($_GET['id']) && $_GET['id']>0){
   	$type=get_safe_value($_GET['type']);
   	$id=get_safe_value($_GET['id']);
   	if($type=='delete'){
   		mysqli_query($con,"delete from sliders where id='$id'");
   		redirect('sliders');
   	}
   	if($type=='active' || $type=='deactive'){
   		$status=1;
   		if($type=='deactive'){
   			$status=0;
   		}
   		mysqli_query($con,"update sliders set status='$status' where id='$id'");
           // redirect('./sliders');
   	}
   
   }
   ?>
<!-- Page Area Start Here -->
<div class="dashboard-content-one">
<!-- Breadcubs Area Start Here -->
<div class="breadcrumbs-area">
   <h3>Dept Infos</h3>
   <ul>
      <li>
         <a href="index.php">Home</a>
      </li>
      <li>All Sliders</li>
   </ul>
</div>
<!-- Breadcubs Area End Here -->
<div class="card ui-tab-card">
   <div class="card-body">
      <div class="heading-layout1 mg-b-25">
         <div class="item-title">
            <h3>CE Dept Infos</h3>
         </div>
      </div>
      <div class="basic-tab">
         <ul class="nav nav-tabs" role="tablist">
            <li class="nav-item">
               <a class="nav-link active show" data-toggle="tab" href="#dept_publication" role="tab" aria-selected="true">
               Publications
               </a>
            </li>
            <li class="nav-item">
               <a class="nav-link" data-toggle="tab" href="#dept_research" role="tab" aria-selected="false">
               Dept Research
               </a>
            </li>
            <li class="nav-item">
               <a class="nav-link" data-toggle="tab" href="#dept_scholarships" role="tab" aria-selected="false">
               Dept scholarships
               </a>
            </li>
            <li class="nav-item">
               <a class="nav-link" data-toggle="tab" href="#dept_about" role="tab" aria-selected="false">
                 Dept about
               </a>
            </li>
            <li class="nav-item">
               <a class="nav-link" data-toggle="tab" href="#dept_vision_mission" role="tab" aria-selected="false">
               Dept vision mission
               </a>
            </li>
            <li class="nav-item">
               <a class="nav-link" data-toggle="tab" href="#dept_head_msg" role="tab" aria-selected="false">
               Dept Head Message
               </a>
            </li>
            <li class="nav-item">
               <a class="nav-link" data-toggle="tab" href="#dept_booklet" role="tab" aria-selected="false">
               Dept booklet
               </a>
            </li>
         </ul>
         <div class="tab-content">
                <?php 
                $sql="select dept_general_info.* from dept_general_info";
                $res=mysqli_query($con,$sql);
                if(mysqli_num_rows($res)>0){
                $i=1;
                while($row=mysqli_fetch_assoc($res)){
                ?>
                <div class="tab-pane fade active show col-12 form-group" id="dept_publication" role="tabpanel">
                    <div class="col-12 form-group mg-t-8">
                        <p><?php echo $row['dept_publication']?>
                        </p>
                    </div>
                    <div class="col-2 form-group mg-t-8">
                        <a href="manage_slider"> <button type="submit"
                            class="btn-fill-lg btn-gradient-yellow btn-hover-bluedark">Add new Slider</button>
                        </a>
                    </div>
                </div>
                <div class="tab-pane fade show col-12 form-group" id="dept_research" role="tabpanel">
                    <div class="col-12 form-group mg-t-8">
                        <p><?php echo $row['dept_research']?>
                        </p>
                    </div>
                    <div class="col-2 form-group mg-t-8">
                        <a href="manage_slider"> <button type="submit"
                            class="btn-fill-lg btn-gradient-yellow btn-hover-bluedark">Add new Slider</button>
                        </a>
                    </div>
                </div>
                <div class="tab-pane fade  show col-12 form-group" id="dept_scholarships" role="tabpanel">
                    <div class="col-12 form-group mg-t-8">
                        <p><?php echo $row['dept_scholarships']?>
                        </p>
                    </div>
                    <div class="col-2 form-group mg-t-8">
                        <a href="manage_slider"> <button type="submit"
                            class="btn-fill-lg btn-gradient-yellow btn-hover-bluedark">Add new Slider</button>
                        </a>
                    </div>
                </div>
                <div class="tab-pane fade  show col-12 form-group" id="dept_about" role="tabpanel">
                    <div class="col-12 form-group mg-t-8">
                        <p><?php echo $row['dept_about']?>
                        </p>
                    </div>
                    <div class="col-2 form-group mg-t-8">
                        <a href="manage_slider"> <button type="submit"
                            class="btn-fill-lg btn-gradient-yellow btn-hover-bluedark">Add new Slider</button>
                        </a>
                    </div>
                </div>
                <div class="tab-pane fade  show col-12 form-group" id="dept_about" role="tabpanel">
                    <div class="col-12 form-group mg-t-8">
                        <p><?php echo $row['dept_about']?>
                        </p>
                    </div>
                    <div class="col-2 form-group mg-t-8">
                        <a href="manage_slider"> <button type="submit"
                            class="btn-fill-lg btn-gradient-yellow btn-hover-bluedark">Add new Slider</button>
                        </a>
                    </div>
                </div>
                <div class="tab-pane fade  show col-12 form-group" id="dept_vision_mission" role="tabpanel">
                    <div class="col-12 form-group mg-t-8">
                        <p><?php echo $row['dept_vision_mission']?>
                        </p>
                    </div>
                    <div class="col-2 form-group mg-t-8">
                        <a href="manage_slider"> <button type="submit"
                            class="btn-fill-lg btn-gradient-yellow btn-hover-bluedark">Add new Slider</button>
                        </a>
                    </div>
                </div>
                <div class="tab-pane fade  show col-12 form-group" id="dept_head_msg" role="tabpanel">
                    <div class="col-12 form-group mg-t-8">
                        <p><?php echo $row['dept_head_msg']?>
                        </p>
                    </div>
                    <div class="col-2 form-group mg-t-8">
                        <a href="manage_slider"> <button type="submit"
                            class="btn-fill-lg btn-gradient-yellow btn-hover-bluedark">Add new Slider</button>
                        </a>
                    </div>
                </div>
                <div class="tab-pane fade  show col-12 form-group" id="dept_booklet" role="tabpanel">
                    <div class="col-12 form-group mg-t-8">
                        <p><?php echo $row['dept_booklet']?>
                        </p>
                    </div>
                    <div class="col-2 form-group mg-t-8">
                        <a href="manage_slider"> <button type="submit"
                            class="btn-fill-lg btn-gradient-yellow btn-hover-bluedark">Add new Slider</button>
                        </a>
                    </div>
                </div>
                <?php 
                  $i++;
                  } } else { ?>
                  No data found
               <?php } ?>
         </div>
      </div>
   </div>
</div>
<!-- Teacher Table Area Start Here -->
<div class="card height-auto">
   <div class="card-body">
      <div class="heading-layout1">
         <div class="item-title">
            <h3>All Website Sliders' Data</h3>
         </div>
         <div class="dropdown show">
            <div class="col-12 form-group mg-t-8">
               <a href="manage_slider"> <button type="submit"
                  class="btn-fill-lg btn-gradient-yellow btn-hover-bluedark">Add new Slider</button>
               </a>
            </div>
         </div>
      </div>
      <div class="table-responsive">
         <table class="table display data-table text-nowrap">
            <thead>
               <tr>
                  <th>Sub Title</th>
                  <th>Action</th>
               </tr>
            </thead>
            <tbody id="myTable">
               <?php 
                  $sql="select dept_general_info.dept_publication from dept_general_info";
                  $res=mysqli_query($con,$sql);
                  if(mysqli_num_rows($res)>0){
                  $i=1;
                  while($row=mysqli_fetch_assoc($res)){
                  ?>
               <tr role="row" class="odd">
                  <td class="sorting_1 dtr-control"><?php echo $row['dept_publication']?></td>
                  <td>
                     <div class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown" aria-expanded="false">
                        <span class="flaticon-more-button-of-three-dots"></span>
                        </a>
                        <div class="dropdown-menu dropdown-menu-right">
                           <a class="dropdown-item" href="manage_slider.php?id=<?php echo md5($row['id'])?>"><i
                              class="fas fa-cogs text-dark-pastel-green"></i>Edit</a>
                           <?php if($row['status']=='0'){?>
                           <a class="dropdown-item" href="?id=<?php echo $row['id']?>&type=active"><i
                              class="fas fa-cogs text-dark-pastel-green"></i>Active</a>
                           <?php }else{?>
                           <a class="dropdown-item" href="?id=<?php echo $row['id']?>&type=deactive"><i
                              class="fas fa-cogs text-dark-pastel-green"></i>Deactive</a>
                           <?php }?>
                           <a class="dropdown-item" href="?id=<?php echo $row['id']?>&type=delete"><i
                              class="fas fa-cogs text-dark-pastel-green"></i>Delete</a>
                        </div>
                     </div>
                  </td>
               </tr>
               <?php 
                  $i++;
                  } } else { ?>
               <tr>
                  <td colspan="3">No data found</td>
               </tr>
               <?php } ?>
         </table>
      </div>
   </div>
</div>
<!-- Teacher Table Area End Here -->
<!-- Teacher Table Area Start Here -->
<div class="card height-auto">
   <div class="card-body">
      <div class="heading-layout1">
         <div class="item-title">
            <h3>All Dept Sliders' Data</h3>
         </div>
         <div class="dropdown show">
            <div class="col-12 form-group mg-t-8">
               <a href="manage_dept_slider"> <button type="submit"
                  class="btn-fill-lg btn-gradient-yellow btn-hover-bluedark">Add new dept Slider</button>
               </a>
            </div>
         </div>
      </div>
      <div class="table-responsive">
         <table class="table display data-table text-nowrap">
            <thead>
               <tr>
                  <th>Title</th>
                  <th>Sub Title</th>
                  <th>Sub Title</th>
                  <th>Image</th>
                  <th>Action</th>
               </tr>
            </thead>
            <tbody id="myTable">
               <?php
                  $sql="select * from dept_sliders";
                  $res=mysqli_query($con,$sql);
                  if(mysqli_num_rows($res)>0){
                  $i=1;
                  while($row=mysqli_fetch_assoc($res)){
                  ?>
               <tr role="row" class="odd">
                  <td class="sorting_1 dtr-control"><?php echo $row['title']?></td>
                  <td class="sorting_1 dtr-control"><?php echo $row['dept']?></td>
                  <td class="sorting_1 dtr-control"><?php echo $row['sub_title']?></td>
                  <td class="sorting_1 dtr-control"><img src="../images/dept/sliders/<?php echo $row['image']?>" width="150px"></td>
                  <td>
                     <div class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown" aria-expanded="false">
                        <span class="flaticon-more-button-of-three-dots"></span>
                        </a>
                        <div class="dropdown-menu dropdown-menu-right">
                           <a class="dropdown-item" href="manage_dept_slider.php?id=<?php echo md5($row['id'])?>"><i
                              class="fas fa-cogs text-dark-pastel-green"></i>Edit</a>
                           <?php if($row['status']=='0'){?>
                           <a class="dropdown-item" href="?id=<?php echo $row['id']?>&type=active"><i
                              class="fas fa-cogs text-dark-pastel-green"></i>Active</a>
                           <?php }else{?>
                           <a class="dropdown-item" href="?id=<?php echo $row['id']?>&type=deactive"><i
                              class="fas fa-cogs text-dark-pastel-green"></i>Deactive</a>
                           <?php }?>
                           <a class="dropdown-item" href="?id=<?php echo $row['id']?>&type=dept_delete"><i
                              class="fas fa-cogs text-dark-pastel-green"></i>Delete</a>
                        </div>
                     </div>
                  </td>
               </tr>
               <?php 
                  $i++;
                  } } else { ?>
               <tr>
                  <td colspan="3">No data found</td>
               </tr>
               <?php } ?>
         </table>
      </div>
   </div>
</div>
<!-- Teacher Table Area End Here -->
<?php include('footer.php');?>