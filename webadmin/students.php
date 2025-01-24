
<script>
    $(document).ready(function(){
        updateHiddenInputs(); // Capture initial values

        $("#select-single, #select-multiple").dragOptions({
            highlight: '-> ',
            onChange: function(){
                updateHiddenInputs(); // Update when reordered
            }
        });

        function updateHiddenInputs() {
            let singleOrder = $("#select-single option").map(function() {
                return this.value;
            }).get().join(",");

            let multipleOrder = $("#select-multiple option").map(function() {
                return this.value;
            }).get().join(",");

            $("#hidden-single").val(singleOrder);
            $("#hidden-multiple").val(multipleOrder);
        }

        // Ensure values are updated before submitting the form
        $("form").on("submit", function() {
            updateHiddenInputs();
        });
    });
</script>
<?php 
define('SECURE_ACCESS', true);
include('header.php');
if(isset($_GET['type']) && $_GET['type']!=='' && isset($_GET['id']) && $_GET['id']>0){
	$type=get_safe_value($_GET['type']);
	$id=get_safe_value($_GET['id']);
	if($type=='delete'){
		mysqli_query($con,"delete from book where id='$id'");
		redirect('books');
	}
	if($type=='active' || $type=='deactive'){
		$status=1;
		if($type=='deactive'){
			$status=0;
		}
		mysqli_query($con,"update book set status='$status' where id='$id'");
        redirect('./books');
	}

}
?>
<!-- Page Area Start Here -->
<div class="dashboard-content-one">
    <!-- Breadcubs Area Start Here -->
    <div class="breadcrumbs-area">
        <h3>Books</h3>
            <ul>
                <li>
                    <a href="index.php">Home</a>
                </li>
                <li>All Books</li>
            </ul>
    </div>
    <!-- Breadcubs Area End Here -->
    <!-- Teacher Table Area Start Here -->
    <div class="card height-auto">
        <div class="card-body">
            <div class="heading-layout1">
                <div class="item-title">
                    <h3>All Books' Data</h3>
                </div>
                <div class="dropdown show">
                    <div class="col-12 form-group mg-t-8">
                        <a href="manage_books"> <button type="submit"
                                class="btn-fill-lg btn-gradient-yellow btn-hover-bluedark">Add new Book</button>
                        </a>
                    </div>
                </div>
            </div>
            <div class="table-responsive">
                <table class="table display data-table text-nowrap">
                    <thead>
                        <tr>
                            <th>Name</th>
                            <th>Image</th>
                            <th>Father's Name</th>
                            <th>Registration No</th>
                            <th>Session</th>
                        </tr>
                    </thead>
                    <tbody id="myTable">
                        <?php 
                        $sql="select * from students";
                        $res=mysqli_query($con,$sql);
                        if(mysqli_num_rows($res)>0){
                        $i=1;
                        while($row=mysqli_fetch_assoc($res)){
                        ?>
                        <tr role="row" class="odd">
                            <td class="sorting_1 dtr-control"><?php echo $row['name']?></td>
                            <td class="sorting_1 dtr-control"><img height="30px" width="30px"
                                    src="../media/books/<?php echo $row['image']?>" alt="student"></td>
                            <td class="sorting_1 dtr-control"><?php echo $row['father_name']?></td>
                            <td class="sorting_1 dtr-control"><?php echo $row['reg_no']?></td>
                            <td class="sorting_1 dtr-control"><?php echo $row['session']?></td>
                        </tr>
                        <?php 
                           $i++;
                           } } else { ?>
                        <tr>
                            <td colspan="5">No data found</td>
                        </tr>
                        <?php } ?>
                </table>
            </div>
        </div>
    </div>
    <!-- Teacher Table Area End Here -->
    <?php include('footer.php');?>