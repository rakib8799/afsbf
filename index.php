<?php require_once('constants/set_names.php'); ?>
<?php include_once('layouts/linker.php') ?>


<body>
    <?php include_once('layouts/spinner.php') ?>

    <?php include_once('layouts/header.php') ?>

    <?php include_once('layouts/home/hero.php') ?>

    <?php include_once('layouts/home/served.php') ?>
    </div>
    <!-- Navbar & Hero End -->

    <?php include_once('layouts/home/about.php') ?>

    <?php include_once('layouts/home/member.php') ?>

    <?php include_once('layouts/home/team.php') ?>

    <?php include_once('layouts/home/service.php') ?>

    <?php include_once('layouts/home/event.php') ?>

    <?php include_once('layouts/home/single_project.php') ?>

    <?php include_once('layouts/home/blog.php') ?>

    <?php include_once('layouts/home/testimonial.php') ?>

    <?php include_once('layouts/home/location.php') ?>

    <?php include_once('layouts/footer.php') ?>

    <script>
        const counters = document.querySelectorAll('.value');
        const speed = 200;

        counters.forEach(counter => {
            const animate = () => {
                const value = +counter.getAttribute('akhi');
                const data = +counter.innerText;

                const time = value / speed;
                if (data < value) {
                    counter.innerText = Math.ceil(data + time);
                    setTimeout(animate, 1);
                } else {
                    counter.innerText = value;
                }

            }

            animate();
        });
    </script>

</body>

</html>