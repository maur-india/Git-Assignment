<%@ Page Language="C#" AutoEventWireup="true" CodeFile="forgetpass.aspx.cs" Inherits="ppsclasses.forgetpass" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml" lang="en">

<head runat="server">
 <meta charset="utf-8"/>
  <meta content="width=device-width, initial-scale=1.0" name="viewport"/>
    <title>PPS-Classes</title>
      <!-- Favicons -->
  <link href="assets/img/icon.png" rel="icon"/>
  <link href="assets/img/apple-touch-icon.png" rel="apple-touch-icon"/>

  <!-- Google Fonts -->
  <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,700,700i|Raleway:300,400,500,700,800" rel="stylesheet"/>

  <!-- Vendor CSS Files -->
  <link href="assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet"/>
  <link href="assets/vendor/icofont/icofont.min.css" rel="stylesheet"/>
  <link href="assets/vendor/font-awesome/css/font-awesome.min.css" rel="stylesheet"/>
  <link href="assets/vendor/owl.carousel/assets/owl.carousel.min.css" rel="stylesheet"/>
  <link href="assets/vendor/venobox/venobox.css" rel="stylesheet"/>
  <link href="assets/vendor/aos/aos.css" rel="stylesheet"/>
  <link href="assets/vendor/remixicon/remixicon.css" rel="stylesheet"/>
  <link href="assets/css/style.css" rel="stylesheet"/>
  <link href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css" rel="stylesheet" />
    <script src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
    <script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
 <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.5.0/css/font-awesome.min.css"/>
    <style type="text/css">
        .form-gap {
            padding-top: 70px;
    }
        .form-gap1 {
            padding-bottom: 70px;
    }
    </style>
</head>
<body style=" background: -webkit-linear-gradient(135deg, #FF8F1C, #FFFFFF, #509E2F);">
 <header id="header">
    <div class="container d-flex align-items-center">

      <a href="Home.aspx" class="logo mr-auto"><img src="assets/img/logo1.png" alt=""></a>
      <!-- Uncomment below if you prefer to use a text logo -->
      <!-- <h1 class="logo mr-auto"><a href="index.html">Imperial</a></h1> -->

      <nav class="nav-menu d-none d-lg-block">
        <ul>
          <li><a href="Home.aspx">Home</a></li>
          <li><a href="login.aspx">Log In</a></li>
        </ul>
      </nav><!-- .nav-menu -->

    </div>
    </header><!-- End Header -->
<div class="form-gap"></div>
<div class="container">
	<div class="row">
		<div class="col-md-4 col-md-offset-4">
            <div class="panel panel-default">
              <div class="panel-body">
                <div class="text-center">
                  <h3><i class="fa fa-lock fa-4x"></i></h3>
                  <h2 class="text-center">Forgot Password?</h2>
                  <p>You can reset your password here.</p>
                  <div class="panel-body">
    
                    <form id="pass1" class="form" runat="server">
    
                      <div class="form-group">
                        <div class="input-group">
                          <span class="input-group-addon"><i class="fa fa-chain"></i></span>
                            
                           <asp:TextBox ID="cd1" runat="server" placeholder="Enter Code*" CssClass="form-control"></asp:TextBox>
                        </div>
                        <div class="input-group">
                          <span class="input-group-addon"><i class="fa fa-lock"></i></span>
                           <asp:TextBox ID="cd2" runat="server" placeholder="Enter New Password*" CssClass="form-control" TextMode="Password"></asp:TextBox>
                        </div>
                        <div class="input-group">
                          <span class="input-group-addon"><i class="fa fa-lock"></i></span>
                           <asp:TextBox ID="cd3" runat="server" placeholder="Enter Confirm Password*" CssClass="form-control" TextMode="Password"></asp:TextBox>
                           <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="Password don't match*" ControlToCompare="cd2" ControlToValidate="cd3" Display="Dynamic"></asp:CompareValidator>
                        </div>
                      </div>
                      <div class="form-group">
                        <asp:Button ID="Button1" runat="server" Text="SUBMIT" CssClass="btn btn-lg btn-primary btn-block" OnClick="Button1_Click" />
                        <br />
                        <asp:Button ID="reset" runat="server" Text="RESET PASSWORD" CssClass="btn btn-lg btn-primary btn-block" OnClick="reset_Click"  />
                      </div>
                    </form>
                  </div>
                </div>
              </div>
            </div>
          </div>
	</div>
    </div>
    <div class="form-gap1"></div>
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
