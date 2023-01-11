<?php
   require_once 'db.php';
   $category="<option>無限制</option>\n";
   $sql  = "select distinct category from pet";
   $result =$db->query($sql);
   while($row=$result->fetchRow()){
      $category.='<option>'.$row[0]."</option>\n";
   }

   $sex="<option>無限制</option>\n";
   $sql  = "select distinct sex from pet";
   $result =$db->query($sql);
   while($row=$result->fetchRow()){
      $sex.='<option>'.$row[0]."</option>\n";
   }
 
   $shelter="<option>無限制</option>\n";
   $sql  = "select distinct shelter from pet";
   $result =$db->query($sql);
   while($row=$result->fetchRow()){
      $shelter.='<option>'.$row[0]."</option>\n";
   }
?>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <title>The Way Home Official Website</title>
    <meta content="width=device-width, initial-scale=1.0" name="viewport">
    <meta content="Free HTML Templates" name="keywords">
    <meta content="Free HTML Templates" name="description">

    <!-- Favicon -->
    <link href="img/favicon.ico" rel="icon">

    <!-- Google Web Fonts -->
    <link href="https://fonts.googleapis.com/css2?family=Nunito+Sans&family=Nunito:wght@600;700;800&display=swap" rel="stylesheet"> 

    <!-- Font Awesome -->
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css" rel="stylesheet">

    <!-- Flaticon Font -->
    <link href="lib/flaticon/font/flaticon.css" rel="stylesheet">

    <!-- Libraries Stylesheet -->
    <link href="lib/owlcarousel/assets/owl.carousel.min.css" rel="stylesheet">
    <link href="lib/tempusdominus/css/tempusdominus-bootstrap-4.min.css" rel="stylesheet" />

    <!-- Customized Bootstrap Stylesheet -->
    <link href="css/style.css" rel="stylesheet">
</head>

<body>
    <div id="bodyhide"></div>
    <!-- Topbar Start -->
    <div class="container-fluid">
       
        <div class="row py-3 px-lg-5">
            <div class="col-lg-4">
                <a href="" class="navbar-brand d-none d-lg-block">
                    <h1 class="m-0 display-5 text-capitalize"><span class="text-primary">The</span>Wayhome</h1>
                </a>
        </div>
    </div>
    <!-- Topbar End -->


     <!-- Navbar Start -->
     <div class="container-fluid p-0">
        <nav class="navbar navbar-expand-lg bg-dark navbar-dark py-3 py-lg-0 px-lg-5">
            <a href="" class="navbar-brand d-block d-lg-none">
                <h1 class="m-0 display-5 text-capitalize font-italic text-white"><span class="text-primary">目錄</span>選單</h1>
            </a>
            <button type="button" class="navbar-toggler" data-toggle="collapse" data-target="#navbarCollapse">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse justify-content-between px-3" id="navbarCollapse">
                <div class="navbar-nav mr-auto py-0">
                    <a href="index.html" class="nav-item nav-link ">浪浪公告</a>
                    <a href="service.php" class="nav-item nav-link">浪浪目錄</a>
                    <a href="about.html" class="nav-item nav-link">收容所</a>
                    <a href="contact.html" class="nav-item nav-link">支持我們</a>
                </div>
                <div>
                    <button id="loginbtn" class="btn btn-lg btn-primary px-3 d-none d-lg-block m-xl-3">登入</button>
                    
                </div>
                
                <div>
                    <button id="signupbtn" class="btn btn-lg btn-secondary px-3 d-none d-lg-block">註冊</button>
                </div>

            </div>
        </nav>
    </div>
    <!-- Navbar End -->
    <dialog id="loginpg" >
        <div class="login">
  
            <header class="login__header">
              <h2 style="color: white;"><svg class="icon">
                  <use xlink:href="#icon-lock" />
                </svg>登入</h2>
            </header>
        
            <form action="#" class="login__form" method="POST">
        
              <div>
                <label for="email">電子信箱:</label>
                <input type="email" id="email" name="email" placeholder="mail@address.com">
              </div>
        
              <div>
                <label for="password">密碼:</label>
                <input type="password" id="password" name="password" >
              </div>
        
              <div>
                <input class="button btn btn-lg px-3 d-none d-lg-block" type="submit" value="登入" id="sign_In">
              </div>
        
            </form>
        
          </div>
    </dialog>
    <dialog id="signuppg" >
        <div class="SignUp">
  
            <header class="SignUp__header">
              <h2 style="color: white;"><svg class="icon">
                  <use xlink:href="#icon-lock" />
                </svg>註冊</h2>
            </header>
        
            <form action="#" class="SignUp__form" method="POST">
                <div style="display: inline-flex; flex-direction: row;">
                    <div class="formPG">
                        <label for="Firstname">姓:</label>
                        <input type="text" id="Firstname" name="firstname" placeholder="姓氏">
                    </div>
                    <div class="formPG"> 
                        <label for="Lastname">名:</label>
                        <input type="text" id="Lastname" name="lastname" placeholder="名字">
                    </div>
                </div>
                <div class="formPG">
                    <label for="gender">性別:</label>
                    <select class="custom-select" id="gender">
                        <option>男</option>
                        <option>女</option>
                    </select>
                </div>
                <div class="formPG">
                    <label for="birthday">出生日期:</label>
                    <input type="date" id="birthday" name="birthday" value="2002-04-06" min="1963-01-01" max="2023-01-01">
                </div>
                <label class="my-n2">地址:</label>
                <div style="display: inline-flex; flex-direction: row;" class="formPG">
                    <input class="m-xl-2" type="text" id="city" placeholder="縣/市">
                    <input class="m-xl-2" type="text" id="area" placeholder="行政區">
                    <input class="m-xl-2" type="text" id="town" placeholder="鄉/鎮/里">
                    <input class="m-xl-2" type="text" id="road" placeholder="街/路">
                </div>
                
                <div>
                    <label for="email">電子信箱:</label>
                    <input type="email" id="email" name="email" placeholder="mail@address.com">
                </div>
        
                <div>
                    <label for="password">密碼:</label>
                    <input type="password" id="password" name="password" placeholder="密碼">
                </div>
        
                <div>
                    <input class="button btn btn-lg px-3 d-none d-lg-block" type="submit" value="註冊" id="sign_up">
                </div>
            </form>
        </div>
    </dialog>
  
    <!-- Booking Start -->
    <div class="container-fluid bg-light">
        <div class="container">
            <div class="row align-items-center">
                <div class="col-lg-5">
                    <div class="bg-primary py-5 px-4 px-sm-5">
                        <form class="py-5" method="post" action="query.php">
                            <div class="form-group">
                                <select class="custom-select border-0 px-4" style="height: 47px;" name="category">
                                    <?php echo $category;?> 
                                </select>
                            </div>
                            <div class="form-group">
                                <select class="custom-select border-0 px-4" style="height: 47px;" name="sex">
                                    <?php echo $sex;?> 
                                </select>
                            </div>

                            <div class="form-group">
                                <select class="custom-select border-0 px-4 " style="height: 47px;" name="shelter">
                                    <?php echo $shelter;?> 
                                </select>
                            </div>
                            <div>
                                <button class="btn btn-dark btn-block border-0 py-3" type="submit">搜尋</button>
                            </div>
                        </form>
                    </div>
                </div>
                <div class="col-lg-7 py-5 py-lg-0 px-3 px-lg-5">
                    <h1 class="display-4 mb-4">尋找 <span class="text-primary">心儀的浪浪</span></h1>
                    <p>左側填入各個條件來讓你更快速地尋找心儀的浪浪吧!</p>
                    <div class="row py-2">
                        <div class="col-sm-6">
                            <div class="d-flex flex-column">
                                <div class="d-flex align-items-center mb-2">
                                    <h1 class="flaticon-house font-weight-normal text-secondary m-0 mr-3"></h1>
                                    <h5 class="text-truncate m-0">寵物類型</h5>
                                </div>
                                <p>想養貓或狗的選項可以選到，想養其他的選項選其他呦!</p>
                            </div>
                        </div>
                        <div class="col-sm-6">
                            <div class="d-flex flex-column">
                                <div class="d-flex align-items-center mb-2">
                                    <h1 class="flaticon-food font-weight-normal text-secondary m-0 mr-3"></h1>
                                    <h5 class="text-truncate m-0">寵物性別</h5>
                                </div>
                                <p>寵物性別不同差別很大，想好要養哪個吧!</p>
                            </div>
                        </div>
                        <div class="col-sm-6">
                            <div class="d-flex flex-column">
                                <div class="d-flex align-items-center mb-2">
                                    <h1 class="flaticon-grooming font-weight-normal text-secondary m-0 mr-3"></h1>
                                    <h5 class="text-truncate m-0">品種</h5>
                                </div>
                                <p class="m-0">每個類型的浪浪都有很多品種，不清楚可以選擇無限制。</p>
                            </div>
                        </div>
                        <div class="col-sm-6">
                            <div class="d-flex flex-column">
                                <div class="d-flex align-items-center mb-2">
                                    <h1 class="flaticon-toy font-weight-normal text-secondary m-0 mr-3"></h1>
                                    <h5 class="text-truncate m-0">收容所</h5>
                                </div>
                                <p class="m-0">選個方便前往的收容所，來看看那邊有甚麼心儀的浪浪吧</p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!-- Footer Start -->
    <div class="container-fluid bg-dark text-white mt-5 px-sm-3 px-md-5">
        <div class="row pt-5">
            <div class="col-lg-5 col-md-12 mb-5">
                <h1 class="mb-3 display-5 text-capitalize text-white"><span class="text-primary">The </span>Way Home</h1>
                <p class="m-0">我們要做的是寵物認領養系統，整合各家收容所裡有的流浪動物讓他們能更容易被領養，協助領養人與收容所之間清晰的溝通橋樑，讓想領養寵物的飼主能清楚知道哪裡有可以領養的動物，以及寵物的詳細資訊。</p>
            </div>
            
            <div class="col-lg-7 col-md-12">
                    <div class="col-md-4 mb-5">
                        <h5 class="text-primary mb-4">Newsletter</h5>
                        <form action="">
                            <div class="form-group">
                                <input type="text" class="form-control border-0" placeholder="Your Name" required="required" />
                            </div>
                            <div class="form-group">
                                <input type="email" class="form-control border-0" placeholder="Your Email" required="required" />
                            </div>
                            <div>
                                <button class="btn btn-lg btn-primary btn-block border-0" type="submit">Submit Now</button>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="container-fluid text-white py-4 px-sm-3 px-md-5" style="background: #111111;">
        <div class="row">
            <div class="col-md-6 text-center text-md-left mb-3 mb-md-0">
                <p class="m-0 text-white">
                    &copy; <a class="text-white font-weight-bold" href="index.html">The Way Home</a>
                </p>
                <p class="m-1 text-white">
                    &copy; <a class="text-white font-weight-bold2" href="#">Web Admin 登入</a>
                </p>
            </div>
        </div>
    </div>
    <!-- Footer End -->



    <!-- Back to Top -->
    <a href="#" class="btn btn-lg btn-primary back-to-top"><i class="fa fa-angle-double-up"></i></a>


    <!-- JavaScript Libraries -->
    <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.bundle.min.js"></script>
    <script src="lib/easing/easing.min.js"></script>
    <script src="lib/owlcarousel/owl.carousel.min.js"></script>
    <script src="lib/tempusdominus/js/moment.min.js"></script>
    <script src="lib/tempusdominus/js/moment-timezone.min.js"></script>
    <script src="lib/tempusdominus/js/tempusdominus-bootstrap-4.min.js"></script>

    <!-- Contact Javascript File -->
    <script src="mail/jqBootstrapValidation.min.js"></script>
    <script src="mail/contact.js"></script>

    <!-- Template Javascript -->
    <script src="js/main.js"></script>
</body>

</html>
