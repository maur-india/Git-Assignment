<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="adminhome.aspx.cs" Inherits="ppsclasses.adminhome" %>

<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta content="width=device-width, initial-scale=1.0" name="viewport">

  <title>PPS Classes - Chemistry</title>
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
	
  <!-- Template Main CSS File -->
  <link href="assets/css/style.css" rel="stylesheet">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.5.0/css/font-awesome.min.css">
    <script type="text/javascript">
        function preventBack() { window.history.forward(); }
        setTimeout("preventBack()", 0);
        window.onunload = function () { null };
    </script>
    <style type="text/css">
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
        -webkit-animation: mover 2s infinite  alternate;
        animation: mover 1s infinite  alternate;
    }
    @-webkit-keyframes mover {
    0% { transform: translateY(0); }
    100% { transform: translateY(-20px); }
    }
    @keyframes mover {
    0% { transform: translateY(0); }
    100% { transform: translateY(-20px); }
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
    /*btn1*/
 a {
  font-size: 18px;
  padding: 1rem 2rem;
  color: #9294f8;
  text-transform: uppercase;
  font-family: 'Arial Rounded MT';
}

.btn {
  text-decoration: none;
  border: 1px solid rgb(146, 148, 248);
  position: relative;
  overflow: hidden;
  width: 300px;
}

.btn:hover {
  box-shadow: 1px 1px 25px 10px rgba(146, 148, 248, 0.4);
  letter-spacing: 3px;
}

.btn:before {
  content: "";
  position: absolute;
  top: 0;
  left: -100%;
  width: 100%;
  height: 100%;
  background: linear-gradient(
    120deg,
    transparent,
    rgba(146, 148, 248, 0.4),
    transparent
  );
  transition: all 650ms;
}

.btn:hover:before {
  left: 100%;
}
  /*btn2*/ 
  button
{
    display: block;
    width: 300px;
    padding: 40px;
    border: 0;
    cursor: pointer;
    border-radius: 2px;
    transform: translateY(-50%);
    box-shadow: 0 5px 10px -5px #94a6af;
    position: relative;
    overflow: hidden;
}

button:before, button:after
{
    content: "";
    position: absolute;
    top: 0;
    right: 0;
    bottom: 0;
    left: 0;
}

button:before
{
    transform: scale(1);
    background-image: url('https://himalayasingh.github.io/button-hover-effect-1/img/bg.jpg');
    background-size: cover;
    transition: 0.3s ease transform;
    z-index: 1;
}

button:after
{
    background-color: #000;
    opacity: 0.16;
    z-index: 2;
}

button div
{
    position: absolute;
    top: 0;
    right: 0;
    bottom: 0;
    left: 0;
    z-index: 3;
}

button div:before, button div:after
{
    position: absolute;
    top: 0;
    right: 0;
    left: 0;
    color: #fff;
    font-size: 30px;
    font-family: Verdana, Geneva, Tahoma, sans-serif;
    font-weight: bold;
    line-height: 1;
    text-align: center;
    padding: 25px 0;
    transition: 0.3s ease all;
}

button div:before
{
    content: "LOG";
    letter-spacing: 2;
    opacity: 1;
    transform: scale(1);
}

button div:after
{
    content: "OUT";
    letter-spacing: -10px;
    transform: scale(0);
    opacity: 0;
}

button:hover:before
{
    transform: scale(1.3);
}

button:hover div:before
{
    letter-spacing: 3px;
    opacity: 0;
    transform: scale(4);
}

button:hover div:after
{
    letter-spacing: 0;
    opacity: 1;
    transform: scale(1);
}
/*btn3*/
div[class*=box] {
height: 33.33%;
width: 100%; 
  display: flex;
  justify-content: center;
  align-items: center;
}
.box-2 {  }
.btn11 {
line-height: 50px;
height: 50px;
text-align: center;
width: 250px;
cursor: pointer;
}
.btn-two {
color: #FFF;
transition: all 0.5s;
position: relative;
}
.btn-two span {
z-index: 2;
display: block;
position: absolute;
width: 100%;
height: 100%;
}
.btn-two::before {
content: '';
position: absolute;
top: 0;
left: 0;
width: 100%;
height: 100%;
z-index: 1;
transition: all 0.5s;
border: 1px solid rgba(255,255,255,0.2);
background-color: rgba(255,255,255,0.1);
}
.btn-two::after {
content: '';
position: absolute;
top: 0;
left: 0;
width: 100%;
height: 100%;
z-index: 1;
transition: all 0.5s;
border: 1px solid rgba(255,255,255,0.2);
background-color: rgba(255,255,255,0.1);
}
.btn-two:hover::before {
  transform: rotate(-45deg);
  background-color: rgba(255,255,255,0);
}
.btn-two:hover::after {
  transform: rotate(45deg);
  background-color: rgba(255,255,255,0);
}
</style>

</head>
<body>
    <form id="f2" runat="server" >
    <header id="header">
    
      <div class="container d-flex align-items-center">

      <a href="adminhome.aspx" class="logo mr-auto"><img src="assets/img/logo1.png" alt=""></a>
      <!-- Uncomment below if you prefer to use a text logo -->
      <!-- <h1 class="logo mr-auto"><a href="index.html">Imperial</a></h1> -->

      <nav class="nav-menu d-none d-lg-block">
        <ul>
          <li class="active"><a href="adminhome.aspx">Home</a></li>
          <li class="active"><a href="#"> FEES </a></li>
          <li class="active"><a href="addresult.aspx"> Add Result </a></li>
          <li class="active"><a href="viewadlist.aspx">Admission List</a></li>
        </ul>
      </nav><!-- .nav-menu -->

    </div>
   
  </header><!-- End Header -->
  <div id="login"> 
    
   <div class="container">
	
       <div class="d-flex justify-content-center h-100">
       
		<div class="card">
			<div class="card-header">
				<div class="d-flex justify-content-end social_icon">
					<span><i class="fas fa-book"></i></span>
					<span><i class="fab fa-google-plus-square"></i></span>
					<span><i class="fab fa-twitter-square"></i></span>
				</div>
                <h3>Welcome Admin</h3>
			</div>
			<div class="card-body">
               <center>
                   <a href="#" class="btn"> <font color="#9294f8"> <font family = "Arial Rounded MT Bold">ADD NOTICE</font></a>
                   <br />
                   <a href="addsm.aspx" class="btn"> <font color="#9294f8"> <font family = "Arial Rounded MT Bold">ADD STUDY MATERIAL</font></a>
                   <br /><br />
                   <div class="box-2">
                        <div class="btn11 btn-two">
                            <span>
                                <a href="addstudent.aspx">
                                 ADD STUDENT
                                </a>
                            </span>
                        </div>
                    </div>
                   <br /><br />
                   <div>
                  <button runat="server" onserverclick="Unnamed_ServerClick">
                        <div></div>
                  </button>
                  </div>
               </center>
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

