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
    $name = htmlspecialchars($rider['last_name'] . ', ' . $rider["first_name"] . $rider['mid_name'] ?? ' ' . $rider['suffix']);
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
<main class="container">
    <div class="row">
        <div class="col d-flex flex-column justify-content-center align-items-center vh-100">
            <div class="card card-container">
                <div class="card-body p-5">
                    <h2 class="text-center">Driver's Information</h2>
                    <p><strong>Name:</strong> <?php echo $name ?></p>
                    <p><strong>Designation:</strong> <?php echo $designation ?></p>
                    <p><strong>Driver's No:</strong> <?php echo $rider_no ?></p>
                    <p><strong>Official Receipt:</strong> <?php echo $official_reciept ?></p>
                    <p><strong>Official Receipt Expiration:</strong> <?php echo $or_expiration_date ?></p>
                    <p><strong>Certificate of Registration:</strong> <?php echo $certificate_of_registration ?></p>
                    <p><strong>Driver's License:</strong> <?php echo $licenseNumber ?></p>
                    <p><strong>Driver's License Expiration:</strong> <?php echo $license_expiration_date ?></p>
                    <p><strong>Contact Number:</strong> <?php echo $contact_number ?></p>
                    <p><strong>Status:</strong> <?php echo $status ?></p>
                </div>
            </div>
        </div>
    </div>
</main>


<?php require './../include/footer.php'; ?>