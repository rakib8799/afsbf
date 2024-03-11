<?php require_once('../../constants/set_names.php'); ?>
<?php require_once('../../database/connection.php') ?>
<?php include_once('../linker.php') ?>

<?php
if (isset($_POST['submit'])) {
    extract($_POST);
    $timestamps = date("Y-m-d h:i:s", time());

    $insert_sql = "INSERT INTO `donation`(`amount`,`currency`,`status`,`created_at`) VALUES ('$donate','$currency','Pending','$timestamps')";
    $run_insert_qry = mysqli_query($conn, $insert_sql);

    if ($run_insert_qry) {
        echo "<p class='text-success text-bold text-center fs-5 mt-3'>Donation is successfully submitted</p>";
        header("location: ../checkout");
    } else {
        echo "<p class='text-danger text-bold text-center fs-5 mt-3'>No data is inserted</p>";
    }
}
?>

<body>
    <?php include_once('../spinner.php') ?>

    <?php include_once('../header.php') ?>

    <div class="container-fluid bg-primary py-5 mb-5 hero-header">
        <div class="container py-5">
            <div class="row justify-content-center py-5">
                <div class="col-lg-10 pt-lg-5 mt-lg-5 text-center">
                    <h1 class="fs-1 text-white animated slideInDown">Donation</h1>
                    <nav aria-label="breadcrumb">
                        <ol class="breadcrumb justify-content-center">
                            <li class="breadcrumb-item"><a href="#">Home</a></li>
                            <li class="breadcrumb-item"><a href="#">Pages</a></li>
                            <li class="breadcrumb-item text-white active" aria-current="page">Donation</li>
                        </ol>
                    </nav>
                </div>
            </div>
        </div>
    </div>
    </div>
    <!-- Navbar & Hero End -->


    <!-- Donation Start -->
    <div class="container-xxl py-5">
        <div class="container">
            <div class="text-center wow fadeInUp" data-wow-delay="0.1s">
                <h6 class="section-title bg-white text-center px-3">Donation</h6>
                <h1 class="mb-2 text-primary">Donation For Any Query</h1>
            </div>
            <div class="row g-4 mt-3 text-center">
                <div class="col-lg-3 col-sm-6 wow fadeInUp" data-wow-delay="0.1s">
                    <div class="rounded pt-3">
                        <div class="p-4">
                            <i class="fa fa-3x fa-globe text-primary mb-4"></i>
                            <h5>Donations</h5>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3 col-sm-6 wow fadeInUp" data-wow-delay="0.3s">
                    <div class="rounded pt-3">
                        <div class="p-4">
                            <i class="fa fa-3x fa-hotel text-primary mb-4"></i>
                            <h5>Peace</h5>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3 col-sm-6 wow fadeInUp" data-wow-delay="0.5s">
                    <div class="rounded pt-3">
                        <div class="p-4">
                            <i class="fa fa-3x fa-user text-primary mb-4"></i>
                            <h5>Prayer</h5>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3 col-sm-6 wow fadeInUp" data-wow-delay="0.7s">
                    <div class="rounded pt-3">
                        <div class="p-4">
                            <i class="fa fa-3x fa-cog text-primary mb-4"></i>
                            <h5>Prevention</h5>
                        </div>
                    </div>
                </div>
            </div>
            <div class="row g-4">
                <div class="col-md-9 wow fadeInUp" data-wow-delay="0.1s">
                    <img class="img-fluid" src="<?php echo ($ROOT . '/assets/img/payment/1.png') ?>" alt="SSLCommerz-Pay-With-logo-All-Size-05-1536x797.png">
                </div>
                <div class="col-md-3 d-flex align-items-center wow fadeInUp" data-wow-delay="0.1s">
                    <form action="" method="post">
                        <div class="mt-3">
                            <label for="donate">Donate Now</label>
                            <input type="number" placeholder="Donate Now" class="form-control" name="donate" id="donate" required>
                        </div>
                        <div class="mt-3">
                            <label for="currency">Select your currency</label>
                            <select name="currency" id="currency" class="form-select" required>
                                <option value="BDT">BDT</option>
                                <option value="USD">US DOLLAR</option>
                            </select>
                        </div>
                        <input type="submit" value="Donate" name="submit" class="btn-style mt-3" style="background: #ff6d02">
                    </form>
                </div>
            </div>
        </div>
    </div>
    <!-- Contact End -->


    <?php include_once('../footer.php') ?>

</body>

</html>