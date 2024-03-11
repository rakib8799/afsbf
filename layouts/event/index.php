<?php require_once('../../database/connection.php'); ?>
<?php require_once('../../constants/set_names.php'); ?>
<?php include_once('../linker.php') ?>

<body>
    <?php include_once('../spinner.php') ?>

    <?php include_once('../header.php') ?>

    <div class="container-fluid bg-primary py-5 mb-5 hero-header">
        <div class="container py-5">
            <div class="row justify-content-center py-5">
                <div class="col-lg-10 pt-lg-5 mt-lg-5 text-center">
                    <h1 class="fs-1 text-white animated slideInDown">Events</h1>
                    <nav aria-label="breadcrumb">
                        <ol class="breadcrumb justify-content-center">
                            <li class="breadcrumb-item"><a href="">Home</a></li>
                            <li class="breadcrumb-item"><a href="">Pages</a></li>
                            <li class="breadcrumb-item text-white active" aria-current="page">Events</li>
                        </ol>
                    </nav>
                </div>
            </div>
        </div>
    </div>
    </div>
    <!-- Navbar & Hero End -->


    <!-- Package Start -->
    <div class="container-xxl py-5">
        <div class="container">
            <div class="text-center wow fadeInUp" data-wow-delay="0.1s">
                <h6 class="section-title bg-white text-center px-3">Events</h6>
                <h1 class="mb-5 text-primary">Our Events</h1>
            </div>
            <div class="row g-4 justify-content-center">
                <div class="col-lg-4 col-md-6 wow fadeInUp" data-wow-delay="0.1s">
                    <div class="package-item">
                        <!-- <div class="overflow-hidden">
                        <img class="img-fluid" src="<?php echo ($ROOT . '/assets/img/package-1.jpg') ?>" alt="">
                    </div> -->
                        <!-- <div class="d-flex border-bottom">
                        <small class="flex-fill text-center border-end py-2"><i class="fa fa-map-marker-alt text-primary me-2"></i>Thailand</small>
                        <small class="flex-fill text-center border-end py-2"><i class="fa fa-calendar-alt text-primary me-2"></i>3 days</small>
                        <small class="flex-fill text-center py-2"><i class="fa fa-user text-primary me-2"></i>2 Person</small>
                    </div> -->
                        <div class="p-4">
                            <span class="text-orange fw-bold">23 - 24 Feb 2024</span>
                            <h3 class="mb-2">Global Education Expo 2024</h3>
                            <!-- <div class="mb-3">
                            <small class="fa fa-star text-primary"></small>
                            <small class="fa fa-star text-primary"></small>
                            <small class="fa fa-star text-primary"></small>
                            <small class="fa fa-star text-primary"></small>
                            <small class="fa fa-star text-primary"></small>
                        </div> -->
                            <p><i class="fa fa-map-marker-alt text-primary me-2"></i>Trade Show <br><span><i class="fa fa-map-marker-alt text-primary me-2"></i>Bangabandhu International Conference Center, Dhaka, Bangladesh</span></p>

                            <div class="d-flex justify-content-start mb-2">
                                <a href="<?php echo ($ROOT . '/layouts/event/details/?id=1') ?>" class="btn-style">Read More</a>
                                <!-- <a href="<?php echo ($ROOT . '/layouts/event/details/?id=1') ?>" class="btn btn-sm btn-primary px-3" style="border-radius: 0 30px 30px 0;">Book Now</a> -->
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4 col-md-6 wow fadeInUp" data-wow-delay="0.1s">
                    <div class="package-item">
                        <!-- <div class="overflow-hidden">
                        <img class="img-fluid" src="<?php echo ($ROOT . '/assets/img/package-1.jpg') ?>" alt="">
                    </div> -->
                        <!-- <div class="d-flex border-bottom">
                        <small class="flex-fill text-center border-end py-2"><i class="fa fa-map-marker-alt text-primary me-2"></i>Thailand</small>
                        <small class="flex-fill text-center border-end py-2"><i class="fa fa-calendar-alt text-primary me-2"></i>3 days</small>
                        <small class="flex-fill text-center py-2"><i class="fa fa-user text-primary me-2"></i>2 Person</small>
                    </div> -->
                        <div class="p-4">
                            <span class="text-orange fw-bold">23 - 24 Feb 2024</span>
                            <h3 class="mb-2">Global Education Expo 2024</h3>
                            <!-- <div class="mb-3">
                            <small class="fa fa-star text-primary"></small>
                            <small class="fa fa-star text-primary"></small>
                            <small class="fa fa-star text-primary"></small>
                            <small class="fa fa-star text-primary"></small>
                            <small class="fa fa-star text-primary"></small>
                        </div> -->
                            <p><i class="fa fa-map-marker-alt text-primary me-2"></i>Trade Show <br><span><i class="fa fa-map-marker-alt text-primary me-2"></i>Bangabandhu International Conference Center, Dhaka, Bangladesh</span></p>

                            <div class="d-flex justify-content-start mb-2">
                                <a href="<?php echo ($ROOT . '/layouts/event/details/?id=1') ?>" class="btn-style">Read More</a>
                                <!-- <a href="<?php echo ($ROOT . '/layouts/event/details/?id=1') ?>" class="btn btn-sm btn-primary px-3" style="border-radius: 0 30px 30px 0;">Book Now</a> -->
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4 col-md-6 wow fadeInUp" data-wow-delay="0.1s">
                    <div class="package-item">
                        <!-- <div class="overflow-hidden">
                        <img class="img-fluid" src="<?php echo ($ROOT . '/assets/img/package-1.jpg') ?>" alt="">
                    </div> -->
                        <!-- <div class="d-flex border-bottom">
                        <small class="flex-fill text-center border-end py-2"><i class="fa fa-map-marker-alt text-primary me-2"></i>Thailand</small>
                        <small class="flex-fill text-center border-end py-2"><i class="fa fa-calendar-alt text-primary me-2"></i>3 days</small>
                        <small class="flex-fill text-center py-2"><i class="fa fa-user text-primary me-2"></i>2 Person</small>
                    </div> -->
                        <div class="p-4">
                            <span class="text-orange fw-bold">23 - 24 Feb 2024</span>
                            <h3 class="mb-2">Global Education Expo 2024</h3>
                            <!-- <div class="mb-3">
                            <small class="fa fa-star text-primary"></small>
                            <small class="fa fa-star text-primary"></small>
                            <small class="fa fa-star text-primary"></small>
                            <small class="fa fa-star text-primary"></small>
                            <small class="fa fa-star text-primary"></small>
                        </div> -->
                            <p><i class="fa fa-map-marker-alt text-primary me-2"></i>Trade Show <br><span><i class="fa fa-map-marker-alt text-primary me-2"></i>Bangabandhu International Conference Center, Dhaka, Bangladesh</span></p>

                            <div class="d-flex justify-content-start mb-2">
                                <a href="<?php echo ($ROOT . '/layouts/event/details/?id=1') ?>" class="btn-style">Read More</a>
                                <!-- <a href="<?php echo ($ROOT . '/layouts/event/details/?id=1') ?>" class="btn btn-sm btn-primary px-3" style="border-radius: 0 30px 30px 0;">Book Now</a> -->
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4 col-md-6 wow fadeInUp" data-wow-delay="0.1s">
                    <div class="package-item">
                        <!-- <div class="overflow-hidden">
                        <img class="img-fluid" src="<?php echo ($ROOT . '/assets/img/package-1.jpg') ?>" alt="">
                    </div> -->
                        <!-- <div class="d-flex border-bottom">
                        <small class="flex-fill text-center border-end py-2"><i class="fa fa-map-marker-alt text-primary me-2"></i>Thailand</small>
                        <small class="flex-fill text-center border-end py-2"><i class="fa fa-calendar-alt text-primary me-2"></i>3 days</small>
                        <small class="flex-fill text-center py-2"><i class="fa fa-user text-primary me-2"></i>2 Person</small>
                    </div> -->
                        <div class="p-4">
                            <span class="text-orange fw-bold">23 - 24 Feb 2024</span>
                            <h3 class="mb-2">Global Education Expo 2024</h3>
                            <!-- <div class="mb-3">
                            <small class="fa fa-star text-primary"></small>
                            <small class="fa fa-star text-primary"></small>
                            <small class="fa fa-star text-primary"></small>
                            <small class="fa fa-star text-primary"></small>
                            <small class="fa fa-star text-primary"></small>
                        </div> -->
                            <p><i class="fa fa-map-marker-alt text-primary me-2"></i>Trade Show <br><span><i class="fa fa-map-marker-alt text-primary me-2"></i>Bangabandhu International Conference Center, Dhaka, Bangladesh</span></p>

                            <div class="d-flex justify-content-start mb-2">
                                <a href="<?php echo ($ROOT . '/layouts/event/details/?id=1') ?>" class="btn-style">Read More</a>
                                <!-- <a href="<?php echo ($ROOT . '/layouts/event/details/?id=1') ?>" class="btn btn-sm btn-primary px-3" style="border-radius: 0 30px 30px 0;">Book Now</a> -->
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4 col-md-6 wow fadeInUp" data-wow-delay="0.1s">
                    <div class="package-item">
                        <!-- <div class="overflow-hidden">
                        <img class="img-fluid" src="<?php echo ($ROOT . '/assets/img/package-1.jpg') ?>" alt="">
                    </div> -->
                        <!-- <div class="d-flex border-bottom">
                        <small class="flex-fill text-center border-end py-2"><i class="fa fa-map-marker-alt text-primary me-2"></i>Thailand</small>
                        <small class="flex-fill text-center border-end py-2"><i class="fa fa-calendar-alt text-primary me-2"></i>3 days</small>
                        <small class="flex-fill text-center py-2"><i class="fa fa-user text-primary me-2"></i>2 Person</small>
                    </div> -->
                        <div class="p-4">
                            <span class="text-orange fw-bold">23 - 24 Feb 2024</span>
                            <h3 class="mb-2">Global Education Expo 2024</h3>
                            <!-- <div class="mb-3">
                            <small class="fa fa-star text-primary"></small>
                            <small class="fa fa-star text-primary"></small>
                            <small class="fa fa-star text-primary"></small>
                            <small class="fa fa-star text-primary"></small>
                            <small class="fa fa-star text-primary"></small>
                        </div> -->
                            <p><i class="fa fa-map-marker-alt text-primary me-2"></i>Trade Show <br><span><i class="fa fa-map-marker-alt text-primary me-2"></i>Bangabandhu International Conference Center, Dhaka, Bangladesh</span></p>

                            <div class="d-flex justify-content-start mb-2">
                                <a href="<?php echo ($ROOT . '/layouts/event/details/?id=1') ?>" class="btn-style">Read More</a>
                                <!-- <a href="<?php echo ($ROOT . '/layouts/event/details/?id=1') ?>" class="btn btn-sm btn-primary px-3" style="border-radius: 0 30px 30px 0;">Book Now</a> -->
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4 col-md-6 wow fadeInUp" data-wow-delay="0.1s">
                    <div class="package-item">
                        <!-- <div class="overflow-hidden">
                        <img class="img-fluid" src="<?php echo ($ROOT . '/assets/img/package-1.jpg') ?>" alt="">
                    </div> -->
                        <!-- <div class="d-flex border-bottom">
                        <small class="flex-fill text-center border-end py-2"><i class="fa fa-map-marker-alt text-primary me-2"></i>Thailand</small>
                        <small class="flex-fill text-center border-end py-2"><i class="fa fa-calendar-alt text-primary me-2"></i>3 days</small>
                        <small class="flex-fill text-center py-2"><i class="fa fa-user text-primary me-2"></i>2 Person</small>
                    </div> -->
                        <div class="p-4">
                            <span class="text-orange fw-bold">23 - 24 Feb 2024</span>
                            <h3 class="mb-2">Global Education Expo 2024</h3>
                            <!-- <div class="mb-3">
                            <small class="fa fa-star text-primary"></small>
                            <small class="fa fa-star text-primary"></small>
                            <small class="fa fa-star text-primary"></small>
                            <small class="fa fa-star text-primary"></small>
                            <small class="fa fa-star text-primary"></small>
                        </div> -->
                            <p><i class="fa fa-map-marker-alt text-primary me-2"></i>Trade Show <br><span><i class="fa fa-map-marker-alt text-primary me-2"></i>Bangabandhu International Conference Center, Dhaka, Bangladesh</span></p>

                            <div class="d-flex justify-content-start mb-2">
                                <a href="<?php echo ($ROOT . '/layouts/event/details/?id=1') ?>" class="btn-style">Read More</a>
                                <!-- <a href="<?php echo ($ROOT . '/layouts/event/details/?id=1') ?>" class="btn btn-sm btn-primary px-3" style="border-radius: 0 30px 30px 0;">Book Now</a> -->
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Package End -->





    <?php include_once('../footer.php') ?>

</body>

</html>