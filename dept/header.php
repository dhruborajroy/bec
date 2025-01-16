<?php 
session_start();
if(!isset($_SESSION['DEPT_ID'])){
  $dept_id=$_SESSION['DEPT_ID'];
  if(!isset($_GET['dept_id'])){
    $_SESSION['DEPT_ID']=$_GET['dept_id'];
    // header("Location: /");
  }
}
require('../inc/constant.inc.php');
require('../inc/connection.inc.php');
require('../inc/function.inc.php');
?>

<!DOCTYPE html>
<html lang="en">
  
<head>
    <meta charset="utf-8">
    <meta name="keywords" content="BEC, Barishal Engineering College" />
    <meta name="description" content="Barishal Engineering College - An affiliated Engineering Collge" />
    <meta name="author" content="Dhruboraj Roy(thedhrubo.xyz)" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>Barishal Engineering College - An affiliated Engineering Collge</title>

    <!-- Favicon -->
    <link rel="shortcut icon" href="../images/favicon.ico" />

    <!-- Google Font -->
    <link href="https://fonts.googleapis.com/css2?family=Poppins:ital,wght@0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,200&amp;display=swap" rel="stylesheet">

    <!-- CSS Global Compulsory (Do not remove)-->
    <link rel="stylesheet" href="../css/font-awesome/all.min.css" />
    <link rel="stylesheet" href="../css/flaticon/flaticon.css" />
    <link rel="stylesheet" href="../css/bootstrap/bootstrap.min.css" />

    <!-- Page CSS Implementing Plugins (Remove the plugin CSS here if site does not use that feature)-->
    <link rel="stylesheet" href="../css/owl-carousel/owl.carousel.min.css" />
    <link rel="stylesheet" href="../css/magnific-popup/magnific-popup.css" />
    <link rel="stylesheet" href="../css/swiper/swiper.min.css" />
    <link rel="stylesheet" href="../css/animate/animate.min.css"/>

    <!-- Template Style -->
    <link rel="stylesheet" href="../css/style.css" />
  </head>

  <body>

    <!--=================================Header -->
    <header class="header header-style-02 header-sticky">
      <div class="header-main py-lg-4">
        <div class="container">
          <div class="row">
            <div class="col-sm-12">
              <div class="d-lg-flex align-items-center">
                <!-- logo -->
                <a class="navbar-brand logo text-lg-center" href="index">
                  <img src="../images/bec-ce.svg" alt="Logo">
                </a>
                <!-- header contact info -->
                <div class="header-contact-info ml-auto justify-content-center d-none d-lg-flex">
                  <div class="d-flex mr-3">
                    <i class="fa fa-phone fa-flip-horizontal fa-fw align-self-center"></i>
                    <div class="align-self-center">
                      <span class="d-block font-weight-bold mb-1 text-dark">Call Now</span>
                      <span>(+112) 7890 654 123</span>
                    </div>
                  </div>
                  <div class="d-flex mr-3 mb-1 mb-lg-0">
                    <i class="far fa-envelope fa-fw align-self-center"></i>
                    <div class="align-self-center">
                      <span class="d-block font-weight-bold mb-1 text-dark">Send Message</span>
                      <span>support@academic.com</span>
                    </div>
                  </div>
                  <div class="d-flex mb-1 mb-lg-0">
                    <i class="fas fa-map-marker-alt fa-fw align-self-center"></i>
                    <div class="align-self-center">
                      <span class="d-block font-weight-bold mb-1 text-dark">Our Location</span>
                      <span>721 Bedford Court</span>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
      <div class="header-menu bg-light">
        <div class="container">
          <div class="row">
            <div class="col-sm-12">
              <nav class="navbar navbar-expand-lg">
                <!-- Sticky logo -->
                <a class="navbar-brand logo-sticky" href="ce">
                  <img src="../images/bec-ce.svg" alt="Logo">
                </a>
                <!-- Navbar toggler START-->
                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                  <span class="navbar-toggler-icon"></span>
                </button>
                <!-- Navbar toggler END-->

                <!-- Navbar START -->
                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                  <ul class="navbar-nav">
                    <li class="nav-item dropdown">
                      <a class="nav-link" href="dept/ce" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Home</a>
                    </li>
                    <li class="nav-item dropdown">
                      <a class="nav-link dropdown-toggle" href="#" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                        About<i class="fas fa-chevron-down fa-xs"></i>
                      </a>
                      <!-- Dropdown Menu -->
                      <ul class="dropdown-menu">
                        <li><a class="dropdown-item" href="about-us">About Us</a></li>
                        <li><a class="dropdown-item" href="vision-mission">Vision & Mission</a></li>
                        <li><a class="dropdown-item" href="head-message">Message of the Head</a></li>
                        <li><a class="dropdown-item" href="booklet">Information Booklet</a></li>
                      </ul>
                    </li>
                    <li class="nav-item dropdown">
                      <a class="nav-link  dropdown-toggle" href="#" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                        People<i class="fas fa-chevron-down fa-xs"></i>
                      </a>
                      <!-- Dropdown Menu -->
                      <ul class="dropdown-menu">
                          <li><a class="dropdown-item" href="faculty">Faculty</a></li>
                          <li><a class="dropdown-item" href="officers">Officers</a></li>
                          <li><a class="dropdown-item" href="Staff">Staff</a></li>
                          <li><a class="dropdown-item" href="former-head">Former Head</a></li>
                          <li><a class="dropdown-item" href="former-faculty">Former Faculty</a></li>
                      </ul>
                    </li>
                    <li class="nav-item dropdown">
                      <a class="nav-link  dropdown-toggle" href="#" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                        Research<i class="fas fa-chevron-down fa-xs"></i>
                      </a>
                      <!-- Dropdown Menu -->
                      <ul class="dropdown-menu">
                          <li><a class="dropdown-item" href="publication">Publication</a></li>
                          <li><a class="dropdown-item" href="research">Researches</a></li>
                      </ul>
                    </li>
                    <li class="nav-item dropdown">
                      <a class="nav-link dropdown-toggle" href="#" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                        Facilities<i class="fas fa-chevron-down fa-xs"></i>
                      </a>
                      <!-- Dropdown Menu -->
                      <ul class="dropdown-menu">
                          <li><a class="dropdown-item" href="labs">List of Laboratories</a></li>
                          <li><a class="dropdown-item" href="laboratories">Scholarships</a></li>
                      </ul>
                    </li>
                    <li class="nav-item">
                      <a class="nav-link" href="contact-us">Contact Us</a>
                    </li>
                  </ul>
                </div>
                <!-- Navbar END-->
              </nav>
            </div>
          </div>
        </div>
      </div>
    </header>
    <!--=================================Header -->
