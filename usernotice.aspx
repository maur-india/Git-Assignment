<%@ Page Language="C#" AutoEventWireup="true" CodeFile="usernotice.aspx.cs" Inherits="ppsclasses.usernotice" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml" lang="en">
<head runat="server">
  <title>PPS Classes - Notice</title>
  <meta charset="utf-8"/>
  <meta content="width=device-width, initial-scale=1.0" name="viewport"/>
  <meta content="" name="descriptison"/>
  <meta content="" name="keywords"/>
  <meta property="og:title" content=""/>
  <meta property="og:image" content=""/>
  <meta property="og:url" content=""/>
  <meta property="og:site_name" content=""/>
  <meta property="og:description" content=""/>
  <meta name="twitter:card" content="summary"/>
  <meta name="twitter:site" content=""/>
  <meta name="twitter:title" content=""/>
  <meta name="twitter:description" content=""/>
  <meta name="twitter:image" content=""/>
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
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css"/>
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.5.0/css/font-awesome.min.css"/>
  <!--Fontawesome CDN-->
  <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.3.1/css/all.css"/>
  <!-- Template Main CSS File -->
  <link href="assets/css/style.css" rel="stylesheet"/>
  <link href="assets/css/grid.css" rel="stylesheet" />
  <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
  <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <link href="assets/css/grid.css" rel="stylesheet" />
    <style>
    .content1{
        background-image: url('http://getwallpapers.com/wallpaper/full/a/5/d/544750.jpg');
        background-size: cover;
        background-repeat: no-repeat;
        height: 100%;
        font-family: 'Numans', sans-serif;
        padding-top: 80px;
        padding-bottom: 100px;
        position: relative;
        align-content: center;
    }
    .container{
        height: 100%;
        align-content: center;
    }
    .card{
        height: 400px;
        margin-top: auto;
        margin-bottom: auto;
        width: 1000px;
        background-color: rgba(0,0,0,0.5) !important;
        padding-left: 4px;
        padding-top: 12px;
        padding-bottom: 5px;
	    position: relative;
	    box-shadow: 10px 10px 42px 0 rgba(0,0,0,0.75);
        align-items: center;
    }
    .txt{
        width: 70px;
        height: 40px;
        box-sizing: border-box;
        border: 2px solid #ccc;
        border-radius: 4px;
        font-size: 16px;
        font-weight: bold;
        font-stretch: expanded;
        background-color: white;
        background-repeat: no-repeat;
        padding: 12px 5px 12px 45px;
        transition: width 0.4s ease-in-out;
        padding-right: 5px;
        background-image: url('assets/img/search.png');
    }
    .txt:focus{
        width: 60%;
    }
    </style>
</head>
<body>
    <form id="notice" runat="server">
    <header id="header">
    <div class="container d-flex align-items-center">
      <a href="Home.aspx" class="logo mr-auto"><img src="assets/img/logo1.png" alt=""></a>
      <nav class="nav-menu d-none d-lg-block">
        <ul>
          <li><a href="Home.aspx">Home</a></li>
          <li><a href="Home.aspx#about">About</a></li>
          <li class="active"><a href="Home.aspx">Notice</a></li>
          <li><a href="admission.aspx">Admission</a></li>
          <li><a href="Home.aspx#contact">Contact Us</a></li>
        </ul>
      </nav><!-- .nav-menu -->
    </div>
    </header><!-- End Header -->
    <div class="content1">
    <div class="container">
	<div class="d-flex justify-content-center h-100">
    <div class="card">
		<div class="card-header">
			<h3>Notices</h3>
		</div>
		<div class="card-body">
            <asp:Label ID="usernoticelabel" runat="server" Text="Enter Class & Topic to search:" ForeColor="White"></asp:Label>
            <asp:TextBox ID="usernoticetext" runat="server" CssClass="txt" OnTextChanged="usernoticetext_TextChanged" AutoPostBack="true"></asp:TextBox>
            <br />
            <br />
            <asp:GridView ID="usernoticegv" runat="server" AutoGenerateColumns="false" AllowPaging="true" EmptyDataText="No Files Uploaded" CellPadding="4"
             EnableModelValidation="true" GridLines="None" DataKeyNames="Id,f2" OnPageIndexChanging="usernotice_PageIndexChanging" PageSize="5"
             PagerStyle-CssClass="pager" HeaderStyle-CssClass="header" RowStyle-CssClass="rows" Width="388px" ForeColor="#333333">
                <Columns>
                    <asp:TemplateField HeaderText="Topic" HeaderStyle-HorizontalAlign="Center" ItemStyle-HorizontalAlign="Center" ControlStyle-Width="350px">
                        <ItemTemplate>
                            <asp:Label ID="usernoticetopic" runat="server" Text='<%# Eval("topic") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Class" HeaderStyle-HorizontalAlign="Center" ItemStyle-HorizontalAlign="Center" ControlStyle-Width="200px">
                        <ItemTemplate>
                            <asp:Label ID="usernoticeclass" runat="server" Text='<%# Eval("class") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Download" HeaderStyle-HorizontalAlign="Center" ItemStyle-HorizontalAlign="Center">
                        <ItemTemplate>
                            <asp:ImageButton ID="usernoticedownload" runat="server" ImageUrl="~/assets/img/down.png" OnClick="usernoticedownload_Click" CausesValidation="false" ToolTip="Download Image" />
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
            </asp:GridView>
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

  <div id="preloader2"></div>

  <a href="#" class="back-to-top"><i class="fa fa-chevron-up"></i></a>
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
</form>
</body>
</html>
