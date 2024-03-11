<?php require_once('../../../constants/set_names.php'); ?>
<?php include_once('../../linker.php') ?>

<body>
    <?php include_once('../../spinner.php') ?>

    <?php include_once('../../header.php') ?>

    <div class="container-fluid bg-primary py-5 mb-5 hero-header">
        <div class="container py-5">
            <div class="row justify-content-center py-5">
                <div class="col-lg-10 pt-lg-5 mt-lg-5 text-center">
                    <h1 class="fs-1 text-white animated slideInDown">Blog Details</h1>
                    <nav aria-label="breadcrumb">
                        <ol class="breadcrumb justify-content-center">
                            <li class="breadcrumb-item"><a href="#">Home</a></li>
                            <li class="breadcrumb-item"><a href="#">Pages</a></li>
                            <li class="breadcrumb-item"><a href="#">Blog</a></li>
                            <li class="breadcrumb-item text-white active" aria-current="page">Details</li>
                        </ol>
                    </nav>
                </div>
            </div>
        </div>
    </div>
    </div>
    <!-- Navbar & Hero End -->


    <!-- Contact Start -->
    <div class="container-xxl py-5">
        <div class="container">
            <div class="text-center wow fadeInUp" data-wow-delay="0.1s">
                <h6 class="section-title bg-white text-center text-primary px-3">Blog Details</h6>
                <h1 class="mb-5">Our Blog Details</h1>
            </div>
            <div class="row justify-content-center g-4 wow fadeInUp" data-wow-delay="0.1s">
                <div class="" style="width: 100vw;">
                    <img src="<?php echo ($ROOT . '/assets/img/package-1.jpg') ?>" alt="<?php echo $image; ?>" style="width: 100%; height: 50vh; object-fit: cover;">
                </div>
                <div class="col">
                    <div class="card">
                        <div class="card-body">
                            <div class="">
                                <h3>Lorem ipsum dolor sit.</h3>
                                <p>Tempor erat elitr rebum at clita. Diam dolor diam ipsum sit diam amet diam eos</p>
                            </div>
                            <div class="row justify-content-center align-items-center">

                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Contact End -->


    <?php include_once('../../footer.php') ?>

</body>

</html>