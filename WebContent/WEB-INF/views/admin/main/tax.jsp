<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description"
	content="Creative - Bootstrap 3 Responsive Admin Template">
<meta name="author" content="GeeksLabs">
<meta name="keyword"
	content="Cre ative, Dashboard, Admin, Template, Theme, Bootstrap, Responsive, Retina, Minimal">

<title>백구 관리자페이지</title>


<link href="RESOURCES/CSS/ADMIN/bootstrap-theme.css" rel="stylesheet">


<!-- owl carousel -->
<link rel="stylesheet" href="RESOURCES/CSS/ADMIN/owl.carousel.css"
	type="text/css">
<link href="RESOURCES/CSS/ADMIN/jquery-jvectormap-1.2.2.css"
	rel="stylesheet">
<!-- Custom styles -->
<link href="RESOURCES/CSS/ADMIN/widgets.css" rel="stylesheet">
<link href="RESOURCES/CSS/ADMIN/style.css" rel="stylesheet">
<link href="RESOURCES/CSS/ADMIN/style-responsive.css" rel="stylesheet" />
<link href="RESOURCES/CSS/ADMIN/jquery-ui-1.10.4.min.css"
	rel="stylesheet">
<script type = "text/javascript" src = "http://code.jquery.com/jquery-latest.min.js"></script> 
<script type = "text/javascript" src = "https://cdnjs.cloudflare.com/ajax/libs/jspdf/1.5.3/jspdf.min.js"></script>
<script type = "text/javascript" src = "https://html2canvas.hertzen.com/dist/html2canvas.min.js"></script>

<style type="text/css">
<!--
.border_tit {font-family:굴림, verdana, arial; font-size: 11px;color: #5863C7;}
.border_tit_red {font-family:굴림, verdana, arial; font-size: 11px;color: red;}
.border_up {font-family:굴림, verdana, arial; font-size: 11px;color: #5863C7; border-top-width:1; border-right-width:1; border-bottom-width:1; border-left-width:1; border-color:#5863C7; border-top-style:solid; border-left-style:none; border-right-style:solid; border-bottom-style:none;}
.border_up_red {font-family:굴림, verdana, arial; font-size: 11px;color: red; border-top-width:1; border-right-width:1; border-bottom-width:1; border-left-width:1; border-color:red; border-top-style:solid; border-left-style:none; border-right-style:solid; border-bottom-style:none;}
.border_all {font-family:굴림, verdana, arial; font-size: 11px;color: #5863C7; border-top-width:2; border-right-width:2; border-bottom-width:2; border-left-width:2; border-color:#5863C7; border-top-style:solid; border-left-style:solid; border-right-style:solid; border-bottom-style:solid; }
.border_all_red {font-family:굴림, verdana, arial; font-size: 11px;color: red; border-top-width:2; border-right-width:2; border-bottom-width:2; border-left-width:2; border-color:red; border-top-style:solid; border-left-style:solid; border-right-style:solid; border-bottom-style:solid;}
.border_both {font-family:굴림, verdana, arial; font-size: 11px;color: #5863C7; border-top-width:1; border-right-width:1; border-bottom-width:1; border-left-width:1; border-color:#5863C7; border-top-style:none; border-left-style:solid; border-right-style:solid; border-bottom-style:none;}
.border_both_red {font-family:굴림, verdana, arial; font-size: 11px;color: red; border-top-width:1; border-right-width:1; border-bottom-width:1; border-left-width:1; border-color:red; border-top-style:none; border-left-style:solid; border-right-style:solid; border-bottom-style:none;}
.border_top {font-family:굴림, verdana, arial; font-size: 11px;color: #5863C7; border-top-width:1; border-right-width:1; border-bottom-width:1; border-left-width:1; border-color:#5863C7; border-top-style:solid; border-left-style:none; border-right-style:none; border-bottom-style:none;}
.border_top_red {font-family:굴림, verdana, arial; font-size: 11px;color: red; border-top-width:1; border-right-width:1; border-bottom-width:1; border-left-width:1; border-color:red; border-top-style:solid; border-left-style:none; border-right-style:none; border-bottom-style:none;}
.border_back {font-family:굴림, verdana, arial; font-size: 11px;color: #5863C7; border-top-width:1; border-right-width:1; border-bottom-width:1; border-left-width:1; border-color:#5863C7; border-top-style:solid; border-left-style:solid; border-right-style:solid; border-bottom-style:none;}
.border_back_red {font-family:굴림, verdana, arial; font-size: 11px;color: red; border-top-width:1; border-right-width:1; border-bottom-width:1; border-left-width:1; border-color:red; border-top-style:solid; border-left-style:solid; border-right-style:solid; border-bottom-style:none;}
-->
#pdf_wrap {
  background-color:white;
  text-align:center;
}

#pdf_wrap > h1 {
  color:blue;
}

#pdf_wrap > h2 {
  color:yellow;
}
</style>
</head>
<body leftmargin="0" topmargin="0" marginwidth="0" marginheight="0">
<header>
	<jsp:include page="../common/header.jsp" />
</header>
	<c:if test="${ empty sessionScope.loginAdminName }">
		<section id="main-content">
			<section class="wrapper">
				<div class="row">
					<div class="col-lg-12">
			</section>
		</section>
	</c:if>
<c:if test="${ !empty sessionScope.loginAdminName }">
	<!--main content start-->
	<section id="main-content">
		<section class="wrapper">
			<button id="create_pdf">
				pdf 생성
			</button>

<div id="pdf_wrap" style="width: 800px">
	<table width='778' cellpadding='0' cellspacing='0' align='center'>
	 <tr>
	  <td width='100%'><br><br><br>
	<table width='700' cellpadding='0' cellspacing='0' align='center' class='border_all'>
	 <tr>
	  <td width='100%'>
	    <table cellpadding='0' cellspacing='0' height='65' width='100%'><tr>
	      <td rowspan='2' align='center' width='360' class='border_tit'><font size='6'><b>세 금 계 산 서</b></font></td>
	      <td rowspan='2' width='5' align='center' class='border_tit'><font size='4'><b>[</b></font></td>
	      <td rowspan='2' width='70' align='center' class='border_tit'>공급받는자&nbsp;<br>보 &nbsp;관 &nbsp;용&nbsp;</td>
	      <td rowspan='2' width='5' align='center' class='border_tit'><font size='4'><b>]</b></font></td>
	      <td align='right' width='85' class='border_tit'>책 번 호&nbsp;&nbsp;</td>
	      <td colspan='3' align='right' class='border_both'>권 &nbsp;</td>
	      <td colspan='4' align='right' class='border_tit'>호 &nbsp;</td>
	     </tr>
	     <tr>
	      <td width='85' align='right' class='border_tit'>일련번호&nbsp;</td>
	      <td colspan='1' class='border_back ' width='25'>
	      <%  int a = (int)((Math.random()*10000)%10); %>
	      <%=a %>
	      </td>
	      <td colspan='1' class='border_up' width='25'>
	      <%  int b = (int)((Math.random()*10000)%10); %>
	      <%=b %>
	      </td>
	      <td colspan='1' class='border_up' width='25'>
	      <%  int c = (int)((Math.random()*10000)%10); %>
	      <%=c %>
	      </td>
	      <td colspan='1' class='border_up' width='25'>
	      <%  int d = (int)((Math.random()*10000)%10); %>
	      <%=d %>
	      </td>
	      <td colspan='1' class='border_up' width='25'>
		  <%  int e = (int)((Math.random()*10000)%10); %>
	      <%=e %>      
	      </td>
	      <td colspan='1' class='border_up' width='25'>
		  <%  int f = (int)((Math.random()*10000)%10); %>
	      <%=f %>      </td>
	      <td colspan='1' class='border_top' width='25'>
		  <%  int g = (int)((Math.random()*10000)%10); %>
	      <%=g %>      
	      </td>  <!-- 책,권 -->
	     </tr>
	    </table>
	   </td>
	  </tr>
	  <tr> 
	   <td>
	    <table cellpadding='0' cellspacing='0' width='700'>
	     <tr>
	      <td class='border_up' align='center' width='17' rowspan='4'>공<br><br><br>급<br><br><br>자</td>
	      <td class='border_up' align='center' width='55' height='33'>등록번호</td>
	      <td class='border_up' align='center' width='278' colspan='5'>110-01-1234</td>
	      <td class='border_up' align='center' width='17' rowspan='4'>공<br>급<br>받<br>는<br>자</td>
	      <td class='border_up' align='center' width='55'>등록번호</td>
	      <td class='border_top' align='center' width='278' colspan='5'><c:out value="${ requestScope.tax.bNumber }"/></td>
	     </tr>
	     <tr>
	      <td class='border_up' align='center' width='55' height='33'>상 호<br>(법인명)</td>
	      <td class='border_up' align='center' width='160' colspan='3'>백구</td>
	      <td class='border_up' align='center' width='12' colspan='1'>성<br>명</td>
	      <td class='border_up' align='right' width='94' colspan='1'>황백구 (인)</td>
	      <td class='border_up' align='center' width='55'>상 호<br>(법인명)</td>
	      <td class='border_up' align='center' width='160' colspan='3'><c:out value="${ requestScope.tax.bName }"/></td>
	      <td class='border_up' align='center' width='12' colspan='1'>성<br>명</td>
	      <td class='border_top' align='right' width='94' colspan='1'><c:out value="${ requestScope.tax.bOnwer }"/> (인)</td>
	     </tr>
	     <tr>
	      <td class='border_up' align='center' width='55' height='33'>사업장<br>주  소</td>
	      <td class='border_up' align='center' width='278' colspan='5'>서울특별시서초구서초대로78길송림빌딩13층</td>
	      <td class='border_up' align='center' width='55'>사업장<br>주  소</td>
	      <td class='border_top' align='center' width='278' colspan='5'><c:out value="${ requestScope.tax.bAddress }"/></td>
	     </tr>
	     <tr>
	      <td class='border_up' align='center' width='55' height='33'>업  태</td>
	      <td class='border_up' align='center' width='148' colspan='1'>통신서비스</td>
	      <td class='border_up' align='center' width='12' colspan='1'>종<br>목</td>
	      <td class='border_up' align='center' width='106' colspan='3'>&nbsp;</td>
	      <td class='border_up' align='center' width='55'>업 &nbsp; 태</td>
	      <td class='border_up' align='center' width='148' colspan='1'><c:out value="${ requestScope.tax.bCategory }"/></td>
	      <td class='border_up' align='center' width='12' colspan='1'>종<br>목</td>
	      <td class='border_top' align='center' width='106' colspan='3'>&nbsp;</td>
	     </tr>
	    </table>
	   </td>
	  </tr>
	  <tr>
	   <td width='100%'>
	    <table cellpadding='0' cellspacing='0' width='700'>
	     <tr>
	      <td class='border_up' align='center' width='85' height='21'>작 &nbsp; 성</td>
	      <td class='border_up' colspan='12' width='250' align='center' style='border-right-width: 0px;'>공 &nbsp; 급 &nbsp; 가 &nbsp; 액</td>
	      <td class='border_up' rowspan='3' align='center' width='4' height='15'>&nbsp;</td>
	      <td class='border_up' colspan='10' align='center' width='190' height='15'>세 &nbsp; 액</td>
	      <td class='border_top' align='center' width='156'>비 &nbsp; 고</td>
	     </tr>
	     <tr>
	      <td class='border_up' align='center' width='85' height='21'>년 &nbsp; 월 &nbsp; 일</td>
	      <td class='border_up' align='center' width='20'>십</td>
	      <td class='border_up' align='center' width='20'>억</td>
	      <td class='border_up' align='center' width='20'>천</td>
	      <td class='border_up' align='center' width='20'>백</td>
	      <td class='border_up' align='center' width='20'>십</td>
	      <td class='border_up' align='center' width='20'>만</td>
	      <td class='border_up' align='center' width='20'>천</td>
	      <td class='border_up' align='center' width='20'>백</td>
	      <td class='border_up' align='center' width='20'>십</td>
	      <td class='border_up' align='center' width='20'>일</td>
	      <td class='border_top' align='center' width='20'></td>
	      <td class='border_top' align='center' width='20'></td>
	      
	      <td class='border_up' align='center' width='20'>십</td>
	      <td class='border_up' align='center' width='20'>억</td>
	      <td class='border_up' align='center' width='20'>천</td>
	      <td class='border_up' align='center' width='20'>백</td>
	      <td class='border_up' align='center' width='20'>십</td>
	      <td class='border_up' align='center' width='20'>만</td>
	      <td class='border_up' align='center' width='20'>천</td>
	      <td class='border_up' align='center' width='20'>백</td>
	      <td class='border_up' align='center' width='20'>십</td>
	      <td class='border_up' align='center' width='20'>일</td>
	      <td class='border_top' align='center' width='156' rowspan='2'></td>
	     </tr>
	     <tr>
	      <td class='border_up' align='center' width='85' height='25'>
	      <c:out value="${ requestScope.tax.now }" /> 
	      </td>
	      <td class='border_up' align='center' width='20'>${ supplypriceMap["1000000000"]}</td>
	      <td class='border_up' align='center' width='20'>${ supplypriceMap["100000000"]}</td>
	      <td class='border_up' align='center' width='20'>${ supplypriceMap["10000000"]}</td>
	      <td class='border_up' align='center' width='20'>${ supplypriceMap["1000000"]}</td>
	      <td class='border_up' align='center' width='20'>${ supplypriceMap["100000"]}</td>
	      <td class='border_up' align='center' width='20'>${ supplypriceMap["10000"]}</td>
	      <td class='border_up' align='center' width='20'>${ supplypriceMap["1000"]}</td>
	      <td class='border_up' align='center' width='20'>${ supplypriceMap["100"]}</td>
	      <td class='border_up' align='center' width='20'>${ supplypriceMap["10"]}</td>
	      <td class='border_up' align='center' width='20'>${ supplypriceMap["1"]}</td>
	      <td class='border_top' align='center' width='20'></td>
	      <td class='border_top' align='center' width='20'>원</td>
	      <td class='border_up' align='center' width='20'>${ taxpricesMap["1000000000"]}</td>
	      <td class='border_up' align='center' width='20'>${ taxpricesMap["100000000"]}</td>
	      <td class='border_up' align='center' width='20'>${ taxpricesMap["10000000"]}</td>
	      <td class='border_up' align='center' width='20'>${ taxpricesMap["1000000"]}</td>
	      <td class='border_up' align='center' width='20'>${ taxpricesMap["100000"]}</td>
	      <td class='border_up' align='center' width='20'>${ taxpricesMap["10000"]}</td>
	      <td class='border_up' align='center' width='20'>${ taxpricesMap["1000"]}</td>
	      <td class='border_up' align='center' width='20'>${ taxpricesMap["100"]}</td>
	      <td class='border_up' align='center' width='20'>${ taxpricesMap["10"]}</td>
	      <td class='border_up' align='center' width='20'>${ taxpricesMap["1"]}</td>
	     </tr>
	    </table>
	   </td>
	  </tr>
	  <tr>
	   <td width='100%'>
	    <table cellpadding='0' cellspacing='0' width='700'>
	     <tr>
	      <td class='border_up' align='center' width='92' height='21'>년 월 일</td>
	      <td class='border_up' align='center' width='237'>품 &nbsp; &nbsp; &nbsp; 목</td>
	      <td class='border_up' align='center' width='65'>수 량</td>
	      <td class='border_up' align='center' width='55'>단 가</td>
	      <td class='border_up' align='center' width='150'>공급가액</td>
	      <td class='border_up' align='center' width='83'>세 액</td>
	      <td class='border_top' align='center' width='60'>비고</td>
	     </tr>
	     <tr>
	      <td class='border_up' align='center' width='50' height='25'> <c:out value="${ requestScope.tax.postAdDate }" /> </td>
	      <td class='border_up' align='center' width='237'><c:out value="${ requestScope.tax.adName }"/></td>
	      <td class='border_up' align='center' width='65'><c:out value="${ requestScope.tax.week}"/></td>
	      <td class='border_up' align='center' width='55'><c:out value="${ requestScope.tax.onePrice }"/></td>
	      <td class='border_up' align='center' width='150'><c:out value="${ requestScope.sup }"/></td>
	      <td class='border_up' align='center' width='83'><c:out value="${ requestScope.tp }"/></td>
	      <td class='border_top' align='center' width='60'>&nbsp;</td>
	     </tr>
	     <tr>
	      <td class='border_up' align='center' width='50' height='25'>&nbsp;</td>
	      <td class='border_up' align='center' width='195'>&nbsp;</td>
	      <td class='border_up' align='center' width='65'>&nbsp;</td>
	      <td class='border_up' align='center' width='55'>&nbsp;</td>
	      <td class='border_up' align='center' width='150'>&nbsp;</td>
	      <td class='border_up' align='center' width='83'>&nbsp;</td>
	      <td class='border_top' align='center' width='60'>&nbsp;</td>
	     </tr>
	     <tr>
	      <td class='border_up' align='center' width='50' height='25'>&nbsp;</td>
	      <td class='border_up' align='center' width='195'>&nbsp;</td>
	      <td class='border_up' align='center' width='65'>&nbsp;</td>
	      <td class='border_up' align='center' width='55'>&nbsp;</td>
	      <td class='border_up' align='center' width='150'>&nbsp;</td>
	      <td class='border_up' align='center' width='83'>&nbsp;</td>
	      <td class='border_top' align='center' width='60'>&nbsp;</td>
	     </tr>
	     <tr>
	      <td class='border_up' align='center' width='50' height='25'>&nbsp;</td>
	      <td class='border_up' align='center' width='195'>&nbsp;</td>
	      <td class='border_up' align='center' width='65'>&nbsp;</td>
	      <td class='border_up' align='center' width='55'>&nbsp;</td>
	      <td class='border_up' align='center' width='150'>&nbsp;</td>
	      <td class='border_up' align='center' width='83'>&nbsp;</td>
	      <td class='border_top' align='center' width='60'>&nbsp;</td>
	     </tr>
	    </table>
	   </td>
	  </tr>
	  <tr>
	   <td width='100%'>
	    <table cellpadding='0' cellspacing='0' width='700'>
	     <tr align='justify'>
	      <td class='border_up' align='center' width='122' height='2'>합계금액</td>
	      <td class='border_up' align='center' width='108'>현 &nbsp; &nbsp; 금</td>
	      <td class='border_up' align='center' width='108'>수 &nbsp; &nbsp; 표</td>
	      <td class='border_up' align='center' width='108'>어 &nbsp; &nbsp; 음</td>
	      <td class='border_up' align='center' width='108'>외상미수금</td>
	      <td class='border_top' rowspan='2' align='center' width='143'>이 금액을 &nbsp;  &nbsp; 청구 &nbsp;함</td>
	     </tr>
	     <tr>
	      <td class='border_up' align='center' width='122' height='25'><c:out value="${ requestScope.tax.adPrice }"/></td>
	      <td class='border_up' align='center' width='108'>V</td>
	      <td class='border_up' align='center' width='108'>&nbsp;</td>
	      <td class='border_up' align='center' width='108'>&nbsp;</td>
	      <td class='border_up' align='center' width='108'>&nbsp;</td>
	     </tr>
	    </table>
	   </td>
	  </tr>
	</table>
	
	<br><br>
	<!------------------------------ 절취선 ------------------------------------------------->
	<table width='700' cellpadding='0' cellspacing='0' align='center'>
	   <tr>
	      <td height='1' colspan=2 background='<?echo("$skin_dir/dot.gif")?>' border='0'></td>
	   </tr>
	</table>
	<!------------------------------ 절취선 ------------------------------------------------->
	
	<br><br>
	
	<table width='700' cellpadding='0' cellspacing='0' align='center' class='border_all_red'>
	 <tr>
	  <td width='100%'>
	    <table cellpadding='0' cellspacing='0' height='65' width='100%'><tr>
	      <td rowspan='2' align='center' width='360' class='border_tit_red'><font size='6'><b>세 금 계 산 서</b></font></td>
	      <td rowspan='2' width='5' align='center' class='border_tit_red'><font size='4'><b>[</b></font></td>
	      <td rowspan='2' width='70' align='center' class='border_tit_red'>공 &nbsp;급 &nbsp;자&nbsp;<br>보 &nbsp;관 &nbsp;용&nbsp;</td>
	      <td rowspan='2' width='5' align='center' class='border_tit_red'><font size='4'><b>]</b></font></td>
	      <td align='right' width='85' class='border_tit_red'>책 번 호&nbsp;&nbsp;</td>
	      <td colspan='3' align='right' class='border_both_red'>권 &nbsp;</td>
	      <td colspan='4' align='right' class='border_tit_red'>호 &nbsp;</td>
	     </tr>
	     <tr>
	      <td width='85' align='right' class='border_tit_red'>일련번호&nbsp;</td>
	      <td colspan='1' class='border_back_red ' width='25'>
	      <%=a %>
	      </td>
	      <td colspan='1' class='border_back_red ' width='25'>
	      <%=b %>
	      </td>
	      <td colspan='1' class='border_back_red ' width='25'>
	      <%=c %>
	      </td>
	      <td colspan='1' class='border_back_red ' width='25'>
	      <%=d %>
	      </td>
	      <td colspan='1' class='border_back_red ' width='25'>
	      <%=e %>      
	      </td>
	      <td colspan='1' class='border_back_red ' width='25'>
	      <%=f %>      </td>
	      <td colspan='1' class='border_back_red ' width='25'>
	      <%=g %>
	      </td>
	      <!-- 책,권 -->
	     </tr>
	    </table>
	   </td>
	  </tr>
	  <tr> 
	   <td>
	    <table cellpadding='0' cellspacing='0' width='700'>
	     <tr>
	      <td class='border_up_red' align='center' width='17' rowspan='4'>공<br><br><br>급<br><br><br>자</td>
	      <td class='border_up_red' align='center' width='55' height='33'>등록번호</td>
	      <td class='border_up_red' align='center' width='278' colspan='5'>110-01-1234</td>
	      <td class='border_up_red' align='center' width='17' rowspan='4'>공<br>급<br>받<br>는<br>자</td>
	      <td class='border_up_red' align='center' width='55'>등록번호</td>
	      <td class='border_top_red' align='center' width='278' colspan='5'><c:out value="${ requestScope.tax.bNumber }"/></td>
	     </tr>
	     <tr>
	      <td class='border_up_red' align='center' width='55' height='33'>상 호<br>(법입명)</td>
	      <td class='border_up_red' align='center' width='160' colspan='3'>백구</td>
	      <td class='border_up_red' align='center' width='12' colspan='1'>성<br>명</td>
	      <td class='border_up_red' align='right' width='94' colspan='1'>황백구 (인)</td>
	      <td class='border_up_red' align='center' width='55'>상 호<br>(법입명)</td>
	      <td class='border_up_red' align='center' width='160' colspan='3'><c:out value="${ requestScope.tax.bName }"/></td>
	      <td class='border_up_red' align='center' width='12' colspan='1' >성<br>명</td>
	      <td class='border_top_red' align='right' width='94' colspan='1'><c:out value="${ requestScope.tax.bOnwer } (인)"/></td>
	     </tr>
	     <tr>
	      <td class='border_up_red' align='center' width='55' height='33'>사업장<br>주  소</td>
	      <td class='border_up_red' align='center' width='278' colspan='5'>서울특별시서초구서초대로78길송림빌딩13층</td>
	      <td class='border_up_red' align='center' width='55'>사업장<br>주  소</td>
	      <td class='border_top_red' align='center' width='278' colspan='5'><c:out value="${ requestScope.tax.bAddress }"/></td>
	     </tr>
	     <tr>
	      <td class='border_up_red' align='center' width='55' height='33'>업  태</td>
	      <td class='border_up_red' align='center' width='148' colspan='1'>통신서비스</td>
	      <td class='border_up_red' align='center' width='12' colspan='1'>종<br>목</td>
	      <td class='border_up_red' align='center' width='106' colspan='3'>&nbsp;</td>
	      <td class='border_up_red' align='center' width='55'>업 &nbsp; 태</td>
	      <td class='border_up_red' align='center' width='148' colspan='1'><c:out value="${ requestScope.tax.bCategory }"/></td>
	      <td class='border_up_red' align='center' width='12' colspan='1'>종<br>목</td>
	      <td class='border_top_red' align='center' width='106' colspan='3'>&nbsp;</td>
	     </tr>
	    </table>
	   </td>
	  </tr>
	  <tr>
	   <td width='100%'>
	    <table cellpadding='0' cellspacing='0' width='700'>
	     <tr>
	      <td class='border_up_red' align='center' width='85' height='21'>작 &nbsp; 성</td>
	      <td class='border_up_red' colspan='12' width='250' align='center' style='border-right-width: 0px;'>공 &nbsp; 급 &nbsp; 가 &nbsp; 액</td>
	      <td class='border_up_red' rowspan='3' align='center' width='4' height='15'>&nbsp;</td>
	      <td class='border_up_red' colspan='10' align='center' width='190' height='15'>세 &nbsp; 액</td>
	      <td class='border_top_red' align='center' width='156'>비 &nbsp; 고</td>
	     </tr>
	     <tr>
	      <td class='border_up_red' align='center' width='85' height='21'>년 &nbsp; 월 &nbsp; 일</td>
	      <td class='border_up_red' align='center' width='20'>십</td>
	      <td class='border_up_red' align='center' width='20'>억</td>
	      <td class='border_up_red' align='center' width='20'>천</td>
	      <td class='border_up_red' align='center' width='20'>백</td>
	      <td class='border_up_red' align='center' width='20'>십</td>
	      <td class='border_up_red' align='center' width='20'>만</td>
	      <td class='border_up_red' align='center' width='20'>천</td>
	      <td class='border_up_red' align='center' width='20'>백</td>
	      <td class='border_up_red' align='center' width='20'>십</td>
	      <td class='border_up_red' align='center' width='20'>일</td>
	      <td class='border_top_red' align='center' width='20'></td>
	      <td class='border_top_red' align='center' width='20'></td>
	      
	      <td class='border_up_red' align='center' width='20'>십</td>
	      <td class='border_up_red' align='center' width='20'>억</td>
	      <td class='border_up_red' align='center' width='20'>천</td>
	      <td class='border_up_red' align='center' width='20'>백</td>
	      <td class='border_up_red' align='center' width='20'>십</td>
	      <td class='border_up_red' align='center' width='20'>만</td>
	      <td class='border_up_red' align='center' width='20'>천</td>
	      <td class='border_up_red' align='center' width='20'>백</td>
	      <td class='border_up_red' align='center' width='20'>십</td>
	      <td class='border_up_red' align='center' width='20'>일</td>
	      <td class='border_up_red' align='center' width='156' rowspan='2'></td>
	     </tr>
	     <tr>
	      <td class='border_up_red' align='center' width='85' height='25'>
	      <c:out value="${ requestScope.tax.now }" /> 
	      </td>
	      <td class='border_up_red' align='center' width='20'>${ supplypriceMap["1000000000"]}</td>
	      <td class='border_up_red' align='center' width='20'>${ supplypriceMap["100000000"]}</td>
	      <td class='border_up_red' align='center' width='20'>${ supplypriceMap["10000000"]}</td>
	      <td class='border_up_red' align='center' width='20'>${ supplypriceMap["1000000"]}</td>
	      <td class='border_up_red' align='center' width='20'>${ supplypriceMap["100000"]}</td>
	      <td class='border_up_red' align='center' width='20'>${ supplypriceMap["10000"]}</td>
	      <td class='border_up_red' align='center' width='20'>${ supplypriceMap["1000"]}</td>
	      <td class='border_up_red' align='center' width='20'>${ supplypriceMap["100"]}</td>
	      <td class='border_up_red' align='center' width='20'>${ supplypriceMap["10"]}</td>
	      <td class='border_up_red' align='center' width='20'>${ supplypriceMap["1"]}</td>
	      <td class='border_top_red' align='center' width='20'></td>
	      <td class='border_top_red' align='center' width='20'>원</td>
	      <td class='border_up_red' align='center' width='20'>${ taxpricesMap["1000000000"]}</td>
	      <td class='border_up_red' align='center' width='20'>${ taxpricesMap["100000000"]}</td>
	      <td class='border_up_red' align='center' width='20'>${ taxpricesMap["10000000"]}</td>
	      <td class='border_up_red' align='center' width='20'>${ taxpricesMap["1000000"]}</td>
	      <td class='border_up_red' align='center' width='20'>${ taxpricesMap["100000"]}</td>
	      <td class='border_up_red' align='center' width='20'>${ taxpricesMap["10000"]}</td>
	      <td class='border_up_red' align='center' width='20'>${ taxpricesMap["1000"]}</td>
	      <td class='border_up_red' align='center' width='20'>${ taxpricesMap["100"]}</td>
	      <td class='border_up_red' align='center' width='20'>${ taxpricesMap["10"]}</td>
	      <td class='border_up_red' align='center' width='20'>${ taxpricesMap["1"]}</td>
	     </tr>
	    </table>
	   </td>
	  </tr>
	  <tr>
	   <td width='100%'>
	    <table cellpadding='0' cellspacing='0' width='700'>
	     <tr>
	      <td class='border_up_red' align='center' width='93' height='21'>년 월 일</td>
	      <td class='border_up_red' align='center' width='195'>품 &nbsp; &nbsp; &nbsp; 목</td>
	      <td class='border_up_red' align='center' width='42'>규 격</td>
	      <td class='border_up_red' align='center' width='65'>수 량</td>
	      <td class='border_up_red' align='center' width='55'>단 가</td>
	      <td class='border_up_red' align='center' width='150'>공급가액</td>
	      <td class='border_up_red' align='center' width='83'>세 액</td>
	      <td class='border_top_red' align='center' width='60'>비고</td>
	     </tr>
	     <tr>
	      <td class='border_up_red' align='center' width='50' height='25'>&nbsp;</td>
	      <td class='border_up_red' align='center' width='195'><c:out value="${ requestScope.tax.postAdDate }"/></td>
	      <td class='border_up_red' align='center' width='42'><c:out value="${ requestScope.tax.adName }"/></td>
	      <td class='border_up_red' align='center' width='65'><c:out value="${ requestScope.tax.week }"/></td>
	      <td class='border_up_red' align='center' width='55'><c:out value="${ requestScope.tax.onePrice }"/></td>
	      <td class='border_up_red' align='center' width='150'><c:out value="${ requestScope.sup }"/></td>
	      <td class='border_up_red' align='center' width='83'><c:out value="${ requestScope.tp }"/></td>
	      <td class='border_top_red' align='center' width='60'>&nbsp;</td>
	     </tr>
	     <tr>
	      <td class='border_up_red' align='center' width='50' height='25'>&nbsp;</td>
	      <td class='border_up_red' align='center' width='195'>&nbsp;</td>
	      <td class='border_up_red' align='center' width='42'>&nbsp;</td>
	      <td class='border_up_red' align='center' width='65'>&nbsp;</td>
	      <td class='border_up_red' align='center' width='55'>&nbsp;</td>
	      <td class='border_up_red' align='center' width='150'>&nbsp;</td>
	      <td class='border_up_red' align='center' width='83'>&nbsp;</td>
	      <td class='border_top_red' align='center' width='60'>&nbsp;</td>
	     </tr>
	     <tr>
	      <td class='border_up_red' align='center' width='50' height='25'>&nbsp;</td>
	      <td class='border_up_red' align='center' width='195'>&nbsp;</td>
	      <td class='border_up_red' align='center' width='42'>&nbsp;</td>
	      <td class='border_up_red' align='center' width='65'>&nbsp;</td>
	      <td class='border_up_red' align='center' width='55'>&nbsp;</td>
	      <td class='border_up_red' align='center' width='150'>&nbsp;</td>
	      <td class='border_up_red' align='center' width='83'>&nbsp;</td>
	      <td class='border_top_red' align='center' width='60'>&nbsp;</td>
	     </tr>
	     <tr>
	      <td class='border_up_red' align='center' width='50' height='25'>&nbsp;</td>
	      <td class='border_up_red' align='center' width='195'>&nbsp;</td>
	      <td class='border_up_red' align='center' width='42'>&nbsp;</td>
	      <td class='border_up_red' align='center' width='65'>&nbsp;</td>
	      <td class='border_up_red' align='center' width='55'>&nbsp;</td>
	      <td class='border_up_red' align='center' width='150'>&nbsp;</td>
	      <td class='border_up_red' align='center' width='83'>&nbsp;</td>
	      <td class='border_top_red' align='center' width='60'>&nbsp;</td>
	     </tr>
	    </table>
	   </td>
	  </tr>
	  <tr>
	   <td width='100%'>
	    <table cellpadding='0' cellspacing='0' width='700'>
	     <tr align='justify'>
	      <td class='border_up_red' align='center' width='122' height='2'>합계금액</td>
	      <td class='border_up_red' align='center' width='108'>현 &nbsp; &nbsp; 금</td>
	      <td class='border_up_red' align='center' width='108'>수 &nbsp; &nbsp; 표</td>
	      <td class='border_up_red' align='center' width='108'>어 &nbsp; &nbsp; 음</td>
	      <td class='border_up_red' align='center' width='108'>외상미수금</td>
	      <td class='border_top_red' rowspan='2' align='center' width='143'>이 금액을 &nbsp;  &nbsp; 청구 &nbsp;함</td>
	     </tr>
	     <tr>
	      <td class='border_up_red' align='center' width='122' height='25'><c:out value="${ requestScope.tax.adPrice }"/></td>
	      <td class='border_up_red' align='center' width='108'>V</td>
	      <td class='border_up_red' align='center' width='108'>&nbsp;</td>
	      <td class='border_up_red' align='center' width='108'>&nbsp;</td>
	      <td class='border_up_red' align='center' width='108'>&nbsp;</td>
	     </tr>
	    </table>
	   </td>
	  </tr>
	</table>
	</td>
	</tr>
	</table>
<script>

$('#create_pdf').click(function() {
  //pdf_wrap을 canvas객체로 변환
  html2canvas($('#pdf_wrap')[0]).then(function(canvas) {
    var doc = new jsPDF('p', 'mm', 'a4'); //jspdf객체 생성
    var imgData = canvas.toDataURL('image/png'); //캔버스를 이미지로 변환
    doc.addImage(imgData, 'PNG', 0, 0); //이미지를 기반으로 pdf생성
    doc.save('baekguTax' + '${ requestScope.tax.now }' + '${ requestScope.tax.bName }' + '.pdf'); //pdf저장
  });
});
</script>
	<br><br><br>
	</section>
	</section>
</div>

      
</c:if>


</body>
</html>
