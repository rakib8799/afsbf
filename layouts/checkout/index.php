<?php require_once('../../constants/set_names.php'); ?>
<?php include_once('../linker.php') ?>
<?php require_once '../../constants/config.php'; ?>

<body>
    <?php include_once('../spinner.php') ?>

    <?php include_once('../header.php') ?>

    <div class="container-fluid bg-primary py-5 mb-5 hero-header">
        <div class="container py-5">
            <div class="row justify-content-center py-5">
                <div class="col-lg-10 pt-lg-5 mt-lg-5 text-center">
                    <h1 class="fs-1 text-white animated slideInDown">Checkout</h1>
                    <nav aria-label="breadcrumb">
                        <ol class="breadcrumb justify-content-center">
                            <li class="breadcrumb-item"><a href="#">Home</a></li>
                            <li class="breadcrumb-item"><a href="#">Pages</a></li>
                            <li class="breadcrumb-item text-white active" aria-current="page">Checkout</li>
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
            <!-- Display status message -->
            <div id="stripe-payment-message" class="hidden"></div>

            <div class="text-center wow fadeInUp" data-wow-delay="0.1s">
                <h6 class="section-title bg-white text-center px-3">Checkout</h6>
                <h1 class="mb-5 text-primary">Your Checkout</h1>
            </div>
            <form id="stripe-payment-form" class="hidden">
                <div class="row g-4 justify-content-center">
                    <div class="col-md-6 wow fadeInUp" data-wow-delay="0.1s">
                        <h3 class="mb-3 text-center">Enter Your Information</h3>
                        <div class="card shadow p-5 mb-5">
                            <div class="form-group">
                                <label for="fullname"><strong>Full Name</strong></label>
                                <input type="text" id="fullname" class="form-control" required>
                            </div>
                            <div class="form-group">
                                <label for="email"><strong>Email Address</strong></label>
                                <input type="email" id="email" class="form-control" required>
                            </div>
                            <!-- <div class="form-group">
                                <label for="mobile"><strong>Mobile Number</strong></label>
                                <input type="tel" id="mobile" class="form-control" required>
                            </div>
                            <div class="form-group">
                                <label for="address"><strong>Address</strong></label>
                                <input type="text" id="address" class="form-control" required>
                            </div> -->
                            <div class="form-group">
                                <label for="amount"><strong>Amount</strong></label>
                                <input type="number" id="amount" class="form-control" required>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-6 wow fadeInUp" data-wow-delay="0.1s">
                        <h3 class="mb-3 text-center">Enter Payment Information</h3>
                        <div class="card shadow p-5 mb-5">
                            <input type='hidden' id='publishable_key' value='<?php echo STRIPE_PUBLISHABLE_KEY; ?>'>
                            <div id="stripe-payment-element">
                                <!--Stripe.js will inject the Payment Element here to get card details-->
                            </div>

                            <button id="submit-button" class="btn-donate">
                                <div class="spinner hidden" id="spinner"></div>
                                <span id="submit-text">Pay Now</span>
                            </button>

                            <!-- Display the payment processing -->
                            <div id="payment_processing" class="hidden">
                                <span class="loader"></span> Please wait! Your payment is processing...
                            </div>

                            <!-- Display the payment reinitiate button -->
                            <div id="payment-reinitiate" class="hidden">
                                <button class="btn btn-primary" onclick="reinitiateStripe()">Reinitiate Payment</button>
                            </div>

                            <br>
                            <div style="clear:both;"></div>
                            <p><strong>List of Testing Credit Cards Details</strong></p>
                            <p>Use the following Sandbox environment testing credit cards details to test the payment process.</p>
                            <p>
                            <ul style="padding-left: 20px;">
                                <li>Successful Payment Card VISA (Without 3D Secure) - 4242424242424242</li>
                                <li>Requires Authentication Card VISA (With 3D Secure) - 4000002500003155</li>
                                <li>Failed Payment Card VISA - 4000000000009995</li>
                            </ul>
                            </p>
                            <p>Select any future valid expiration date (month/year) & CVC is <strong>123</strong>.</p>
                        </div>
                    </div>
                </div>
            </form>

        </div>
    </div>
    <!-- Package End -->


    <?php include_once('../footer.php') ?>

    <script src="https://js.stripe.com/v3/"></script>
    <script src="../../assets/js/stripe-checkout.js" defer></script>

</body>

</html>