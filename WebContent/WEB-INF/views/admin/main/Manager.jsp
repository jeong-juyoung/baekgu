<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta
            name="description"
            content="Creative - Bootstrap 3 Responsive Admin Template">
        <meta name="author" content="GeeksLabs">
        <meta
            name="keyword"
            content="Creative, Dashboard, Admin, Template, Theme, Bootstrap, Responsive, Retina, Minimal">

        <title>백구 관리자페이지</title>

        
        <link href="RESOURCES/CSS/ADMIN/bootstrap-theme.css" rel="stylesheet">

 
        <!-- owl carousel -->
        <link rel="stylesheet" href="RESOURCES/CSS/ADMIN/owl.carousel.css" type="text/css">
        <link href="RESOURCES/CSS/ADMIN/jquery-jvectormap-1.2.2.css" rel="stylesheet">
        <!-- Custom styles -->
        <link href="RESOURCES/CSS/ADMIN/widgets.css" rel="stylesheet">
        <link href="RESOURCES/CSS/ADMIN/style.css" rel="stylesheet">
        <link href="RESOURCES/CSS/ADMIN/style-responsive.css" rel="stylesheet"/>
        <link href="RESOURCES/CSS/ADMIN/jquery-ui-1.10.4.min.css" rel="stylesheet">
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
                <a href="index.html" class="logo">백구
                    <span class="lite">관리자</span></a>
                <!--logo end-->

                  <!-- 사용자 프로필 -->
                <div class="top-nav notification-row">
                    <span class="profile-ava">
                        <img alt="" src="img/avatar1_small.jpg">
                    </span>
                    <span class="username">정주영</span>
                </div>
            </header>
            <!--header end-->

             <!--sidebar start-->
             <aside>
                <div id="sidebar" class="nav-collapse ">
                    <!-- sidebar menu start-->
                    <ul class="sidebar-menu">
                        <li class="active">
                            <a class="" href="index.html">
                                <i class="icon_house_alt"></i>
                                <span>Dashboard</span>
                            </a>
                        </li>
                        <li class="sub-menu">
                            <a href="javascript:;" class="">
                                <i class="icon_document_alt"></i>
                                <span>백구관리</span>
                                <span class="menu-arrow arrow_carrot-right"></span>
                            </a>
                            <ul class="sub">
                                <li>
                                    <a class="" href="HomepageInfo.html">홈페이지 정보</a>
                                </li>
                                <li>
                                    <a class="" href="Manager.html">관리자 및 직원관리
                                    </a>
                                </li>
                            </ul>
                        </li>
                        <li class="sub-menu">
                            <a href="javascript:;" class="">
                                <i class="icon_desktop"></i>
                                <span>회원 관리</span>
                                <span class="menu-arrow arrow_carrot-right"></span>
                            </a>
                            <ul class="sub">
                                <li>
                                    <a class="" href="MemberInfo.html">회원정보</a>
                                </li>
                                <li>
                                    <a class="" href="CompanyInfo.html">기업정보</a>
                                </li>
                            </ul>
                        </li>



                        <li class="sub-menu">
                            <a href="javascript:;" class="">
                                <i class="icon_documents_alt"></i>
                                <span>콘텐츠 관리</span>
                                <span class="menu-arrow arrow_carrot-right"></span>
                            </a>
                            <ul class="sub">
                                <li>
                                    <a class="" href="inquiry.html">기업문의</a>
                                </li>
                                <li>
                                    <a class="" href="Post.html">
                                        <span>공고관리</span></a>
                                </li>
                                <li>
                                    <a class="" href="Sign-up.html">
                                        <span>가입승인</span></a>
                                </li>
                                <li>
                                    <a class="" href="Advert.html">광고상품관리</a>
                                </li>
                                <li>
                                    <a class="" href="Report.html">신고관리</a>
                                </li>
                            </ul>
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
                                관리자 및 직원 관리</h3>
                            
                        </div>
                    </div>
                </section>
               
                <div class="row">
                    <div class="col-lg-12">
                      <section class="panel">
                        <header class="panel-heading">
                          관리자 및 직원 관리
                          <button class="btn btn-success"  style="margin-left: 30px;" type="button" onClick="location.href='Registration.html'">
                            등록하기</button>
                        <a class="btn btn-warning" data-toggle="modal" href="#myModal2" style="margin-left: 30px;">
                            삭제하기
                        </a>
                        </header>
                        <div class="table-responsive">
                          <table class="table">
                            <thead>
                              <tr>
                                <th><input type="checkbox" id="checkAll"></th>
                                <th>이름</th>
                                <th>아이디</th>
                                <th>비밀번호</th>
                                <th>이메일</th>
                                <th>등록일</th>
                                <th>권한</th>
                              </tr>
                            </thead>
                            <tbody>
                              <tr>
                                <th><input type="checkbox"></th>
                                <td><a href="ManagerDetail.html">강현우</a></td>
                                <td>kang</td>
                                <td>1234</td>
                                <td>kang@beakgu.com</td>
                                <td>2021/05/02</td>
                                <td>1</td>
                              </tr>
                              <tr>
                                <th><input type="checkbox"></th>
                                <td><a href="">차진서</a></td>
                                <td>cha</td>
                                <td>1255</td>
                                <td>cha@beakgu.com</td>
                                <td>2021/05/02</td>
                                <td>1</td>
                              </tr>
                              <tr>
                                <th><input type="checkbox"></th>
                                <td><a href="">김현빈</a></td>
                                <td>kim</td>
                                <td>1255</td>
                                <td>kim@beakgu.com</td>
                                <td>2021/05/02</td>
                                <td></td>
                              </tr>
                              <tr>
                                <th><input type="checkbox"></th>
                                <td><a href="">김유진</a></td>
                                <td>jin</td>
                                <td>1255</td>
                                <td>jin@beakgu.com</td>
                                <td>2021/05/02</td>
                                <td>1</td>
                              </tr>
                              <tr>
                                <th><input type="checkbox"></th>
                                <td><a href="">김해인</a></td>
                                <td>hae</td>
                                <td>1255</td>
                                <td>hae@beakgu.com</td>
                                <td>2021/05/02</td>
                                <td>1</td>
                              </tr>
                              <tr>
                                <th><input type="checkbox"></th>
                                <td><a href="">정주영</a></td>
                                <td>jung</td>
                                <td>1255</td>
                                <td>jung@beakgu.com</td>
                                <td>2021/05/02</td>
                                <td>1</td>
                              </tr>
                              
                            </tbody>
                          </table>
                        </div>

                <!--하단 페이지 넘기기-->
                <section class="panel">
                <div class="panel-body">
                  <div class="text-center">
                    <ul class="pagination">
                      <li><a href="#">«</a></li>
                      <li><a href="#">1</a></li>
                      <li><a href="#">2</a></li>
                      <li><a href="#">3</a></li>
                      <li><a href="#">4</a></li>
                      <li><a href="#">5</a></li>
                      <li><a href="#">»</a></li>
                    </ul>
                  </div>
              <!--  검색창  -->
              <ul class="nav top-menu" style="float: right;">
                <li>
                  <form class="navbar-form">
                    <input class="form-control" placeholder="Search" type="text">
                    <button type="submit" class="btn btn-primary">검색하기</button>
                  </form>
                </li>
              </ul>
              <!--  search form end -->
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