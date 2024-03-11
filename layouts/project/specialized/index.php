<?php require_once('../../../constants/set_names.php'); ?>
<?php require_once('../../../database/connection.php') ?>

<?php include_once('../../linker.php') ?>

<?php
if (isset($_POST['submit'])) {
    extract($_POST);

    if (!empty($_FILES['user_image']['name'])) {
        $user_image_name = $_FILES['user_image']['name'];
        $user_image_tmp_name = $_FILES['user_image']['tmp_name'];
        $image_size = $_FILES['user_image']['size'];

        $path_info = strtolower(pathinfo($user_image_name, PATHINFO_EXTENSION));
        $user_image_name = uniqid() . ".$path_info";

        $arr = array("jpg", "png", "jpeg");
        if (!in_array($path_info, $arr)) {
            echo "<p class='text-danger text-bold text-center fs-5 mt-3'>Image format is not supported</p>";
        } else if ($image_size >= 5242880) {
            echo "<p class='text-danger text-bold text-center fs-5 mt-3'>Image size cannot be larger than 5 MB</p>";
        } else {
            $timestamps = date("Y-m-d h:i:s", time());

            if (isset($_GET['id'])) {
                $id = $_GET['id'] ? $_GET['id'] : '';
            }

            $insert_sql = "INSERT INTO `comments`(`project_id`,`comment`,`user_name`,`user_email`,`user_image`,`created_at`) VALUES('$id','$comment','$user_name','$user_email','$user_image_name','$timestamps')";
            $run_insert_qry = mysqli_query($conn, $insert_sql);
            if ($run_insert_qry) {
                move_uploaded_file($user_image_tmp_name, "../../../assets/img/user/" . $user_image_name);
                echo "<script>
                    alert('Your Comment is successfully submitted');
                    if ( window.history.replaceState ) {
                        window.history.replaceState( null, null, window.location.href );
                    }
                </script>";
            } else {
                echo "<p class='text-danger text-bold text-center fs-5 mt-3'>No data is inserted</p>";
            }
        }
    } else {
        echo "<p class='text-danger text-bold text-center fs-5 mt-3'>Image is not found</p>";
    }
}
?>

<body>
    <?php include_once('../../spinner.php') ?>

    <?php include_once('../../header.php') ?>

    <div class="container-fluid bg-primary py-5 mb-5 hero-header">
        <div class="container py-5">
            <div class="row justify-content-center py-5">
                <div class="col-lg-10 pt-lg-5 mt-lg-5 text-center">
                    <h1 class="fs-1 text-white animated slideInDown">Project Details</h1>
                    <nav aria-label="breadcrumb">
                        <ol class="breadcrumb justify-content-center">
                            <li class="breadcrumb-item"><a href="#">Home</a></li>
                            <li class="breadcrumb-item"><a href="#">Pages</a></li>
                            <li class="breadcrumb-item"><a href="#">Project</a></li>
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
                <h6 class="section-title bg-white text-center px-3">Specialized Project Details</h6>
                <h1 class="mb-5 text-primary">Our Specialized Project Details</h1>
            </div>
            <div class="row justify-content-center g-4 wow fadeInUp" data-wow-delay="0.1s">
                <div class="" style="width: 100vw;">
                    <!-- <img src="<?php echo ($ROOT . '/assets/img/project/' . $image) ?>" alt="<?php echo $image; ?>" style="width: 100%; height: 50vh; object-fit: cover;"> -->
                    <img class="img-fluid" style="width: 100%; max-height: 50vh;" src="<?php echo ($ROOT . '/assets/img/project/featured/1.png') ?>" alt="">
                </div>
                <div class="col">
                    <div class="card">
                        <div class="card-body">
                            <div class="">
                                <h1 class="mb-4 text-primary">Specialized <span class="">Children Hospital</span></h1>
                                <p class="mb-4">Thousand of unprivileged, orphan, distressed, victim and street children will get full-free specialized medical treatment.</p>
                                <p><span class="fw-bold">Place:</span> Balipara Road, Darirampur, Trishal, Mymensingh-2220, Bangladesh.</p>
                                <p><span class="fw-bold">Beneficiaries:</span> Unprivileged, Orphan, Distressed, Victim and Street Children.</p>
                                <p><span class="fw-bold">Deliverable:</span> Full Free Specialized Medical Treatment.</p>
                                <p><span class="fw-bold">Estimated Budget:</span> AUD 3.25K</p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="row align-items-center g-4 mt-4">
                <!--START comment form-->
                <div class="col wow fadeInUp" data-wow-delay="0.1s">
                    <h3>Leave a Reply</h3>
                    <form action="" method="post" enctype="multipart/form-data">
                        <p><span>Your email address will not be published.</span> <span>Required fields are marked <span>*</span></span></p>
                        <p><label for="comment">Comment <span>*</span></label> <textarea id="comment" name="comment" cols="45" rows="8" maxlength="65525" required="required" class="form-control"></textarea></p>
                        <p><label for="user_name">Name <span>*</span></label> <input id="user_name" name="user_name" type="text" size="30" maxlength="245" autocomplete="name" required="required" class="form-control" /></p>
                        <p><label for="user_email">Email <span>*</span></label> <input id="user_email" name="user_email" type="text" size="30" maxlength="100" aria-describedby="email-notes" autocomplete="email" required="required" class="form-control" /></p>
                        <p><label for="user_image">Profile Picture</label> <input type="file" name="user_image" id="user_image" required class="form-control"></p>
                        <p class="form-submit"><input name="submit" type="submit" id="submit" class="submit btn-style" value="Post Comment" /> <input type='hidden' name='comment_post_ID' value='57' id='comment_post_ID' />
                            <input type='hidden' name='comment_parent' id='comment_parent' value='0' />
                        </p>
                    </form>
                </div>
                <!--END comment form-->
            </div>

            <div class="row g-4 mt-4">
                <div class="col wow fadeInUp" data-wow-delay="0.1s">
                    <h2>All Comments</h2>
                    <?php
                    if (isset($_GET['id'])) {
                        $select_from_new_paper = "SELECT `id` FROM `projects` WHERE `id`='$id'";
                        $run_select_from_new_paper = mysqli_query($conn, $select_from_new_paper);
                        if (mysqli_num_rows($run_select_from_new_paper) > 0) {
                            $row = mysqli_fetch_assoc($run_select_from_new_paper);

                            $select_from_new_paper1 = "SELECT * FROM `comments` WHERE `project_id`='$row[id]'";
                            $run_select_from_new_paper1 = mysqli_query($conn, $select_from_new_paper1);
                            if (mysqli_num_rows($run_select_from_new_paper1) > 0) {
                                while ($row1 = mysqli_fetch_assoc($run_select_from_new_paper1)) {
                                    extract($row1);
                    ?>
                                    <div class="card w-75">
                                        <div class="d-flex">
                                            <div class="d-flex align-items-center">
                                                <img src="<?php echo ($ROOT . '/assets/img/user/' . $user_image) ?>" alt="<?php echo $user_image; ?>" class="img-fluid" style="width: 50px; height: 50px; border-radius: 50%;">
                                            </div>
                                            <div class="card-body">
                                                <h5 class="card-title"><?php echo $user_name; ?></h5>
                                                <p class="card-text"><?php echo $comment; ?></p>
                                            </div>
                                        </div>

                                    </div>
                    <?php
                                }
                            }
                        }
                    }
                    ?>
                </div>
            </div>
        </div>
    </div>
    <!-- Contact End -->


    <?php include_once('../../footer.php') ?>

</body>

</html>