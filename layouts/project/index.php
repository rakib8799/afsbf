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
                    <h1 class="fs-1 text-white animated slideInDown">Projects</h1>
                    <nav aria-label="breadcrumb">
                        <ol class="breadcrumb justify-content-center">
                            <li class="breadcrumb-item"><a href="#">Home</a></li>
                            <li class="breadcrumb-item"><a href="#">Pages</a></li>
                            <li class="breadcrumb-item text-white active" aria-current="page">Projects</li>
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
                <h6 class="section-title bg-white text-center px-3">Projects</h6>
                <h1 class="mb-3 text-primary">Our Specialized Projects</h1>
            </div>
            <div class="row g-4 justify-content-center">
                <div class="col-md-6 wow fadeInUp" data-wow-delay="0.1s">
                    <div class="package-item">
                        <div class="overflow-hidden">
                            <img class="img-fluid" src="<?php echo ($ROOT . '/assets/img/project/featured/1.png') ?>" alt="" style="width: 100%; max-height: 50vh;">
                        </div>
                        <div class="text-justify p-4">
                            <h2 class="mb-4 text-primary">Specialized <span>Children Hospital</span></h2>
                            <p class="mb-4">Thousand of unprivileged, orphan, distressed, victim and street children will get full-free specialized medical treatment.</p>
                            <p><span class="fw-bold">Place:</span> Balipara Road, Darirampur, Trishal, Mymensingh-2220, Bangladesh.</p>
                            <p><span class="fw-bold">Beneficiaries:</span> Unprivileged, Orphan, Distressed, Victim and Street Children.</p>
                            <p><span class="fw-bold">Deliverable:</span> Full Free Specialized Medical Treatment.</p>
                            <p><span class="fw-bold">Estimated Budget:</span> AUD 3.25K</p>
                            <div class="d-flex justify-content-start mb-2">
                                <a href="<?php echo ($ROOT . '/layouts/project/specialized') ?>" class="btn-style">Read More</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="text-center wow fadeInUp" data-wow-delay="0.1s">
                <h1 class="mt-5 mb-3 text-primary">More Projects</h1>
            </div>
            <div class="row g-4 justify-content-center">
                <?php
                $select_from_new_paper = "SELECT * FROM `projects`";
                $run_select_from_new_paper = mysqli_query($conn, $select_from_new_paper);
                if (mysqli_num_rows($run_select_from_new_paper) > 0) {
                    while ($row = mysqli_fetch_assoc($run_select_from_new_paper)) {
                        extract($row);
                ?>
                        <div class="col-lg-4 col-md-6 wow fadeInUp" data-wow-delay="0.1s">
                            <div class="package-item">
                                <div class="overflow-hidden">
                                    <img src="<?php echo ($ROOT . '/assets/img/project/' . $image) ?>" alt="<?php echo $image; ?>" class="img-fluid" style="height: 30vh; width: 100%;" />
                                </div>
                                <div class="text-justify p-4">
                                    <h5 class="mb-2 d-flex align-items-center" style="height: 7vh;"><?php echo $title; ?></h5>
                                    <p><?php if (strlen($details) < 100) {
                                            echo $details;
                                        } else {
                                            echo (mb_substr($details, 0, 99) . "...");
                                        } ?>
                                    </p>
                                    <div class="d-flex justify-content-start mb-2">
                                        <a href="<?php echo ($ROOT . '/layouts/project/details?id=' . $id) ?>" class="btn-style">Read More</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                <?php
                        $id++;
                    }
                }
                ?>
            </div>
        </div>
    </div>
    <!-- Package End -->





    <?php include_once('../footer.php') ?>

</body>

</html>