<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="admission.aspx.cs" Inherits="ppsclasses.admission" UnobtrusiveValidationMode="None"%>

<!DOCTYPE html>
<html lang="en">

<head>
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
    .button2 {
    background-image:linear-gradient(to bottom right, #FF8F1C,#FFFFFF, #509E2F);
	box-shadow: 2px 2px 15px rgba(255, 102, 0, 0.3);
	border: 2px solid #fff;
    padding: 12px 34px;
	color: blue;
    font-stretch: extra-expanded;
	font-weight: bold;
    transition: 0.4s;
	border-radius: 50px;
    letter-spacing: 3px;
    }
    .button2:hover {
    background: linear-gradient(to left, #0000ff 0%, #ff0066 100%);
	border: 2px solid #fff;
	padding: 12px 34px;
	color: #fff;
	transition: 0.4s;
	border-radius: 50px;
	box-shadow: 2px 2px 15px rgba(0, 255, 255, 0.3);
    letter-spacing: 1px;
    }
</style>
</head>
<body>
     <!-- Video -->
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
          <li class="active"><a href="admission.aspx">Admission</a></li>
          <li><a href="Home.aspx#contact">Contact Us</a></li>
        </ul>
      </nav><!-- .nav-menu -->

    </div>
    </header><!-- End Header -->

   
    <!-- ======= Breadcrumbs ======= -->
    <section class="breadcrumbs">
      <div class="container">

        <div class="d-flex justify-content-between align-items-center">
          <h2><font color="white" weight="200px"><b>Admission Form</b></font></h2>
          <ol>
            <li><a href="Home.aspx">Home</a></li>
            <li><font color="white">Admission</font></li>
          </ol>
        </div>

      </div>
    </section><!-- End Breadcrumbs -->
   
   <div class="content1">
    <div class="container">
	<div class="d-flex justify-content-center h-100">
    <div class="card">
			<div class="card-header">
				<h3>Admission Form</h3>
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
							<span class="input-group-text"><i class="fas fa-user"></i> &nbsp First Name</span>
						</div>
						<asp:TextBox ID="TF" runat="server" Placeholder="Enter Your first Name" required="" MaxLength="30" Width="600px"></asp:TextBox> 
					    <br />
                        <asp:RegularExpressionValidator ID="RV1" ForeColor="LightYellow" runat="server" ErrorMessage="Invalid name" ControlToValidate="TF" ValidationExpression="^[a-zA-Z'.\s]{1,30}" Display="Dynamic"></asp:RegularExpressionValidator>

                    </div>
                    <div class="input-group form-group">
						<div class="input-group-prepend">
							<span class="input-group-text"><i class="fas fa-user"></i>&nbsp Last Name</span>
						</div>
                         <asp:TextBox ID="TL" runat="server" Placeholder="Enter Your last Name" required="" MaxLength="30" Width="600px"></asp:TextBox>
					<br /><asp:RegularExpressionValidator ID="RV2" runat="server" ErrorMessage="Invalid name" ControlToValidate="TL" ValidationExpression="^[a-zA-Z'.\s]{1,30}" Display="Dynamic"></asp:RegularExpressionValidator>
                    </div>
                    <div class="input-group form-group">
						<div class="input-group-prepend">
							<span class="input-group-text"><i class="fas fa-birthday-cake"></i>&nbsp D-O-B</span>
						</div>
                        <asp:TextBox ID="TD" runat="server" Placeholder=" DD/MM/YYYY" MaxLength="10" required="" Width="600px"></asp:TextBox>
                        <br /><asp:RegularExpressionValidator ID="RV3" runat="server" ErrorMessage="Invalid DOB" ControlToValidate="TD" ValidationExpression="^(((0|1)[0-9]|2[0-9]|3[0-1])\/(0[1-9]|1[0-2])\/((19|20)\d\d))$" Display="Dynamic"></asp:RegularExpressionValidator>
					</div>
					<div class="input-group form-group">
						<div class="input-group-prepend">
							<span class="input-group-text"><i class="fas fa-mail-bulk"></i>&nbsp Email</span>
						</div>
                        <asp:TextBox ID="TE" runat="server" Placeholder="Enter your Email" required="" Width="600px"></asp:TextBox>
                        <br />
                        <asp:RegularExpressionValidator ID="RV4" runat="server" ErrorMessage="Invalid Email" ControlToValidate="TE" ValidationExpression="^[a-zA-Z0-9+_.-]+@[a-zA-Z.-]+$" Display="Dynamic"></asp:RegularExpressionValidator>
					</div>
                    <div class="input-group form-group">
						<div class="input-group-prepend">
							<span class="input-group-text"><i class="fas fa-mobile-phone"></i>&nbsp Mobile</span>
						</div>
                        <asp:TextBox ID="TM" runat="server" Placeholder="Enter Your Mobile No" required="" MaxLength="10" Width="600px"></asp:TextBox>
					<br /><asp:RegularExpressionValidator ID="RV5" runat="server" ErrorMessage="Invalid Mobile No" ControlToValidate="TM" ValidationExpression="^[0-9]{10}$" Display="Dynamic"></asp:RegularExpressionValidator>
                    </div>
                     <div class="input-group form-group">
						<div class="input-group-prepend">
							<span class="input-group-text"><i class="fas fa-school"></i>&nbsp School</span>
						</div>
                       <asp:TextBox ID="TA" runat="server" Placeholder="Enter Your School Name" required="" MaxLength="50" Width="600px"></asp:TextBox>
					 <br /><asp:RegularExpressionValidator ID="RV6" runat="server" ErrorMessage="Invalid School Name" ControlToValidate="TA" ValidationExpression="^[#.a-zA-Z\s,-]+$" Display="Dynamic"></asp:RegularExpressionValidator>
                     </div>
                    
                    <div class="input-group form-group">
						<div class="input-group-prepend">
							<span class="input-group-text"><i class="fas fa-school"></i>&nbsp Examination</span>
						</div>
                       <asp:TextBox ID="TB" runat="server" MaxLength="20" Placeholder="Last Exam passed/Appearing" Width="600px"></asp:TextBox>
					</div>
                    <div class="input-group form-group">
						<div class="input-group-prepend">
							<span class="input-group-text"><i class="fas fa-school"></i>&nbsp Percentage</span>
						</div>
                       <asp:TextBox ID="TP2" runat="server" MaxLength="5" Placeholder="Percentage" required="" Width="600px"></asp:TextBox>
					<br /><asp:RegularExpressionValidator ID="RV8" runat="server" ErrorMessage="Invalid Percentage" ControlToValidate="TP2" ValidationExpression="^(0*100{1,1}\.?((?<=\.)0*)?%?$)|(^0*\d{0,2}\.?((?<=\.)\d*)?%?)$" Display="Dynamic"></asp:RegularExpressionValidator>
                    </div>
                    <div class="input-group form-group">
						<div class="input-group-prepend">
							<span class="input-group-text"><i class="fas fa-school"></i>&nbsp Year</span>
						</div>
                       <asp:TextBox ID="TP3" runat="server" MaxLength="4" Placeholder="Passing Year" required="" Width="600px"></asp:TextBox>
					<br />
                    <asp:RegularExpressionValidator ID="RV9" runat="server" ErrorMessage="Invalid year" ControlToValidate="TP3" ValidationExpression="^[0-9]{4}$" Display="Dynamic"></asp:RegularExpressionValidator>
                    </div>
                    <div class="input-group form-group">
						<div class="input-group-prepend">
							<span class="input-group-text"><i class="fas fa-book-open"></i>&nbsp Courses</span>
						</div>
                       <asp:DropDownList ID="DropDownList1" runat="server" Width="600px">
                            <asp:listitem text="Select" value="1"></asp:listitem>
                            <asp:listitem text="WBCHSE + NEET + AIJEE" value="WBCHSE + NEET + AIJEE"></asp:listitem>
                            <asp:listitem text="WBCHSE + NEET" value="WBCHSE + NEET"></asp:listitem>
                            <asp:listitem text="WBCHSE + AIJEE" value="WBCHSE + AIJEE"></asp:listitem>
                            <asp:listitem text="CBSE + NEET + AIJEE" value="CBSE + NEET + AIJEE"></asp:listitem>
                            <asp:listitem text="CBSE + NEET" value="CBSE + NEET"></asp:listitem>
                            <asp:listitem text="CBSE + AIJEE" value="CBSE + AIJEE"></asp:listitem>
                            <asp:listitem text="ISC + NEET + AIJEE" value="ISC + NEET + AIJEE"></asp:listitem>
                            <asp:listitem text="ISC + NEET" value="ISC + NEET"></asp:listitem>
                            <asp:listitem text="ISC + AIJEE" value="ISC + AIJEE"></asp:listitem>
                            <asp:listitem text="NEET" value="NEET"></asp:listitem>
                            <asp:listitem text="AIJEE (Main+Adv)" value="AIJEE (Main+Adv)"></asp:listitem>
                            <asp:listitem text="Practical" value="Practical"></asp:listitem>
                            <asp:listitem text="B.Sc" value="B.Sc"></asp:listitem>
                        </asp:DropDownList>
					</div>
                    <div class="input-group form-group">
						<div class="input-group-prepend">
							<span class="input-group-text"><i class="fas fa-male"></i> &nbsp Gender</span>
						</div>
                         &nbsp&nbsp&nbsp&nbsp <font color="white">   <asp:RadioButtonList ID="RadioButtonList1" runat="server">
                                        <asp:ListItem > Male</asp:ListItem>  
                                        <asp:ListItem > Female</asp:ListItem>
                                        <asp:ListItem > Transgender</asp:ListItem>
                            </asp:RadioButtonList></font>
					</div>
                     <div class="input-group form-group">
						<div class="input-group-prepend">
							<span class="input-group-text"><i class="fas fa-bank"></i> Transaction ID</span>
						</div>
                       <asp:TextBox ID="TP" runat="server" Placeholder="Enter Your transaction Id*" required="" Width="600px"></asp:TextBox>
					 
                     </div>
                    <asp:CheckBox ID="CheckBox2" runat="server" Text=""/>
                    <asp:CustomValidator ID="CustomValidator1" runat="server" ErrorMessage="Required" ForeColor="yellow" ClientValidationFunction = "ValidateCheckBox" Display="Dynamic"></asp:CustomValidator>
                    <asp:Label ID="Label1" runat="server" ForeColor="White" Text="I hereby apply for admission in the institute and do agree to abide by all rules and regulations, that are existing and subject to change from time to time."></asp:Label>
					<br /><br />
                    <div class="form-group">
                        <asp:Button ID="Button1" runat="server" Text="SUBMIT" OnClick="A_Click" CssClass="button1" />
                        <asp:Button ID="Button2" runat="server" Text="RESET" OnClick="R_Click" CssClass="button2" />
					</div>
                    <div>
                        
                            <center><asp:Label ID="message" runat="server" Font-Size="Medium" ForeColor="black" BackColor="#ff9966"></asp:Label>
                            <br />
                            <asp:Label ID="ShowUserNameLabel" runat="server" ForeColor="yellow"></asp:Label> &nbsp &nbsp 
                            <asp:Label ID="ShowUserName" runat="server" ForeColor="white"></asp:Label>&nbsp
                            <asp:Label ID="ShowLastName" runat="server" ForeColor="white"></asp:Label>
                            <br />
                            <asp:Label ID="ShowEmailIDLabel" runat="server" ForeColor="yellow"></asp:Label>&nbsp&nbsp&nbsp&nbsp&nbsp
                            <asp:Label ID="ShowEmail" runat="server" ForeColor="white"></asp:Label> 
                            <br />
                            <asp:Label ID="ShowMobileLabel" runat="server" ForeColor="yellow"></asp:Label> &nbsp&nbsp&nbsp&nbsp
                            <asp:Label ID="ShowMobile" runat="server" ForeColor="white"></asp:Label> 
                                <br />
                            <asp:HyperLink ID="HyperLink1" runat="server" ForeColor="yellow" BackColor="red" Font-Size="XX-Large" Font-Bold="true" NavigateUrl="~/admission.aspx"></asp:HyperLink>
                        </center>
                    </div>
				</form>
			</div>
            <div class="card-footer">
				<div class="d-flex justify-content-left links">
					<h2><font color="white">Download The Offline Admission Form &nbsp</font><a href="assets/admission-form.pdf" target="_blank"><font color="yellow">[Click Here]</font></a></h2>
				</div>
				<div class="d-flex justify-content-left">
					<h6><font color="yellow">NB:</font> <font color="White">1.*Pay the Admission Fee online before fillup online application form. <br /> 2. Mail The offline filled up Application Form with Payment Receipt <font color="#00FF00">[ ppsedusol@gmail.com ] </font> or Submit it Physically in our Center. </font></h6>
				</div>
			</div>
        </div>
      </div>
    </div>
<center>
    
    
</center>
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
    <div id="preloader"></div>
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
    <script type = "text/javascript">
        function ValidateCheckBox(sender, args) {
            if (document.getElementById("<%=CheckBox2.ClientID %>").checked == true) {
                args.IsValid = true;
            } else {
                args.IsValid = false;
            }
        }
    </script>
</body>
</html>
