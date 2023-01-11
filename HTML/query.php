<?php
   require_once 'db.php';
   $con=' where ';
   $category=$_POST['category'];
   if ($category!='無限制'){
      $con.="category='$category' and ";
   }
   $sex=$_POST['sex'];
   if ($sex!='無限制'){
      $con.="sex='$sex' and ";
   }
   $shelter=$_POST['shelter'];
   if ($shelter!='無限制'){
      $con.="shelter='$shelter' and ";
   }

   if ($con!=''){
      $con=substr($con,0,strlen($con)-5);
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
    <link href="img/icon.ico" rel="icon">

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



    <!-- Team Start -->
    <div class="container mt-5 pt-5 pb-3" >
        <div class="d-flex flex-column text-center mb-5">
            <h4 class="text-secondary mb-3">目錄</h4>
            <h1 class="display-4 m-0"><span class="text-primary">浪浪</span>公告</h1>
        </div>
	<div class="row">
            <?php
            $sql  = "select category,sex,varity,shelter,img,prmk from pet $con";
            $result =$db->query($sql);
	    while($row=$result->fetchRow()){
		$category=$row[0];
		$sex=$row[1];
		$varity=$row[2];
		$shelter=$row[3];
		$img=$row[4];
		$prmk=$row[5];
            ?>
            <div class="col-lg-3 col-md-6">
                <div class="team card position-relative overflow-hidden border-0 mb-4">
                    <!-- class = "team" 更改介紹欄大小-->
		    <img class="card-img-top" src="img/<?php echo $img;?>" style="height: 300px;width: 255px;margin-left: auto;margin-right: auto;" alt="">
                    <div class="card-body text-center p-0">
                        <div class="team-text d-flex flex-column justify-content-center bg-light">
			<h5>類別:<span><?php echo $category;?></span></h5>
                            <h5>性別:<span><?php echo $sex;?></span></h5>
                            <h5>品種:<span><?php echo $varity;?></span></h5>
                            <h5>收容所:<span><?php echo $shelter;?></span></h5>
                        </div>
                        <div class="team-social d-flex align-items-center justify-content-center bg-dark">
                            <!-- class = "team-social" 更改隱藏欄位-->
			    <a class="btn btn-outline-primary rounded-circle text-center mr-2 px-0" style="width: 36px; height: 36px;" href="pet.php?prmk=<?php echo $prmk;?>"><i class="fas fa-angle-double-right"></i></a>
                            <a style="color:#ED6436;">詳細資訊</a> 

                        </div>
                    </div>
                </div>
	    </div>
        <?php }?>
        </div>
    </div>
    <!-- Team End -->


   
     <!-- Footer Start -->
     <div class="container-fluid bg-dark text-white mt-5 px-sm-3 px-md-5">
        <div class="row pt-5">
            <div class="col-lg-5 col-md-12 mb-5">
                <h1 class="mb-3 display-5 text-capitalize text-white"><span class="text-primary">The </span>Way Home</h1>
                <p class="m-0">我們要做的是寵物認領養系統，整合各家收容所裡有的流浪動物讓他們能更容易被領養，協助領養人與收容所之間清晰的溝通橋樑，讓想領養寵物的飼主能清楚知道哪裡有可以領養的動物，以及寵物的詳細資訊。</p>
            </div>
            
            <div class="col-lg-7 col-md-12">
                <div class="row">
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
                    &copy; <a class="text-white font-weight-bold" href="">The Way Home</a>
                </p>
                <p class="m-1 text-white">
                    &copy; <a class="text-white font-weight-bold2" href="#">Web Admin 登入</a>
                </p>

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
