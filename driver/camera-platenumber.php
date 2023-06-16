<?php
require './../include/header.php';
require './../conn.php';


if (filter_has_var(INPUT_GET, 'driverNumber')) {
    $clean_driver_number = filter_var($_GET['driverNumber'], FILTER_SANITIZE_NUMBER_INT);
    $driver_number = filter_var($clean_driver_number, FILTER_VALIDATE_INT);
}
$riderQuery = "SELECT * FROM rider, registered_rider_profile WHERE rider_no = :driverNumber AND rider.rider_id = registered_rider_profile.rider_id";

$riderStatement = $pdo->prepare($riderQuery);
$riderStatement->bindParam(":driverNumber", $driver_number);
$riderStatement->execute();

if ($riderStatement->rowCount() === 1) {
    $rider = $riderStatement->fetch(PDO::FETCH_ASSOC);

    $clean_rider_no = filter_var($rider['rider_no'], FILTER_SANITIZE_NUMBER_INT);
    $rider_no = filter_var($clean_rider_no, FILTER_VALIDATE_INT);
    $name = htmlspecialchars($rider['last_name'] . ', ' . $rider["first_name"] . ' ' . $rider['mid_name'] ?? ' ' . $rider['suffix']);
    $designation = htmlspecialchars($rider['designation']);
    $official_reciept = htmlspecialchars($rider['official_reciept']);
    $or_expiration_date = htmlspecialchars($rider['or_expiration_date']);
    $certificate_of_registration = htmlspecialchars($rider['certificate_of_registration']);
    $licenseNumber = htmlspecialchars($rider["drivers_license"]);
    $license_expiration_date = htmlspecialchars($rider['license_expiration_date']);
    $contact_number = htmlspecialchars($rider['contact_number']);
    $img_url = htmlspecialchars($rider['img_url']);
    $status = htmlspecialchars("Accredited");

    // Prepare the response array
    // $response = [
    //     'rider_no' => $rider_no,
    //     'name' => $name,
    //     'designation' => $designation,
    //     'official_reciept' => $official_reciept,
    //     'or_expiration_date' => $or_expiration_date,
    //     'certificate_of_registration' => $certificate_of_registration,
    //     'licenseNumber' => $licenseNumber,
    //     'license_expiration_date' => $license_expiration_date,
    //     'contact_number' => $contact_number,
    //     'img_url' => $img_url,
    //     'status' => $status
    // ];

    // $jsonResponse = json_encode($response);
    // echo $jsonResponse;
}

?>

<!-- ======= Why Us Section ======= -->
<section id="rider" class="rider section-bg">
    <div class="container-fluid" data-aos="fade-up">

        <div class="row justify-content-center">

            <div class="col-lg-6 d-flex flex-column justify-content-center align-items-stretch  order-2 order-lg-1  d-sm-flex align-items-sm-center justify-content-sm-center">

                <div class="content">
                    <h3>Eum ipsam laborum deleniti <strong>velit pariatur architecto aut nihil</strong></h3>
                </div>

                <div class="accordion-list">
                    <ul>
                        <li>
                            <a class="collapse"><span><?php echo $rider_no ?></span> Driver's Information <i class="bx bx-chevron-down icon-show"></i><i class="bx bx-chevron-down icon-close"></i></a>
                            <div class="collapse show d-flex flex-column">
                                <?php if ($img_url && file_exists("../assets/img/rider/$img_url")) : ?>
                                    <div class="pic align-self-center"><img src="../assets/img/rider/<?php echo $img_url ?>" class="img-fluid" alt=""></div>
                                <?php else : ?>
                                    <div class="pic"><img src="../assets/img/default-img.svg ?>" class="img-fluid" alt=""></div>
                                <?php endif; ?>


                                <p> Name: <?php echo $name ?></p>
                                <p>Designation: <?php echo $designation ?></p>
                                <p>Driver's No: <?php echo $rider_no ?></p>

                                <?php if ($official_reciept) : ?>
                                    <p>Official Receipt: <?php echo $official_reciept ?></p>
                                <?php endif ?>

                                <?php if ($or_expiration_date) : ?>
                                    <p>Official Receipt Expiration: <?php echo $or_expiration_date ?></p>
                                <?php endif ?>

                                <?php if ($certificate_of_registration) : ?>
                                    <p>Certificate of Registration: <?php echo $certificate_of_registration ?></p>
                                <?php endif ?>

                                <?php if ($licenseNumber) : ?>
                                    <p>Driver's License: <?php echo $licenseNumber ?></p>
                                <?php endif ?>

                                <?php if ($license_expiration_date) : ?>
                                    <p>Driver's License Expiration: <?php echo $license_expiration_date ?></p>
                                <?php endif ?>

                                <?php if ($contact_number) : ?>
                                    <p>Contact Number: <?php echo $contact_number ?></p>
                                <?php endif; ?>
                                <p>Status: <?php echo $status ?></p>

                            </div>
                        </li>

                    </ul>
                </div>

            </div>

            <div class="col-lg-5 align-items-center order-1 order-lg-2 img" style='background-image: url("./../assets/img/why-us.png");' data-aos="zoom-in" data-aos-delay="150">&nbsp;</div>
        </div>

    </div>
</section><!-- End Why Us Section -->


<?php require './../include/footer.php'; ?>