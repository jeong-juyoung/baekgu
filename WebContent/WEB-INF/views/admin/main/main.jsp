<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
	
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width,initial-scale=1.0">
        <meta
            name="description"
            content="Creative - Bootstrap 3 Responsive Admin Template">
        <meta name="author" content="GeeksLabs">
        <meta
            name="keyword"
            content="Creative, Dashboard, Admin, Template, Theme, Bootstrap, Responsive, Retina, Minimal">
	
        <title>백구 관리자페이지</title>

        
        <link href="${ pageContext.servletContext.contextPath }/RESOURCES/CSS/ADMIN/bootstrap-theme.css" rel="stylesheet">

 
        <!-- owl carousel -->
        <link rel="stylesheet" href="${ pageContext.servletContext.contextPath }/RESOURCES/CSS/ADMIN/owl.carousel.css" type="text/css">
        <link href="${ pageContext.servletContext.contextPath }/RESOURCES/CSS/ADMIN/jquery-jvectormap-1.2.2.css" rel="stylesheet">
        <!-- Custom styles -->
        <link href="${ pageContext.servletContext.contextPath }/RESOURCES/CSS/ADMIN/widgets.css" rel="stylesheet">
        <link href="${ pageContext.servletContext.contextPath }/RESOURCES/CSS/ADMIN/style.css" rel="stylesheet">
        <link href="${ pageContext.servletContext.contextPath }/RESOURCES/CSS/ADMIN/style-responsive.css" rel="stylesheet"/>
        <link href="${ pageContext.servletContext.contextPath }/RESOURCES/CSS/ADMIN/jquery-ui-1.10.4.min.css" rel="stylesheet">
        <!-- ======================================================= Theme Name:
        NiceAdmin Theme URL:
        https://bootstrapmade.com/nice-admin-bootstrap-admin-html-template/ Author:
        BootstrapMade Author URL: https://bootstrapmade.com
        ======================================================= -->
    </head>

    <body>
        <!-- container section start -->
        <section id="container" class="">

          <!-- 맨 위 다크 헤더 (백구 관리자 있는 곳) -->
            <header class="header dark-bg">
                <div class="toggle-nav">
                    <div
                        class="icon-reorder tooltips"
                        data-original-title="Toggle Navigation"
                        data-placement="bottom">
                        <i class="icon_menu"></i>
                    </div>
                </div>

                <!--logo start-->
                <a href="${ pageContext.servletContext.contextPath }/admin/main" class="logo">백구
                    <span class="lite">관리자</span></a>
                <!--logo end-->

                  <!-- 사용자 프로필 -->
  
                <h4 align="right" style="margin-top: 1%;">관리자 : <c:out value="${ sessionScope.loginAdmin.adminName }"/></h4>
                
            </header>
            <!--header end-->

            <!--sidebar start-->
            <aside>
                <div id="sidebar" class="nav-collapse ">
                    <!-- sidebar menu start-->
                    <ul class="sidebar-menu">
                        <li class="active">
                            <a class="" href="${ pageContext.servletContext.contextPath }/admin/main">
                                <i class="icon_house_alt"></i>
                                <span>Dashboard</span>
                            </a>
                        </li>
                          <li class="active">
                            <a class="" href="${ pageContext.servletContext.contextPath }/admin/manager">
                                <i class="icon_house_alt"></i>
                                <span>홈페이지 정보</span>
                            </a>
                        </li>
                        <li class="active">
                            <a class="" href="${ pageContext.servletContext.contextPath }/admin/main">
                                <i class="icon_house_alt"></i>
                                <span>관리자 및 직원관리</span>
                            </a>
                        </li>
                        <li class="active">
                            <a class="" href="${ pageContext.servletContext.contextPath }/admin/manager">
                                <i class="icon_house_alt"></i>
                                <span>회원 정보</span>
                            </a>
                        </li>
                         <li class="active">
                            <a class="" href="${ pageContext.servletContext.contextPath }/admin/manager">
                                <i class="icon_house_alt"></i>
                                <span>기업 정보</span>
                            </a>
                        </li>
                        <li class="active">
                            <a class="" href="${ pageContext.servletContext.contextPath }/admin/manager">
                                <i class="icon_house_alt"></i>
                                <span>공고승인</span>
                            </a>
                        </li>
                        <li class="active">
                            <a class="" href="${ pageContext.servletContext.contextPath }/admin/manager">
                                <i class="icon_house_alt"></i>
                                <span>공고관리</span>
                            </a>
                        </li>
                        <li class="active">
                            <a class="" href="${ pageContext.servletContext.contextPath }/admin/manager">
                                <i class="icon_house_alt"></i>
                                <span>가입승인</span>
                            </a>
                        </li>
                        <li class="active">
                            <a class="" href="${ pageContext.servletContext.contextPath }/admin/manager">
                                <i class="icon_house_alt"></i>
                                <span>광고상품관리</span>
                            </a>
                        </li>
                        <li class="active">
                            <a class="" href="${ pageContext.servletContext.contextPath }/admin/manager">
                                <i class="icon_house_alt"></i>
                                <span>신고관리</span>
                            </a>
                        </li>
                     </ul>
                    <!-- sidebar menu end-->
                </div>
            </aside>
            <!--sidebar end-->

            <!--main content start-->
            <section id="main-content">
                <section class="wrapper">
                    <!--overview start-->
                    <div class="row">
                        <div class="col-lg-12">
                            <h3 class="page-header">
                                <i class="fa fa-laptop"></i>
                                Dashboard</h3>
                            
                        </div>
                    </div>

                    <div class="row">
                        <div class="col-lg-3 col-md-3 col-sm-12 col-xs-12">
                            <div class="info-box blue-bg">
                                <i class="fa fa-cloud-download"></i>
                                <div class="count">2</div>
                                <div class="title">신규 신고목록</div>
                            </div>
                            <!--/.info-box-->
                        </div>
                        <!--/.col-->

                       

                        <div class="col-lg-3 col-md-3 col-sm-12 col-xs-12">
                            <div class="info-box green-bg">
                                <i class="fa fa-cubes"></i>
                                <div class="count">20</div>
                                <div class="title">가입승인 대기중인 기업</div>
                            </div>
                            <!--/.info-box-->
                        </div>
                        <!--/.col-->

                    </div>
                    <!--/.row-->


                    

                  
                </section>

            </section>
            <!--main content end-->
            
        </section>
        <!-- container section start -->

        <!-- javascripts -->
        <script src="RESOURCES/JS/ADMIN/jquery.js"></script>
        <script src="RESOURCES/JS/ADMIN/jquery-ui-1.10.4.min.js"></script>
        <script src="RESOURCES/JS/ADMIN/jquery-1.8.3.min.js"></script>
        <script type="text/javascript" src="RESOURCES/JS/ADMIN/jquery-ui-1.9.2.custom.min.js"></script>
        <!-- bootstrap -->
        <script src="RESOURCES/JS/ADMIN/bootstrap.min.js"></script>
        <!-- nice scroll -->
        <script src="RESOURCES/JS/ADMIN/jquery.scrollTo.min.js"></script>
        <script src="RESOURCES/JS/ADMIN/jquery.nicescroll.js" type="text/javascript"></script>
        <!-- charts scripts -->
        <script src="RESOURCES/JS/ADMIN/jquery.sparkline.js" type="text/javascript"></script>
        <script src="RESOURCES/JS/ADMIN/owl.carousel.js"></script>
        <!-- jQuery full calendar -->
        <script src="RESOURCES/JS/ADMIN/fullcalendar.min.js"></script> <!-- Full Google Calendar -
        Calendar --> 
        <script src="RESOURCES/JS/ADMIN/jquery.rateit.min.js"></script> 
        <!-- custom select --> 
        <script src="RESOURCES/JS/ADMIN/jquery.customSelect.min.js"></script>
        <script src="RESOURCES/JS/ADMIN/scripts.js"></script> <!-- custom script for this page-->
        <script src="RESOURCES/JS/ADMIN/sparkline-chart.js"></script> 
        <script src="RESOURCES/JS/ADMIN/easy-pie-chart.js"></script> 
        <script src="RESOURCES/JS/ADMIN/jquery-jvectormap-1.2.2.min.js"></script> 
        <script src="RESOURCES/JS/ADMIN/jquery-jvectormap-world-mill-en.js"></script> 
        <script src="RESOURCES/JS/ADMIN/jquery.autosize.min.js"></script> <script
        src="RESOURCES/JS/ADMIN/jquery.placeholder.min.js"></script> <script
        src="RESOURCES/JS/ADMIN/gdp-data.js"></script> <script src="RESOURCES/JS/ADMIN/morris.min.js"></script> <script
        src="RESOURCES/JS/ADMIN/sparklines.js"></script> <script src="RESOURCES/JS/ADMIN/charts.js"></script> <script
        src="RESOURCES/JS/ADMIN/jquery.slimscroll.min.js"></script> <script> //knob $(function() {
        $(".knob").knob({ 'draw': function() { $(this.i).val(this.cv + '%') } }) });
        //carousel $(document).ready(function() { $("#owl-slider").owlCarousel({
        navigation: true, slideSpeed: 300, paginationSpeed: 400, singleItem: true });
        }); //custom select box $(function() { $('select.styled').customSelect(); }); /*
        ---------- Map ---------- */ $(function() { $('#map').vectorMap({ map:
        'world_mill_en', series: { regions: [{ values: gdpData, scale: ['#000', '#000'],
        normalizeFunction: 'polynomial' }] }, backgroundColor: '#eef3f7', onLabelShow:
        function(e, el, code) { el.html(el.html() + ' (GDP - ' + gdpData[code] + ')'); }
        }); }); </script> </body> </html> 