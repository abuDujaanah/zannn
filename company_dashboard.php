<?php 
    session_start();
    include_once 'DB.php';
    $db = new DBHelper();
    
    if (isset($_SESSION['company_email'])) {
        $email = $_SESSION['company_email'];
        $co_name = $db->getData("company", "Company_Name", "email", $email);
    } else {
        $co_name = 'Zan-tech';
    }
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Company Dashboard</title>
    <link rel="stylesheet" href="assets/style2.css">
</head>
<body>
    <div class="container">
        <div class="sidebar">
            <div class="profile">
                <img src="assets/1.jpg" alt="Profile Image">
            </div>
            <a href="post-opportunity.php">Opportunities</a>
            <a href="view-applications.php">Applications</a>
            <a href="rate-users.php">Rate Users</a>
            <a class="btn btn-primary" href="handler/logout.php">Logout</a>
        </div>
        <div class="main-content">
            <header class="header">
                <div class="header-content">
                    <h1 style="margin-left: 1100px;">
                        <?php
                        echo $co_name;
                        ?>
                    </h1>
                </div>
            </header>
            <div class="content">
                <div class="card p-4">
                    <h2>Welcome to the Company Dashboard</h2>
                    <p>The Zantech Opportunity System can be defined as a comprehensive software platform designed to facilitate the management and processing of job opportunities within an organization. Here’s a detailed definition:
                        Purpose is 

To streamline the process of posting, managing, and tracking job opportunities and applications within a company or organization.
                    </p>
                    <div>
                        <img src="assets/1.jpg" alt="Dashboard Image" style="max-width: 100%; height: auto;">
                    </div>
                </div>
            </div>
        </div>
    </div>
</body>
</html>
