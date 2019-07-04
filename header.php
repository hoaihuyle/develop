<!DOCTYPE html>
<html>
<head>
    <title>Foody</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" type="text/css" href="media/built/css/reset.css">
  <link rel="stylesheet" type="text/css" href="media/built/css/style-1.css">
  <link rel="stylesheet" type="text/css" href="media/built/css/detail.css">
  <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.0.10/css/all.css" integrity="sha384-+d0P83n9kaQMCwj8F4RJB66tzIwOKmrdb46+porD/OvrJ+37WqIM7UoBtwHO6Nlg" crossorigin="anonymous">
  <link rel="stylesheet" type="text/css" href="media/built/css/style.css">
  <link rel="shortcut icon" type="img/png" href="images/F.png">
  <script type="text/javascript" src="media/js/jquery-1.12.4.js"></script>
  <script type="text/javascript" src="media/js/jquery.slides.min.js"></script>
  <script type="text/javascript" src="media/js/jquery-1.12.4.min.js"></script>
</head>
<body>
  <header class="header">
    <div class="container-topbar"> <!-- category  -->
      <ul class="topbar">
          <?php  
            require_once ('database.php');
            //Get all categories
            $conn = Database::connect();
            $sql = "SELECT * FROM categories";

            $results = mysqli_query($conn, $sql);
            if ($results->num_rows > 0) {
              while($category = $results->fetch_assoc()) {
            ?>
                <li><a href="category.php?category_id=<?php echo $category['id'] ?>"  class="<?php echo''.($category['id']==$_GET['category_id'] ?'current':'').''?>" ><?php echo $category['name'] ?></a></li>
              <?php }//end while ?>
          <?php }//end if ?>
      </ul>
    </div>

    <div class="header-toolbar"><!-- bar  -->
      <div class="header-wrapper">
        <div class="nav-left">
            <a href="index.php" class="logo">
              <img src="images/foody-vn.png" alt="foody.vn">
            </a>
            <div class="root-cate"><!-- address -->
              <div class="nav-name">
                <span class="text">Hà Nội</span>
                <span class="fas fa-sort-down"></span>
              </div>
            </div>
            <div class="search-bar-top"><!-- search -->
              <form class="searchFormTop" action="" method="">
                <div class="searchForm">
                  <div class="dropdown">
                    <input type="text" id="myInput" onkeyup="myFunction()" title="Type in a name" name="" placeholder="Địa điểm, món ăn, loại hình..." >
                    <ul id="myUL" class="dropdown-content">
                        <?php
                          $conn = Database::connect();
                          $sql = "SELECT * FROM shops";
                          $results = mysqli_query($conn, $sql);
                          if ($results->num_rows > 0) {
                            while($shop_data = $results->fetch_assoc()) {
                        ?>
                          <li><a href="detail.php?detail_id=<?php echo $shop_data['id'] ?>"><?php echo $shop_data['name']?></a></li>
                        <?php }
                            }
                          else
                        ?>
                    </ul>
                  </div>              
                </div>
              </form>
                <div class="search-icon">
                  <a href="" class="ico-search">
                    <span class="fas fa-search"></span>
                  </a>
                </div>
                <div class="header-apps"><!-- app -->
                  <a href="#" target="_blank">
                    <span class="fas fa-mobile-alt"></span>
                    Apps
                  </a>
                </div>
            </div>
            
        </div>
        <div class="nav-right"><!-- đăng nhập, ngôn ngữ  -->
          <div class="account-manage">
            <a href="login.php" class="login-new">
              <span>Đăng nhập</span>
            </a>
          </div>
          <!-- <div class="NotificationCtrl" style="position: relative;float: left;">
            <div style="float: right;">
              <div class="notificationBox">
              </div>
            </div>
          </div> -->
          <div class="language-dropdown-container">
            <a href="#" class="language-dropdown-btn">
              <img src="images/vn.png">
            </a>
          </div>
        </div>
      </div>
    </div>
  </header>