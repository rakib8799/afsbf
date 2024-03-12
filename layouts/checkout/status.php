<?php require_once('../../constants/set_names.php'); ?>
<?php include_once('../linker.php') ?>
<?php require_once '../../constants/config.php'; ?>
<?php require_once('../../database/connection.php'); ?>

<?php
// If transaction ID is not empty 
if (!empty($_GET['tid'])) {
    $transaction_id  = $_GET['tid'];

    // Fetch the transaction details from DB using Transaction ID
    $selectSql = "SELECT * FROM `stripe_payment` WHERE `transaction_id`='$transaction_id'";
    $resultQuery = mysqli_query($conn, $selectSql);
    $row = mysqli_fetch_assoc($resultQuery);
    if (!empty($row)) {
        $fullname = $row['fullname'];
        $email = $row['email'];
        // $mobile = $row['mobile'];
        // $address = $row['address'];
        $title = $row['title'];
        $currency = $row['currency'];
        $amount = $row['amount'];
    }
} else {
    header("Location: $ROOT");
    exit();
}
?>

<body>
    <?php include_once('../spinner.php') ?>

    <?php include_once('../header.php') ?>

    <div class="container-fluid bg-primary py-5 mb-5 hero-header">
        <div class="container py-5">
            <div class="row justify-content-center py-5">
                <div class="col-lg-10 pt-lg-5 mt-lg-5 text-center">
                    <h1 class="fs-1 text-white animated slideInDown">Payment</h1>
                    <nav aria-label="breadcrumb">
                        <ol class="breadcrumb justify-content-center">
                            <li class="breadcrumb-item"><a href="#">Home</a></li>
                            <li class="breadcrumb-item"><a href="#">Pages</a></li>
                            <li class="breadcrumb-item text-white active" aria-current="page">Payment</li>
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
                <h6 class="section-title bg-white text-center px-3">Payment</h6>
                <h1 class="mb-5 text-primary">Your Payment</h1>
            </div>
            <div class="row g-4 justify-content-center">
                <div class="col wow fadeInUp" data-wow-delay="0.1s">
                    <?php if (!empty($row)) { ?>
                        <h2 style="color: #327e00;">Success! Your payment has been received successfully.</h2>
                        <h3>Payment Receipt:</h3>
                        <p><strong>Full Name:</strong> <?php echo $fullname; ?></p>
                        <p><strong>Email:</strong> <?php echo $email; ?></p>
                        <!-- <p><strong>Mobile:</strong> <?php echo $mobile; ?></p>
                        <p><strong>Address:</strong> <?php echo $address; ?></p> -->
                        <p><strong>Transaction ID:</strong> <?php echo $transaction_id; ?></p>
                        <p><strong>Amount:</strong> <?php echo $amount . ' ' . $currency; ?></p>
                        <p><strong>Title:</strong> <?php echo $title; ?></p>
                    <?php } else { ?>
                        <h1>Error! Your transaction has been failed.</h1>
                    <?php } ?>
                </div>
            </div>
        </div>
    </div>
    <!-- Package End -->


    <?php include_once('../footer.php') ?>

</body>

</html>