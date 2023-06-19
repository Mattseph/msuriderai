<?php require './conn.php'; ?>

<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta content="width=device-width, initial-scale=1.0" name="viewport">

  <title>MSURider</title>
  <meta content="" name="description">
  <meta content="" name="keywords">

  <!-- Favicons -->
  <link href="assets/img/riderlogo.png" rel="icon">
  <link href="assets/img/riderlogo.png" rel="apple-touch-icon">

  <!-- Google Fonts -->
  <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Jost:300,300i,400,400i,500,500i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i" rel="stylesheet">

  <!-- Vendor CSS Files -->
  <link href="assets/vendor/aos/aos.css" rel="stylesheet">
  <link href="assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <link href="assets/vendor/bootstrap-icons/bootstrap-icons.css" rel="stylesheet">
  <link href="assets/vendor/boxicons/css/boxicons.min.css" rel="stylesheet">
  <link href="assets/vendor/glightbox/css/glightbox.min.css" rel="stylesheet">
  <link href="assets/vendor/remixicon/remixicon.css" rel="stylesheet">
  <link href="assets/vendor/swiper/swiper-bundle.min.css" rel="stylesheet">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <!-- Template Main CSS File -->
  <link href="assets/css/style.css" rel="stylesheet">

</head>

<body>
  <div id="preloader"></div>
  <a href="#" class="back-to-top d-flex align-items-center justify-content-center"><i class="bi bi-arrow-up-short"></i></a>

  <!-- ======= Header ======= -->
  <header id="header" class="fixed-top">
    <div class="container d-flex align-items-center">
      <!-- Uncomment below if you prefer to use an image logo -->
      <a href="./" class="logo me-auto"><img src="assets/img/riderlogo.png" alt="Rider Logo" class="img-fluid"></a>

      <nav id="navbar" class="navbar">
        <ul>
          <li><a class="nav-link scrollto active" href="#hero">Home</a></li>
          <li><a class="nav-link scrollto" href="#officer">Officer</a></li>
          <li><a class="nav-link scrollto" href="#team">Developers</a></li>
          <li><a class="nav-link scrollto" href="#about">About</a></li>
          <li><a class="getstarted scrollto" href="#hero">Get Started</a></li>
        </ul>
        <i class="bi bi-list mobile-nav-toggle"></i>
      </nav><!-- .navbar -->

    </div>
  </header><!-- End Header -->

  <!-- ======= Hero Section ======= -->
  <section id="hero" class="d-flex align-items-center">
    <div class="container">
      <div class="row">
        <div class="col-lg-6 d-flex flex-column justify-content-center pt-4 pt-lg-0 order-2 order-lg-1" data-aos="fade-up" data-aos-delay="200">
          <h1>MSU Accredited Rider's Scanner</h1>
          <h2>Use CAMERA or UPLOAD IMAGE</h2>


          <!-- <button type="button" class="btn btn-outline-danger position-absolute top-0 end-0 m-2" id="stopCamera" onclick="stopCamera()" style="display:none">X</button> -->

          <div class="d-flex justify-content-center justify-content-lg-start">
            <button type="button" id="startCamera" onclick="startCamera()" class="btn-start-camera scrollto" data-toggle="modal" data-target="#platenumber_scanner">Camera <i class='bi-camera-fill'></i> </button>
          </div>
        </div>
        <div class=" col-lg-6 order-1 order-lg-2 hero-img" data-aos="zoom-in" data-aos-delay="200">
          <img src="assets/img/hero-img.png" class="img-fluid animated" alt="">
        </div>
      </div>
    </div>

  </section><!-- End Hero -->

  <main id="main">

    <!-- ======= Officer Section ======= -->
    <section id="officer" class="team section-bg">
      <div class="container" data-aos="fade-up">

        <div class="section-title">
          <h2>Officer</h2>
          <p>
            Names of the newly elected officer's of our group MSU Rider's Association help on April 29, 2023.
          </p>
        </div>

        <div class="row">
          <?php

          $officers = ['President', 'Vice-President', 'Secretary', 'Treasurer', 'Business Manager', 'Auditor', 'Public Information Officer', 'Board Of Director'];

          $placeholder = str_repeat('?,', count($officers) - 1) . '?';

          $officerQuery = "SELECT r.last_name, r.first_name, r.mid_name, r.suffix, ac.designation, ac.date_of_membership, ac.img_url FROM rider r RIGHT JOIN registered_rider_profile ac ON r.rider_id = ac.rider_id WHERE ac.designation IN ($placeholder) ORDER BY
          CASE ac.designation
            WHEN 'President' THEN 1
            WHEN 'Vice-President' THEN 2
            WHEN 'Secretary' THEN 3
            WHEN 'Treasurer' THEN 4
            WHEN 'Business Manager' THEN 5
            WHEN 'Auditor' THEN 6
            WHEN 'Public Information Officer' THEN 7
            WHEN 'Board Of Director' THEN 8
          END";

          $officerStatement = $pdo->prepare($officerQuery);
          $officerStatement->execute($officers);

          while ($officer = $officerStatement->fetch(PDO::FETCH_ASSOC)) {

          ?>
            <div class="col-lg-6 mt-4" data-aos="zoom-in" data-aos-delay="100">
              <div class="member d-flex align-items-center">
                <?php if ($officer['img_url'] && file_exists("assets/img/rider/$officer[img_url]")) : ?>
                  <div class="pic"><img src="assets/img/rider/<?php echo $officer['img_url'] ?>" class="img-fluid" alt=""></div>
                <?php else : ?>
                  <div class="pic"><img src="assets/img/default-img.svg" class="img-fluid" alt=""></div>
                <?php endif; ?>
                <div class="member-info">
                  <h4>
                    <?php echo $officer['last_name'] ?>,
                    <?php echo $officer['first_name'] ?>
                    <?php echo $officer['mid_name'] ? $officer['mid_name'][0] . "." : "" ?>
                    <?php echo $officer['suffix'] ?>
                  </h4>
                  <span><?php echo $officer['designation'] ?></span>
                  <p>Member Since <?php echo $officer['date_of_membership'] ?></p>
                  <div class="social">
                    <a href=""><i class="ri-twitter-fill"></i></a>
                    <a href=""><i class="ri-facebook-fill"></i></a>
                    <a href=""><i class="ri-instagram-fill"></i></a>
                    <a href=""> <i class="ri-linkedin-box-fill"></i> </a>
                  </div>
                </div>
              </div>
            </div>
          <?php  } ?>
        </div>
      </div>
    </section><!-- End Team Section -->

    <section id="team" class="team section-bg">
      <div class="container" data-aos="fade-up">

        <div class="section-title">
          <h2>Developers</h2>
          <p>
            Development Team: MSU Rider Plate Number Scanner
          </p>
        </div>

        <div class="row">
          <?php
          $developerQuery = "SELECT * from developer";
          $developerStatement = $pdo->query($developerQuery);
          $developers = $developerStatement->fetchAll(PDO::FETCH_ASSOC);

          foreach ($developers as $developer) {

          ?>
            <div class="col-lg-6 mt-4" data-aos="zoom-in" data-aos-delay="100">
              <div class="member d-flex align-items-center">
                <?php if ($developer['img_url'] && file_exists("assets/img/developer/$developer[img_url]")) : ?>
                  <div class="pic"><img src="assets/img/developer/<?php echo $developer['img_url'] ?>" class="img-fluid" alt=""></div>
                <?php else : ?>
                  <div class="pic"><img src="assets/img/default-img.svg" class="img-fluid" alt=""></div>
                <?php endif; ?>
                <div class="member-info">
                  <h4>
                    <?php echo $developer['last_name'] ?>,
                    <?php echo $developer['first_name'] ?>
                    <?php echo $developer['mid_name'] ? $developer['mid_name'][0] . "." : "" ?>
                    <?php echo $developer['suffix'] ?>
                  </h4>
                  <span>3rd Year BSIT</span>
                  <p></p>
                  <div class="social">
                    <a href=""><i class="ri-twitter-fill"></i></a>
                    <a href=""><i class="ri-facebook-fill"></i></a>
                    <a href=""><i class="ri-instagram-fill"></i></a>
                    <a href=""> <i class="ri-linkedin-box-fill"></i> </a>
                  </div>
                </div>
              </div>
            </div>
          <?php  } ?>
        </div>
      </div>
    </section><!-- End Team Section -->


    <!-- ======= About Us Section ======= -->
    <section id="about" class="about">
      <div class="container" data-aos="fade-up">

        <div class="section-title">
          <h2>About Us</h2>
        </div>

        <div class="row content">
          <div class="col-lg-6">
            <p>
              Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore
              magna aliqua.
            </p>
            <ul>
              <li><i class="ri-check-double-line"></i> Ullamco laboris nisi ut aliquip ex ea commodo consequat</li>
              <li><i class="ri-check-double-line"></i> Duis aute irure dolor in reprehenderit in voluptate velit</li>
              <li><i class="ri-check-double-line"></i> Ullamco laboris nisi ut aliquip ex ea commodo consequat</li>
            </ul>
          </div>
          <div class="col-lg-6 pt-4 pt-lg-0">
            <p>
              Ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate
              velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in
              culpa qui officia deserunt mollit anim id est laborum.
            </p>
            <a href="#" class="btn-learn-more">Learn More</a>
          </div>
        </div>

      </div>
    </section><!-- End About Us Section -->
  </main><!-- End #main -->

  <!-- ======= Footer ======= -->
  <footer id="footer">
    <div class="footer-top">
      <div class="container">
        <div class="row">

          <div class="col-lg-3 col-md-6 footer-contact">
            <h3>Matthew</h3>
            <p>
              Banga, <br>
              South Cotabato, 9511<br>
              Philippines <br><br>
              <strong>Phone:</strong> +639486903677<br>
              <strong>Email:</strong> bilaos02311@gmail.com<br>
            </p>
          </div>

          <div class="col-lg-3 col-md-6 footer-links">
            <h4>Useful Links</h4>
            <ul>
              <li><i class="bx bx-chevron-right"></i> <a href="#hero">Home</a></li>
              <li><i class="bx bx-chevron-right"></i> <a href="./profile/developer.php">Developer</a></li>
              <li><i class="bx bx-chevron-right"></i> <a href="./profile/rider-officer.php">Officer</a></li>
              <li><i class="bx bx-chevron-right"></i> <a href="#about">About us</a></li>
            </ul>
          </div>

          <div class="col-lg-3 col-md-6 footer-links">
            <h4>Our Social Networks</h4>
            <p>Contact Us</p>
            <div class="social-links mt-3">
              <a href="#" target="_blank" class="twitter"><i class="bx bxl-twitter"></i></a>
              <a href="https://www.facebook.com/matthewfang.bilaos" target="_blank" class="facebook"><i class="bx bxl-facebook"></i></a>
              <a href="https://www.instagram.com/matt_seph/?next=%2F" target="_blank" class="instagram"><i class="bx bxl-instagram"></i></a>
              <a href="https://www.linkedin.com/in/matthew-joseph-bilaos-98637326a/" target="_blank" class="linkedin"><i class="bx bxl-linkedin"></i></a>
              <a href="https://github.com/Mattseph" target="_blank" class="github"><i class="bx bxl-github"></i></a>
            </div>
          </div>

        </div>
      </div>
    </div>
  </footer><!-- End Footer -->


  <div class="modal" id="platenumber_scanner">
    <div class="container-sm">
      <div class="d-flex justify-content-center align-items-center vh-100">
        <div class="modal-dialog">
          <div class="modal-content">
            <div class="modal-header">
              <h4 class="modal-title">Plate Number Scanner</h4>
            </div>
            <div class="modal-body d-flex flex-column justify-content-center align-items-center">
              <div id="interactive" class="viewport d-flex flex-column align-content-center justify-content-center">
                <div id="webcam-container"></div>
                <div class="error">
                  <p class="text-danger" id="message-container"></p>
                </div>
              </div>
            </div>
            <div class="modal-footer">
              <button type="button" class="btn btn-primary" data-dismiss="modal" id="stopCamera" onclick="stopCamera()">Close</button>
            </div>
          </div> <!-- /.modal-content -->
        </div> <!-- /.modal-dialog -->
      </div> <!-- /.modal -->
    </div>
  </div>

  <!-- Vendor JS Files -->
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>

  <script src="https://cdn.jsdelivr.net/npm/@tensorflow/tfjs@latest/dist/tf.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/@teachablemachine/image@latest/dist/teachablemachine-image.min.js"></script>
  <script src="assets/vendor/aos/aos.js"></script>
  <script src="assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
  <script src="assets/vendor/glightbox/js/glightbox.min.js"></script>
  <script src="assets/vendor/isotope-layout/isotope.pkgd.min.js"></script>
  <script src="assets/vendor/swiper/swiper-bundle.min.js"></script>
  <script src="assets/vendor/waypoints/noframework.waypoints.js"></script>
  <script src="assets/vendor/php-email-form/validate.js"></script>

  <!-- Template Main JS File -->
  <script src="./assets/js/main.js"></script>

</body>

</html>