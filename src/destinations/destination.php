<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="css/destination.css">
    <title>Destinations</title>
    <style type="text/css">
        .container .box .name-text input {
            position: relative;
            display: none;
            background: transparent;
            border: 1px solid #fff;
            top: -20px;
            color: #fff;
            text-decoration: none;
            transition: 0.6s ease;
            text-align: center;
        }

        .btn {
            padding: 5px 40px;
        }

        .btn1 {
            margin: 0px -20px;
            padding: 5px 40px;
        }

        .btn2 {
            padding: 5px 60px;
        }

        .btn3 {
            padding: 5px 37px;
            margin: 0px -2px;
        }

        .btn4 {
            padding: 5px 50px;
        }

        .btn5 {
            padding: 5px 25px;
        }

        .container .box:hover .name-text input {
            display: block;
            top: -20px;
        }

        .container .box .name-text input:hover {
            background-color: #fff;
            color: #000;
        }
    </style>
    <script>
        function visitDestination() {
            var loggedIn = <?php echo isset($_SESSION['username']) ? 'true' : 'false'; ?>;
            if (loggedIn) {
                window.location.href = 'booking.html';
            } else {
                window.location.href = 'login.html';
            }
        }
    </script>
</head>

<body>
    <h1 class="heading">Popular Destinations</h1>
    <div class="main">
        <ul>
            <ul class="list">
                <li class="logo"><a href="index.html"><img src="earth-globe.png" alt="Logo"
                            style="width:36px;height: 36px;position: relative;left: -55px;top: -23px;"></a></li>
                <div class="search">
                    <form method="POST" action="info.php">
                        <input type="text" name="search_p" placeholder="Search.." size="50">
                        <input type="image" name="submit_p" src="search_icon.png" alt="Search image"
                            style="width:22px; height:22px; margin-left: 35px;">
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

    <div class="container">
        <div class="box">
            <div class="imgBox">
                <img src="images/destination/nainital.jpg" alt="nainital img" style="width: auto; height: 270px;">
            </div>
            <div class="name-text name-pading1 top1">
                <h1>Nainital</h1>
                <form method="POST" action="info.php">
                    <input type="submit" name="nainital" class="btn1" value="Visit">
                </form>
            </div>
        </div>
        <div class="box">
            <div class="imgBox">
                <img src="images/destination/BHIMTAL.jpg" alt="bhimtal img" style="width: auto; height:300px;">
            </div>
            <div class="name-text name-pading2 top1">
                <h1>Bhimtal</h1>
                <form method="POST" action="info.php">
                    <input type="submit" name="bhimtal" class="btn" value="Visit">
                </form>
            </div>
        </div>
        <div class="box">
            <div class="imgBox">
                <img src="images/destination/auli.jpg" alt="auli img" style="width: auto; height: 270px;">
            </div>
            <div class="name-text name-pading3 top1">
                <h1>Auli</h1>
                <form method="POST" action="info.php">
                    <input type="submit" name="auli" class="btn" value="Visit">
                </form>
            </div>
        </div>
        <div class="box">
            <div class="imgBox">
                <img src="images/destination/Ranikhet.jpg" alt="ranikhet img" style="width: auto; height: 270px;">
            </div>
            <div class="name-text name-pading4 top1">
                <h1>Ranikhet</h1>
                <form method="POST" action="info.php">
                    <input type="submit" name="ranikhet" class="btn" value="Visit">
                </form>
            </div>
        </div>
        <div class="box">
            <div class="imgBox">
                <img src="images/destination/HARIDWAR.jpg" alt="haridwar img" style="width: auto; height: 270px;">
            </div>
            <div class="name-text name-pading5 top2">
                <h1>Haridwar</h1>
                <form method="POST" action="info.php">
                    <input type="submit" name="haridwar" class="btn5" value="Visit">
                </form>
            </div>
        </div>
        <div class="box">
            <div class="imgBox">
                <img src="images/destination/MUSSOORIE.jpg" alt="Mussorie img" style="width: auto; height: 270px;">
            </div>
            <div class="name-text name-pading6 top2">
                <h1>Mussorie</h1>
                <form method="POST" action="info.php">
                    <input type="submit" name="mussorie" class="btn2" value="Visit">
                </form>
            </div>
        </div>
        <div class="box">
            <div class="imgBox">
                <img src="images/destination/CORBETT-NATIONAL-PARK.jpg" alt="jim park img"
                    style="width: auto; height: 270px;">
            </div>
            <div class="name-text name-pading7 top2">
                <h1>Jim Corbett</h1>
                <form method="POST" action="info.php">
                    <input type="submit" name="jim" class="bt3" value="Visit" style="
                    width: 77px;
                    height: 24px;
                ">
                </form>
            </div>
        </div>
        <div class="box">
            <div class="imgBox">
                <img src="images/destination/badrinath.jpg" alt="badrinath img" style="width: auto; height: 270px;">
            </div>
            <div class="name-text name-pading8 top2">
                <h1>Badrinath</h1>
                <form method="POST" action="info.php">
                    <input type="submit" name="badrinath" class="btn2" value="Visit">
                </form>
            </div>
        </div>
        <div class="box">
            <div class="imgBox">
                <img src="images/destination/DEHRADUN.jpg" alt="dehradun img" style="width: auto; height: 270px;">
            </div>
            <div class="name-text name-pading9 top3">
                <h1>Dehradun</h1>
                <form method="POST" action="info.php">
                    <input type="submit" name="dehradun" class="btn3" value="Visit">
                </form>
            </div>
        </div>
        <div class="box">
            <div class="imgBox">
                <img src="images/destination/DEVPRAYAG.jpg" alt="devprayag img" style="width: auto; height: 270px;">
            </div>
            <div class="name-text name-pading10 top3">
                <h1>Devprayag</h1>
                <form method="POST" action="info.php">
                    <input type="submit" name="devprayag" class="btn4" value="Visit">
                </form>
            </div>
        </div>
        <div class="box">
            <div class="imgBox">
                <img src="images/destination/NANAKMATTA.jpg" alt="nanakmatta img" style="width: auto; height: 270px;">
            </div>
            <div class="name-text name-pading11 top3">
                <h1>Nanakmatta</h1>
                <form method="POST" action="info.php">
                    <input type="submit" name="nanakmatta" class="btn4" value="Visit">
                </form>
            </div>
        </div>
        <div class="box">
            <div class="imgBox">
                <img src="images/destination/KEDARNATH.jpg" alt="kedarnath img" style="width: auto; height: 270px;">
            </div>
            <div class="name-text name-pading12 top3">
                <h1>Kedarnath</h1>
                <form method="POST" action="info.php">
                    <input type="submit" name="kedarnath" class="btn2" value="Visit">
                </form>
            </div>
        </div>
    </div>
    <script>
            document.addEventListener("DOMContentLoaded", function(event) {
  var dropdowns = document.getElementsByClassName("dropdown");
  for (var i = 0; i < dropdowns.length; i++) {
    dropdowns[i].addEventListener("click", function(event) {
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
  window.addEventListener("click", function(event) {
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