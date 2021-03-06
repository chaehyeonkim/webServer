<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="true"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">

<head>

<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">

<title>파인드잡 </title>

<!-- Bootstrap core CSS -->
<link href="${pageContext.request.contextPath}/resources/bootstrap/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

<!-- Custom fonts for this template -->
<link href="${pageContext.request.contextPath}/resources/bootstrap/vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
<link href="https://fonts.googleapis.com/css?family=Montserrat:400,700" rel="stylesheet" type="text/css">
<link href='https://fonts.googleapis.com/css?family=Kaushan+Script' rel='stylesheet' type='text/css'>
<link href='https://fonts.googleapis.com/css?family=Droid+Serif:400,700,400italic,700italic' rel='stylesheet' type='text/css'>
<link href='https://fonts.googleapis.com/css?family=Roboto+Slab:400,100,300,700' rel='stylesheet' type='text/css'>

<!-- Custom styles for this template -->
<link href="${pageContext.request.contextPath}/resources/bootstrap/css/agency.min.css" rel="stylesheet">

<<<<<<< HEAD
<script>
	function mySubmit() {
		document.sub1.submit();
	}
</script>
</head>

<body id="page-top">
<header>
<!-- Navigation -->
<nav class="navbar navbar-expand-lg navbar-dark fixed-top" id="mainNav">
<div class="container">
 <c:url value="/" var="url"/><a class="navbar-brand js-scroll-trigger" href="">FindJob</a>
 <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
   Menu
   <i class="fas fa-bars"></i>
 </button>
 <div class="collapse navbar-collapse" id="navbarResponsive">
   <ul class="navbar-nav text-uppercase ml-auto">
       <li class="nav-item">
           <c:url value="/login" var="url"/><a class="nav-link js-scroll-trigger" href="${url}">Login</a>
       </li>
       <li class="nav-item">
           <c:url value="/register" var="url"/><a class="nav-link js-scroll-trigger" href="${url}">회원가입 </a>
       </li>
   </ul>
 </div>
</div>
</nav>
</header>

<!--  Menu -->
<section class="page-section-top" id="services">
<hr>
<div class="container">
<div class="row text-center">
 <div class="margin">
   <p class="margin"><a class="menu" href="">HOME</a></p>
 </div>
 <div class="margin">
   <p class="margin"><a class="menu" href="">채용 </a></p>
 </div>
 <div class="margin">
   <p class="margin"><a class="menu" href="">상세 검색 </a></p>
 </div>
 <div class="margin">
   <p class="margin"><a class="menu" href="">뉴스 </a></p>
 </div>
</div>
</div>
<hr>
</section>
  
 <br>
 <h3 align=center>LOGIN</h3>
 <div id="shortcodePreviews">
     <div id="formPreview">
         <c:if test="${not empty errorMsg }">
             <div style="color: #ff0000;">
                 <h3>${errorMsg }</h3>
             </div>
         </c:if>

         <c:if test="${not empty logoutMsg }">
             <div style="color: #0000ff;">
                 <h3>${logoutMsg }</h3>
             </div>
         </c:if>

         <form class="border border-light p-5" method="POST" name="sub1" action="<c:url value="login"/>">

             <input type="email" id="defaultLoginFormEmail" class="form-control mb-4" name="uemail" placeholder="E-mail">

             <input type="password" id="defaultLoginFormPassword" class="form-control mb-4" name="upasswd" placeholder="Password">

             <input type="hidden" name="${_csrf.parameterName}"
                    value="${_csrf.token}" />
             
             <div class="d-flex justify-content-between">
                 <div>
                     <a href="">Forgot password?</a>
                 </div>
             </div>

             <button class="btn btn-primary btn-block my-4" type="submit">Submit</button>
		 </form>
             <div class="text-center">
                 <p>Not a member?
                     <a href="">Register</a>
                 </p>

                 <p>or sign in with:</p>
                 <a type="button" class="light-blue-text mx-2">
                     <i class="fab fa-facebook-f"></i>
                 </a>
                 <a type="button" class="light-blue-text mx-2">
                     <i class="fab fa-twitter"></i>
                 </a>
                 <a type="button" class="light-blue-text mx-2">
                     <i class="fab fa-linkedin-in"></i>
                 </a>
                 <a type="button" class="light-blue-text mx-2">
                     <i class="fab fa-github"></i>
                 </a>
             </div>
        
=======
</head>

<body id="page-top">
<header>
<!-- Navigation -->
<nav class="navbar navbar-expand-lg navbar-dark fixed-top" id="mainNav">
<div class="container">
 <c:url value="/" var="url"/><a class="navbar-brand js-scroll-trigger" href="">FindJob</a>
 <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
   Menu
   <i class="fas fa-bars"></i>
 </button>
 <div class="collapse navbar-collapse" id="navbarResponsive">
   <ul class="navbar-nav text-uppercase ml-auto">
       <li class="nav-item">
           <c:url value="/login" var="url"/><a class="nav-link js-scroll-trigger" href="${url}">Login</a>
       </li>
       <li class="nav-item">
           <c:url value="/register" var="url"/><a class="nav-link js-scroll-trigger" href="${url}">회원가입 </a>
       </li>
   </ul>
 </div>
</div>
</nav>
</header>

<!--  Menu -->
<section class="page-section-top" id="services">
<hr>
<div class="container">
<div class="row text-center">
 <div class="margin">
   <p class="margin"><a class="menu" href="">HOME</a></p>
 </div>
 <div class="margin">
   <p class="margin"><a class="menu" href="">채용 </a></p>
 </div>
 <div class="margin">
   <p class="margin"><a class="menu" href="">상세 검색 </a></p>
 </div>
 <div class="margin">
   <p class="margin"><a class="menu" href="">뉴스 </a></p>
 </div>
</div>
</div>
<hr>
</section>
  
 <br>
 <h3 align=center>LOGIN</h3>
 <div id="shortcodePreviews">
     <div id="formPreview">
         <c:if test="${not empty errorMsg }">
             <div style="color: #ff0000;">
                 <h3>${errorMsg }</h3>
             </div>
         </c:if>

         <c:if test="${not empty logoutMsg }">
             <div style="color: #0000ff;">
                 <h3>${logoutMsg }</h3>
             </div>
         </c:if>

         <form class="border border-light p-5" method=POST action="<c:url value="login"/>">

             <input type="email" id="defaultLoginFormEmail" class="form-control mb-4" name="uemail" placeholder="E-mail">

             <input type="password" id="defaultLoginFormPassword" class="form-control mb-4" name="upasswd" placeholder="Password">

             <input type="hidden" name="${_csrf.parameterName}"
                    value="${_csrf.token}" />
             
             <div class="d-flex justify-content-between">
                 <div>
                     <a href="">Forgot password?</a>
                 </div>
             </div>

             <button class="btn btn-primary btn-block my-4" type="submit">Submit</button>

             <div class="text-center">
                 <p>Not a member?
                     <a href="">Register</a>
                 </p>

                 <p>or sign in with:</p>
                 <a type="button" class="light-blue-text mx-2">
                     <i class="fab fa-facebook-f"></i>
                 </a>
                 <a type="button" class="light-blue-text mx-2">
                     <i class="fab fa-twitter"></i>
                 </a>
                 <a type="button" class="light-blue-text mx-2">
                     <i class="fab fa-linkedin-in"></i>
                 </a>
                 <a type="button" class="light-blue-text mx-2">
                     <i class="fab fa-github"></i>
                 </a>
             </div>
         </form>
>>>>>>> branch 'master' of https://github.com/chaehyeonkim/webServer.git
     </div>
 </div>

<br><br>
<!-- Footer -->
  <footer class="footer">
    <div class="container">
      <div class="row align-items-center">
        <div class="col-md-4">
          <span class="copyright">Copyright &copy; Your Website 2019</span>
        </div>
        <div class="col-md-4">
          <ul class="list-inline social-buttons">
            <li class="list-inline-item">
              <a href="#">
                <i class="fab fa-twitter"></i>
              </a>
            </li>
            <li class="list-inline-item">
              <a href="#">
                <i class="fab fa-facebook-f"></i>
              </a>
            </li>
            <li class="list-inline-item">
              <a href="#">
                <i class="fab fa-linkedin-in"></i>
              </a>
            </li>
          </ul>
        </div>
        <div class="col-md-4">
          <ul class="list-inline quicklinks">
            <li class="list-inline-item">
              <a href="#">Privacy Policy</a>
            </li>
            <li class="list-inline-item">
              <a href="#">Terms of Use</a>
            </li>
          </ul>
        </div>
      </div>
    </div>
  </footer>

  <!-- Bootstrap core JavaScript -->
  <script src="${pageContext.request.contextPath}/resources/bootstrap/vendor/jquery/jquery.min.js"></script>
  <script src="${pageContext.request.contextPath}/resources/bootstrap/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

  <!-- Plugin JavaScript -->
  <script src="${pageContext.request.contextPath}/resources/bootstrap/vendor/jquery-easing/jquery.easing.min.js"></script>

  <!-- Contact form JavaScript -->
  <script src="${pageContext.request.contextPath}/resources/bootstrap/js/jqBootstrapValidation.js"></script>
  <script src="${pageContext.request.contextPath}/resources/bootstrap/js/contact_me.js"></script>

  <!-- Custom scripts for this template -->
  <script src="${pageContext.request.contextPath}/resources/bootstrap/js/agency.min.js"></script>

</body>
</html>