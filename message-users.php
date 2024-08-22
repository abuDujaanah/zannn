<?php 

    if (isset($_GET['applicant'])) {
        $applic = $_GET['applicant'];

        session_start();
        if (isset($_SESSION['company_email'])) {
            $co_mail = $_SESSION['company_email'];

            include_once 'DB.php';
            $db = new DBhelper();

            $co_name = $db->getData("company", "Company_Name", "email", $co_mail);
        }
    
    }
    
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Send Message Form</title>
    <style>
        /* Basic reset */
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            font-family: 'Arial', sans-serif;
        }

        /* Body Styling */
        body {
            background-color: #f4f4f4;
            color: #333;
            display: flex;
            align-items: center;
            justify-content: center;
            min-height: 100vh;
        }

        /* Container Styling */
        form {
            background-color: #fff;
            padding: 20px 30px;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            width: 100%;
            max-width: 500px;
        }

        /* Form Title */
        h1 {
            font-size: 24px;
            margin-bottom: 20px;
            text-align: center;
            color: #333;
        }

        /* Input Fields Styling */
        label {
            display: block;
            font-weight: bold;
            margin-bottom: 8px;
            color: #555;
        }

        input[type="text"],
        textarea {
            width: 100%;
            padding: 10px;
            margin-bottom: 15px;
            border: 1px solid #ccc;
            border-radius: 4px;
            font-size: 16px;
            color: #333;
            transition: border-color 0.3s ease;
        }

        input[type="text"]:focus,
        textarea:focus {
            border-color: #007bff;
        }

        /* Textarea Styling */
        textarea {
            resize: vertical;
        }

        /* Submit Button Styling */
        input[type="submit"] {
            background-color: #007bff;
            color: #fff;
            padding: 10px 15px;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            font-size: 16px;
            transition: background-color 0.3s ease;
            width: 100%;
        }

        input[type="submit"]:hover {
            background-color: #0056b3;
        }

        /* Back Link Styling */
        a {
            display: inline-block;
            margin-top: 10px;
            text-align: center;
            width: 100%;
            color: #007bff;
            text-decoration: none;
            font-size: 16px;
        }

        a:hover {
            text-decoration: underline;
        }
    </style>
</head>
<body>
    
    <form action="message-users.php" method="post">
        <input type="hidden" name="applicant" value="<?php echo $applic ?>">
        <input type="hidden" name="company_name" value="<?php echo $co_name ?>">
        <input type="hidden" name="email" value="<?php echo $co_mail ?>">

        <label for="title">Title:</label>
        <input type="text" id="title" name="title" required><br><br>

        <label for="message">Message:</label><br>
        
        <textarea id="message" name="message" rows="4" cols="50" required></textarea><br><br>

        <input type="submit" value="Send Message User">
        
        <a href="post-opportunity.php">BACK</a>

    </form>
</body>
</html>
<?php

    if ($_SERVER['REQUEST_METHOD'] == 'POST') {

        include_once 'DB.php';
        $db = new DBhelper();

        $applicant = $_POST['applicant'];
        $name = $_POST['company_name'];
        $title = $_POST['title'];
        $email = $_POST['email'];
        $message = $_POST['message'];

        $sql = $db->insert('messages', ['title' => $title, 'applicantId' => $applicant, 'name' => $name, 'email' => $email, 'message' => $message]);

    }

?>
