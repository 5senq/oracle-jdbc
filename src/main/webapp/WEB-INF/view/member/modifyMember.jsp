<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta content="width=device-width, initial-scale=1.0" name="viewport">

  <title>Day Bootstrap Template - Index</title>
  <meta content="" name="description">
  <meta content="" name="keywords">

  <!-- Favicons -->
  <link href="../resources/img/favicon.png" rel="icon">
  <link href="../resources/img/apple-touch-icon.png" rel="apple-touch-icon">

  <!-- Google Fonts -->
  <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Raleway:300,300i,400,400i,500,500i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i" rel="stylesheet">

  <!-- Vendor CSS Files -->
  <link href="../resources/vendor/aos/aos.css" rel="stylesheet">
  <link href="../resources/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <link href="../resources/vendor/bootstrap-icons/bootstrap-icons.css" rel="stylesheet">
  <link href="../resources/vendor/boxicons/css/boxicons.min.css" rel="stylesheet">
  <link href="../resources/vendor/glightbox/css/glightbox.min.css" rel="stylesheet">
  <link href="../resources/vendor/swiper/swiper-bundle.min.css" rel="stylesheet">

  <!-- Template Main CSS File -->
  <link href="../resources/css/style.css" rel="stylesheet">

  <!-- =======================================================
  * Template Name: Day - v4.10.0
  * Template URL: https://bootstrapmade.com/day-multipurpose-html-template-for-free/
  * Author: BootstrapMade.com
  * License: https://bootstrapmade.com/license/
  ======================================================== -->
  <style>
  	.box featured {
  		margine:0 auto;
  	}
  </style>
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>
		<script>
			$(document).ready(function() {
				let allCheck = false;
				$('#submitBtn').click(function() {
					if($('#afterName').val().length < 1) {
						$('#errorMsg').text('변경할 이름을 입력해주세요.');
						$('#afterName').focus();
					} else if($('#memberPw').val().length < 1){
						$('#errorMsg').text('비밀번호 입력해주세요.');
						$('#memberPw').focus();
					} else {
						$('#errorMsg').text('');
						allCheck = true;
					}
						
					if(allCheck) {
						$('#modifyMemberForm').submit();
					}
				});
			});
		</script>
</head>

<body>

  <!-- ======= Header ======= -->
  <header id="header" class="d-flex align-items-center">
    <div class="container d-flex align-items-center justify-content-between">

      <h1 class="logo"><a href="${pageContext.request.contextPath}/home">Day</a></h1>
      <!-- Uncomment below if you prefer to use an image logo -->
      <!-- <a href="index.html" class="logo"><img src="assets/img/logo.png" alt="" class="img-fluid"></a>-->
<nav id="navbar" class="navbar">
        <ul>
          <li><a class="nav-link scrollto active" href="#hero">Home</a></li>
          <li><a class="nav-link scrollto" href="${pageContext.request.contextPath}/board/boardList">Bulletin board</a></li>
          <li class="dropdown"><a href="#"><span>My page</span> <i class="bi bi-chevron-down"></i></a>
            <ul>
              <li><a href="${pageContext.request.contextPath}/member/memberOne">My profile</a></li>
              
              <li><a href="${pageContext.request.contextPath}/member/logout">Log out</a></li>
            </ul>
          </li>
          
        </ul>
        <i class="bi bi-list mobile-nav-toggle"></i>
      </nav><!-- .navbar -->
      

    </div>
  </header><!-- End Header -->

  <main id="main">

    <!-- ======= Pricing Section ======= -->
    <section id="hero">
    <div class="pricing">
      <div class="container">

   

       <div class="d-flex justify-content-center" data-aos="zoom-in">
            <div class="box" style="width:500px; margine:0 auto;">
            <br>
              <h4>Edit Profile</h4>
              <h4><span>You can edit nickname.</span></h4>
            <form action="${pageContext.request.contextPath}/member/modifyMember" method="post" id="modifyMemberForm" role="form" class="php-email-form">
             
              <div>
                <input type="text" class="form-control" name="memberId" id="memberId" readonly="readonly" value="${loginMember.memberId}" width="500px">
              </div>
              <div>
                <input type="text" class="form-control mt-2" name="beforeName" id="beforeName" readonly="readonly" value="${loginMember.memberName}" width="500px">
              </div>
              <div>
                <input type="text" class="form-control mt-2" name="afterName" id="afterName" placeholder="Nickname" width="500px">
              </div>
              <div>
                <input type="password" class="form-control mt-2" name="memberPw" id="memberPw" placeholder="Password">
              </div>
              <span style="color:red;" id="errorMsg"></span>
              <div class="btn-wrap mt-3">
                <div name="submitBtn" id="submitBtn" class="btn-buy">Edit</div>
              </div>
              <br>
            </form>
              
            </div>
          </div>

        

      </div>
    </div><!-- End Pricing Section -->
    </section>
 
   

    

  </main><!-- End #main -->

  <!-- ======= Footer ======= -->
  <footer id="footer">
    
    <div class="container">
      <div class="copyright">
        &copy; Copyright <strong><span>Day</span></strong>. All Rights Reserved
      </div>
      <div class="credits">
        <!-- All the links in the footer should remain intact. -->
        <!-- You can delete the links only if you purchased the pro version. -->
        <!-- Licensing information: https://bootstrapmade.com/license/ -->
        <!-- Purchase the pro version with working PHP/AJAX contact form: https://bootstrapmade.com/day-multipurpose-html-template-for-free/ -->
        Designed by <a href="">Hwanghyunjeong</a>
      </div>
    </div>
  </footer><!-- End Footer -->

  <a href="#" class="back-to-top d-flex align-items-center justify-content-center"><i class="bi bi-arrow-up-short"></i></a>
  <div id="preloader"></div>

  <!-- Vendor JS Files -->
  <script src="../resources/vendor/aos/aos.js"></script>
  <script src="../resources/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
  <script src="../resources/vendor/glightbox/js/glightbox.min.js"></script>
  <script src="../resources/vendor/isotope-layout/isotope.pkgd.min.js"></script>
  <script src="../resources/vendor/swiper/swiper-bundle.min.js"></script>
  <script src="../resources/vendor/php-email-form/validate.js"></script>

  <!-- Template Main JS File -->
  <script src="../resources/js/main.js"></script>

</body>

</html>