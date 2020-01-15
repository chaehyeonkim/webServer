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

</head>

<body id="page-top">
<header>
    <!-- Navigation -->
    <nav class="navbar navbar-expand-lg navbar-dark fixed-top" id="mainNav">
        <div class="container">
            <c:url value="/" var="url"/><a class="navbar-brand js-scroll-trigger" href="${url}">FindJob</a>
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
                <p class="margin"><c:url value="/" var="url"/><a class="menu" href="${url}">HOME</a></p>
            </div>
            <div class="margin">
                <p class="margin"><c:url value="/" var="url"/><a class="menu" href="${url}">채용 </a></p>
            </div>
            <div class="margin">
                <p class="margin"><c:url value="/" var="url"/><a class="menu" href="${url}">상세 검색 </a></p>
            </div>
            <div class="margin">
                <p class="margin"><c:url value="/" var="url"/><a class="menu" href="${url}">뉴스 </a></p>
            </div>
        </div>
    </div>
    <hr>
</section>


<br>
<center>
    <h4 class="mb-3">채용공고 상세검색 </h4>
    <div class="col-md-6 order-md-3 text-left">
        <form class="needs-validation" name=form1 action="<c:url value="/recruitmentSearch"/>" method="post">
            <div class="mb-3">
                <label for="work_location">근무지역 </label>
                <select class="custom-select d-block w-100" name="work_location">
                    <option selected>서울 </option>
                    <option>경기 </option>
                    <option>인천 </option>
                    <option>대전 </option>
                    <option>세종 </option>
                    <option>충남 </option>
                    <option>충북 </option>
                    <option>광주 </option>
                    <option>전남 </option>
                    <option>전북 </option>
                    <option>대구 </option>
                    <option>경북 </option>
                    <option>부산 </option>
                    <option>울산 </option>
                    <option>경남 </option>
                    <option>강원 </option>
                    <option>제주 </option>
                    <option>전국 </option>
                </select>
            </div>

            <div class="mb-3">
                <label for="recruitment_school">학력 </label>
                <select class="custom-select d-block w-100" name="recruitment_school">
                    <option selected>대학교졸업(4년) </option>
                    <option>대학졸업(2,3년) </option>
                    <option>대학원 석사졸업 </option>
                    <option>대학원 박사졸업 </option>
                    <option>학력무관 </option>
                    <option>전체 </option>
                </select>
            </div>

            <div class="mb-3">
                <label for="company_scale">기업형태 </label>
                <select class="custom-select d-block w-100" name="company_scale">
                    <option selected>대기업 </option>
                    <option>중견기업 </option>
                    <option>중소기업 </option>
                    <option>소기업 </option>
                    <option>전체 </option>
                </select>
            </div>

            <div class="mb-3">
                <label for="recruitment_form">고용형태 </label>
                <select class="custom-select d-block w-100" name="recruitment_form">
                    <option selected>정규직 </option>
                    <option>계약직 </option>
                    <option>인턴 </option>
                    <option>위촉직 </option>
                    <option>전체 </option>
                </select>
            </div>

            <button class="btn btn-primary btn-lg btn-block" type="submit">Continue to checkout</button>
        </form>
    </div>
</center>

<br>
<c:if test="${!empty recruitments}">
<div class="row justify-content-center">
    <div class="col-md-8">
        <h4 class="mb-3" align=center>채용 정보 </h4>
        <table class="table">
            <tr>
                <td>회사이름 </td><td>공고 </td><td> </td><td>고용형태 </td><td>공고시작일자 </td><td>공고종료일자 </td><td>회사 URL </td>
            </tr>
            <c:forEach var="recruitment" items="${recruitments}" varStatus="status">
                <tr>
                    <td>${company[status.index].company_id }</td>
                    <td>${recruitment.recruit_name }</td>
                    <td>${recruitment.recruitment_form }</td>
                    <td>${recruitment.start_day }</td>
                    <td>${recruitment.finish_day }</td>
                    <td>${company[status.index].company_url }</td>
                </tr>
            </c:forEach>
        </table>
    </div>
</div>
</c:if>

<br><br>

<!-- Footer -->
<footer class="footer">
    <div class="container">
        <div class="row align-items-center">
            <div class="col-md-4">
                <span class="copyright">Copyright &copy; FindJob Website 2020</span>
            </div>
            <div class="col-md-4">
                <ul class="list-inline social-buttons">
                    <li class="list-inline-item">
                        <a href="https://twitter.com/">
                            <i class="fab fa-twitter"></i>
                        </a>
                    </li>
                    <li class="list-inline-item">
                        <a href="https://www.facebook.com/">
                            <i class="fab fa-facebook-f"></i>
                        </a>
                    </li>
                    <li class="list-inline-item">
                        <a href="https://www.linkedin.com/feed/">
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

