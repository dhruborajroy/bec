<?php include("header.php")?>

        <!-- ============================================================== -->
        <!-- Start right Content here -->
        <!-- ============================================================== -->
        <div class="main-content">

            <div class="page-content">
                <div class="container-fluid">

                    <!-- start page title -->
                    <div class="row">
                        <div class="col-12">
                            <div class="page-title-box d-sm-flex align-items-center justify-content-between bg-galaxy-transparent">
                                <h4 class="mb-sm-0">Blog</h4>

                                <div class="page-title-right">
                                    <ol class="breadcrumb m-0">
                                        <li class="breadcrumb-item"><a href="javascript: void(0);">Dashboards</a></li>
                                        <li class="breadcrumb-item active">Blog</li>
                                    </ol>
                                </div>

                            </div>
                        </div>
                    </div>
                    <!-- end page title -->

                    <div class="row">
                        <div class="col-xl-12">
                            <div class="row">
                                <div class="col-lg-3">
                                    <div class="card">
                                        <div class="card-body d-flex gap-3 align-items-center">
                                            <div class="avatar-sm">
                                                <div class="avatar-title border bg-success-subtle border-success border-opacity-25 rounded-2 fs-17">
                                                    <i data-feather="users" class="icon-dual-success"></i>
                                                </div>
                                            </div>
                                            <div class="flex-grow-1">
                                                <h5 class="fs-15">17.6k</h5>
                                                <p class="mb-0 text-muted">Followers</p>
                                            </div>
                                        </div>
                                    </div>
                                </div><!--end col-->
                                <div class="col-lg-3">
                                    <div class="card">
                                        <div class="card-body d-flex gap-3 align-items-center">
                                            <div class="avatar-sm">
                                                <div class="avatar-title border bg-warning-subtle border-warning border-opacity-25 rounded-2 fs-17">
                                                    <i data-feather="file-text" class="icon-dual-warning"></i>
                                                </div>
                                            </div>
                                            <div class="flex-grow-1">
                                                <h5 class="fs-15">149</h5>
                                                <p class="mb-0 text-muted">Total Post</p>
                                            </div>
                                        </div>
                                    </div>
                                </div><!--end col-->
                                <div class="col-lg-3">
                                    <div class="card">
                                        <div class="card-body d-flex gap-3 align-items-center">
                                            <div class="avatar-sm">
                                                <div class="avatar-title border bg-danger-subtle border-danger border-opacity-25 rounded-2 fs-17">
                                                    <i data-feather="heart" class="icon-dual-danger"></i>
                                                </div>
                                            </div>
                                            <div class="flex-grow-1">
                                                <h5 class="fs-15">24.8k</h5>
                                                <p class="mb-0 text-muted">Likes</p>
                                            </div>
                                        </div>
                                    </div>
                                </div><!--end col-->
                                <div class="col-lg-3">
                                    <div class="card">
                                        <div class="card-body d-flex gap-3 align-items-center">
                                            <div class="avatar-sm">
                                                <div class="avatar-title border bg-primary-subtle border-primary border-opacity-25 rounded-2 fs-17">
                                                    <i data-feather="bar-chart" class="icon-dual-primary"></i>
                                                </div>
                                            </div>
                                            <div class="flex-grow-1">
                                                <h5 class="fs-15">54.3k</h5>
                                                <p class="mb-0 text-muted">Views</p>
                                            </div>
                                        </div>
                                    </div>
                                </div><!--end col-->
                                <div class="col-lg-12">
                                    <div class="card">
                                        <div class="card-header align-items-center d-flex">
                                            <h5 class="card-title mb-0 flex-grow-1">Site Visitors</h5>
                                            <div class="flex-shrink-0">
                                                <div class="dropdown card-header-dropdown">
                                                    <a class="text-reset dropdown-btn" href="#" data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                                        <span class="fw-semibold text-uppercase fs-12">Sort by: </span><span class="text-muted">Current Week<i class="mdi mdi-chevron-down ms-1"></i></span>
                                                    </a>
                                                    <div class="dropdown-menu dropdown-menu-end">
                                                        <a class="dropdown-item" href="#">Today</a>
                                                        <a class="dropdown-item" href="#">Last Week</a>
                                                        <a class="dropdown-item" href="#">Last Month</a>
                                                        <a class="dropdown-item" href="#">Current Year</a>
                                                    </div>
                                                </div>
                                            </div>
                                        </div><!-- end card header -->
                                        <div class="card-body">
                                            <div id="column_chart_datalabel" data-colors='["--vz-primary"]' class="apex-charts" dir="ltr"></div>
                                        </div>
                                    </div>
                                </div><!--end col-->
                            </div><!--end row-->
                        </div><!--end col-->
                    </div><!--end row-->

                </div>
                <!-- container-fluid -->
            </div>
            <!-- End Page-content -->

            <footer class="footer">
                <div class="container-fluid">
                    <div class="row">
                        <div class="col-sm-6">
                            <script>document.write(new Date().getFullYear())</script> © Velzon.
                        </div>
                        <div class="col-sm-6">
                            <div class="text-sm-end d-none d-sm-block">
                                Design & Develop by Themesbrand
                            </div>
                        </div>
                    </div>
                </div>
            </footer>
        </div>
        <!-- end main content-->

    </div>
    <!-- END layout-wrapper -->



    <!--start back-to-top-->
    <button onclick="topFunction()" class="btn btn-danger btn-icon" id="back-to-top">
        <i class="ri-arrow-up-line"></i>
    </button>
    <!--end back-to-top-->

    <!--preloader-->
    <div id="preloader">
        <div id="status">
            <div class="spinner-border text-primary avatar-sm" role="status">
                <span class="visually-hidden">Loading...</span>
            </div>
        </div>
    </div>

    <!-- JAVASCRIPT -->
    <script src="assets/libs/bootstrap/js/bootstrap.bundle.min.js"></script>
    <script src="assets/libs/simplebar/simplebar.min.js"></script>
    <script src="assets/libs/node-waves/waves.min.js"></script>
    <script src="assets/libs/feather-icons/feather.min.js"></script>
    <script src="assets/js/pages/plugins/lord-icon-2.1.0.js"></script>
    <script src="assets/js/plugins.js"></script>

    <!-- apexcharts -->
    <script src="assets/libs/apexcharts/apexcharts.min.js"></script>

    <script src="assets/js/pages/dashboard-blog.init.js"></script>

    <!-- App js -->
    <script src="assets/js/app.js"></script>
</body>


<!-- Mirrored from themesbrand.com/velzon/html/master/dashboard-blog.html by HTTrack Website Copier/3.x [XR&CO'2014], Mon, 06 Jan 2025 04:51:24 GMT -->
</html>