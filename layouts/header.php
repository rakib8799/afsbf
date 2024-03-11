<!-- Topbar Start -->
<div class="container-fluid px-5 d-none d-lg-block text-white" style="background: #080957">
    <div class="row gx-0">
        <div class="col-lg-8 text-center text-lg-start mb-2 mb-lg-0">
            <div class="d-inline-flex align-items-center" style="height: 67px;">
                <small class="me-3 "><i class="fa fa-map-marker-alt me-2"></i>2A/ 242 South Terrace, Bankstown, NSW</small>
                <small class="me-3 "><i class="fa fa-phone-alt me-2"></i>+61287390332</small>
                <small class=""><i class="fa fa-envelope-open me-2"></i>info@afsbf.org</small>
            </div>
        </div>
        <div class="col-lg-4 text-center text-lg-end">
            <div class="d-inline-flex align-items-center" style="height: 67px;">
                <!-- <a class="btn btn-sm btn-outline-light btn-sm-square rounded-circle me-2" href=""><i class="fab fa-twitter fw-normal"></i></a>
                <a class="btn btn-sm btn-outline-light btn-sm-square rounded-circle me-2" href=""><i class="fab fa-facebook-f fw-normal"></i></a>
                <a class="btn btn-sm btn-outline-light btn-sm-square rounded-circle me-2" href=""><i class="fab fa-linkedin-in fw-normal"></i></a>
                <a class="btn btn-sm btn-outline-light btn-sm-square rounded-circle me-2" href=""><i class="fab fa-instagram fw-normal"></i></a>
                <a class="btn btn-sm btn-outline-light btn-sm-square rounded-circle" href=""><i class="fab fa-youtube fw-normal"></i></a> -->
                <a href="<?php echo ($ROOT . '/layouts/donation') ?>"><button class="btn-donate">Donate Here</button></a>
            </div>
        </div>
    </div>
</div>
<!-- Topbar End -->


<!-- Navbar & Hero Start -->
<div class="container-fluid position-relative p-0">
    <nav class="navbar navbar-expand-lg navbar-light px-4 px-lg-5 py-3 py-lg-0">
        <a href="<?php echo ($ROOT . '/') ?>" class="navbar-brand p-0">
            <div class="d-flex align-items-center">
                <img src="<?php echo ($ROOT . '/assets/img/logo/logo-1.png') ?>" alt="SBF_logo">
                <p class="ms-3 text-white m-0 text-uppercase fw-bold company_name"><span style="font-size: 14px;">Arfan Familys</span> <br> <span class="p">Smiling Baby Foundation</span></p>
            </div>
            <!-- <img src="img/logo.png" alt="Logo"> -->
        </a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarCollapse">
            <span class="fa fa-bars"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarCollapse">
            <div class="navbar-nav ms-auto py-0">
                <a href="<?php echo ($ROOT . '/') ?>" class="nav-item nav-link <?php echo ($_SERVER['PHP_SELF']) == "$SHORT_ROOT/index.php" ? 'active' : ''; ?> fw-bold">Home</a>
                <a href="<?php echo ($ROOT . '/layouts/about') ?>" class="nav-item nav-link <?php echo ($_SERVER['PHP_SELF']) == "$SHORT_ROOT/layouts/about/index.php" ? 'active' : ''; ?> fw-bold">At a Glance</a>
                <a href="<?php echo ($ROOT . '/layouts/event') ?>" class="nav-item nav-link <?php echo ($_SERVER['PHP_SELF']) == "$SHORT_ROOT/layouts/event/index.php" ? 'active' : ''; ?> fw-bold">Event</a>
                <a href="<?php echo ($ROOT . '/layouts/project') ?>" class="nav-item nav-link <?php echo ($_SERVER['PHP_SELF']) == "$SHORT_ROOT/layouts/project/index.php" ? 'active' : ''; ?> fw-bold">Project</a>
                <!-- <a href="<?php echo ($ROOT . '/layouts/service') ?>" class="nav-item nav-link <?php echo ($_SERVER['PHP_SELF']) == "$SHORT_ROOT/layouts/service/index.php" ? 'active' : ''; ?> fw-bold">Services</a> -->
                <a href="<?php echo ($ROOT . '/layouts/gallery') ?>" class="nav-item nav-link <?php echo ($_SERVER['PHP_SELF']) == "$SHORT_ROOT/layouts/gallery/index.php" ? 'active' : ''; ?> fw-bold">Gallery</a>
                <a href="<?php echo ($ROOT . '/layouts/blog') ?>" class="nav-item nav-link <?php echo ($_SERVER['PHP_SELF']) == "$SHORT_ROOT/layouts/blog/index.php" ? 'active' : ''; ?> fw-bold">Blog</a>
                <!-- <div class="nav-item dropdown">
                    <a href="#" class="nav-link dropdown-toggle <?php echo (($_SERVER['PHP_SELF']) == "$SHORT_ROOT/layouts/destination/index.php") || (($_SERVER['PHP_SELF']) == "$SHORT_ROOT/layouts/booking/index.php") || (($_SERVER['PHP_SELF']) == "$SHORT_ROOT/layouts/team/index.php") || (($_SERVER['PHP_SELF']) == "$SHORT_ROOT/layouts/testimonial/index.php") || (($_SERVER['PHP_SELF']) == "$SHORT_ROOT/layouts/404/index.php") ? 'active' : ''; ?>" data-bs-toggle="dropdown">Pages</a>
                    <div class="dropdown-menu m-0">
                        <a href="<?php echo ($ROOT . '/layouts/destination') ?>" class="dropdown-item <?php echo ($_SERVER['PHP_SELF']) == "$SHORT_ROOT/layouts/destination/index.php" ? 'active' : ''; ?> fw-bold">Destination</a>
                        <a href="<?php echo ($ROOT . '/layouts/booking') ?>" class="dropdown-item <?php echo ($_SERVER['PHP_SELF']) == "$SHORT_ROOT/layouts/booking/index.php" ? 'active' : ''; ?> fw-bold">Booking</a>
                        <a href="<?php echo ($ROOT . '/layouts/team') ?>" class="dropdown-item <?php echo ($_SERVER['PHP_SELF']) == "$SHORT_ROOT/layouts/team/index.php" ? 'active' : ''; ?> fw-bold">Travel Guides</a>
                        <a href="<?php echo ($ROOT . '/layouts/testimonial') ?>" class="dropdown-item <?php echo ($_SERVER['PHP_SELF']) == "$SHORT_ROOT/layouts/testimonial/index.php" ? 'active' : ''; ?> fw-bold">Testimonial</a>
                        <a href="<?php echo ($ROOT . '/layouts/404') ?>" class="dropdown-item <?php echo ($_SERVER['PHP_SELF']) == "$SHORT_ROOT/layouts/404/index.php" ? 'active' : ''; ?> fw-bold">404 Page</a>
                    </div>
                </div> -->
                <a href="<?php echo ($ROOT . '/layouts/contact') ?>" class="nav-item nav-link <?php echo ($_SERVER['PHP_SELF']) == "$SHORT_ROOT/layouts/contact/index.php" ? 'active' : ''; ?> fw-bold">Contact Us</a>
            </div>
            <!-- <a href="" class="btn btn-primary rounded-pill py-2 px-4">Register</a> -->
            <a href="<?php echo ($ROOT . '/layouts/donation') ?>" class="donate btn-donate">Donate Here</a>
        </div>
    </nav>