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
                    <h1 class="display-3 text-white animated slideInDown">Projects</h1>
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
                <h1 class="mb-5 text-primary">Our Projects</h1>
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
                                    <img src="<?php echo ($ROOT . '/assets/img/project/' . $image) ?>" alt="<?php echo $image; ?>" class="img-fluid" style="height: 30vh; object-fit: contain;" />
                                </div>
                                <div class="text-justify p-4">
                                    <h4 class="mb-2 d-flex align-items-center" style="height: 7vh;"><?php echo $title; ?></h4>
                                    <p><?php if (strlen($details) < 100) {
                                            echo $details;
                                        } else {
                                            echo (mb_substr($details, 0, 99) . "...");
                                        } ?>
                                    </p>
                                    <div class="d-flex justify-content-start mb-2">
                                        <a href="<?php echo ($ROOT . '/layouts/project/details?id=' . $id) ?>" class="btn btn-sm btn-primary px-3 border-end" style="border-radius: 30px 0 0 30px;">Read More</a>
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