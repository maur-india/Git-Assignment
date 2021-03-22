<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Home.aspx.cs" Inherits="ppsclasses.Home" %>

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
    <script type="text/javascript">
    if (document.layers) {
    //Capture the MouseDown event.
    document.captureEvents(Event.MOUSEDOWN);
 
    //Disable the OnMouseDown event handler.
    document.onmousedown = function () {
        return false;
    };
}
else {
    //Disable the OnMouseUp event handler.
    document.onmouseup = function (e) {
        if (e != null && e.type == "mouseup") {
            //Check the Mouse Button which is clicked.
            if (e.which == 2 || e.which == 3) {
                //If the Button is middle or right then disable.
                return false;
            }
        }
    };
}
 
//Disable the Context Menu event.
document.oncontextmenu = function () {
    return false;
};
</script>
</head>

<body>

  <!-- ======= Hero Section ======= -->
  <section id="hero">
    <div class="hero-container">
      <div class="wow fadeIn">
        <div class="hero-logo">
          <img class="" src="assets/img/logo1.png" alt="Imperial">
        </div>
        <h1>Welcome to PPS Classes</h1>
        <h2> Chemistry Classes <span class="typed" data-typed-items="For Ranker's, By Ranker's"></span></h2>
        <a href="#subscribe">
        <button style="--content: 'Take Admission Now!';">
			<div class="left"></div>
				Take Admission Now!
			<div class="right"></div>
		</button>
        </a>
		<a href="#about">
			<div class="mouse"></div>
		</a>
      </div>
    </div>
  </section><!-- End Hero -->

  <!-- ======= Header ======= -->
  <header id="header">
    <form id="f2" runat="server" >
      <div class="container d-flex align-items-center">

      <a href="Home.aspx" class="logo mr-auto" data-aos="fade-up-right" data-aos-delay="100"><img src="assets/img/logo1.png" alt=""></a>
      <!-- Uncomment below if you prefer to use a text logo -->
      <!-- <h1 class="logo mr-auto"><a href="index.html">Imperial</a></h1> -->

      <nav class="nav-menu d-none d-lg-block" data-aos="flip-up" data-aos-delay="100">
        <ul >
          <li class="active"><a href="index.html">Home</a></li>
          <li><a href="#about">About</a></li>
          <li><a href="#services"> What we Provide </a></li>
          <li><a href="usernotice.aspx">Notice</a></li>
          <li><a href="admission.aspx">Admission</a></li>
          <li><a href="login.aspx">Log In</a></li>
          <li><a href="#contact">Contact Us</a></li>

        </ul>
      </nav><!-- .nav-menu -->

    </div>
   </form>
  </header><!-- End Header -->

  <main id="main">

    <!-- ======= About Section ======= -->
    <section id="about">
	  <div class="container wow fadeInUp">
		<div class="row">
          <div class="col-md-12">
            <h3 class="section-title" data-aos="zoom-in" data-aos-delay="100">About Us</h3>
            <div class="section-title-divider" data-aos="zoom-in" data-aos-delay="100"></div>
            <p class="section-description" data-aos="zoom-in" data-aos-delay="100"><b>The Premier Institute in kolkata with best quality teaching with highest success rate in kolkata. Founder PPS sir believes that for better success personal care and individual meritwise study plan is highly needed. A 200% dedication from us results 125% dedication from students,That is the key feature of our steady success from 1998.</b></p>
          </div>
        </div>
        <div class="row">
          <div class="col-lg-6">
            <div class="member d-flex align-items-start" data-aos="zoom-in" data-aos-delay="100">
              <div class="pic"><img src="assets/img/pps.jpg" class="img-fluid" alt=""></div>
              <div class="member-info">
                <h4>Partha Pratim Sarkar</h4>
                <span>Head of the Institute</span>
                <p>"I believes that for better success personal care and individual meritwise study plan is highly needed"</p>
                <div class="social" data-aos="zoom-in" data-aos-delay="100">
                  <a href="#"><i class="ri-twitter-fill"></i></a>
                  <a href="#"><i class="ri-facebook-fill"></i></a>
                  <a href="#"><i class="ri-instagram-fill"></i></a>
                  <a href="#"> <i class="ri-linkedin-box-fill"></i> </a>
                </div>
              </div>
            </div>
          </div>
		  <div class="col-md-6 about-content" data-aos="zoom-out" data-aos-delay="100">
            <h2 class="about-title">Our Vision</h2>
              <ul>
              <li><i class="fa fa-plus"></i> Relation.</li>
              <li><i class="fa fa-plus"></i> Care </li>
              <li><i class="fa fa-plus"></i> Guide </li>
              <li><i class="fa fa-plus"></i> Motivation </li>
            </ul>
          </div>
		</div>
	</div>
    </section><!-- End About Section -->

    <!-- ======= Services Section ======= -->
    <section id="services">
      <div class="container wow fadeInUp">
        <div class="row">
          <div class="col-md-12">
            <h3 class="section-title" data-aos="zoom-in" data-aos-delay="100">What We Provide</h3>
            <div class="section-title-divider"data-aos="zoom-in" data-aos-delay="100"></div>
            <p class="section-description" data-aos="zoom-in" data-aos-delay="100"><b><i>Under One Roof</i></b></p>
          </div>
        </div>
      </div>
    </section><!-- End Services Section -->

 <!-- ======= About Boxes Section ======= -->
    <section id="about-boxes" class="about-boxes">
      <div class="container" data-aos="fade-up">
        <div class="row">
          <div class="col-lg-4 col-md-6 d-flex align-items-stretch" data-aos="fade-up" data-aos-delay="100">
            <div class="card">
              <img src="assets/img/cp.jpg" class="card-img-top" alt="...">
              <div class="card-icon">
                <i class="ri-brush-4-line"></i>
              </div>
              <div class="card-body">
                <h5 class="card-title"><a href="">Secure Job Oriented Career Counselling</a></h5>
                <p class="card-text"><b><font color="#ff4a17">"</font></b>This Institute Also Provides Various Career Direction's In Different Field Until The Student Achieve His/Her Goal..<b><font color="#ff4a17">"</font></b> </p>
              </div>
            </div>
          </div>
          <div class="col-lg-4 col-md-6 d-flex align-items-stretch" data-aos="fade-up" data-aos-delay="200">
            <div class="card">
              <img src="assets/img/ts.jpg" class="card-img-top" alt="...">
              <div class="card-icon">
                <i class="ri-calendar-check-line"></i>
              </div>
              <div class="card-body">
                <h5 class="card-title"><a href="">Online Teacher Support</a></h5>
                <p class="card-text"><b><font color="#ff4a17">"</font></b>Every teacher knows what it’s like to explain new instructions to their students. It usually starts with a whole group walk-through, followed by an endless stream of questions from students to clarify next steps. While this process can be frustrating at times, students can always rely on each other and the teacher in the room when they’re stuck..<b><font color="#ff4a17">"</font></b> </p>
              </div>
            </div>
          </div>
          <div class="col-lg-4 col-md-6 d-flex align-items-stretch" data-aos="fade-up" data-aos-delay="300">
            <div class="card">
              <img src="assets/img/ce.jpg" class="card-img-top" alt="...">
              <div class="card-icon">
                <i class="ri-movie-2-line"></i>
              </div>
              <div class="card-body">
                <h5 class="card-title"><a href="">Modern Continuous Evaluation</a></h5>
                <p class="card-text">
				<b><font color="#ff4a17">>></font></b> Weekly Class Test For Regular Study Habit. 
				<br>
				<b><font color="#ff4a17">>></font></b> Monthly test For Revision Cum Preparation.
				<br>
				<b><font color="#ff4a17">>></font></b> Regular interaction with parents for individual betterment.
				<br>
				<b><font color="#ff4a17">>></font></b> Fculties from IIT's & Medical colleges
				<br>
				<b><font color="#ff4a17">>></font></b> Separate Care for Board and Competitive exam.
				</p>
              </div>
            </div>
          </div>
        </div>

      </div>
    </section><!-- End About Boxes Section -->

    <!-- ======= Features Section ======= -->
    <section id="features" class="features">
      <div class="container" data-aos="fade-up" data-aos-delay="100">
        <ul class="nav nav-tabs row d-flex">
          <li class="nav-item col-3">
            <a class="nav-link active show" data-toggle="tab" href="#tab-1">
              <i class="ri-gps-line"></i>
              <h4 class="d-none d-lg-block">Seminar</h4>
            </a>
          </li>
          <li class="nav-item col-3">
            <a class="nav-link" data-toggle="tab" href="#tab-2">
              <i class="ri-body-scan-line"></i>
              <h4 class="d-none d-lg-block">Student Excursion</h4>
            </a>
          </li>
          <li class="nav-item col-3">
            <a class="nav-link" data-toggle="tab" href="#tab-3">
              <i class="ri-sun-line"></i>
              <h4 class="d-none d-lg-block"> Educational Environment </h4>
            </a>
          </li>
          <li class="nav-item col-3">
            <a class="nav-link" data-toggle="tab" href="#tab-4">
              <i class="ri-store-line"></i>
              <h4 class="d-none d-lg-block">Laboratories</h4>
            </a>
          </li>
        </ul>

        <div class="tab-content">
          <div class="tab-pane active show" id="tab-1">
            <div class="row">
              <div class="col-lg-6 order-2 order-lg-1 mt-3 mt-lg-0">
                <h3>Regular Seminars with Ranker's, IITians, Doctor's and professionals</h3>
                <ul>
                  <li><i class="ri-check-double-line"></i> We arrange one or more seminars in a year.</li>
                  <li><i class="ri-check-double-line"></i> We arrange seminars with Ranker's, IITians, Doctor's and professionals</li>
                  <li><i class="ri-check-double-line"></i> Seminars are not only on Chemistry but also on other subjects. </li>
                </ul>
              </div>
              <div class="col-lg-6 order-1 order-lg-2 text-center" data-aos="flip-right" data-aos-delay="200">
                <img src="assets/img/wwp1.jpg" alt="" class="img-fluid">
              </div>
            </div>
          </div>
          <div class="tab-pane" id="tab-2">
            <div class="row">
              <div class="col-lg-6 order-2 order-lg-1 mt-3 mt-lg-0">
                <h3>Our Centre Also Provides The Institute's Excursion Facility For The Students.</h3>
                <p>
                  PPS Classes held one or more excursion in a year in university & college to give knowledge of education system, laboratories etc.   
                </p>
                <ul>
                  <li><i class="ri-check-double-line"></i> We arrange Excursion in Brainware University </li>
                  <li><i class="ri-check-double-line"></i> The excursion's which we arrange it's very helpful for the student </li>
                  <li><i class="ri-check-double-line"></i> The excursion is total free of cost.</li>
                </ul>
              </div>
              <div class="col-lg-6 order-1 order-lg-2 text-center" data-aos="flip-right" data-aos-delay="200">
                <img src="assets/img/wwp.jpg" alt="" class="img-fluid">
              </div>
            </div>
          </div>
          <div class="tab-pane" id="tab-3">
            <div class="row">
              <div class="col-lg-6 order-2 order-lg-1 mt-3 mt-lg-0">
                <h3>PPS Classes Learning environment </h3>
                <p>
                  The learning environment can refer to an educational approach, cultural context, or physical setting in which teaching and learning occur. We provide different Batches For Different types of student's.
                </p>
                <ul>
                  <li><i class="ri-check-double-line"></i> One & More Batches are available for every class. </li>
                  <li><i class="ri-check-double-line"></i> Separate care for Board and Competitive Exam.</li>
                  <li><i class="ri-check-double-line"></i> Daily attendence.</li>
                </ul>
              </div>
              <div class="col-lg-6 order-1 order-lg-2 text-center" data-aos="flip-right" data-aos-delay="200">
                <img src="assets/img/class.jpg" alt="" class="img-fluid">
              </div>
            </div>
          </div>
          <div class="tab-pane" id="tab-4">
            <div class="row">
              <div class="col-lg-6 order-2 order-lg-1 mt-3 mt-lg-0">
                <h3>We Provide Well equipped Laboratory facility for all the students.</h3>
                <p>
                  If you choose to study chemistry at our Institute, you will have to attend practicals regularly.
                </p>
                <ul>
                  <li><i class="ri-check-double-line"></i> Well equipped modern chemistry lab for practical practice.</li>
                  <li><i class="ri-check-double-line"></i> Practical's are done in Batch wise. </li>
                  <li><i class="ri-check-double-line"></i> For betterment of Practical education weekly lab test are taken. </li>
                </ul>
              </div>
              <div class="col-lg-6 order-1 order-lg-2 text-center" data-aos="flip-right" data-aos-delay="200">
                <img src="assets/img/lab.jpg" alt="" class="img-fluid">
              </div>
            </div>
          </div>
        </div>

      </div>
    </section><!-- End Features Section -->

    <!-- ======= Subscrbe Section ======= -->
    <section id="subscribe">
      <div class="container wow fadeInUp">
        <div class="row">
          <div class="col-md-8" data-aos="fade-right" data-aos-offset="300" data-aos-easing="ease-in-sine">
            <h3 class="subscribe-title">Join PPS Classes</h3>
            <p class="subscribe-text">Join Us and get into the World of Premire Chemistry Institute of Kolkata ! Take admission now ! </p>
          </div>
          <div class="col-md-4 subscribe-btn-container" data-aos="zoom-in-left" data-aos-delay="200">
            <a class="subscribe-btn" href="admission.aspx">Admission Form</a>
          </div>
        </div>
      </div>
    </section><!-- End Subscrbe Section -->

    <!-- ======= Portfolio Section ======= -->
    <section id="portfolio">
      <div class="container wow fadeInUp">
        <div class="row">
          <div class="col-md-12">
            <h3 class="section-title" data-aos="fade-down" data-aos-easing="linear" data-aos-duration="500">Notice</h3>
            <div class="section-title-divider"></div>
            <p class="section-description" data-aos="fade-down" data-aos-easing="linear" data-aos-duration="500"><b>All Centre Notices & result are Shown here</b></p>
          </div>
        </div>

        <div class="row portfolio-container">

          <div class="col-lg-4 col-md-6 portfolio-item filter-app" data-aos="fade-down" data-aos-easing="linear" data-aos-duration="500">
            <a href="#"><img src="assets/img/Notice.png" class="img-fluid" alt=""></a>
            <div class="portfolio-info">
              <h4>Notices</h4>
              <p>Click on Chain Icon to See Notices</p>
              <a href="assets/img/Notice.png" data-gall="portfolioGallery" class="venobox preview-link" title="Notice"><i class="fa fa-plus"></i></a>
              <a href="usernotice.aspx" class="details-link" title="More Details"><i class="fa fa-link fa-flip-horizontal"></i></a>
            </div>
          </div>

          <div class="col-lg-4 col-md-6 portfolio-item filter-web" data-aos="fade-down" data-aos-easing="linear" data-aos-duration="500">
            <a href = "#"><img src="assets/img/result.png" class="img-fluid" alt=""></a>
            <div class="portfolio-info">
              <h4>Result</h4>
              <p>Click on Chain icon to see Results</p>
              <a href="assets/img/result.png" data-gall="portfolioGallery" class="venobox preview-link" title="Result"><i class="fa fa-plus"></i></a>
              <a href="login.aspx" class="details-link" title="More Details"><i class="fa fa-link fa-flip-horizontal"></i></a>
            </div>
          </div>

          <div class="col-lg-4 col-md-6 portfolio-item filter-app" data-aos="fade-down" data-aos-easing="linear" data-aos-duration="500">
            <a href = "#"><img src="assets/img/fees.png" class="img-fluid" alt=""></a>
            <div class="portfolio-info">
              <h4>Online Fees</h4>
              <p>Please click on Chain Icon </p>
              <a href="assets/img/fees.png" data-gall="portfolioGallery" class="venobox preview-link" title="Fees"><i class="fa fa-plus"></i></a>
              <a href="payment.aspx" class="details-link" title="More Details"><i class="fa fa-link fa-flip-horizontal"></i></a>
            </div>
          </div>
        </div>
      </div>
    </section><!-- End Portfolio Section -->
	
	<!-- Testimonals section-->
	
	<section id="testimonials" class="testimonials">
      <div class="container" data-aos="zoom-in">
		<div class="row">
          <div class="col-md-12">
            <h3 class="section-title"><font color="white">Testimoanls</font></h3>
            <div class="section-title-divider"></div>
            <p class="section-description"><font color="white"><b><i>What our students say<i></b></font></p>
          </div>
        </div>
        <div class="owl-carousel testimonials-carousel">

          <div class="testimonial-item">
            <img src="assets/img/pi.png" class="testimonial-img" alt="">
            <h3>Suman Maur</h3>
            <h4>Student</h4>
            <p>
              <i class="bx bxs-quote-alt-left quote-icon-left"></i>
              One of the best chemistry tuition of Kolkata. Taught by the best teacher with decades of experience.A friendly ambiance with a solid chemistry guide.The place where I started to love chemistry.
			  Special guidance is given to every student respective of their boards(ICSE, WB, etc) and medium(English , Bengali). I refer to this place to every student who is curious about science and wants to score well. CHEERS !! 
              <i class="bx bxs-quote-alt-right quote-icon-right"></i>
            </p>
          </div>

          <div class="testimonial-item">
            <img src="assets/img/pi.png" class="testimonial-img" alt="">
            <h3>Retayan Banerjee</h3>
            <h4>Student</h4>
            <p>
              <i class="bx bxs-quote-alt-left quote-icon-left"></i>
              Are you afraid of chemistry?
				Contact with pps sir who can easily teach earnestly the students the difficult problems of chemistry even he teaches with easiest prosses like a friend... 😊😊
              <i class="bx bxs-quote-alt-right quote-icon-right"></i>
            </p>
          </div>

          <div class="testimonial-item">
            <img src="assets/img/pi.png" class="testimonial-img" alt="">
            <h3>Aniket Das</h3>
            <h4>Student</h4>
            <p>
              <i class="bx bxs-quote-alt-left quote-icon-left"></i>
              I am very happy with my respected teacher. Very good learning 👍👍👍 
              <i class="bx bxs-quote-alt-right quote-icon-right"></i>
            </p>
          </div>
		  
        </div>

      </div>
    </section><!-- End Testimonials Section -->

    <!-- ======= Contact Section ======= -->
    <section id="contact" class="contact-area">
      <div class="contact-inner area-padding">
        <div class="contact-overly"></div>
        <div class="container ">
          <div class="row">
          <div class="col-md-12">
            <h3 class="section-title" data-aos="zoom-in"><font color="white">Contact Us</font></h3>
            <div class="section-title-divider"></div>
            <p class="section-description" data-aos="zoom-in"><font color="white"><b><i>Any Doubt ! Contact Us..<i></b></font></p>
          </div>
		</div>
          <div class="row">
            <!-- Start contact icon column -->
            <div class="col-md-4 col-sm-4 col-xs-12" data-aos="zoom-in">
              <div class="contact-icon text-center">
                <div class="single-icon">
                  <i class="fa fa-mobile"></i>
                  <p>
                    +91 9836216893 <br> +91 9433361741<br>
                    <span>Monday-Saturday (9am-9pm)</span>
                  </p>
                </div>
              </div>
            </div>
            <!-- Start contact icon column -->
            <div class="col-md-4 col-sm-4 col-xs-12" data-aos="zoom-in">
              <div class="contact-icon text-center">
                <div class="single-icon">
                  <i class="fa fa-envelope-o"></i>
                  <p>
                    Email: ppsedusol@gmail.com<br>
                    <span><a href="https://ppsclasses.in/">Web: www.ppsclasses.in</a></span>
                  </p>
                </div>
              </div>
            </div>
            <!-- Start contact icon column -->
            <div class="col-md-4 col-sm-4 col-xs-12" data-aos="zoom-in">
              <div class="contact-icon text-center">
                <div class="single-icon">
                  <i class="fa fa-map-marker"></i>
                  <p>
                     1/3, Neogi Para Rd,<br>
                    <span>Kolkata 700036,West Bengal, INDIA</span>
                  </p>
                </div>
              </div>
            </div>
          </div>
          <div class="row">

            <!-- Start Google Map -->
            <div class="col-md-6 col-sm-6 col-xs-12" data-aos="zoom-in">
              <!-- Start Map -->
			  <iframe src="https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d14729.32900982486!2d88.373667!3d22.6413976!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x58cb0d44776ecbf3!2sPPS%20CLASSES%20for%20chemistry!5e0!3m2!1sen!2sin!4v1601480038101!5m2!1sen!2sin" width="100%" height="380" frameborder="0" style="border:0;" allowfullscreen="" aria-hidden="false" tabindex="0"></iframe>
              <!-- End Map -->
            </div>
            <!-- End Google Map -->

            <!-- Start  contact -->
            <div class="col-md-6 col-sm-6 col-xs-12" >
              <div class="form contact-form">
                <form action="contact.php" role="form" method="post" class="php-email-form">
                  <div class="form-group" data-aos="zoom-in">
                    <input type="text" name="name" class="form-control" id="name" placeholder="Your Name" pattern=[A-Z\sa-z]{3,20} required />
                   
                  </div>
                  <div class="form-group" data-aos="zoom-in">
                    <input type="email" class="form-control" name="email" id="email" placeholder="Your Email" required />
                    
                  </div>
                  <div class="form-group" data-aos="zoom-in">
                    <input type="text" class="form-control" name="subject" id="subject" placeholder="Subject" required />
                    
                  </div>
                  <div class="form-group" data-aos="zoom-in">
                    <textarea class="form-control" name="message" rows="5" placeholder="Message" required ></textarea>
                    
                  </div>
                  
                  <div class="text-center" data-aos="zoom-in"><button type="submit" name="send">Send Message</button></div>
                </form>
              </div>
            </div>
            <!-- End Left contact -->
          </div>
        </div>
    </div><!-- End Contact Section -->
	</section>
	<div class="suscribe-area">
      <div class="container">
        <div class="row">
          <div class="col-lg-12 col-md-12 col-sm-12 col-xs=12">
            <div class="suscribe-text text-center">
              <h3 data-aos="zoom-in">Thanks for Visiting Us.</h3>
              <a class="sus-btn" href="admission.aspx" data-aos="zoom-in">Take Admission Now</a>
            </div>
          </div>
        </div>
      </div>
    </div><!-- End Suscribe Section -->
	
  </main><!-- End #main -->


  <!-- ======= Footer ======= -->
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

  <div id = "wp"><a href="https://api.whatsapp.com/send?phone=919836216893&text=Hello,%20How%20Can%20I,%20Help%20You" class="float" target="_blank">
	<i class="fa fa-whatsapp my-float"></i>
	</a></div>
  <div id="preloader1"></div>
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