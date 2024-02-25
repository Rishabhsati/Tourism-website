<?php
session_start();
include_once('infop.php');
if (!isset($_SESSION['username'])) {
    header("Location: signin.html");
    exit;
}
if (isset($_POST['nainital'])) {
    $que = "SELECT * FROM `information` WHERE pname='Nainital'";
    $result = mysqli_query($db, $que);
}
if (isset($_POST['bhimtal'])) {
    $que = "SELECT * FROM `information` WHERE pname='Bhimtal'";
    $result = mysqli_query($db, $que);
}
if (isset($_POST['auli'])) {
    $que = "SELECT * FROM `information` WHERE pname='Auli'";
    $result = mysqli_query($db, $que);
}
if (isset($_POST['ranikhet'])) {
    $que = "SELECT * FROM `information` WHERE pname='Ranikhet'";
    $result = mysqli_query($db, $que);
}
if (isset($_POST['haridwar'])) {
    $que = "SELECT * FROM `information` WHERE pname='Haridwar'";
    $result = mysqli_query($db, $que);
}
if (isset($_POST['mussorie'])) {
    $que = "SELECT * FROM `information` WHERE pname='Mussorie'";
    $result = mysqli_query($db, $que);
}
if (isset($_POST['jim'])) {
    $que = "SELECT * FROM `information` WHERE pname='Jim Corbett'";
    $result = mysqli_query($db, $que);
}
if (isset($_POST['badrinath'])) {
    $que = "SELECT * FROM `information` WHERE pname='Badrinath'";
    $result = mysqli_query($db, $que);
}
if (isset($_POST['dehradun'])) {
    $que = "SELECT * FROM `information` WHERE pname='Dehradun'";
    $result = mysqli_query($db, $que);
}
if (isset($_POST['devprayag'])) {
    $que = "SELECT * FROM `information` WHERE pname='Devprayag'";
    $result = mysqli_query($db, $que);
}
if (isset($_POST['nanakmatta'])) {
    $que = "SELECT * FROM `information` WHERE pname='Nanakmatta'";
    $result = mysqli_query($db, $que);
}
if (isset($_POST['kedarnath'])) {
    $que = "SELECT * FROM `information` WHERE pname='Kedarnath'";
    $result = mysqli_query($db, $que);
}
if (isset($_POST['search_p'])) {
    $search = $_POST['search_p'];
    $que = "SELECT * FROM `information` WHERE pname='$search'";
    $result = mysqli_query($db, $que);
}

?>


<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" type="text/css" href="css/info.css">
    <title>Information</title>
</head>

<body>
    <div class="main">
        <ul>
            <ul class="list">
                <li class="logo"><a href="index.html"><img src="earth-globe.png" alt="Logo"
                            style="width:36px;height:36px"></a></li>
                <div class="search">
                    <form method="POST" action="info.php">
                        <input type="text" name="search_p" placeholder="Search.." size="50">
                        <input type="image" name="submit_p" src="search_icon.png" alt="Search image"
                            style="width:22;height:22; margin-left: 35px;">
                    </form>
                </div>
            </ul>
            <ul class="list2">
            <li class="dropdown" style="margin: -18px;">
              <a href="javascript:void(0)"  class="dropbtn">Menu &#9662;</a>
              <div class="dropdown-content">
                <a href="index.html">Home</a>
                <hr>
                <a href="destination.php">Destination</a>
                <hr>
                <a href="gallery.html">Gallery</a>
                <hr>
                <a href="feedback.html">Feedback</a>
                <hr>
                <form method="POST" action="logout.php">
                  <input type="hidden" name="logout" value="1">
                  <button type="submit" class="logout-button">Logout</button>
                </form>
                <hr>
              </div>
            </li>
            </ul>
        </ul>
    </div>
    <div class="hedder">
        <h1>Place Information</h1>
    </div>
    <div class="container">
        <div class="description-container" style="border: 1px solid black;">
            <div class="box1">
                <?php
                if ($result && mysqli_num_rows($result) > 0) {
                    while ($rows = mysqli_fetch_assoc($result)) {
                        ?>
                        <img src="<?php echo $rows['pi_main']; ?>" style="width: auto;height: 242px;">
                    </div>
                    <div class="description">
                        <h1>
                            <?php echo $rows['pname']; ?>
                        </h1>
                        <p style="text-align: justify;">
                            <?php echo $rows['pdescription']; ?>
                        </p>
                        <p style="color:red; top: -12px;">Package:
                            <?php echo $rows['package']; ?> Rs
                        </p>
                    </div>
                    <a href="booking.html" style="top: 37px; float: right; margin-right: 27%;">Book Tour</a>
                </div>
                <div class="image-container" style="border: 1px solid black">
                    <div class="box">
                        <div class="imgBox">
                            <img src="<?php echo $rows['pi1']; ?>" style="width: auto;height: 216px;">
                        </div>
                    </div>
                    <div class="box">
                        <div class="imgBox">
                            <img src="<?php echo $rows['pi2']; ?>" style="width: auto;height: 216px;">
                        </div>
                    </div>
                    <div class="box">
                        <div class="imgBox">
                            <img src="<?php echo $rows['pi3']; ?>" style="width: auto;height: 216px;">
                        </div>
                        <?php
                    }
                } else {
                    echo "No information available for this place.";
                }
                ?>
            </div>
        </div>
    </div>
    <script>
        document.addEventListener("DOMContentLoaded", function (event) {
            var dropdowns = document.getElementsByClassName("dropdown");
            for (var i = 0; i < dropdowns.length; i++) {
                dropdowns[i].addEventListener("click", function (event) {
                    event.stopPropagation();
                    var dropdownContent = this.getElementsByClassName("dropdown-content")[0];
                    if (dropdownContent.style.display === "block") {
                        dropdownContent.style.display = "none";
                    } else {
                        dropdownContent.style.display = "block";
                    }
                });
            }

            // Close dropdown when clicking outside
            window.addEventListener("click", function (event) {
                for (var i = 0; i < dropdowns.length; i++) {
                    var dropdownContent = dropdowns[i].getElementsByClassName("dropdown-content")[0];
                    if (dropdownContent.style.display === "block") {
                        dropdownContent.style.display = "none";
                    }
                }
            });
        });



    </script>
</body>

</html>