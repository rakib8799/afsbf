<?php require_once('../../constants/set_names.php'); ?>
<?php include_once('../linker.php') ?>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/viewerjs/1.11.6/viewer.min.css" integrity="sha512-za6IYQz7tR0pzniM/EAkgjV1gf1kWMlVJHBHavKIvsNoUMKWU99ZHzvL6lIobjiE2yKDAKMDSSmcMAxoiWgoWA==" crossorigin="anonymous" referrerpolicy="no-referrer" />

<body>
    <?php include_once('../spinner.php') ?>

    <?php include_once('../header.php') ?>

    <div class="container-fluid bg-primary py-5 mb-5 hero-header">
        <div class="container py-5">
            <div class="row justify-content-center py-5">
                <div class="col-lg-10 pt-lg-5 mt-lg-5 text-center">
                    <h1 class="fs-1 text-white animated slideInDown">Gallery</h1>
                    <nav aria-label="breadcrumb">
                        <ol class="breadcrumb justify-content-center">
                            <li class="breadcrumb-item"><a href="#">Home</a></li>
                            <li class="breadcrumb-item"><a href="#">Pages</a></li>
                            <li class="breadcrumb-item text-white active" aria-current="page">Gallery</li>
                        </ol>
                    </nav>
                </div>
            </div>
        </div>
    </div>
    </div>
    <!-- Navbar & Hero End -->


    <!-- Gallery Start -->
    <div class="container-xxl py-5 destination">
        <div class="container">
            <div class="text-center wow fadeInUp" data-wow-delay="0.1s">
                <h6 class="section-title bg-white text-center px-3">Gallery</h6>
                <h1 class="text-primary">Our Gallery</h1>
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
                        <div class="col-lg-3 col-md-4 wow zoomIn mt-3" data-wow-delay="0.1s">
                            <img class="img-fluid" src="<?php echo ($ROOT . '/assets/img/gallery/4.webp') ?>" alt="" style="min-width: 100%; height: 25vh;object-fit: cover;">
                            <h5 class="bg-white text-primary fw-bold text-center">Title-1</h5>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Destination Start -->


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