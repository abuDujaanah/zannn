<?php
session_start();
include_once 'DB.php';
$db = new DBhelper();

$App = $db->getRows("applicants");

?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>View Applications</title>
    <!-- Include Bootstrap CSS locally -->
    <link href="bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f0f0f0;
            margin: 0;
            padding: 0;
        }
        .sidebar {
            height: 100%;
            width: 250px;
            position: fixed;
            top: 0;
            left: 0;
            background-color: #004d00;
            padding-top: 20px;
        }
        .sidebar a {
            padding: 10px 15px;
            text-decoration: none;
            font-size: 18px;
            color: white;
            display: block;
        }
        .sidebar a:hover {
            background-color: #003300;
        }
        .content {
            margin-left: 260px;
            padding: 20px;
            width: calc(100% - 260px);
        }
        .card {
            background-color: white;
            border: 1px solid #004d00;
            border-radius: 8px;
            margin: 10px 0;
            padding: 20px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        }
        .card h2 {
            color: #004d00;
            margin-top: 0;
        }
        .form-group {
            margin-bottom: 15px;
        }
        .form-group label {
            display: block;
            color: #004d00;
            margin-bottom: 5px;
        }
        .form-group input, .form-group select, .form-group textarea {
            width: 100%;
            padding: 8px;
            border: 1px solid #004d00;
            border-radius: 4px;
        }
        .form-group button {
            background-color: #004d00;
            color: white;
            padding: 10px 15px;
            border: none;
            border-radius: 4px;
            cursor: pointer;
        }
        .form-group button:hover {
            background-color: #003300;
        }
        .form-container {
            width: 60%;
            margin: 0 auto;
        }
        /* Logout Button */
        .sidebar .btn-primary {
            background-color: transparent;
            border: none;
            color: white;
            font-size: 18px;
            text-align: left;
            padding: 10px 15px;
            display: block;
            width: 100%;
        }
        .sidebar .btn-primary:hover {
            background-color: #003300;
            color: white;
        }
    </style>
</head>
<body>
    <div class="sidebar">
        <a href="index.php">Home</a>
        <a href="post-opportunity.php">Post Opportunity</a>
        <a href="view-applications.php">View Applications</a>
        <a href="rate-users.php">Rate Users</a>
        <a href="message-users.php">Message Users</a>
        <a class="btn btn-primary" href="handler/logout.php">Logout</a>
    </div>
    <div class="content">
        <div class="row">
            <?php if (is_array($App)) { ?> 
                <?php foreach ($App as $a) { ?>
                    <div class="col-md-4">
                        <div class="card">
                            <h2>View Applications</h2>
                            <hr>
                            <p><b>Title:</b> <?= $db->getData("opportunity", "Tittle", "opportunityID", $a["opportunityID"]); ?></p>
                          <!--  <p><b>Status: </b><?= $a["Status"] ?></p>-->
                            <p><b>Applicant:</b> <?= $db->getData("specialist", "FullName", "SpecialistID", $a["SpecialistID"]); ?></p>
                            <div class="row mt-2">
                                
                                <div class="col-6">
                                    
                                    <a href="message-users.php?applicant=<?= $a['ApplicantID'] ?? ''; ?>" type="button" class="btn btn-danger w-100">reject</a>
                                </div>


                                <div class="col-6">
                                <a href="message-users.php?applicant=<?= $a['ApplicantID'] ?? ''; ?>" type="button" class="btn btn-danger w-100">accept</a>


                                </div>
                            </div>
                            <hr>
                            
                            <a href="assets/letters">view application letters</a>
                        </div>
                    </div>
                <?php } ?>
            <?php } else { ?>
                    <p>Sorry Failed to upload files: Perhaps; No datas found.</p>
            <?php } ?>
        </div>
    </div>
    <!-- Include Bootstrap JS and dependencies locally -->
    <script src="bootstrap/js/jquery.min.js"></script>
    <script src="bootstrap/js/popper.min.js"></script>
    <script src="bootstrap/js/bootstrap.min.js"></script>
</body>
</html>
v