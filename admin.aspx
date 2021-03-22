<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="admin.aspx.cs" Inherits="ppsclasses.admin" %>

<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta content="width=device-width, initial-scale=1.0" name="viewport">

  <title>PPS Classes - log In</title>
  <meta content="" name="descriptison">
  <meta content="" name="keywords">

  <meta property="og:title" content="">
  <meta property="og:image" content="">
  <meta property="og:url" content="">
  <meta property="og:site_name" content="">
  <meta property="og:description" content="">

  <meta name="twitter:card" content="summary">
  <meta name="twitter:site" content="">
  <meta name="twitter:title" content="">
  <meta name="twitter:description" content="">
  <meta name="twitter:image" content="">

  <!-- Favicons -->
  <link href="assets/img/icon.png" rel="icon">
  <link href="assets/img/apple-touch-icon.png" rel="apple-touch-icon">

  <!-- Google Fonts -->
  <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,700,700i|Raleway:300,400,500,700,800" rel="stylesheet">

  <!-- Vendor CSS Files -->
  <link href="assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <link href="assets/vendor/icofont/icofont.min.css" rel="stylesheet">
  <link href="assets/vendor/font-awesome/css/font-awesome.min.css" rel="stylesheet">
  <link href="assets/vendor/owl.carousel/assets/owl.carousel.min.css" rel="stylesheet">
  <link href="assets/vendor/venobox/venobox.css" rel="stylesheet">
  <link href="assets/vendor/aos/aos.css" rel="stylesheet">
  <link href="assets/vendor/remixicon/remixicon.css" rel="stylesheet">
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.5.0/css/font-awesome.min.css">
  <!--Fontawesome CDN-->
  <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.3.1/css/all.css" integrity="sha384-mzrmE5qonljUremFsqc01SB46JvROS7bZs3IO2EmfFsd15uHvIt+Y8vEf7N7fWAU" crossorigin="anonymous">
  <!-- Template Main CSS File -->
  <link href="assets/css/style.css" rel="stylesheet">
  
  <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
  <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <style type="text/css">
   @import url('https://fonts.googleapis.com/css?family=Numans');
   #login{
        background-image: url('http://getwallpapers.com/wallpaper/full/a/5/d/544750.jpg');
        background-size: cover;
        background-repeat: no-repeat;
        height: 100%;
        font-family: 'Numans', sans-serif;
        padding-top: 80px;
        padding-bottom: 100px;
    }

    .container{
        height: 100%;
        align-content: center;
        
    }

    .card{
        height: 370px;
        margin-top: auto;
        margin-bottom: auto;
        width: 400px;
        background-color: rgba(0,0,0,0.5) !important;
    }

    .social_icon span{
        font-size: 60px;
        margin-left: 10px;
        color: #FFC312;
    }

    .social_icon span:hover{
    color: white;
    cursor: pointer;
    }

    .card-header h3{
    color: white;
    }

    .social_icon{
        position: absolute;
        right: 20px;
        top: -45px;
    }

    .input-group-prepend span{
        width: 50px;
        background-color: #FFC312;
        color: black;
        border:0 !important;
    }

    input:focus{
        outline: 0 0 0 0  !important;
        box-shadow: 0 0 0 0 !important;
    }

    .remember{
        color: white;
    }

    .remember input{
        width: 20px;
        height: 20px;
        margin-left: 15px;
        margin-right: 5px;
    }

    .login_btn{
        color: black;
        background-color: #FFC312;
        width: 100px;
    }

    .login_btn:hover{
        color: black;
        background-color: white;
    }

    .links{
        color: white;
    }

    .links a{
        margin-left: 4px;
    }
  </style>
</head>
<body>
    <header id="header">
    <div class="container d-flex align-items-center">

      <a href="Home.aspx" class="logo mr-auto"><img src="assets/img/logo1.png" alt=""></a>
      <!-- Uncomment below if you prefer to use a text logo -->
      <!-- <h1 class="logo mr-auto"><a href="index.html">Imperial</a></h1> -->

      <nav class="nav-menu d-none d-lg-block">
        <ul>
          <li><a href="Home.aspx">Home</a></li>
          <li><a href="login.aspx">Student</a></li>
        </ul>
      </nav><!-- .nav-menu -->

    </div>
    </header><!-- End Header -->
    
    <!-- Login -->
  <form id="form2" runat="server">  
    <div id="login">
    <div class="container">
	<div class="d-flex justify-content-center h-100">
        <div class="card">
			<div class="card-header">
				<h3>Admin</h3>
				<div class="d-flex justify-content-end social_icon">
					<span><i class="fab fa-facebook-square"></i></span>
					<span><i class="fab fa-google-plus-square"></i></span>
					<span><i class="fab fa-twitter-square"></i></span>
				</div>
			</div>
			<div class="card-body">
				
					<div class="input-group form-group">
						<div class="input-group-prepend">
							<span class="input-group-text"><i class="fas fa-user"></i></span>
						</div>
						<asp:TextBox ID="TextBox1" CssClass="form-control" runat="server" Placeholder="Enter your Code"></asp:TextBox>
					</div>
					<div class="input-group form-group">
						<div class="input-group-prepend">
							<span class="input-group-text"><i class="fas fa-key"></i></span>
						</div>
                        <asp:TextBox ID="TextBox2" runat="server" CssClass="form-control" placeholder="Enter Password" TextMode="Password" ></asp:TextBox>
					</div>
					<div class="row align-items-center remember">
                        <asp:CheckBox ID="CheckBox2" runat="server" Text="Remember me"/>
					</div>
					<div class="form-group">
                        <asp:Button ID="Button1" runat="server" Text="Log In" OnClick="admin_Click" CssClass="btn float-right login_btn" />
					</div>
                    <div id="Div1" runat="server" visible="false" class="alert alert-danger">
                        <strong>Error!</strong>
                        <asp:Label ID="Label1" runat="server" />
                    </div>
				
			</div>
			<div class="card-footer">
				<div class="d-flex justify-content-center links">
					Forgot your password?<a href="forget.aspx"><font color="yellow">Click Here</font></a>
				</div>
			</div>
		</div>

	  </div>
   </div>
 </div>
 </form>
 <footer id="footer">
    <div class="container">
      <div class="row">
        <div class="col-md-12">
          <div class="copyright">
            &copy; Copyright <strong>PPS Classes</strong>. All Rights Reserved
          </div>
          <div class="credits">
            Designed by <a href="#"> Suman Maur </a>
          </div>
        </div>
      </div>
    </div>
  </footer><!-- End Footer -->
  <a href="#" class="back-to-top"><i class="fa fa-chevron-up"></i></a>

  <!-- Vendor JS Files -->
  <script src="assets/vendor/jquery/jquery.min.js"></script>
  <script src="assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
  <script src="assets/vendor/jquery.easing/jquery.easing.min.js"></script>
  <script src="assets/vendor/php-email-form/validate.js"></script>
  <script src="assets/vendor/jquery-sticky/jquery.sticky.js"></script>
  <script src="assets/vendor/isotope-layout/isotope.pkgd.min.js"></script>
  <script src="assets/vendor/owl.carousel/owl.carousel.min.js"></script>
  <script src="assets/vendor/venobox/venobox.min.js"></script>
  <script src="assets/vendor/typed.js/typed.min.js"></script>
  <script src="assets/vendor/aos/aos.js"></script>
  <script src="assets/vendor/counterup/counterup.min.js"></script>
  <!-- Template Main JS File -->
  <script src="assets/js/main.js"></script>
</body>
</html>
