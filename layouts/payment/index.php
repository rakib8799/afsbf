<?php require_once('../../constants/set_names.php'); ?>
<?php require_once('../../database/connection.php') ?>

<?php
# Organize the submitted/inputted data
if (isset($_GET['id'])) {
    $id = $_GET['id'];

    $select_from_new_paper = "SELECT * FROM `donation` WHERE `id`='$id'";
    $run_select_from_new_paper = mysqli_query($conn, $select_from_new_paper);
    if (mysqli_num_rows($run_select_from_new_paper) > 0) {
        $row = mysqli_fetch_assoc($run_select_from_new_paper);
        // print_r($row);
        // die;
        // extract($row);

        $post_data = array();

        $post_data['store_id'] = 'test65dc842f5f70e';
        $post_data['store_passwd'] = 'test65dc842f5f70e@ssl';

        $post_data['total_amount'] = isset($row['amount']) ? $row['amount'] : "1000";
        $post_data['currency'] = isset($row['currency']) ? $row['currency'] : "BDT";
        $post_data['tran_id'] = "SSLCZ_TEST_" . uniqid();
        $post_data['success_url'] = "$ROOT/layouts/payment/success.php";
        $post_data['fail_url'] = "$ROOT/layouts/payment/fail.php";
        $post_data['cancel_url'] = "$ROOT/layouts/payment/cancel.php";
        # $post_data['multi_card_name'] = "mastercard,visacard,amexcard";  # DISABLE TO DISPLAY ALL AVAILABLE


        # CUSTOMER INFORMATION
        $post_data['cus_name'] = isset($row['user_name']) ? $row['user_name'] : "John Doe";
        $post_data['cus_email'] = isset($row['user_email']) ? $row['user_email'] : "john.doe@email.com";
        // $post_data['cus_add1'] = isset($row['main_address']) ? $row['main_address'] : "Dhaka";
        // $post_data['cus_add2'] = isset($row['optional_address']) ? $row['optional_address'] : "Dhaka";
        // $post_data['cus_city'] = isset($row['city']) ? $row['city'] : "Dhaka";
        // $post_data['cus_state'] = isset($row['state']) ? $row['state'] : "Dhaka";
        // $post_data['cusrowcode'] = isset($row['postcode']) ? $row['postcode'] : "1000";
        $post_data['cus_country'] = isset($row['user_country']) ? $row['user_country'] : "Bangladesh";
        $post_data['cus_phone'] = isset($row['user_phone']) ? $row['user_phone'] : "01727027277";
        // $post_data['cus_fax'] = isset($row['fax']) ? $row['fax'] : "01727027277";

        # SHIPMENT INFORMATION
        // $post_data["shipping_method"] = "YES";
        // $post_data['ship_name'] = "Store Test";
        // $post_data['ship_add1'] = "Dhaka";
        // $post_data['ship_add2'] = "Dhaka";
        // $post_data['ship_city'] = "Dhaka";
        // $post_data['ship_state'] = "Dhaka";
        // $post_data['shiprowcode'] = "1000";
        // $post_data['ship_phone'] = "";
        // $post_data['ship_country'] = "Bangladesh";

        // $post_data['emi_option'] = "1";
        // $post_data["product_category"] = "Electronic";
        // $post_data["product_profile"] = "general";
        // $post_data["product_name"] = "Computer";
        // $post_data["num_of_item"] = "1";


        # REQUEST SEND TO SSLCOMMERZ
        $direct_api_url = "https://sandbox.sslcommerz.com/gwprocess/v3/api.php";

        $handle = curl_init();
        curl_setopt($handle, CURLOPT_URL, $direct_api_url);
        curl_setopt($handle, CURLOPT_TIMEOUT, 30);
        curl_setopt($handle, CURLOPT_CONNECTTIMEOUT, 30);
        curl_setopt($handle, CURLOPT_POST, 1);
        curl_setopt($handle, CURLOPT_POSTFIELDS, $post_data);
        curl_setopt($handle, CURLOPT_RETURNTRANSFER, true);
        curl_setopt($handle, CURLOPT_SSL_VERIFYPEER, FALSE); # KEEP IT FALSE IF YOU RUN FROM LOCAL PC


        $content = curl_exec($handle);

        $code = curl_getinfo($handle, CURLINFO_HTTP_CODE);

        if ($code == 200 && !(curl_errno($handle))) {
            curl_close($handle);
            $sslcommerzResponse = $content;
        } else {
            curl_close($handle);
            echo "FAILED TO CONNECT WITH SSLCOMMERZ API";
            exit;
        }

        # PARSE THE JSON RESPONSE
        $sslcz = json_decode($sslcommerzResponse, true);

        if (isset($sslcz['GatewayPageURL']) && $sslcz['GatewayPageURL'] != "") {
            # THERE ARE MANY WAYS TO REDIRECT - Javascript, Meta Tag or Php Header Redirect or Other
            # echo "<script>window.location.href = '". $sslcz['GatewayPageURL'] ."';</script>";
            echo "<meta http-equiv='refresh' content='0;url=" . $sslcz['GatewayPageURL'] . "'>";
            # header("Location: ". $sslcz['GatewayPageURL']);
            exit;
        } else {
            echo "JSON Data parsing error!";
        }
    }
}
