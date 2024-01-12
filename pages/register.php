<?php

session_start();
require_once 'config/db.php';

?>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>ลงทะเบียน</title>

    <link rel="icon" href="../assets/img/pet.gif">
    <!-- Boostrap -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <!-- custom login & register css -->
    <link rel="stylesheet" href="../assets/css/custom.css">
</head>

<body>
    <main class="form-signin w-100 m-auto">
        <form action="signup_db.php" method="post">
            <?php if (isset($_SESSION['error'])) { ?>
                <div class="alert alert-danger" role="alert">
                    <?php
                    echo $_SESSION['error'];
                    unset($_SESSION['error']);
                    ?>
                </div>
            <?php } ?>
            <?php if (isset($_SESSION['success'])) { ?>
                <div class="alert alert-success" role="alert">
                    <?php
                    echo $_SESSION['success'];
                    unset($_SESSION['success']);
                    ?>
                </div>
            <?php } ?>
            <?php if (isset($_SESSION['warning'])) { ?>
                <div class="alert alert-warning" role="alert">
                    <?php
                    echo $_SESSION['warning'];
                    unset($_SESSION['warning']);
                    ?>
                </div>
            <?php } ?>
            <img class="mb-4" src="../assets/img/pet.gif" alt="" width="72" height="57">Hi Track!!
            <h1 class="h3 mb-3 fw-normal">สมัครสมาชิก</h1>

            <div class="mb-4">
                <label for="name" class="form-label">ชื่อผู้ใช้</label>
                <input type="text" class="form-control" name="name" aria-describedby="name">
            </div>
            <div class="mb-4">
                <label for="email" class="form-label">อีเมล</label>
                <input type="email" class="form-control" name="email" aria-describedby="email" placeholder="name@example.com">
            </div>
            <div class="mb-4">
                <label for="password" class="form-label">รหัสผ่าน</label>
                <input type="password" class="form-control" name="password" placeholder="Password">
            </div>
            <div class="mb-4">
                <label for="confirm password" class="form-label">ยืนยันรหัสผ่าน</label>
                <input type="password" class="form-control" name="c_password">
            </div>
            <button class="btn btn-primary w-100 py-2" type="submit" name="signup">ลงทะเบียน</button>
            <p class="mt-5 mb-3 text-body-secondary">เป็นสมาชิกแล้ว? <a href="login.php">คลิ๊กที่นี่เพื่อ </a>เข้าสู่ระบบ</p>
        </form>
    </main>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>

</body>

</html>