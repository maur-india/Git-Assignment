<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="payment.aspx.cs" Inherits="ppsclasses.payment" %>

<!DOCTYPE html>
<html lang="en">
<head runat="server">
   <meta charset="utf-8">
  <meta content="width=device-width, initial-scale=1.0" name="viewport">

  <title>PPS Classes - Admission</title>
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
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.5.0/css/font-awesome.min.css">
  <!--Fontawesome CDN-->
  <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.3.1/css/all.css">
  <!-- Template Main CSS File -->
  <link href="assets/css/style.css" rel="stylesheet">
  
  <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
  <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <style type="text/css">
  #myVideo {
  position: fixed;
  right: 0;
  bottom: 0;
  min-width: 100%; 
  min-height: 100%;
  z-index: -1;
  }
     .content2{
    background-size: cover;
    background-repeat: no-repeat;
    padding-top: 150px;
    font-family: sans-serif;
	overflow: hidden;
    box-sizing: border-box;
    width: 100%;
    height: 300px;

   } 
.content2 .slider {
    background-color: #fff;
    box-shadow: inset 0 0 2px hsla(0,0%,0%,.2),
                0 3px 1px hsla(0,0%,100%,.75),
                0 -1px 1px 2px hsla(0,0%,0%,.1);
    height: 18.75em;
    left: 50%;
    margin: -9.875em -13em;
    padding: .5em;
    position: absolute;
    top: 50%;
    width: 25em;
}

/* Frame */

.content2 .slider:before {
    background-color: #22130c;
    bottom: -2.5em;
    box-shadow: inset 0 1px 1px 1px hsla(0,0%,100%,.2),
                inset 0 -2px 1px hsla(0,0%,0%,.4),
                0 5px 50px hsla(0,0%,0%,.25),
                0 20px 20px -15px hsla(0,0%,0%,.2),
                0 30px 20px -15px hsla(0,0%,0%,.15),
                0 40px 20px -15px hsla(0,0%,0%,.1);
    content: '';
    left: -2.5em;
    position: absolute;
    right: -2.5em;
    top: -2.5em;
    z-index: -1;
}

/* Mat */

.content2 .slider:after {
    background-color: #fff5e5;
    bottom: -1.5em;
    box-shadow: 0 2px 1px hsla(0,0%,100%,.2),
                0 -1px 1px 1px hsla(0,0%,0%,.4),
                inset 0 2px 3px 1px hsla(0,0%,0%,.2),
                inset 0 4px 3px 1px hsla(0,0%,0%,.2),
                inset 0 6px 3px 1px hsla(0,0%,0%,.1);
    content: '';
    left: -1.5em;
    position: absolute;
    right: -1.5em;
    top: -1.5em;
    z-index: -1;
}

/* Slides */

.content2 .slider li {
    box-shadow: 0 -1px 0 2px hsla(0,0%,0%,.03);
    list-style:none;
    position: absolute;
}
.content2 .slider input {
    display: none;
}

/* Navigation */

.content2 .slider label {
    background-color: #111;
    background-image: linear-gradient(transparent, hsla(0,0%,0%,.25));
    border: .2em solid transparent;
    bottom: .5em;
    border-radius: 100%;
    cursor: pointer;
    display: block;
    height: .5em;
    left: 24em;
    opacity: 0;
    position: absolute;
    transition: .25s;
    width: .5em;
    visibility: hidden;
    z-index: 10;
}
.content2 .slider label:after {
    border-radius: 100%;
    bottom: -.2em;
    box-shadow: inset 0 0 0 .2em #111,
                inset 0 2px 2px #000,
                0 1px 1px hsla(0,0%,100%,.25);
    content: '';
    left: -.2em;
    position: absolute;
    right: -.2em;
    top: -.2em;
}
.content2 .slider:hover label {
    opacity: 1;
    visibility: visible;
}
.content2 .slider input:checked + label {
    background-color: #fff;
}
.content2 .slider:hover li:nth-child(1) label {
    left: .5em;
}
.content2 .slider:hover li:nth-child(2) label {
    left: 2em;
}
.content2 .slider:hover li:nth-child(3) label {
    left: 3.5em;
}
.content2 .slider:hover li:nth-child(4) label {
    left: 5em;
}

/* Images */

.content2 .slider img {
    height: 18.75em;
    opacity: 0;
    transition: .25s;
    width: 25em;
    vertical-align: top;
    visibility: hidden;
}
.content2 .slider li input:checked ~ img {
    opacity: 1;
    visibility: visible;
    z-index: 10;
}
    .content1{
        background-size: cover;
        background-repeat: no-repeat;
        height: 100%;
        font-family: 'Numans', sans-serif;
        padding-top: 80px;
        padding-bottom: 100px;
        position: relative;
    }
    .container{
        height: 100%;
        align-content: center;
    }
    .card{
        height: 100%;
        margin-top: auto;
        margin-bottom: auto;
        width: 800px;
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
        width: 140px;
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
    .button1 {
    background: linear-gradient(to left, #0000ff 0%, #ff0066 100%);
	border: 2px solid #fff;
	padding: 12px 34px;
	color: #fff;
	transition: 0.4s;
	border-radius: 50px;
    font-size: 25px;
	box-shadow: 2px 2px 15px rgba(0, 255, 255, 0.3);
    }

    .button1:hover {
    background-image:linear-gradient(to bottom right, #FF8F1C,#FFFFFF, #509E2F);
	box-shadow: 2px 2px 15px rgba(255, 102, 0, 0.3);
	border: 2px solid #fff;
	color: blue;
    font-stretch: extra-expanded;
	font-weight: bold;
    letter-spacing: 3px;
    font-size: 25px;
    }
</style>
</head>
<body>
    
    <video autoplay muted loop id="myVideo">
    <source src="assets/img/login-bg.mp4" type="video/mp4">
    </video>

     <header id="header">
    <div class="container d-flex align-items-center">

      <a href="Home.aspx" class="logo mr-auto"><img src="assets/img/logo1.png" alt=""></a>
      <!-- Uncomment below if you prefer to use a text logo -->
      <!-- <h1 class="logo mr-auto"><a href="index.html">Imperial</a></h1> -->

      <nav class="nav-menu d-none d-lg-block">
        <ul>
          <li><a href="Home.aspx">Home</a></li>
          <li><a href="Home.aspx#about">About</a></li>
          <li><a href="Home.aspx">Notice</a></li>
          <li><a href="admission.aspx">Admission</a></li>
          <li class="active"><a href="payment.aspx">Fees</a></li>
          <li><a href="Home.aspx#contact">Contact Us</a></li>
        </ul>
      </nav><!-- .nav-menu -->

    </div>
    </header><!-- End Header -->

   
    <!-- ======= Breadcrumbs ======= -->
    <section class="breadcrumbs">
      <div class="container">

        <div class="d-flex justify-content-between align-items-center">
          <h2><font color="white" weight="200px"><b>Payment Page</b></font></h2>
          <ol>
            <li><a href="Home.aspx">Home</a></li>
            <li><font color="white">Fees</font></li>
          </ol>
        </div>

      </div>
    </section><!-- End Breadcrumbs -->
     <div class="content2">
       <ul class="slider">
    <li>
        <input type="radio" id="slide1" name="slide" checked>
        <label for="slide1"></label>
        <img src="assets/img/qr.png" alt="Panel 1">
    </li>
    <li>
        <input type="radio" id="slide2" name="slide">
        <label for="slide2"></label>
       <img src="assets/img/qr2.jpeg" alt="Panel 2">
    </li>
    <li>
        <input type="radio" id="slide3" name="slide">
        <label for="slide3"></label>
        <img src="assets/img/qr.png" alt="Panel 3">
    </li>
    <li><a href="http://cssslider.com/">
        <input type="radio" id="slide4" name="slide">
        <label for="slide4"></label>
        <img src="assets/img/qr.png" alt="Panel 4"></a>
    </li>
</ul>
     </div>
    <div class="content1">
    <div class="container">
	<div class="d-flex justify-content-center h-100">
    <div class="card">
			<div class="card-header">
				<h3>Payment Form</h3>
				<div class="d-flex justify-content-end social_icon">
					<span><i class="fab fa-facebook-square"></i></span>
					<span><i class="fab fa-google-plus-square"></i></span>
					<span><i class="fab fa-twitter-square"></i></span>
				</div>
			</div>
			<div class="card-body">
				<form id="form1" runat="server">
					<div class="input-group form-group">
						<div class="input-group-prepend">
							<span class="input-group-text"><i class="fas fa-user"></i> &nbsp Full Name*</span>
						</div>
                        <asp:TextBox ID="tb1" runat="server" placeholder="First Name" required=""></asp:TextBox>
                        <asp:RegularExpressionValidator ID="tb1rv1" runat="server" ErrorMessage="Invalid" ControlToValidate="tb1" ValidationExpression="^[a-zA-Z'.\s]{1,30}" Display="Dynamic"></asp:RegularExpressionValidator>
                        &nbsp &nbsp <asp:TextBox ID="tb3" runat="server" placeholder="Middle & Last Name" Width="340px"></asp:TextBox>
                        <asp:RegularExpressionValidator ID="tb3rv2" runat="server" ErrorMessage="Invalid" ValidationExpression="^[a-zA-Z'.\s]{1,30}" Display="Dynamic" ControlToValidate="tb3"></asp:RegularExpressionValidator>
                    </div>
                    <div class="input-group form-group">
						<div class="input-group-prepend">
							<span class="input-group-text"><i class="fas fa-book-open"></i> &nbsp Course*</span>
						</div>
                        <asp:TextBox ID="tb2" runat="server" placeholder="Course Name"></asp:TextBox> &nbsp &nbsp
                        <asp:RegularExpressionValidator ID="tb2rv3" runat="server" ErrorMessage="Invalid" ValidationExpression="^[a-zA-Z'.\s]{1,30}" Display="Dynamic" ControlToValidate="tb2"></asp:RegularExpressionValidator>
                        <div class="input-group-prepend">
							<span class="input-group-text"><i class="fas fa-calendar"></i> &nbsp Fees Month*</span>
						</div>
                        <asp:DropDownList ID="DD1" runat="server" Width="200px" required="">
                            <asp:ListItem text="January" value="January"></asp:ListItem>
                            <asp:ListItem text="February" value="February"></asp:ListItem>
                            <asp:ListItem text="March" value="March"></asp:ListItem>
                            <asp:ListItem text="April" value="April"></asp:ListItem>
                            <asp:ListItem text="May" value="May"></asp:ListItem>
                            <asp:ListItem text="June" value="June"></asp:ListItem>
                            <asp:ListItem text="July" value="July"></asp:ListItem>
                            <asp:ListItem text="August" value="August"></asp:ListItem>
                            <asp:ListItem text="September" value="September"></asp:ListItem>
                            <asp:ListItem text="October" value="October"></asp:ListItem>
                            <asp:ListItem text="November" value="November"></asp:ListItem>
                            <asp:ListItem text="December" value="December"></asp:ListItem>
                        </asp:DropDownList>
                    </div>
                    <div class="input-group form-group">
						<div class="input-group-prepend">
							<span class="input-group-text"><i class="fas fa-camera"></i> &nbsp Screenshot*</span>
						</div>
                        <asp:FileUpload ID="payupload" runat="server" Width="300px" BackColor=" #FFFF00" ForeColor="Red" required="" />
                         &nbsp &nbsp<div class="input-group-prepend">
							<span class="input-group-text"><i class="fas fa-money"></i> &nbsp Mode*</span>
						</div>
                       <asp:DropDownList ID="DD2" runat="server" Width="103px" required="">
                            <asp:ListItem text="UPI" value="UPI"></asp:ListItem>
                            <asp:ListItem text="NEFT" value="NEFT"></asp:ListItem>
                            <asp:ListItem text="IMPS" value="IMPS"></asp:ListItem>
                        </asp:DropDownList>
                    </div>
                    <div class="form-group">
                        <asp:Button ID="paymentbtn" runat="server" Text="SUBMIT" CssClass="button1" OnClick="paymentbtn_Click" />
			        </div>
                </form>
            </div>
            <div class="card-footer">
				<div class="d-flex justify-content-left links">
					<h1><font color="#00FF00">Bank Details &nbsp</font></h1>
                </div>
                <div class="d-flex justify-content-left links">   
                    <h4><font color="white">Account No: &nbsp</font></h4>
                </div>
                <div class="d-flex justify-content-left links">
                    <h4><font color="white">IFSC Code: &nbsp</font></h4>
                </div>
                <div class="d-flex justify-content-left links">
                    <h4><font color="white">Account Holder Name: &nbsp</font></h4>
				</div>
				<div class="d-flex justify-content-left">
					<h5><font color="yellow">NB:</font> <font color="White">1.*Pay the Monthly Fees online within 10 days. <br /> 2. *After Verification of Screenshot of Payment Updated Fees Status will reflect in your Student Portal.</h5>
		        </div>
		   </div>
    </div> 
  </div>
  </div>
  </div>
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
</body>
</html>   

