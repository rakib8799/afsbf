<?php
/*
Author: Javed Ur Rehman
Website: https://www.allphptricks.com
*/
require_once 'stripe_header.php';
// Include the database connection file 
require_once('../../database/connection.php');

$payment = !empty($jsonObj->payment_intent) ? $jsonObj->payment_intent : '';
$customer_id = !empty($jsonObj->customer_id) ? $jsonObj->customer_id : '';

// Retrieve customer information from stripe
try {
    $customerData = \Stripe\Customer::retrieve($customer_id);
} catch (Exception $e) {
    $error = $e->getMessage();
}

if (empty($error)) {
    // If transaction was successful
    if (!empty($payment) && $payment->status == 'succeeded') {
        // Retrieve transaction details
        $transaction_id = $payment->id;
        $amount = ($payment->amount) / 100;
        $currency = $payment->currency;
        $payment_status = $payment->status;

        $fullname = $email = '';
        // $mobile = $address = '';
        if (!empty($customerData)) {
            if (!empty($customerData->name)) {
                $fullname = $customerData->name;
            }
            if (!empty($customerData->email)) {
                $email = $customerData->email;
            }
            // if (!empty($customerData->mobile)) {
            //     $mobile = $customerData->mobile;
            // }
            // if (!empty($customerData->address)) {
            //     $address = $customerData->address;
            // }
        }

        // Check if transaction data is already exists in DB with the same Transaction ID 
        $selectSql = "SELECT `id` FROM `stripe_payment` WHERE `transaction_id`='$transaction_id'";
        $resultQuery = mysqli_query($conn, $selectSql);
        $row = mysqli_fetch_assoc($resultQuery);
        if (empty($row)) {
            // Insert transaction data into the `stripe_payment` database table
            $insertSql = "INSERT INTO `stripe_payment` (`fullname`, `email`, `title`, `currency`, `amount`, `transaction_id`,  `payment_status`) VALUES ('$fullname', '$email', 'Quick Donation-$transaction_id', '$currency', '$amount', '$transaction_id', '$payment_status')";
            // $insertSql = "INSERT INTO `stripe_payment` (`fullname`, `email`, `mobile`, `address`, `title`, `currency`, `amount`, `transaction_id`,  `payment_status`) VALUES ('$fullname', '$email', '$mobile', '$address', 'Quick Donation-$transaction_id', '$currency', '$amount', '$transaction_id', '$payment_status')";
            $resultInsertQuery = mysqli_query($conn, $insertSql);
        }
        $output = [
            'transaction_id' => $transaction_id
        ];
        echo json_encode($output);
    } else {
        http_response_code(500);
        echo json_encode(['error' => 'Transaction has been failed!']);
    }
} else {
    http_response_code(500);
    echo json_encode(['error' => $error]);
}
