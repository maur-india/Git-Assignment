<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="uhome.aspx.cs" Inherits="ppsclasses.uhome" %>

<!DOCTYPE HTML>
<html lang="en">
	<head runat="server">
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<title>PPS - Classes</title>
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta name="description" content="" />
	<meta name="keywords" content="" />
	<meta name="author" content="" />

  <!-- Facebook and Twitter integration -->
	<meta property="og:title" content=""/>
	<meta property="og:image" content=""/>
	<meta property="og:url" content=""/>
	<meta property="og:site_name" content=""/>
	<meta property="og:description" content=""/>
	<meta name="twitter:title" content="" />
	<meta name="twitter:image" content="" />
	<meta name="twitter:url" content="" />
	<meta name="twitter:card" content="" />

	<!-- Place favicon.ico and apple-touch-icon.png in the root directory -->
	<link href="assets/img/icon.png" rel="icon">

	<link href="https://fonts.googleapis.com/css?family=Quicksand:300,400,500,700" rel="stylesheet">
	
	<!-- Animate.css -->
	<link rel="stylesheet" href="css/animate.css">
	<!-- Icomoon Icon Fonts-->
	<link rel="stylesheet" href="css/icomoon.css">
	<!-- Bootstrap  -->
	<link rel="stylesheet" href="css/bootstrap.css">
	<!-- Flexslider  -->
	<link rel="stylesheet" href="css/flexslider.css">
	<!-- Flaticons  -->
	<link rel="stylesheet" href="fonts/flaticon/font/flaticon.css">
	<!-- Owl Carousel -->
	<link rel="stylesheet" href="css/owl.carousel.min.css">
	<link rel="stylesheet" href="css/owl.theme.default.min.css">
	<!-- Theme style  -->
	<link rel="stylesheet" href="css/style.css">

	<!-- Modernizr JS -->
	<script src="js/modernizr-2.6.2.min.js"></script>
	<!-- FOR IE9 below -->
	<!--[if lt IE 9]-->
	<script src="js/respond.min.js"></script>
	<!--[endif]-->
    <script type="text/javascript">
        function preventBack() { window.history.forward(); }
        setTimeout("preventBack()", 0);
        window.onunload = function () { null };
    </script>
	</head>
	<body>
	<div id="colorlib-page">
		<a href="#" class="js-colorlib-nav-toggle colorlib-nav-toggle"><i></i></a>
		<aside id="colorlib-aside" role="complementary" class="border js-fullheight">
			<h1 id="colorlib-logo"><a href="uhome.aspx"> <img src="assets/img/logo1.png" width="150px"/> <br /><br />
            <asp:Label ID="Labelfname" runat="server" Text="Label"></asp:Label><br />(<asp:Label ID="Labelcode" runat="server" Text="Label"></asp:Label>)</a></h1>
			<nav id="colorlib-main-menu" role="navigation">
				<form id="btn" runat="server">
                <ul>
					<li class="colorlib-active"><a href="uhome.aspx">Home</a></li>
					<li><a href="usmr.aspx">Study Material</a></li>
					<li><a href="uview.aspx">Notice</a></li>
					<li><a href="usmr.aspx">Result</a></li>
					<li><a>Fees</a></li>
                    <li ><asp:Button ID="Button1" runat="server" Text="Logout" CssClass="btnaa" OnClick="logout_Click" /></li>
                </ul>
                </form>
			</nav>
			<div class="colorlib-footer">
				<p><small>&copy; 
Copyright &copy;<script>document.write(new Date().getFullYear());</script> Made with <i class="icon-heart" aria-hidden="true"></i> by <a href="https://colorlib.com" target="_blank">Suman Maur</a> Distributed by: <a href="https://ppsclasses.in/" target="_blank">PPS-Classes</a>
 <span>Youtube Channel: <a href="http://nothingtochance.co/" target="_blank">Youtube</a></span></small></p>
				<ul>
					<li><a href="#"><i class="icon-facebook2"></i></a></li>
					<li><a href="#"><i class="icon-twitter2"></i></a></li>
					<li><a href="#"><i class="icon-instagram"></i></a></li>
					<li><a href="#"><i class="icon-linkedin2"></i></a></li>
				</ul>
			</div>

		</aside>

		<div id="colorlib-main">
			<aside id="colorlib-hero" class="js-fullheight">
				<div class="flexslider js-fullheight">
					<ul class="slides">
				   	<li style="background-image: url(images/gif1.gif);">
				   		<div class="overlay"></div>
				   		<div class="container-fluid">
				   			<div class="row">
					   			<div class="col-md-6 col-md-offset-3 col-md-push-3 col-sm-12 col-xs-12 js-fullheight slider-text">
					   				<div class="slider-text-inner">
					   					<div class="desc">
						   					<h1>View Study Material</h1>
						   					<h2>You can see Study Material by Click this button</h2>
												<p><a href="usmr.aspx" class="btn btn-primary btn-learn">View Study Material <i class="icon-arrow-right3"></i></a></p>
											</div>
					   				</div>
					   			</div>
					   		</div>
				   		</div>
				   	</li>
				   	<li style="background-image: url(images/gif2.gif);">
				   		<div class="overlay"></div>
				   		<div class="container-fluid">
				   			<div class="row">
					   			<div class="col-md-6 col-md-offset-3 col-md-push-3 col-sm-12 col-xs-12 js-fullheight slider-text">
					   				<div class="slider-text-inner">
					   					<div class="desc">
						   					<h1>View Result</h1>
												<h2>You can see exam Result by Click this button</h2>
												<p><a href="usmr.aspx" class="btn btn-primary btn-learn">View Result <i class="icon-arrow-right3"></i></a></p>
											</div>
					   				</div>
					   			</div>
					   		</div>
				   		</div>
				   	</li>
				   	<li style="background-image: url(images/gif3.gif); background-position:center;">
				   		<div class="overlay"></div>
				   		<div class="container-fluid">
				   			<div class="row">
					   			<div class="col-md-6 col-md-offset-3 col-md-push-3 col-sm-12 col-xs-12 js-fullheight slider-text">
					   				<div class="slider-text-inner">
					   					<div class="desc">
						   					<h1>View Notices</h1>
												<h2>You can see all notices by Click this button</h2>
												<p><a href="uview.aspx" class="btn btn-primary btn-learn">View Notice <i class="icon-arrow-right3"></i></a></p>
											</div>
					   				</div>
					   			</div>
					   		</div>
				   		</div>
				   	</li>
				  	</ul>
			  	</div>
			</aside>

			<div class="colorlib-about">
				<div class="colorlib-narrow-content">
					<div class="row">
						<div class="col-md-6">
							<div class="about-img animate-box" data-animate-effect="fadeInLeft" style="background-image: url(assets/img/Chemistry.gif); position: relative;">
							</div>
						</div>
						<div class="col-md-6 animate-box" data-animate-effect="fadeInLeft">
							<div class="about-desc">
								<span class="heading-meta">Welcome To PPS-Classes</span>
								<h2 class="colorlib-heading">Who we are</h2>
								<p>The Premier Institute in kolkata with best quality teaching with highest success rate in kolkata. Founder PPS sir believes that for better success personal care and individual meritwise study plan is highly needed. A 200% dedication from us results 125% dedication from students,That is the key feature of our steady success from 1998.</p>
								<p>PPS Sir believes that for better success personal care and individual meritwise study plan is highly needed</p>
							</div>
							<div class="row padding">
								<div class="col-md-4 no-gutters animate-box" data-animate-effect="fadeInLeft">
									<a href="#" class="steps">
										<p class="icon"><span><i class="icon-check"></i></span></p>
										<h3>We are <br>pasionate</h3>
									</a>
								</div>
								<div class="col-md-4 no-gutters animate-box" data-animate-effect="fadeInLeft">
									<a href="#" class="steps">
										<p class="icon"><span><i class="icon-check"></i></span></p>
										<h3>Honest <br>Dependable</h3>
									</a>
								</div>
								<div class="col-md-4 no-gutters animate-box" data-animate-effect="fadeInLeft">
									<a href="#" class="steps">
										<p class="icon"><span><i class="icon-check"></i></span></p>
										<h3>Always <br>Improving</h3>
									</a>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			
			<div id="colorlib-counter" class="colorlib-counters" style="background-image: url(images/cover_bg_1.jpg);" data-stellar-background-ratio="0.5">
				<div class="overlay"></div>
				<div class="colorlib-narrow-content">
					<div class="row">
					</div>
					<div class="row">
						<div class="col-md-3 text-center animate-box">
							<span class="icon"><i class="flaticon-skyline"></i></span>
							<span class="colorlib-counter js-counter" data-from="0" data-to="7" data-speed="5000" data-refresh-interval="50"></span>
							<span class="colorlib-counter-label">Course</span>
						</div>
						<div class="col-md-3 text-center animate-box">
							<span class="icon"><i class="flaticon-engineer"></i></span>
							<span class="colorlib-counter js-counter" data-from="0" data-to="5000" data-speed="5000" data-refresh-interval="50"></span>
							<span class="colorlib-counter-label">Student</span>
						</div>
						<div class="col-md-3 text-center animate-box">
							<span class="icon"><i class="flaticon-architect-with-helmet"></i></span>
							<span class="colorlib-counter js-counter" data-from="0" data-to="10" data-speed="5000" data-refresh-interval="50"></span>
							<span class="colorlib-counter-label">Experience</span>
						</div>
						<div class="col-md-3 text-center animate-box">
							<span class="icon"><i class="flaticon-worker"></i></span>
							<span class="colorlib-counter js-counter" data-from="0" data-to="3" data-speed="5000" data-refresh-interval="50"></span>
							<span class="colorlib-counter-label">Centre</span>
						</div>
					</div>
				</div>
			</div>

			<div id="get-in-touch" class="colorlib-bg-color">
				<div class="colorlib-narrow-content">
					<div class="row">
						<div class="col-md-6 animate-box" data-animate-effect="fadeInLeft">
							<h2>Get in Touch!</h2>
						</div>
					</div>
					<div class="row">
						<div class="col-md-6 col-md-offset-3 col-md-pull-3 animate-box" data-animate-effect="fadeInLeft">
							<p class="colorlib-lead">Separated they live in Bookmarksgrove right at the coast of the Semantics, a large language ocean.</p>
							<p><a href="ucontactus.aspx" class="btn btn-primary btn-learn">Contact me!</a></p>
						</div>
						
					</div>
				</div>
			</div>
		</div>
	</div>

	<!-- jQuery -->
	<script src="js/jquery.min.js"></script>
	<!-- jQuery Easing -->
	<script src="js/jquery.easing.1.3.js"></script>
	<!-- Bootstrap -->
	<script src="js/bootstrap.min.js"></script>
	<!-- Waypoints -->
	<script src="js/jquery.waypoints.min.js"></script>
	<!-- Flexslider -->
	<script src="js/jquery.flexslider-min.js"></script>
	<!-- Sticky Kit -->
	<script src="js/sticky-kit.min.js"></script>
	<!-- Owl carousel -->
	<script src="js/owl.carousel.min.js"></script>
	<!-- Counters -->
	<script src="js/jquery.countTo.js"></script>
	
	
	<!-- MAIN JS -->
	<script src="js/main.js"></script>

	</body>
</html>


