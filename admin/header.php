<html lang="en" data-layout="semibox" data-topbar="dark" data-sidebar="dark" data-sidebar-size="lg" data-sidebar-image="none" data-preloader="disable" data-theme="vintage" data-theme-colors="default" data-sidebar-visibility="show" data-layout-style="default" data-bs-theme="light" data-layout-width="fluid" data-layout-position="fixed" data-body-image="none">
  <head>
    <meta charset="utf-8" />
    <title>Blog | Velzon - Admin & Dashboard Template</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta content="Premium Multipurpose Admin & Dashboard Template" name="description" />
    <meta content="Themesbrand" name="author" />
    <!-- App favicon -->
    <link rel="shortcut icon" href="assets/images/favicon.ico">
    <!-- Layout config Js -->
    <script src="assets/js/layout.js"></script>
    <!-- Bootstrap Css -->
    <link href="assets/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
    <!-- Icons Css -->
    <link href="assets/css/icons.min.css" rel="stylesheet" type="text/css" />
    <!-- App Css-->
    <link href="assets/css/app.min.css" rel="stylesheet" type="text/css" />
    <!-- custom Css-->
    <link href="assets/css/custom.min.css" rel="stylesheet" type="text/css" />
  </head>
  <body>
    <!-- Begin page -->
    <div id="layout-wrapper">
      <header id="page-topbar">
        <div class="layout-width">
          <div class="navbar-header">
            <div class="d-flex">
              <!-- LOGO -->
              <div class="navbar-brand-box horizontal-logo">
                <a href="index.html" class="logo logo-light">
                  <span class="logo-sm">
                    <img src="../images/bec-bg-white.jpg" alt="" height="22">
                  </span>
                  <span class="logo-lg">
                    <img src="../images/bec-bg-white.jpg" alt="" height="50" style="margin-top: 40px;">
                  </span>
                </a>
              </div>
              <button type="button" class="btn btn-sm px-3 fs-16 header-item vertical-menu-btn topnav-hamburger material-shadow-none" id="topnav-hamburger-icon">
                <span class="hamburger-icon">
                  <span></span>
                  <span></span>
                  <span></span>
                </span>
              </button>
            </div>
            <div class="d-flex align-items-center">
              <div class="ms-1 header-item d-none d-sm-flex">
                <button type="button" class="btn btn-icon btn-topbar material-shadow-none btn-ghost-secondary rounded-circle" data-toggle="fullscreen">
                  <i class='bx bx-fullscreen fs-22'></i>
                </button>
              </div>
              <div class="ms-1 header-item d-none d-sm-flex">
                <button type="button" class="btn btn-icon btn-topbar material-shadow-none btn-ghost-secondary rounded-circle light-dark-mode">
                  <i class='bx bx-moon fs-22'></i>
                </button>
              </div>
              <div class="dropdown ms-sm-3 header-item topbar-user">
                <button type="button" class="btn material-shadow-none" id="page-header-user-dropdown" data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                  <span class="d-flex align-items-center">
                    <img class="rounded-circle header-profile-user" src="assets/images/users/avatar-1.jpg" alt="Header Avatar">
                    <span class="text-start ms-xl-2">
                      <span class="d-none d-xl-inline-block ms-1 fw-medium user-name-text">Anna Adame</span>
                      <span class="d-none d-xl-block ms-1 fs-12 user-name-sub-text">Founder</span>
                    </span>
                  </span>
                </button>
                <div class="dropdown-menu dropdown-menu-end">
                  <!-- item-->
                  <h6 class="dropdown-header">Welcome Anna!</h6>
                  <a class="dropdown-item" href="pages-profile.html">
                    <i class="mdi mdi-account-circle text-muted fs-16 align-middle me-1"></i>
                    <span class="align-middle">Profile</span>
                  </a>
                  <a class="dropdown-item" href="auth-logout-basic.html">
                    <i class="mdi mdi-logout text-muted fs-16 align-middle me-1"></i>
                    <span class="align-middle" data-key="t-logout">Logout</span>
                  </a>
                </div>
              </div>
            </div>
          </div>
        </div>
      </header>
      <!-- ========== App Menu ========== -->
      <div class="app-menu navbar-menu">
        <!-- LOGO -->
        <div class="navbar-brand-box">
          <!-- Light Logo-->
          <a href="index.html" class="logo logo-light">
            <span class="logo-sm">
              <img src="../images/bec-bg-white.jpg" alt="" height="50" style="margin-top: 40px;">
            </span>
            <span class="logo-lg">
              <img src="../images/bec-bg-white.jpg" alt="" height="50" style="margin-top: 40px;">
            </span>
          </a>
          <button type="button" class="btn btn-sm p-0 fs-20 header-item float-end btn-vertical-sm-hover" id="vertical-hover">
            <i class="ri-record-circle-line"></i>
          </button>
        </div>
        <div class="dropdown sidebar-user m-1 rounded">
          <button type="button" class="btn material-shadow-none" id="page-header-user-dropdown" data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
            <span class="d-flex align-items-center gap-2">
              <img class="rounded header-profile-user" src="assets/images/users/avatar-1.jpg" alt="Header Avatar">
              <span class="text-start">
                <span class="d-block fw-medium sidebar-user-name-text">Anna Adame</span>
                <span class="d-block fs-14 sidebar-user-name-sub-text">
                  <i class="ri ri-circle-fill fs-10 text-success align-baseline"></i>
                  <span class="align-middle">Online</span>
                </span>
              </span>
            </span>
          </button>
          <div class="dropdown-menu dropdown-menu-end">
            <!-- item-->
            <h6 class="dropdown-header">Welcome Anna!</h6>
            <a class="dropdown-item" href="pages-profile.html">
              <i class="mdi mdi-account-circle text-muted fs-16 align-middle me-1"></i>
              <span class="align-middle">Profile</span>
            </a>
            <a class="dropdown-item" href="apps-chat.html">
              <i class="mdi mdi-message-text-outline text-muted fs-16 align-middle me-1"></i>
              <span class="align-middle">Messages</span>
            </a>
            <a class="dropdown-item" href="apps-tasks-kanban.html">
              <i class="mdi mdi-calendar-check-outline text-muted fs-16 align-middle me-1"></i>
              <span class="align-middle">Taskboard</span>
            </a>
            <a class="dropdown-item" href="pages-faqs.html">
              <i class="mdi mdi-lifebuoy text-muted fs-16 align-middle me-1"></i>
              <span class="align-middle">Help</span>
            </a>
            <div class="dropdown-divider"></div>
            <a class="dropdown-item" href="pages-profile.html">
              <i class="mdi mdi-wallet text-muted fs-16 align-middle me-1"></i>
              <span class="align-middle">Balance : <b>$5971.67</b>
              </span>
            </a>
            <a class="dropdown-item" href="pages-profile-settings.html">
              <span class="badge bg-success-subtle text-success mt-1 float-end">New</span>
              <i class="mdi mdi-cog-outline text-muted fs-16 align-middle me-1"></i>
              <span class="align-middle">Settings</span>
            </a>
            <a class="dropdown-item" href="auth-lockscreen-basic.html">
              <i class="mdi mdi-lock text-muted fs-16 align-middle me-1"></i>
              <span class="align-middle">Lock screen</span>
            </a>
            <a class="dropdown-item" href="auth-logout-basic.html">
              <i class="mdi mdi-logout text-muted fs-16 align-middle me-1"></i>
              <span class="align-middle" data-key="t-logout">Logout</span>
            </a>
          </div>
        </div>
        <div id="scrollbar">
          <div class="container-fluid">
            <div id="two-column-menu"></div>
            <ul class="navbar-nav" id="navbar-nav">
              <li class="menu-title">
                <span data-key="t-menu">Menu</span>
              </li>
              <li class="nav-item">
                <a class="nav-link menu-link" href="#sidebarDashboards" data-bs-toggle="collapse" role="button" aria-expanded="false" aria-controls="sidebarDashboards">
                  <i class="ri-dashboard-2-line"></i>
                  <span data-key="t-dashboards">Dashboards</span>
                </a>
                <div class="collapse menu-dropdown" id="sidebarDashboards">
                  <ul class="nav nav-sm flex-column">
                    <li class="nav-item">
                      <a href="dashboard-analytics.html" class="nav-link" data-key="t-analytics"> Analytics </a>
                    </li>
                    <li class="nav-item">
                      <a href="dashboard-crm.html" class="nav-link" data-key="t-crm"> CRM </a>
                    </li>
                    <li class="nav-item">
                      <a href="index.html" class="nav-link" data-key="t-ecommerce"> Ecommerce </a>
                    </li>
                    <li class="nav-item">
                      <a href="dashboard-crypto.html" class="nav-link" data-key="t-crypto"> Crypto </a>
                    </li>
                    <li class="nav-item">
                      <a href="dashboard-projects.html" class="nav-link" data-key="t-projects"> Projects </a>
                    </li>
                    <li class="nav-item">
                      <a href="dashboard-nft.html" class="nav-link" data-key="t-nft"> NFT</a>
                    </li>
                    <li class="nav-item">
                      <a href="dashboard-job.html" class="nav-link" data-key="t-job">Job</a>
                    </li>
                    <li class="nav-item">
                      <a href="dashboard-blog.html" class="nav-link">
                        <span data-key="t-blog">Blog</span>
                        <span class="badge bg-success" data-key="t-new">New</span>
                      </a>
                    </li>
                  </ul>
                </div>
              </li>
              <!-- end Dashboard Menu -->
              <li class="nav-item">
                <a class="nav-link menu-link" href="#sidebarApps" data-bs-toggle="collapse" role="button" aria-expanded="false" aria-controls="sidebarApps">
                  <i class="ri-apps-2-line"></i>
                  <span data-key="t-apps">Apps</span>
                </a>
                <div class="collapse menu-dropdown" id="sidebarApps">
                  <ul class="nav nav-sm flex-column">
                    <li class="nav-item">
                      <a href="#sidebarCalendar" class="nav-link" data-bs-toggle="collapse" role="button" aria-expanded="false" aria-controls="sidebarCalendar" data-key="t-calender"> Calendar </a>
                      <div class="collapse menu-dropdown" id="sidebarCalendar">
                        <ul class="nav nav-sm flex-column">
                          <li class="nav-item">
                            <a href="apps-calendar.html" class="nav-link" data-key="t-main-calender"> Main Calender </a>
                          </li>
                          <li class="nav-item">
                            <a href="apps-calendar-month-grid.html" class="nav-link" data-key="t-month-grid"> Month Grid </a>
                          </li>
                        </ul>
                      </div>
                    </li>
                    <li class="nav-item">
                      <a href="apps-chat.html" class="nav-link" data-key="t-chat"> Chat </a>
                    </li>
                    <li class="nav-item">
                      <a href="apps-api-key.html" class="nav-link" data-key="t-api-key">API Key</a>
                    </li>
                  </ul>
                </div>
              </li>
              <li class="nav-item">
                <a class="nav-link menu-link" href="#sidebarLayouts" data-bs-toggle="collapse" role="button" aria-expanded="false" aria-controls="sidebarLayouts">
                  <i class="ri-layout-3-line"></i>
                  <span data-key="t-layouts">Layouts</span>
                  <span class="badge badge-pill bg-danger" data-key="t-hot">Hot</span>
                </a>
                <div class="collapse menu-dropdown" id="sidebarLayouts">
                  <ul class="nav nav-sm flex-column">
                    <li class="nav-item">
                      <a href="layouts-horizontal.html" target="_blank" class="nav-link" data-key="t-horizontal">Horizontal</a>
                    </li>
                    <li class="nav-item">
                      <a href="layouts-detached.html" target="_blank" class="nav-link" data-key="t-detached">Detached</a>
                    </li>
                    <li class="nav-item">
                      <a href="layouts-two-column.html" target="_blank" class="nav-link" data-key="t-two-column">Two Column</a>
                    </li>
                    <li class="nav-item">
                      <a href="layouts-vertical-hovered.html" target="_blank" class="nav-link" data-key="t-hovered">Hovered</a>
                    </li>
                  </ul>
                </div>
              </li>
              <!-- end Dashboard Menu -->
          </div>
          <!-- Sidebar -->
        </div>
        <div class="sidebar-background"></div>
      </div>
      <!-- Left Sidebar End -->
      <!-- Vertical Overlay-->
      <div class="vertical-overlay"></div>