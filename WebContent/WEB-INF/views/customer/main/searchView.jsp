<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>์์ธ์กฐํ</title>

<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<!-- Css Styles -->


<link rel="stylesheet" href="${ pageContext.servletContext.contextPath }/RESOURCES/CSS/CUSTOMER/YJCSS/bootstrap.min.css" type="text/css">
<link rel="stylesheet" href="${ pageContext.servletContext.contextPath }/RESOURCES/CSS/CUSTOMER/YJCSS/style.css" type="text/css">
<link rel="stylesheet" href="${ pageContext.servletContext.contextPath }/RESOURCES/CSS/CUSTOMER/YJCSS/header2.css" type="text/css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>

<style>
@font-face {
	font-family: "Nanum";
	src: url(${ pageContext.servletContext.contextPath }/RESOURCES/FONTS/NanumBarunGothic.ttf);
}
@font-face {
	font-family: "BM";
	src: url(${ pageContext.servletContext.contextPath }/RESOURCES/FONTS/BMEuljiro10yearslater.ttf);
}


table {
  border-spacing: 10px;
  border-collapse: collapse;
  padding-left: 20px;
  padding-right: 20px;
  padding-bottom: 10px;
}
table td {
  background: white;
}

h1 {
 font-size: 80px important!;
}

h2{
 font-size: 40px;

}
</style>
</head>

<body>

<%@ include file="../common/header2.jsp"%>
	<section class="product-details" style="margin-top: 10%; z-index: 1;">
		<div class="container">
			<div class="row">
         		<div class="col-lg-6 col-md-6">
            		<div><img src="${ pageContext.servletContext.contextPath }${ postInfo.logoPath } " style="width :450px; height: 450px; margin: auto;"></div>
            	</div>
				<div class="col-lg-6 col-md-6">
					<div class="product__details__text ">
						<h1 style="font-size: 60px; font-family: BM; color: orange;">${ requestScope.postInfo.postTitle }</h1>
						<hr>
						<table class="table" style="border-collapse: collapse; border-spacing: 10px; border-collapse: collapse; padding-left: 10px; padding-right: 20px; padding-bottom: 5px; important!">
							<thead>
								<th style="font-size: 45px;">${ requestScope.postInfo.bName }</th>
							</thead>
							<tbody>
								<th style="font-size: 20px; width: 100%;">${ requestScope.postInfo.postContent }<br></th>
							</tbody>
						</table>						
						
						<div align="right">
							<!-- hidden ํ์์ input ํ๊ทธ์ ์?์?์ฝ๋์ ๊ณต๊ณ?๋ฒํธ๋ฅผ ๋ฃ์ด๋? -->
							<input type="hidden" id="userCode" name="userCode" value="${ loginUserInfo.userCode }"/>
							<input type="hidden" id="postCode" name="postCode" value="${ requestScope.postInfo.postCode }"/>
							<input type="hidden" id="postCode" name="postCode" value="${ requestScope.postInfo.bName }"/>
							
							<button class="jione_button" type="submit" onclick=apply();>								
								<script>
									/* ์ง์ํ๊ธฐ ๋ฒํผ onclick ์ด๋ฒคํธ */
									var userCode = document.getElementById("userCode").value;
							
									console.log(userCode);
									
									function apply(){
										/* userCode๊ฐ ์กด์ฌํ? ๊ฒฝ์ฐ ์ง์ํ๊ธฐ ์ฐฝ ๋์ฐ๊ธฐ */
										if(userCode != null && userCode != "") {

											window.open("${ pageContext.servletContext.contextPath }/toapply?postCode="+${ requestScope.postInfo.postCode }, "a", "width=450, height=250, left=500, top=250");

										/* ์?์?์ฝ๋๊ฐ ์กด์ฌํ์ง ์์ ๊ฒฝ์ฐ ๋ก๊ทธ์ธ์ฐฝ ๋์ฐ๊ธฐ */
										} else {

											window.open("${ pageContext.servletContext.contextPath }/signinpopup", "a", "width=450, height=600, left=500, top=250");				
										
										}
                              		}
								</script>
								<h2 style="font-family: BM;">์ง์ํ๊ธฐ</h2>
							</button>
							
						</div>
						<hr><br><br>
						<table style="margin-left:20px;">
							<tr>
								<th style="padding-bottom: 10px; padding-left: 40px;">์ง์์๊ฒฉ</th>
								<td style="padding-bottom: 10px; padding-left: 40px;">${ requestScope.postInfo.ageName }</td>
							</tr>
							<tr>
								<th style="padding-bottom: 10px; padding-left: 40px;">๊ธ์ฌ</th>
								<td style="padding-bottom: 10px; padding-left: 40px;">${ requestScope.postInfo.payment } ์ (${ requestScope.postInfo.payName })</td>
							</tr>
							<tr >
								<th style="padding-bottom: 10px; padding-left: 40px;">๊ทผ๋ฌด๊ธฐ๊ฐ</th>
								<td style="padding-bottom: 10px; padding-left: 40px;">${ requestScope.postInfo.periodName }</td>
							</tr>
							<tr>
								<th style="padding-bottom: 10px; padding-left: 40px;">๊ทผ๋ฌด์๊ฐ</th>
								<td style="padding-bottom: 10px; padding-left: 40px;">${ requestScope.postInfo.hourName }</td>
							</tr>
							<tr>
								<th style="padding-bottom: 10px; padding-left: 40px;">๊ทผ๋ฌด์ง์ญ</th>
								<td style="padding-bottom: 10px; padding-left: 40px;">${ requestScope.postInfo.locationName }</td>
							</tr>
						</table>
					</div>
				</div><br><br><br>
				
				<div class="col-lg-12">
					<div class="col-lg-12">
						<div class="product__details__text">
							<div class="tab-content">
								<div class="tab-pane active" id="tabs-1" role="tabpanel">
									<div class="tab-pane active" id="tabs-2" role="tabpanel">
	 									<div class="product__details__tab__desc"
											style="margin-bottom: 50px; margin-top: 100px;" align="center">
											<h2 align="center" style="font-size: 45px; font-family: BM; color: orange;">์์ธ ๊ทผ๋ฌด ์ง์ญ</h2>
											<hr>
	 										<table>
	 											<tr>
	 												<th style="padding-bottom: 10px; padding-left: 40px;">๊ทผ๋ฌด ์ง์ญ</th>
	 												<td style="padding-bottom: 10px; padding-left: 40px;"> ${ requestScope.postInfo.bAddress } </td>
	 											</tr>
	 										</table>
	 									</div><br><br><br>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div>
					<div class="product__details__text">
						<div class="tab-pane active" id="tabs-1" role="tabpanel">
							<div class="product__details__tab__desc" style="margin-bottom: 100px; text-alight: center;">
								<h2 align="center" style="font-size: 45px; font-family: BM; color: orange;">๋ชจ์ง๋ถ๋ถ</h2>
								<hr><br>
								<table style="text-align: left;">
									<tr>
										<th style="padding-bottom: 10px; padding-left: 40px;"> ๋ชจ์ง ๋ถ์ผ </th>
										<td style="padding-bottom: 10px; padding-left: 40px;"> ${ requestScope.postInfo.industryName } </td>
									</tr>
									<tr>
										<th style="padding-bottom: 10px; padding-left: 40px;"> ๋ด๋น ์๋ฌด </th>
										<td style="padding-bottom: 10px; padding-left: 40px;"> ${ requestScope.postInfo.jobName } </td>
									</tr>
								</table>
							</div>
						</div>

						<div id="tabs-2">
							<div class="product__details__tab__desc" align="center">
								<div style="height: 550px;">
									<div>
										<h2 style="font-size: 45px; font-family: BM; color: orange;">๊ทผ๋ฌด์กฐ๊ฑด ๋ฐ ๊ธ์ฌ</h2>
										<hr>
										<div id="">
											<table>
												<tr>
													<th style="padding-bottom: 10px; padding-left: 40px;">๊ทผ๋ฌด์?ํ</th>
													<td style="padding-bottom: 10px; padding-left: 40px;">
														<c:if test="${ requestScope.postInfo.fulltimeYn eq '1' }"> ์?๊ท์ง </c:if>
													 	<c:if test="${ requestScope.postInfo.fulltimeYn ne '1' }"> ๋น์?๊ท์ง </c:if>
													 </td>
												</tr>
												<tr>
													<th style="padding-bottom: 10px; padding-left: 40px;">๊ทผ๋ฌด๊ธฐ๊ฐ</th>
													<td style="padding-bottom: 10px; padding-left: 40px;"> ${ requestScope.postInfo.periodName } </td>
												</tr>
												<tr>
													<th style="padding-bottom: 10px; padding-left: 40px;">๊ทผ๋ฌด์๊ฐ</th>
													<td style="padding-bottom: 10px; padding-left: 40px;"> 
														<c:choose>
													    	<c:when test="${ requestScope.postInfo.hourName eq '์๊ฐ ํ์' }">
													       		์๊ฐ ํ์
													    	</c:when>
													    	<c:when test="${ requestScope.postInfo.hourName eq 'ํํ์' }">
													       		์ข์ผ
													    	</c:when>
													    	<c:when test="${ requestScope.postInfo.hourName eq '์๋ฒฝ' }">
													       		์๋ฒฝ
													    	</c:when>
													    	<c:when test="${ requestScope.postInfo.hourName eq '์ค์?' }">
													       		์ค์?
													    	</c:when>
													    	<c:when test="${ requestScope.postInfo.hourName eq '์คํ' }">
													       		์คํ
													    	</c:when>
													    	<c:when test="${ requestScope.postInfo.hourName eq '์?๋' }">
													       		์?๋
													    	</c:when>
														</c:choose>
													</td>
												</tr>
												<tr>
													<th style="padding-bottom: 10px; padding-left: 40px;">์ฐ๋์กฐ๊ฑด</th>
													<td style="padding-bottom: 10px; padding-left: 40px;"> ${ requestScope.postInfo.advantage } </td>
												</tr>
												<tr>
													<th style="padding-bottom: 10px; padding-left: 40px;">๋ณต๋ฆฌํ์</th>
													<td style="padding-bottom: 10px; padding-left: 40px;"> ${ requestScope.postInfo.benefit } </td>
												</tr>
												<tr>
													<th style="padding-bottom: 10px; padding-left: 40px;">๊ธ์ฌํํ</th>
													<td style="padding-bottom: 10px; padding-left: 40px;"> ${ requestScope.postInfo.payName } </td>
												</tr>
												<tr>
													<th style="padding-bottom: 10px; padding-left: 40px;">๊ธ์ฌ</th>
													<td style="padding-bottom: 10px; padding-left: 40px;"> ${ requestScope.postInfo.payment } ์ </td>
												</tr>
											</table>
										</div>
									</div>
								</div>
							</div>

							<div id="tabs-2">
								<div id="detail_tab_2" style="height: 550px;" align="center">
									<div>
										<h2 style="font-size: 45px; font-family: BM; color: orange;">์ง์์กฐ๊ฑด</h2>
										<hr>
										<table>
											<tr>
												<th style="padding-bottom: 10px; padding-left: 40px;"> ์ฑ๋ณ </th>
												<td style="padding-bottom: 10px; padding-left: 40px;"> ${ requestScope.postInfo.gender } </td>
											</tr>
											<tr>
												<th style="padding-bottom: 10px; padding-left: 40px;"> ์ฐ๋?น </th>
												<td style="padding-bottom: 10px; padding-left: 40px;"> ${ requestScope.postInfo.ageName } </td>
											</tr>
											<tr>
												<th style="padding-bottom: 10px; padding-left: 40px;"> ํ๋?ฅ </th>
												<td style="padding-bottom: 10px; padding-left: 40px;"> ${ requestScope.postInfo.degreeLevel } </td>
											</tr>
											<tr>
												<th style="padding-bottom: 10px; padding-left: 40px;"> ๊ฒฝ๋?ฅ </th>
												<td style="padding-bottom: 10px; padding-left: 40px;"> ${ requestScope.postInfo.expName } </td>
											</tr>
											<tr>
												<th style="padding-bottom: 10px; padding-left: 40px;"> ์ฐ๋์กฐ๊ฑด </th>
												<td style="padding-bottom: 10px; padding-left: 40px;"> ${ requestScope.postInfo.advantage } </td>
											</tr>
											<tr>
												<th style="padding-bottom: 10px; padding-left: 40px;"> ๊ธ์ฌ </th>
												<td style="padding-bottom: 10px; padding-left: 40px;"> ${ requestScope.postInfo.payment } ์ (${ requestScope.postInfo.payName })</td>
											</tr>
										</table>
									</div>
								</div>
							</div>
							<div class="tab-pane active" id="tabs-2" role="tabpanel">
								<div class="product__details__tab__desc" align="center"
									style="margin-bottom: 100px;">
									<div style="height: 400px;">
										<div>
											<h2 style="font-size: 45px; font-family: BM; color: orange;">์?์๋ฐฉ๋ฒ</h2>
											<hr>
											<div id="how">
												<table>
													<tr>
														<th style="padding-bottom: 10px; padding-left: 40px;">์?์๋ฐฉ๋ฒ</th>
														<td style="padding-bottom: 10px; padding-left: 40px;">
															<c:if test="${ requestScope.postInfo.postOnline eq '0' }"> ์?ํ ์ง์ </c:if>
															<c:if test="${ requestScope.postInfo.postOnline eq '1' }"> ์จ๋ผ์ธ ์ง์ </c:if>													
														</td>
													</tr>
													<tr>
														<th style="padding-bottom: 10px; padding-left: 40px;">์ฐ๋ฝ์ฒ</th>
														<td style="padding-bottom: 10px; padding-left: 40px;"> ${ requestScope.postInfo.hrPhone } </td>
													</tr>
													<tr>
														<th style="padding-bottom: 10px; padding-left: 40px;">์ฑ์ฉ ๋ด๋น์</th>
														<td style="padding-bottom: 10px; padding-left: 40px;"> ${ requestScope.postInfo.hrName } </td>
													</tr>																								
												</table>
											</div>
										</div>
									</div>
									<div
										style="width: 100%; height: 200px; border: 1px solid grey; margin-top: 30px;">
										<p align="center"
											style="font-size: 30px; line-height: 38px; margin-top: 25px;"><br>
											์?ํ ๋ฌธ์ ์, <b>'๋ฐฑ๊ตฌ์์ ์ฑ์ฉ์?๋ณด ๋ณด๊ณ? ์?ํ ๋๋?ธ์ต๋๋ค.'</b><br> ๋ผ๊ณ? ํ์๋ฉด ๋น?๋ฅธ
											๋ฌธ์๊ฐ ๊ฐ๋ฅํฉ๋๋ค.<br>
										</p>
									</div>
								</div>
								<h1
									style="color: orangered; text-align: center; margin-bottom: 20px;">์?๊น!!!</h1>
								<div style="margin-bottom: 80px; height: 100%;">
									<div>

										<p style="font-size: 35px; text-align: center;">
											ํน์ ์๊ธ์ฒด๋ถ์ฌ์์ฃผ ๋ชฉ๋ก! ํ์ธํด๋ณด์จ๋์?<br>
										<h2 style="text-align: center;">
											<a href="https://www.moel.go.kr/info/defaulter/defaulterList.do"
										 	target="_blank" style="color: black;">๋ชฉ๋ก๋ณด๊ธฐ</a>
										</h2>
										</p>
									</div>
									<br>
									
									<div align="center">
										<input type="hidden" name="postCode" value="<c:out value="${ requestScope.postInfo.postCode }"/>">
										<p style="font-size: 25px; text-align: center;">
										๋ณธ ์ฑ์ฉ ์?๋ณด์ ๋ถ๋ฒ, ํ์, ๊ณผ์ฅ ๋๋ ์๋ชป๋ ๋ด์ฉ์ด ์์ ๊ฒฝ์ฐ, ์?๊ณ?ํด์ฃผ์ธ์.
										</p>
										<!-- ์?๊ณ?ํ๊ธฐ ๋ฒํผ -->
										<input type="button" class="btn btn-primary" style="width: 117.73913049697876px !important; padding-left: 8px !important; height: 60px !important; width: 40px; border: 0px; background: white; color: red; font-Size: 28px;" data-toggle="modal" data-target="#report" value="์?๊ณ?ํ๊ธฐ"/>
										<!--  ์?๊ณ?ํ๊ธฐ ๋ชจ๋ฌ์ฐฝ -->
					                    <form action="${ pageContext.servletContext.contextPath }/user/report" method="post">
					                    <div class="modal fade" id="report" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" style="z-index: 20000;">
					                        <div class="modal-dialog" role="document">
						                        <div class="modal-content">
						                            <div class="modal-header">
														<h3>๊ณต๊ณ? ์?๊ณ?ํ๊ธฐ</h3>
						                            </div>
						                            	<div class="modal-body">
						                            		<label>์?๊ณ? ์ฌ์? :  </label><br> 
						                            		<textarea id="reportReason" name="reportReason"  rows="50" cols="60" style="height:300px; resize:none"></textarea>
						                            		<br><br>
						                            		*์?๊ณ?๋ ๋ด์ฉ์ ์ฌ์ฌ์๊ณ?ํ์ฌ ์ต๋ํ ๋น?๋ฅธ ๊ฒฐ๊ณผ๋ก ์๋ตํด๋๋ฆฌ๊ฒ?์ต๋๋ค
						                            		<br>
						                            		*์ฌ์ฌ๊ฒฐ๊ณผ๋ ๋ณดํต 3~5์ผ๋ค์ ํ์ธํ์ค ์ ์์ต๋๋ค
						                           		</div>
						                            
						                            	<input type="hidden" name="userCode" value="<c:out value="${ loginUserInfo.userCode }"/>">
						                            	<input type="hidden" name="postCode" value="<c:out value="${ requestScope.postInfo.postCode }"/>">
						                            	
						                            	<div class="modal-footer">
						                            		<button type="button" class="btn btn-default" data-dismiss="modal">์ทจ์</button>
						                            		<button type="submit" class="btn btn-default">์?๊ณ?ํ๊ธฐ</button>
						                            	</div>
						                        </div>
					                        </div>
					                    </div>
					                    </form>	
									</div>
								</div>
							</div>
							<div>
								<div class="section-title related__product__title">
									<h2 style="font-size: 45px; font-family: BM; font-weight: normal;">์ฑ์ฉ๊ธฐ์ ์?๋ณด</h2>
								</div>
								<div class="product__details__tab__desc"
									style="margin-left:130px; margin-bottom: 50px; text-align: left;">
									<div>
										<table>
											<tr>
												<th style="padding-bottom: 10px; padding-left: 40px;">ํ์ฌ๋ช</th>
												<td style="padding-bottom: 10px; padding-left: 40px;">${ requestScope.postInfo.bName }</td>
											</tr>
											<tr>
												<th style="padding-bottom: 10px; padding-left: 40px;">๋ํ์</th>
												<td style="padding-bottom: 10px; padding-left: 40px;">${ requestScope.postInfo.bOwner }</td>
											</tr>
											<tr>
												<th style="padding-bottom: 10px; padding-left: 40px;">ํ์ฌ์ฃผ์</th>
												<td style="padding-bottom: 10px; padding-left: 40px;">${ requestScope.postInfo.bAddress }</td>
											</tr>
											<tr>
												<th style="padding-bottom: 10px; padding-left: 40px;">์ฌ์๋ด์ฉ</th>
												<td style="padding-bottom: 10px; padding-left: 40px;">${ requestScope.postInfo.industryName }</td>
											</tr>
											<tr>
												<th style="padding-bottom: 10px; padding-left: 40px;">์ฐ๋งค์ถ์ก</th>
												<td style="padding-bottom: 10px; padding-left: 40px;">${ requestScope.postInfo.bProfit } ์</td>
											</tr>										
										</table>
									</div>
								</div>
							</div><br>

							<div class="tab-pane active" id="tabs-2" role="tabpanel">

								<div class="section-title related__product__title">
									<h2 style="font-size: 45px; font-family: BM; font-weight: normal;">์ด ๊ณต๊ณ?๋...</h2>
								</div>
								<div class="product__details__tab__desc">
									<div
										style="height: 120px; border: 2px solid lightgray; margin-bottom: 80px;"
										align="center">
										<p style="font-size: 18px; margin-top: 40px;">

											๋ณธ ๊ตฌ์ธ์?๋ณด๋ ๊ฒ์์๊ฐ ์?๊ณตํ ์๋ฃ์ด๋ฉฐ, ๋ฐฑ๊ตฌ๋ ๊ธฐ์ฌ๋ ๋ด์ฉ์ ๋ํ ์ค๋ฅ์ ์ง์ฐ์ ์ฌ์ฉ์๊ฐ ์ด๋ฅผ ์?๋ขฐํ์ฌ ์ทจํ
											์กฐ์น์ ๋ํด ์ฑ์์์ง์ง ์์ต๋๋ค.<br> ๋ณธ ์?๋ณด์ ์?์๊ถ์ ๋ฐฑ๊ตฌ์ ์์ผ๋ฉฐ, ๋์์์ด ๋ฌด๋จ๊ฒ์? ๋ฐ
											์ฌ๋ฐฐํฌ ํ? ์ ์์ต๋๋ค.
										</p>

									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
	</section>
	
	<script>
		
		$('#report').on('click', function(event) {
			var button = $(event.relatedTarget)
		});
	</script>

	
<%@ include file="../common/footer.jsp"%>

</body>

</html>