<?php
   require_once 'db.php';
   if (isset($_GET['prmk'])){
      $prmk=$_GET['prmk'];
      $_SESSION['prmk']=$prmk;
   }else{
      $prmk=$_SESSION['prmk'];
   }
   $sql  = "select shelter,category,varity from pet where prmk=$prmk";
   $result =$db->query($sql);
   $row=$result->fetchRow();
   $shelter=$row[0];
   $category=$row[1];
   $varity=$row[2];
   $sql  = "select sex,tel,city,district,town,street,personal_id from members where email='".$_SESSION['email']."'";
   $result =$db->query($sql);
   $row=$result->fetchRow();
   $sex=$row[0];
   $tel=$row[1];
   $addr=$row[2].$row[3].$row[4].$row[5];
   $id=$row[6];
?>
<html>
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
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
    <!-- Customized Bootstrap Stylesheet -->
	<link href="css/style.css" rel="stylesheet">
   <?php if ($_SESSION['email']==''){?>
        <script>
         $(document).ready(function () {
            $('#loginpg').show();
	    $('#signupbtn').click(function () {
		 $('#loginpg').hide();
		 $('#signuppg').show();
            });
	    $('#loginbtn').click(function () {
		 $('#loginpg').show();
		 $('#signuppg').hide();
            });
         });
	</script>
   <?php }?>
	</head>
	<body class="bg-light">
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
						<a href="service.html" class="nav-item nav-link">浪浪目錄</a>
						<a href="about.html" class="nav-item nav-link">收容所</a>
						<a href="contact.html" class="nav-item nav-link">支持我們</a>
					</div>
 <?php if ($_SESSION['email']==''){?>
                <div>
                    <button id="loginbtn" class="btn btn-lg btn-primary px-3 d-none d-lg-block m-xl-3">登入</button>

                </div>
		<div>
                    <button id="signupbtn" class="btn btn-lg btn-secondary px-3 d-none d-lg-block">註冊</button>
                </div>
<?php }?>
			</nav>
		</div>
    <dialog id="loginpg">
        <div class="login">

            <header class="login__header">
              <h2><svg class="icon">
                  <use xlink:href="#icon-lock" />
                </svg>登入</h2>
            </header>

            <form action="login.php" class="login__form" method="POST">

              <div>
                <label for="email">E-mail address</label>
                <input type="email" id="email" name="email" placeholder="mail@address.com">
              </div>

              <div>
                <label for="password">Password</label>
                <input type="password" id="password" name="password" placeholder="password">
              </div>

              <div>
                <input class="button btn btn-lg px-3 d-none d-lg-block" type="submit" value="Sign In">
              </div>

            </form>

          </div>
    </dialog>
    <dialog id="signuppg" >
        <div class="SignUp">

            <header class="SignUp__header">
              <h2><svg class="icon">
                  <use xlink:href="#icon-lock" />
                </svg>註冊</h2>
            </header>

            <form action="#" class="SignUp__form" method="POST">
                <div style="display: inline-flex; flex-direction: row;">
                    <div class="formPG">
                        <label for="Firstname">First Name:</label>
                        <input type="text" id="Firstname" name="firstname" placeholder="FirstName">
                    </div>
                    <div class="formPG">
                        <label for="Lastname">Last Name:</label>
                        <input type="text" id="Lastname" name="lastname" placeholder="LastName">
                    </div>
                </div>
                <div class="formPG">
                    <label for="gender">Gender:</label>
                    <select class="custom-select" id="gender">
                        <option>男</option>
                        <option>女</option>
                    </select>
                </div>
                <div class="formPG">
                    <label for="gender">Birthday:</label>
                    <input type="date" id="birthday" name="birthday" value="2002-04-06" min="1963-01-01" max="2023-01-01">
                </div>
                <div>
                    <label for="email">E-mail address:</label>
                    <input type="email" id="email" name="email" placeholder="mail@address.com">
                </div>

                <div>
                    <label for="password">Password:</label>
                    <input type="password" id="password" name="password" placeholder="password">
                </div>

                <div>
                    <input class="button btn btn-lg px-3 d-none d-lg-block" type="submit" value="Sign Up" id="sign_up">
                </div>
            </form>
        </div>
    </dialog>
		<div class="reportPage align">
			<div class="reportsize">
				<header class="reportheader text-center">
					<h2 style="color: white;"><svg class="icon">
					<use xlink:href="#icon-lock" />
					</svg><?php echo $_SESSION['cname'].':您好'?>，請填寫領養申請表單</h2>
			  	</header>
				<form  action="SEND ADDRESS reportform" id="ft-form" method="POST" accept-charset="UTF-8" enctype="multipart/form-data">
					<fieldset>
					  <legend></legend>
						<label class="fixplace_left fixplace_right">
							收容所
							<input type="text" name="shelter" value="<?php echo $shelter;?>" disabled>
						</label>
					  <label class="fixplace_left fixplace_right">
						寵物收容編號 *
						<input type="text" name="Pet_number" value="<?php echo $prmk;?>" disabled>
					  </label>
					  <div class="two-cols">
						<label class="fixplace_left">
						  寵物類別 *
						<input type="text" name="category" value="<?php echo $category;?>" disabled>
						</label>
						<label class="fixplace_right">
						  寵物品種 *
						<input type="text" name="varity" value="<?php echo $varity;?>" disabled>
						</label>
					  </div>
					  
						<label class="fixplace_left fixplace_right">
						  姓名 *
						  <input type="text" name="cname" value="<?php echo $_SESSION['cname'];?>" disabled>
						</label >
					  <label class="fixplace_left fixplace_right">
						性別
						  <input type="tel" name="sex" value="<?php echo $sex;?>" disabled>
					  </label>
						<label class="fixplace_left fixplace_right">
						  連絡電話 *
						  <input type="tel" name="Phone" value="<?php echo $tel;?>" disabled>
						</label>
						<label class="fixplace_left fixplace_right">
						  身分證字號 *
						  <input type="text" name="PersonalID" value="<?php echo $id;?>" disabled>
						</label>
					  <div class="two-cols">
						<label class="fixplace_left">
						  地址 *
						  <input type="text" name="addr" value="<?php echo $addr;?>" placeholder="縣市" disabled>
						</label>
					  </div>
					
					</fieldset>
					<div class="fixplace_left">
						<button class="btn btn-lg btn-primary btn-block border-0" style="width: 200px;" type="submit">送出</button>
					</div>
				</form>
			</div>

			
        </div>
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
	</body>
</html>
