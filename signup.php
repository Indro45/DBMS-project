<?php
    session_start();

    include("db.php");

    if($_SERVER['REQUEST_METHOD'] == "POST")
    {
        $firstname = $_POST['fname'];
        $lastname = $_POST['lname'];
        $Gender = $_POST['gender'];
        $num = $_POST['number'];
        $address = $_POST['add'];
        $gmail = $_POST['mail'];
        $password = $_POST['pass'];

        if(!empty($gmail) && !empty($password) && !is_numeric($gmail))
        {

            $query = "insert into form (fname, lname, gender, cnum, address, email, pass) values('$firstname', '$lastname', '$Gender', '$num', '$address', '$gmail', '$password')";

            mysqli_query($con, $query);

            echo "<script type= 'text/javascript'> alert('Successfully Register')</script>";
        }
        else
        {
            echo "<script type= 'text/javascript'> alert('Please enter some valid information')</script>";
        }

    }
?>


<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport"content="width=device-width, initial-scale=1">
    <title> Form login and register</title>
    <link rel="stylesheet" href ="signup.css">

</head>
<body>
    <div class ="signup">
        <h1> Sign up</h1>
        <form method="post">
            <label>First Name</label>
            <input type="text" name="fname" required>
            <label>Last Name</label>
            <input type="text" name="lname" required>
            <label>Gender</label>
            <input type="text" name="gender" required>
            <label>Contact Number</label>
            <input type="tel" name="number" required>
            <label>Address</label>
            <input type="text" name="add" required>
            <label>Email</label>
            <input type="email" name="mail" required>
            <label>Password</label>
            <input type="password" name="pass" required>
            <input type="submit" name="" value="Submit">           
        </form>
        <p>By clicking the Sign up button, you agree to our<br>
        <a href="">Terms and Condition</a> and <a href="#">Policy Privacy</a>
        </p>
        <p>For a recently sign up user please <a href="login.php">Login Here</a></p>
        <p>Are you an Admin?<a href="login_extra.php">Login Here</a></p>
    </div>
</body>
</html>