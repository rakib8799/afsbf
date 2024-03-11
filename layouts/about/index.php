<?php require_once('../../constants/set_names.php'); ?>
<?php include_once('../linker.php') ?>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/viewerjs/1.11.6/viewer.min.css" integrity="sha512-za6IYQz7tR0pzniM/EAkgjV1gf1kWMlVJHBHavKIvsNoUMKWU99ZHzvL6lIobjiE2yKDAKMDSSmcMAxoiWgoWA==" crossorigin="anonymous" referrerpolicy="no-referrer" />

<body>
    <?php include_once('../spinner.php') ?>

    <?php include_once('../header.php') ?>

    <div class="container-fluid bg-primary mb-4 py-5 hero-header">
        <div class="container py-5">
            <div class="row justify-content-center py-5">
                <div class="col-lg-10 pt-lg-5 mt-lg-5 text-center">
                    <h1 class="fs-1 text-white animated slideInDown">About Us</h1>
                    <nav aria-label="breadcrumb">
                        <ol class="breadcrumb justify-content-center">
                            <li class="breadcrumb-item"><a href="#">Home</a></li>
                            <li class="breadcrumb-item"><a href="#">Pages</a></li>
                            <li class="breadcrumb-item text-white active" aria-current="page">About</li>
                        </ol>
                    </nav>
                </div>
            </div>
        </div>
    </div>
    </div>
    <!-- Navbar & Hero End -->


    <div class="container-xxl py-5">
        <div class="container wow fadeInUp" data-wow-delay="0.1s">
            <div class="row g-4">
                <div class="col-md-3 d-flex justify-content-center">
                    <img class="img-fluid" src="<?php echo ($ROOT . '/assets/img/logo/logo-7.png') ?>" alt="">
                </div>
                <div class="col-md-9 d-flex justify-content-center">
                    <img class="img-fluid" src="<?php echo ($ROOT . '/assets/img/logo/logo-3.png') ?>" alt="">
                </div>
            </div>
            <h2 class="mt-3 text-center text-primary fw-bolder">ARFAN FAMILYS SMILING BABY FOUNDATION</h2>
        </div>
    </div>

    <!-- About Start -->
    <div class="container-xxl">
        <div class="container">
            <div class="row g-4">
                <div class="col-lg-6 wow fadeInUp" data-wow-delay="0.1s" style="min-height: 400px;">
                    <div class="position-relative h-100">
                        <img class="img-fluid position-absolute w-100 h-100" src="<?php echo ($ROOT . '/assets/img/about.jpg') ?>" alt="" style="object-fit: cover;">
                    </div>
                </div>
                <div class="col-lg-6 wow fadeInUp" data-wow-delay="0.3s">
                    <h6 class="section-title bg-white text-start pe-3">About Us</h6>
                    <h3 class="mb-4 text-primary">For more than half a decade we have been working selflessly for helpless children</h3>
                    <p class="text-justify">
                        Arfan, a father who lost two daughters in early stage, founded SMILING BABY FOUNDATION. His vision is a world in which every child attains the right to survival, protection, development and participation.
                    </p>
                    <p class="text-justify">
                        ARFAN FAMILYS SMILING BABY FOUNDATION is a non-profitable distressed babies ‘foundation. It has first been established at Darirampur in Trishal, Mymensingh. The founder of this foundation lost his two daughters 9 and 30 days after their birth. Lack of proper treatment, negligence of doctors in hospital and financial inabilities might have been the cause of two daughters’ unfortunate death. Later on founder got a chance to study in Australia in Information Technology subject and settled in Australia.
                    </p>
                    <p class="text-justify">
                        Unfortunate death of two daughters’ always stirred the founder’s mind to do something for the poor, orphan and distressed babies in Bangladesh. The Smiling Baby Foundation is an endeavor to bring smiles on distressed and orphan babies face. The founder is very determined about his mission. He uses all his means to make the project successful. It was a really big challenge. He had had to suffer a lot but nothing can stop founder journey. He finds his two dead daughters in distressed babies. His father Abdur Rashid who is known as an honest and prospective person in society is directly helping with this humanitarian project.
                    </p>
                </div>
            </div>
        </div>
    </div>
    <!-- About End -->



    <!-- Team Start -->
    <div class="container-xxl py-5">
        <div class="container">
            <div class="text-center wow fadeInUp" data-wow-delay="0.1s">
                <h6 class="section-title bg-white text-center px-3">Members</h6>
                <h1 class="mb-5 text-primary">Meet Our Members</h1>
            </div>
            <div class="row g-4 d-flex justify-content-center">
                <div class="col-lg-4 col-md-6 wow fadeInUp" data-wow-delay="0.3s">
                    <div class="team-item">
                        <div class="overflow-hidden">
                            <img class="img-fluid" src="<?php echo ($ROOT . '/assets/img/team-2.jpg') ?>" alt="">
                        </div>
                        <!-- <div class="position-relative d-flex justify-content-center" style="margin-top: -19px;">
                            <a class="btn btn-square mx-1" href=""><i class="fab fa-facebook-f"></i></a>
                            <a class="btn btn-square mx-1" href=""><i class="fab fa-twitter"></i></a>
                            <a class="btn btn-square mx-1" href=""><i class="fab fa-instagram"></i></a>
                        </div> -->
                        <div class="text-center p-4">
                            <h5 class="mb-0">Full Name</h5>
                            <small>Designation</small>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4 col-md-6 wow fadeInUp" data-wow-delay="0.5s">
                    <div class="team-item">
                        <div class="overflow-hidden">
                            <img class="img-fluid" src="<?php echo ($ROOT . '/assets/img/team-3.jpg') ?>" alt="">
                        </div>
                        <!-- <div class="position-relative d-flex justify-content-center" style="margin-top: -19px;">
                            <a class="btn btn-square mx-1" href=""><i class="fab fa-facebook-f"></i></a>
                            <a class="btn btn-square mx-1" href=""><i class="fab fa-twitter"></i></a>
                            <a class="btn btn-square mx-1" href=""><i class="fab fa-instagram"></i></a>
                        </div> -->
                        <div class="text-center p-4">
                            <h5 class="mb-0">Full Name</h5>
                            <small>Designation</small>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4 col-md-6 wow fadeInUp" data-wow-delay="0.7s">
                    <div class="team-item">
                        <div class="overflow-hidden">
                            <img class="img-fluid" src="<?php echo ($ROOT . '/assets/img/team-4.jpg') ?>" alt="">
                        </div>
                        <!-- <div class="position-relative d-flex justify-content-center" style="margin-top: -19px;">
                            <a class="btn btn-square mx-1" href=""><i class="fab fa-facebook-f"></i></a>
                            <a class="btn btn-square mx-1" href=""><i class="fab fa-twitter"></i></a>
                            <a class="btn btn-square mx-1" href=""><i class="fab fa-instagram"></i></a>
                        </div> -->
                        <div class="text-center p-4">
                            <h5 class="mb-0">Full Name</h5>
                            <small>Designation</small>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Team End -->

    <!-- Team Start -->
    <div class="container-xxl py-5">
        <div class="container">
            <div class="text-center wow fadeInUp" data-wow-delay="0.1s">
                <h6 class="section-title bg-white text-center px-3">Volunteer</h6>
                <h1 class="mb-5 text-primary">Meet Our Volunteer</h1>
            </div>
            <div class="row g-4 d-flex justify-content-center">
                <div class="col-lg-3 col-md-6 wow fadeInUp" data-wow-delay="0.1s">
                    <div class="team-item">
                        <div class="overflow-hidden">
                            <img class="img-fluid" src="<?php echo ($ROOT . '/assets/img/team-1.jpg') ?>" alt="">
                        </div>
                        <!-- <div class="position-relative d-flex justify-content-center" style="margin-top: -19px;">
                            <a class="btn btn-square mx-1" href=""><i class="fab fa-facebook-f"></i></a>
                            <a class="btn btn-square mx-1" href=""><i class="fab fa-twitter"></i></a>
                            <a class="btn btn-square mx-1" href=""><i class="fab fa-instagram"></i></a>
                        </div> -->
                        <div class="text-center p-4">
                            <h5 class="mb-0">Full Name</h5>
                            <small>Designation</small>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3 col-md-6 wow fadeInUp" data-wow-delay="0.3s">
                    <div class="team-item">
                        <div class="overflow-hidden">
                            <img class="img-fluid" src="<?php echo ($ROOT . '/assets/img/team-2.jpg') ?>" alt="">
                        </div>
                        <!-- <div class="position-relative d-flex justify-content-center" style="margin-top: -19px;">
                            <a class="btn btn-square mx-1" href=""><i class="fab fa-facebook-f"></i></a>
                            <a class="btn btn-square mx-1" href=""><i class="fab fa-twitter"></i></a>
                            <a class="btn btn-square mx-1" href=""><i class="fab fa-instagram"></i></a>
                        </div> -->
                        <div class="text-center p-4">
                            <h5 class="mb-0">Full Name</h5>
                            <small>Designation</small>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3 col-md-6 wow fadeInUp" data-wow-delay="0.5s">
                    <div class="team-item">
                        <div class="overflow-hidden">
                            <img class="img-fluid" src="<?php echo ($ROOT . '/assets/img/team-3.jpg') ?>" alt="">
                        </div>
                        <!-- <div class="position-relative d-flex justify-content-center" style="margin-top: -19px;">
                            <a class="btn btn-square mx-1" href=""><i class="fab fa-facebook-f"></i></a>
                            <a class="btn btn-square mx-1" href=""><i class="fab fa-twitter"></i></a>
                            <a class="btn btn-square mx-1" href=""><i class="fab fa-instagram"></i></a>
                        </div> -->
                        <div class="text-center p-4">
                            <h5 class="mb-0">Full Name</h5>
                            <small>Designation</small>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3 col-md-6 wow fadeInUp" data-wow-delay="0.7s">
                    <div class="team-item">
                        <div class="overflow-hidden">
                            <img class="img-fluid" src="<?php echo ($ROOT . '/assets/img/team-4.jpg') ?>" alt="">
                        </div>
                        <!-- <div class="position-relative d-flex justify-content-center" style="margin-top: -19px;">
                            <a class="btn btn-square mx-1" href=""><i class="fab fa-facebook-f"></i></a>
                            <a class="btn btn-square mx-1" href=""><i class="fab fa-twitter"></i></a>
                            <a class="btn btn-square mx-1" href=""><i class="fab fa-instagram"></i></a>
                        </div> -->
                        <div class="text-center p-4">
                            <h5 class="mb-0">Full Name</h5>
                            <small>Designation</small>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Team End -->

    <!-- Gallery Start -->
    <div class="container-xxl py-5 destination">
        <div class="container">
            <div class="text-center wow fadeInUp" data-wow-delay="0.1s">
                <h6 class="section-title bg-white text-center px-3">Activities</h6>
                <h1 class="text-primary">Our Activities</h1>
            </div>
            <div class="row g-4" id="images">
                <div class="col" style="width: 30vw;">
                    <div class="row d-flex justify-content-center">
                        <div class="col-lg-3 col-md-4 wow zoomIn mt-3" data-wow-delay="0.1s">
                            <img class="img-fluid" src="<?php echo ($ROOT . '/assets/img/gallery/1.webp') ?>" alt="" style="min-width: 100%; height: 25vh;object-fit: cover;">
                            <h5 class="bg-white text-primary fw-bold text-center">Title-1</h5>
                        </div>
                        <div class="col-lg-3 col-md-4 wow zoomIn mt-3" data-wow-delay="0.1s">
                            <img class="img-fluid" src="<?php echo ($ROOT . '/assets/img/gallery/2.webp') ?>" alt="" style="min-width: 100%; height: 25vh;object-fit: cover;">
                            <h5 class="bg-white text-primary fw-bold text-center">Title-1</h5>
                        </div>
                        <div class="col-lg-3 col-md-4 wow zoomIn mt-3" data-wow-delay="0.1s">
                            <img class="img-fluid" src="<?php echo ($ROOT . '/assets/img/gallery/3.webp') ?>" alt="" style="min-width: 100%; height: 25vh;object-fit: cover;">
                            <h5 class="bg-white text-primary fw-bold text-center">Title-1</h5>
                        </div>
                        <div class="col-lg-3 col-md-4 wow zoomIn mt-3" data-wow-delay="0.1s">
                            <img class="img-fluid" src="<?php echo ($ROOT . '/assets/img/gallery/4.webp') ?>" alt="" style="min-width: 100%; height: 25vh;object-fit: cover;">
                            <h5 class="bg-white text-primary fw-bold text-center">Title-1</h5>
                        </div>
                        <div class="col-lg-3 col-md-4 wow zoomIn mt-3" data-wow-delay="0.1s">
                            <img class="img-fluid" src="<?php echo ($ROOT . '/assets/img/gallery/5.webp') ?>" alt="" style="min-width: 100%; height: 25vh;object-fit: cover;">
                            <h5 class="bg-white text-primary fw-bold text-center">Title-1</h5>
                        </div>
                        <div class="col-lg-3 col-md-4 wow zoomIn mt-3" data-wow-delay="0.1s">
                            <img class="img-fluid" src="<?php echo ($ROOT . '/assets/img/gallery/1.webp') ?>" alt="" style="min-width: 100%; height: 25vh;object-fit: cover;">
                            <h5 class="bg-white text-primary fw-bold text-center">Title-1</h5>
                        </div>
                        <div class="col-lg-3 col-md-4 wow zoomIn mt-3" data-wow-delay="0.1s">
                            <img class="img-fluid" src="<?php echo ($ROOT . '/assets/img/gallery/2.webp') ?>" alt="" style="min-width: 100%; height: 25vh;object-fit: cover;">
                            <h5 class="bg-white text-primary fw-bold text-center">Title-1</h5>
                        </div>
                        <div class="col-lg-3 col-md-4 wow zoomIn mt-3" data-wow-delay="0.1s">
                            <img class="img-fluid" src="<?php echo ($ROOT . '/assets/img/gallery/3.webp') ?>" alt="" style="min-width: 100%; height: 25vh;object-fit: cover;">
                            <h5 class="bg-white text-primary fw-bold text-center">Title-1</h5>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    </div>
    <!-- Destination Start -->

    <div class="container-xxl py-5">
        <div class="container wow fadeInUp" data-wow-delay="0.1s">
            <img class="img-fluid" src="<?php echo ($ROOT . '/assets/img/about/1.png') ?>" alt="">
        </div>
    </div>


    <?php include_once('../footer.php') ?>

    <script src="https://cdnjs.cloudflare.com/ajax/libs/viewerjs/1.11.6/viewer.min.js" integrity="sha512-EC3CQ+2OkM+ZKsM1dbFAB6OGEPKRxi6EDRnZW9ys8LghQRAq6cXPUgXCCujmDrXdodGXX9bqaaCRtwj4h4wgSQ==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
    <script>
        // You should import the CSS file.
        // import 'viewerjs/dist/viewer.css';
        // import Viewer from 'viewerjs';

        // View an image.
        // const viewer = new Viewer(document.getElementById('images'), {
        //     inline: true,
        //     viewed() {
        //         viewer.zoomTo(1);
        //     },
        // });
        // Then, show the image by clicking it, or call `viewer.show()`.

        // View a list of images.
        // Note: All images within the container will be found by calling `element.querySelectorAll('img')`.
        const gallery = new Viewer(document.getElementById('images'));
        // Then, show one image by click it, or call `gallery.show()`.
    </script>

</body>

</html>