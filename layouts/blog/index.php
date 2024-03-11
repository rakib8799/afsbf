<?php require_once('../../constants/set_names.php'); ?>
<?php include_once('../linker.php') ?>

<body>
    <?php include_once('../spinner.php') ?>

    <?php include_once('../header.php') ?>

    <div class="container-fluid bg-primary py-5 mb-5 hero-header">
        <div class="container py-5">
            <div class="row justify-content-center py-5">
                <div class="col-lg-10 pt-lg-5 mt-lg-5 text-center">
                    <h1 class="fs-1 text-white animated slideInDown">Blogs</h1>
                    <nav aria-label="breadcrumb">
                        <ol class="breadcrumb justify-content-center">
                            <li class="breadcrumb-item"><a href="#">Home</a></li>
                            <li class="breadcrumb-item"><a href="#">Pages</a></li>
                            <li class="breadcrumb-item text-white active" aria-current="page">Blogs</li>
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
                <h6 class="section-title bg-white text-center px-3">Blogs</h6>
                <h1 class="mb-5 text-primary">Latest Blogs</h1>
            </div>
            <div class="row g-4 justify-content-center">
                <div class="col-lg-4 col-md-6 wow fadeInUp" data-wow-delay="0.1s">
                    <div class="package-item">
                        <div class="overflow-hidden">
                            <img class="img-fluid" src="<?php echo ($ROOT . '/assets/img/package-1.jpg') ?>" alt="">
                        </div>
                        <div class="text-justify p-4">
                            <h3 class="mb-0">Lorem ipsum dolor sit.</h3>
                            <p>Tempor erat elitr rebum at clita. Diam dolor diam ipsum sit diam amet diam eos</p>
                            <div class="d-flex justify-content-start mb-2">
                                <a href="<?php echo ($ROOT . '/layouts/event/details/?id=1') ?>" class="btn-style">Read More</a>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4 col-md-6 wow fadeInUp" data-wow-delay="0.1s">
                    <div class="package-item">
                        <div class="overflow-hidden">
                            <img class="img-fluid" src="<?php echo ($ROOT . '/assets/img/package-1.jpg') ?>" alt="">
                        </div>
                        <div class="text-justify p-4">
                            <h3 class="mb-0">Lorem ipsum dolor sit.</h3>
                            <p>Tempor erat elitr rebum at clita. Diam dolor diam ipsum sit diam amet diam eos</p>
                            <div class="d-flex justify-content-start mb-2">
                                <a href="<?php echo ($ROOT . '/layouts/event/details/?id=1') ?>" class="btn-style">Read More</a>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4 col-md-6 wow fadeInUp" data-wow-delay="0.1s">
                    <div class="package-item">
                        <div class="overflow-hidden">
                            <img class="img-fluid" src="<?php echo ($ROOT . '/assets/img/package-1.jpg') ?>" alt="">
                        </div>
                        <div class="text-justify p-4">
                            <h3 class="mb-0">Lorem ipsum dolor sit.</h3>
                            <p>Tempor erat elitr rebum at clita. Diam dolor diam ipsum sit diam amet diam eos</p>
                            <div class="d-flex justify-content-start mb-2">
                                <a href="<?php echo ($ROOT . '/layouts/event/details/?id=1') ?>" class="btn-style">Read More</a>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4 col-md-6 wow fadeInUp" data-wow-delay="0.1s">
                    <div class="package-item">
                        <div class="overflow-hidden">
                            <img class="img-fluid" src="<?php echo ($ROOT . '/assets/img/package-1.jpg') ?>" alt="">
                        </div>
                        <div class="text-justify p-4">
                            <h3 class="mb-0">Lorem ipsum dolor sit.</h3>
                            <p>Tempor erat elitr rebum at clita. Diam dolor diam ipsum sit diam amet diam eos</p>
                            <div class="d-flex justify-content-start mb-2">
                                <a href="<?php echo ($ROOT . '/layouts/event/details/?id=1') ?>" class="btn-style">Read More</a>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4 col-md-6 wow fadeInUp" data-wow-delay="0.1s">
                    <div class="package-item">
                        <div class="overflow-hidden">
                            <img class="img-fluid" src="<?php echo ($ROOT . '/assets/img/package-1.jpg') ?>" alt="">
                        </div>
                        <div class="text-justify p-4">
                            <h3 class="mb-0">Lorem ipsum dolor sit.</h3>
                            <p>Tempor erat elitr rebum at clita. Diam dolor diam ipsum sit diam amet diam eos</p>
                            <div class="d-flex justify-content-start mb-2">
                                <a href="<?php echo ($ROOT . '/layouts/event/details/?id=1') ?>" class="btn-style">Read More</a>
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