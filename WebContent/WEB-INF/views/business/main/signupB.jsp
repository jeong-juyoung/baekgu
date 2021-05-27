<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>백구 기업회원가입</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<style>
/* Remove the navbar's default margin-bottom and rounded borders */
.navbar {
	margin-bottom: 0;
	border-radius: 0;
	background: darkslategrey;
}

/* Set height of the grid so .sidenav can be 100% (adjust as needed) */
.row.content {
	height: 450px
}

/* Set gray background color and 100% height */
.sidenav {
	padding-top: 20px;
	/* background-color: #f1f1f1; */
	height: 100%;
}

/* Set black background color, white text and some padding */
footer {
	background-color: #555;
	color: white;
	padding: 15px;
}

/* On small screens, set height to 'auto' for sidenav and grid */
@media screen and (max-width: 767px) {
	.sidenav {
		height: auto;
		padding: 15px;
	}
	.row.content {
		height: auto;
	}
}

thead {
	background-color: lightgrey;
}

h1, h2 {
	text-align: center;
}

/* submi 버튼 설정 */
.btn-submit {
	background-color: orange;
	border: orange;
	width: 150px;
	height: 50px;
	font-size: 25px;
}

.btn-submit:hover {
	background-color: orange;
	border: orange;
	width: 150px;
	height: 50px;
	font-size: 25px;
}

.btn-submit:active {
	background-color: orange;
	border: orange;
	width: 150px;
	height: 50px;
	font-size: 25px;
}

.btn-submit:visited {
	background-color: orange;
	border: orange;
	width: 150px;
	height: 50px;
	font-size: 25px;
}
</style>
<script>
  	$(function(){
  		
  		$('#duplicationCheck').click(function(){
  			var hrId_1 = $('#hrId_1').val();
  			
  			if(hrId_1 == ""){
  				return;
  			}
  			
  			$.ajax({
  				url:"/baekgu/business/checkduplicate",
  				type:"GET",
  				data:{ hrId_1 : hrId_1 },
  				success:function(data, textStatus,xhr){
  					console.log(data);
  					if(data == "success"){
  						$("#checkMessage").html("사용할 수 있는 아이디입니다.");
  						alert("사용가능한 아이디입니다!");
  						
  						$('#checkId').attr("value","success");

  						
  						return;
  						
  					} else {
  						$("#checkMessage").html("사용할 수 없는 아이디입니다.");
  						alert("사용 불가능한 아이디입니다.");
  						return;
  					}
  					
  				},
  				error:function(xhr, status, error){
  					console.log(xhr);
  					console.log(status);
  					console.log(error);
  				}
  				
  			});
  			
  		});
  		
  	});
  </script>
</head>
<body>

	<jsp:include page="../common/header.jsp" />


	<div class="container-fluid text-center">
		<div class="row content">
			<div class="col-sm-3 sidenav"></div>
			<div class="col-sm-6 text-left" style="padding-top: 30px;">
				<h1 style="margin-bottom: 40px;">기업 회원가입</h1>
				<p style="padding-top: 20px;">
					<input type="checkbox" value=""><b> 이용약관, 개인정보 수집 및 이용,
						마케팅, 이벤트 정보 수신(선택)에 모두 동의 합니다.</b>
				</p>
				<hr>
				<p>
					<input type="checkbox" value=""><b> </b>이용 약관 동의 (필수)
				</p>
				<textarea class="form-control" rows="5" id="comment"
					style="margin-bottom: 30px;">
        기업 회원 약관 (개정 및 적용 2021. 05. 08)
        
        제1장 총칙
        제1조 (목적)
        본 약관은 ㈜백세구직(이하 "회사"라 합니다)이 운영하는 웹사이트(이하 "사이트"라 합니다)을 통해 서비스를 제공함에 있어 회사와 이용자의 이용조건 및 제반 절차, 기타 필요한 사항을 규정함을 목적으로 합니다.
        
        제2조 (용어의 정의)
        본 약관에서 사용하는 용어의 정의는 아래와 같습니다.
        
        ① "사이트"라 함은 회사와 계열사가 서비스를 이용자에게 제공하기 위하여 제작, 운영하는 사이트를 말합니다. 현재 회사가 운영하는 사이트의 접속 주소는 아래와 같습니다.
        - www.baekgu.com
        ② "어플리케이션"이라 함은 회사와 계열사가 서비스를 이용자에게 제공하기 위하여 IOS, 안드로이드 등 운영체제와 관계없이 스마트폰 또는 기타 휴대용 단말기에서 이용할 수 있도록 제작, 운영하는 프로그램을 말합니다. 현재 회사가 운영하는 어플리케이션의 이름은 아래와 같습니다.
        - 백구 등
        ③ "서비스"라 함은 채용정보, 이력서 및 기업정보 제공 기타의 서비스를 통하여 구직·채용시장에서 구직자와 기업의 연결을 돕는 플랫폼 서비스입니다. 구체적으로는 회사가 기업 또는 구직자가 구인, 구직과 교육을 목적으로 등록하는 각종 자료를 DB화하여 각각의 목적에 맞게 분류 가공, 집계하여 정보를 제공하는 서비스 및 기타 구인 및 구직이 원활히 이루어지도록 하기 위하여 사이트 등에서 제공하는 모든 서비스를 말합니다. 서비스는 원칙적으로 무료로 제공되나, 일부 서비스는 유료로 제공될 수 있습니다. 서비스의 자세한 내용은 제10조에서 정하는 바에 따릅니다.
        ④ "이용자"라 함은 사이트 등에 접속하여 본 약관에 따라 회사가 제공하는 서비스를 이용하는 회원(기업회원 및 개인회원을 포함) 및 비회원을 말합니다.
        ⑤ "기업회원"이라 함은 채용을 희망하는 기업으로서 본 서비스를 이용하기 위하여 본 약관에 동의하고 회사와 이용계약을 체결하여 기업회원 ID를 부여받은 이용자를 말합니다. 기업회원은 고용 목적 및 형태에 따라 "일반 기업회원", "파견 및 도급 기업회원", "헤드헌팅(서칭펌) 기업회원" 및 "교육 기업회원"으로 구분됩니다. 회사는 유료 서비스 구매계약 등에 있어서 기업회원의 분류에 따라 권리의무를 다르게 설정할 수 있습니다.
        ⑥ "서비스 이용계약"이라 함은 회사가 기업회원을 위해 제공하는 서비스를 계속적으로 이용하기 위하여 회사와 이용자 사이에 체결되는 계약을 말합니다.
        ⑦ "ID" 또는 "기업회원 ID"라 함은 기업회원의 식별 및 서비스 이용을 위하여 기업회원이 선정하고 회사가 부여하는 문자와 숫자의 조합을 말합니다.
        ⑧ "비밀번호"라 함은 회사의 서비스를 이용하려는 사람이 기업회원 ID를 부여 받은 자와 동일인임을 확인하고 기업회원의 권익을 보호하기 위하여 기업회원이 선정한 문자와 숫자의 조합을 말합니다.
        ⑨ "S-포인트"라 함은 회사의 서비스를 이용할 경우 회사가 정한 포인트 정책에 따라 기업회원에게 적립되어 결제수단으로 이용 가능한 포인트입니다.
        제3조 (약관의 명시와 개정)
        ① 회사는 본 약관의 내용과 상호, 영업소 소재지, 사업자등록번호, 연락처 등을 이용자가 알 수 있도록 초기 화면에 게시하거나 기타의 방법으로 이용자에게 공지합니다. 약관의 내용은 이용자가 사이트 등의 링크를 통한 연결화면을 통하여 볼 수 있도록 할 수 있습니다.
        ② 회사는 약관의 규제 등에 관한 법률, 정보통신망 이용 촉진 및 정보 보호 등에 관한 법률, 개인정보 보호법, 전기통신기본법, 전기통신사업법 등 관련 법령을 위배하지 않는 범위에서 본 약관을 개정할 수 있습니다.
        ③ 회사가 약관을 개정할 경우, 개정 약관 적용일로부터 최소 7일 전(약관의 변경이 기업회원에게 불리하거나 기업회원의 권리·의무의 중요한 변경의 경우 최소 30일 전)부터 사이트 등의 초기화면 공지사항 또는 이메일 등을 통해 사전 공지합니다.
        ④ 기업회원은 변경된 약관의 적용을 거부할 권리가 있으며, 변경된 약관이 공지된 지 15일 이내에 변경 약관 적용에 대한 거부 의사를 표시할 수 있습니다. 만약, 기업회원이 변경 약관 적용에 대한 거부 의사를 표시하지 않고 서비스를 계속 이용하는 경우, 회사는 기업회원이 변경 약관 적용에 동의하는 것으로 간주합니다.
        ⑤ 기업회원이 제4항에 따라 변경 약관 적용을 거부할 의사를 표시한 경우, 회사는 기업회원에게 15일의 기간을 정하여 사전 통지 후 해당 기업회원과의 서비스 이용계약 또는 별도로 체결된 계약을 해지할 수 있습니다.
        제4조 (약관 외 준칙)
        ① 본 약관에서 규정하지 않은 사항은 약관의 규제 등에 관한 법률, 정보통신망 이용촉진 및 정보보호 등에 관한 법률, 개인정보 보호법, 전기통신기본법, 전기통신사업법 등의 관계법령에 따라 규율됩니다.
        ② 기업회원이 유료 서비스를 구입하는 경우 유료 서비스 이용과 관련하여 본 약관에 우선하여 유료 서비스 판매약관(이하 “판매약관”이라 합니다)이 적용됩니다. 그 밖에 회사가 운영하는 개별 서비스 이용약관이 별도로 있는 경우 해당 서비스 이용약관이 본 약관에 우선하여 적용됩니다.
        ③ 기업회원이 회사와 개별 계약을 체결하여 서비스를 이용할 경우, 기업회원의 서비스 이용과 관련된 권리 의무는 순차적으로 개별 계약, 판매약관, 본 약관에서 정한 내용에 따라 규율됩니다.
        제5조 (기업회원에 대한 고지, 통지 및 공지)
        ① 회사는 기업회원이 회원 가입 신청시 등록한 이메일, 휴대전화 문자메시지 또는 어플리케이션 푸쉬 알림 중 기업회원이 수신에 동의한 수단을 활용하여 기업회원에 대한 각종 고지나 통지를 이행할 수 있습니다.
        ② 기업회원에게 공통적으로 적용되는 내용을 고지 또는 통지할 경우, 회사는 1주일 이상 사이트 등의 게시판이나 화면에 일정한 사항을 게시하여 공지함으로써 각 기업회원에 대한 개별 고지나 통지를 갈음할 수 있습니다. 다만, 기업회원의 권리·의무에 중대한 영향을 미치는 사항에 대해서는 게시기간을 연장하여 공지합니다.
        ③ 회사는 기업회원에게 서비스 정책, 이용약관, 판매약관, 개인정보 취급방침 등 일체의 약관, 서비스 이용 관련 일정한 사항이나 정보를 알리거나 안내할 목적으로 사이트 등의 게시판이나 서비스 화면에 그 내용을 게시하거나 제1항에 기재된 수단을 활용하여 공지할 수 있습니다.
        제 2장 회원 가입
        제6조 (서비스 이용계약의 성립)
        ① 서비스 이용계약은 기업회원 서비스를 이용하고자 하는 자(이하 “이용희망자”라 합니다)의 본 약관과 개인정보 처리방침의 내용에 대한 동의 및 회원 가입 신청에 대하여 회사가 승낙함으로써 성립합니다.
        ② 이용희망자가 기업회원 가입 신청시 사이트 등의 기업회원 가입 화면 중 "동의함" 버튼을 누르면 본 약관 및 개인정보 처리방침을 충분히 읽고 동의한 것으로 간주됩니다.
        ③ 제1항의 승낙은 회사가 기업회원 가입 신청자의 본 약관에 대한 동의를 확인하고 승낙의 의사가 담긴 이메일 또는 서면으로 통지함으로써 이루어지고, 이러한 승낙의 통지가 회원 가입 신청자에게 도달하면 서비스 이용계약이 성립합니다.
        제7조 (회원 가입 신청)
        ① 이용희망자는 기업회원 가입 신청시 본 약관 및 회사의 개인정보 처리방침에서 정한 필수 수집항목 등에 기재된 정보를 제공하여야 합니다.
        ② 이용희망자는 기업회원 가입 신청시 반드시 회원 인증을 거쳐야 하며, 회원 인증시 정확한 회사명과 사업자등록번호를 제공하여야만 서비스를 이용할 수 있습니다. 다만, 사업자등록번호가 없는 기관이나 단체는 단체명 및 세법상 부여된 고유번호를 제공하는 등 회사가 정한 별도의 절차에 따라 회원 가입 신청을 할 수 있습니다.
        제8조 (기업회원 가입 신청의 승낙과 제한)
        ① 회사는 기업회원 가입 신청을 한 이용희망자에 대하여 다음 각 호의 사유를 모두 충족할 경우 원칙적으로 접수 순으로 기업회원 가입을 승낙합니다.
        1. 회사의 업무수행 및 서비스 제공을 위한 설비의 여유·기술상 지장이 없는 경우
        2. 본 약관에서 정하는 승낙 제한 또는 거절, 보류 사유에 해당하지 않는 경우
        ② 다음 각 호 중 어느 사유에 해당하는 경우, 회사는 이용자의 기업회원 가입 신청을 승낙하지 아니합니다. 기업회원 가입 후 해당 사실이 밝혀진 경우, 회사는 해당 기업회원 ID를 삭제하거나 기업회원을 강제탈퇴 조치하며, 필요할 경우 관계법령에 따른 형사처벌이나 행정제재를 위한 법률절차를 진행할 수 있습니다.
        1. 기업회원 가입 신청 시에 타인의 명의를 도용한 경우
        2. 기업회원 가입 신청 시에 회사명 또는 사업자등록번호를 실제와 다르게 기재하거나 기타 기업회원 정보를 허위로 기재한 경우
        3. 회사가 제9조에 의거하여 증빙 자료 제출을 요구하였음에도 불구하고 합리적 이유 없이 이에 응하지 아니한 경우
        4. 제9조 소정의 증빙 자료를 제출함에 있어 허위의 내용이 기재된 자료, 위조 또는 변조된 자료를 제출한 경우
        5. 제24조 소정의 서비스 부정이용행위를 하여 제25조에 따른 서비스 이용 정지 또는 강제 탈퇴 등의 제재조치가 있었던 경우
        6. 회사가 서비스 부정이용 행위에 대한 제재조치를 취하기 전 이를 회피하기 위해 탈퇴하였던 경우
        ③ 다음 각 호 중 어느 사유에 해당하는 경우, 회사는 그 사유가 해소될 때까지 이용자의 기업회원 가입 신청에 대한 승낙을 유보할 수 있습니다. 다만, 회사는 기업회원 가입 신청을 한 이용자에 대해 그 사유를 제5조에서 정한 방식으로 통지할 수 있습니다.
        1. 업무수행 및 서비스 제공을 위한 설비의 여유가 없는 경우
        2. 업무수행 및 서비스 제공을 위한 기술상 지장이 있는 경우
        3. 기타 회사의 사정(회사의 귀책사유 있는 경우를 포함)으로 이용 승낙이 곤란한 경우
        제9조 (증빙 자료의 제출)
        ① 회사는 기업회원 자격 보유 여부를 확인하기 위하여 기업회원에게 사업자등록증의 제출을 요청할 수 있으며, 기업회원은 이에 응하여야 합니다.
        ② 회사는 파견 및 도급 기업회원 및 헤드헌팅(서칭펌) 기업회원의 사업의 특수성을 고려하여 파견 및 도급 기업회원 및 헤드헌팅(서칭펌) 기업회원에게 추가적 확인이 필요한 사항에 관해 증빙 자료의 제출을 요청할 수 있으며, 회사로부터 직업소개사업 신고확인증 또는 직업소개사업 등록증 등 각종 증빙 자료의 제출을 요청받은 기업회원은 이에 성실히 응하여야 합니다.
        ③ 기업회원은 기업회원으로 가입한 이후, 회원이 영위하는 사업 목적 또는 형태의 변화로 회원 가입 신청시와 다른 분류의 기업회원에 해당하게 되었을 경우(예를 들어 일반 기업회원이 파견 및 도급 기업회원 또는 헤드헌팅(서칭펌) 기업회원으로 변경된 경우 또는 그 반대의 경우 등) 즉시 회사에게 이러한 내용을 통지하여야 합니다. 만약, 기업회원이 본 조항에 따른 의무를 이행하지 않아 회사에게 손해가 발생한 경우, 기업회원은 회사에 대하여 제26조에 따른 손해배상책임을 부담하게 됩니다.
        ④ 이미 가입한 기업회원의 채용 형태 및 목적이 변경된 것으로 판단될 경우, 회사는 기업회원에게 기업회원 분류를 다시 확인하기 위한 증빙 자료 제출을 요청할 수 있으며, 기업회원은 이에 응하여야 합니다.
        ⑤ 기업회원은 본 조 제1항, 제2항 또는 제4항에 의한 회사의 증빙 자료 제출 요청에 상당기간 동안 응하지 않는 경우, 제25조에 따른 서비스 이용중지, 강제탈퇴, 재가입 제한 조치 등의 제재조치를 받게 됩니다.
        ⑥ 회사는 본 조에 따라 기업회원으로부터 제출 받은 자료를 통하여 기업회원의 자격 보유 여부를 확인하며, 기업회원의 자격 보유 사실이 확인되면 당해 자료를 파기합니다.
        제3장 서비스의 이용
        제10조 (서비스의 내용)
        ① 회사가 제공하는 서비스의 내용은 다음 각 호와 같습니다.
        1. 채용정보 등록·공고 및 기타 광고 서비스
        2. 온라인 채용관리 서비스
        3. 이력서 열람 서비스
        4. 인적성검사 제공 서비스
        5. 기업정보 제공 서비스
        6. 이용자 간의 교류와 소통과 관련된 서비스
        7. 자료 활용에 관련된 서비스
        8. 기타 제1호 내지 제7호의 서비스와 관련된 제반 서비스
        9. 제1호 내지 제8호의 서비스 외에 회사가 추가로 제공하거나 타사와의 제휴 등을 통해 기업회원에게 제공하는 일체의 채용 관련 서비스
        ② 회사는 필요한 경우 서비스의 내용을 추가 또는 변경할 수 있습니다. 다만, 서비스의 내용의 추가 또는 변경으로 인하여 기업회원의 권리·의무에 중요한 영향을 미치는 경우, 회사는 추가 또는 변경된 서비스 내용을 그 적용일로부터 30일 전에 공지합니다.
        제11조 (기업정보 및 채용공고의 등록, 이력서 검색)
        ① 기업회원은 구직을 원하는 이용자가 채용공고를 열람한 후 해당 기업에 대하여 정확히 판단할 수 있도록 기업정보를 사실과 다름없이 정확하게 기재하여야 합니다. 기업정보를 사실과 다르게 기재한 기업회원은 이로 인하여 발생한 모든 문제에 대하여 전적인 책임을 부담하여야 합니다.
        ② 기업회원은 채용절차 공정화에 관한 법률 제4조, 직업안정법 제34조 및 동법 시행령 제34조에 의하여 금지되는 거짓 구인광고 또는 거짓 채용공고(이하 “거짓 채용공고”라 합니다)를 등록하여서는 아니됩니다. 거짓 채용공고를 등록하거나 거짓 구인 조건을 제시한 기업회원은 채용절차의 공정화에 관한 법률 제16조에 의해 5년 이하의 징역 또는 2천만원 이하의 벌금형을 받거나 직업안정법 제47조에 의해 5년 이하의 징역 또는 5천만 원 이하의 벌금형을 받을 수 있습니다. 회사는 거짓 채용공고를 등록한 기업회원을 직권으로 고발할 수 있습니다.
        ③ 제2항에 따라 금지되는 거짓 채용공고는 다음 각 호와 같습니다.
        1. 구인 또는 채용을 가장하여 아이디어 수집, 사업장 홍보, 물품 판매, 유학 알선, 수강생 모집, 직업소개, 부업알선, 자금 모집 등을 행하는 공고
        2. 작성자가 제시한 직종, 업무내용, 근로조건 등이 실제와 현저히 다른 공고
        3. 회사명, 담당자 성명, 사무실 연락처 등 구인업체의 중요 정보를 정확하게 기입하지 않았을 경우
        4. 기타 채용공고의 중요 내용이 사실과 다른 공고
        5. 제1호 내지 제4호의 거짓 채용공고를 목적으로 구인자의 신원(업체명 또는 성명)을 표시하지 아니하는 공고
        ④ 기업회원은 남녀 고용 평등과 일, 가정 양립 지원에 관한 법률 제7조에 의거하여 근로자의 모집 및 채용에 있어서 남녀를 차별하여서는 아니됩니다.
        ⑤ 기업회원은 채용공고 등록시 제24조 제2항에서 규정하는 서비스 부정이용행위를 하여서는 아니됩니다.
        ⑥ 기업회원이 등록한 기업정보 및 채용공고가 제2항 내지 제5항을 위반한 것으로 인정될 경우, 회사는 제25조 제1항에 따라 해당 공고의 게시를 중단하거나 삭제하는 등의 조치를 취할 수 있습니다. 또한, 기업회원은 회사 및 이용자에 대한 관계에서 제2항 내지 제5항의 위반으로 발생할 수 있는 민·형사상 책임을 전적으로 부담합니다.
        ⑦ 회사는 기업회원이 등록한 기업정보 및 채용공고를 회사가 정한 방법에 따라 노출시킬 수 있으며, 지정된 마감기간이 지난 채용공고를 임의로 마감시킬 수 있습니다.
        ⑧ 기업회원은 유·무료로 사람인 개인회원이 등록한 이력서를 검색할 수 있으며, 회사가 제시하는 별도의 커뮤니케이션 수단을 통하여 개인회원에게 연락을 취할 수 있습니다. 이 때, 이력서상 기재된 개인회원의 연락처의 열람 및 연락의 목적은 채용활동에 국한되어야 하며, 기업의 영업·마케팅을 위하여 활용하거나 제3자에 대한 개인정보 제공 시에는 정보통신망 이용 촉진 및 정보 보호 등 관련 법률, 개인정보 보호법, 직업안정법 위반에 따른 법적 책임을 전적으로 부담합니다.
        ⑨ 회사는 기업회원이 등록된 개인회원의 이력서를 검색하고, 개인회원에게 연락할 수 있는 권한에 적정한 제한을 둘 수 있으며, 기업회원이 적절하지 않은 방법이나 채용활동 이외의 목적으로 개인회원에게 연락하거나 서비스 이용에 불편을 끼친 경우, 기업회원의 채용공고 및 기업정보를 임의로 수정/삭제 등의 조치를 취할 수 있습니다.
        제12조 (제휴를 통한 서비스)
        ① 회사는 이용자의 서비스 이용 편의 및 품질 제고를 위해 기업회원이 사이트 등에 등록한 기업정보 및 채용공고에 더하여 회사와 협력 또는 제휴관계에 있는 기업정보 제공업체(이하 "제휴업체"라 합니다)를 통해 확보한 추가 기업정보를 이용자에게 제공할 수 있습니다.
        ② 회사는 제휴업체로부터 적법하게 취득한 비회원의 기업정보 및 채용공고를 사이트 등에 등록할 수 있습니다.
        ③ 회사는 기업회원이 등록한 기업정보 및 채용공고를 제휴업체에 제공할 수 있습니다.
        ④ 회사는 회사와 제휴 관계를 체결한 여타 인터넷 웹 사이트 또는 신문, 잡지 등의 오프라인 매체(이하 "제휴매체"라 합니다)를 통해 사이트 등에 등록된 기업회원의 기업정보 및 채용공고가 열람될 수 있도록 서비스를 제공할 수 있습니다.
        ⑤ 회사는 기업회원에게 사이트 등에 등록한 기업정보 및 채용공고가 제휴업체에 제공되거나 제휴매체에 등록될 수 있음을 사전 고지하고 이에 대한 동의를 받아야 하며, 제휴업체 및 제휴매체 전체 목록을 사이트 등에서 상시 열람할 수 있도록 게시합니다.
        ⑥ 회사가 제휴업체 및 제휴매체를 추가 또는 변경할 경우에는 7일 전부터 사이트 등의 공지사항 또는 이메일을 통해 통지합니다.
        ⑦ 기업회원은 제휴업체 및 제휴매체의 추가 또는 변경 통지일로부터 15일 이내에 추가되는 제휴업체 및 제휴매체에 대한 기업정보 및 채용공고의 제공 또는 등록에 관하여 거부 의사를 표시할 수 있습니다. 기업회원이 위 기간 동안 거부 의사를 표시하지 않을 경우에는 이에 동의하는 것으로 간주합니다.
        ⑧ 기업회원이 제7항에 따라 추가 또는 변경된 제휴업체 및 제휴매체에 대한 기업정보 및 채용공고의 제공 또는 등록 거부 의사를 표시한 경우, 회사는 추가 또는 변경된 제휴업체 또는 제휴매체에 해당 기업회원의 기업정보 및 채용공고를 제공하거나 등록하지 않습니다.
        제13조 유료 광고·공고상품·제반 유료 서비스 이용요금
        ① 회사가 제공하는 서비스 이용을 위한 기업회원 가입과 기업정보 및 채용공고 등록은 무료입니다. 다만, 사이트 등에 방문한 이용자에게 자신의 정보를 보다 효과적으로 노출시키기 위한 유료 광고·공고상품(최우선 노출, 광고·공고 영역 확대 등)과 유료 이력서 열람 서비스 및 기타 일부 서비스는 회사의 판매약관에서 정하는 바에 따라 유료로 제공될 수 있습니다.
        ② 회사는 유료 광고·공고상품 및 제반 유료 서비스의 이용요금을 사이트 등에 게시하여 공지합니다. 기업회원이 유료 광고·공고상품 및 제반 유료 서비스를 구매할 경우, 회사는 시스템투자·마케팅·매출증대·서비스 활성화 등의 목적으로 공지된 이용요금을 변경하여 판매할 수 있습니다.
        ③ 회사는 유료 광고·공고상품 및 제반 유료 서비스 이용 요금을 변경할 수 있으며, 이용 요금 변경시 변경된 이용 요금 내용 및 변경 내용 적용일을 명시하여 변경 내용 적용일로부터 30일 전까지 기업회원에게 사전 공지합니다.
        ④ 제3항에 따라 공지된 이용요금 변경 내용은 변경 내용 적용일부터 모든 기업회원에게 적용됩니다. 다만, 이용요금 변경 내용 적용일 이전에 기업회원이 가입한 유료 광고·공고상품이나 기타 유료 서비스 및 사전에 체결한 계약금액에 영향을 미치지 아니합니다.
        제14조 (이용요금의 과오납, 과소 청구와 정산)
        기업회원이 지급한 이용요금의 과오납 등 사유가 있는 경우, 회사는 다음 각 호에 해당하는 조치를 취합니다.
        1. 과다 납입한 이용요금에 대해서는 과다 납입된 금액을 환급하며, 기업회원이 동의할 경우 다음 달에 청구될 이용요금에서 해당 금액만큼을 차감하여 청구합니다.
        2. 이용요금을 환급 받아야 할 기업회원이 체납한 이용요금이 있을 경우, 환급해야 할 이용요금에서 체납된 이용요금을 우선 공제하고 남은 금액을 반환합니다.
        3. 이용요금을 과소 청구한 경우, 회사는 기업회원에게 과소 청구된 금액을 합산하여 다음달 이용요금과 함께 청구하며, 다음달 청구할 이용요금이 없을 경우 즉시 이용요금이 과소 청구되었음을 확인한 즉시 청구합니다.
        제15조 (이용요금의 환불)
        ① 회사는 다음 각 호에 경우에는 이용요금을 환불합니다. 다만, 제2호 및 제3호의 하나에 해당하면서 유료 광고상품이나 유료 서비스의 이용이 정상적으로 가능하였던 일부 기간이 있을 경우, 해당 기간에 상응하는 이용금액을 공제한 나머지 금액을 환불합니다.
        1. 유료 광고·공고상품이나 유료 서비스의 이용이 개시되지 않은 경우
        2. 회사의 네트워크 또는 시스템 장애로 서비스 이용이 불가능한 경우
        3. 회사의 귀책사유로 인하여 유료 서비스의 이용이 어려운 경우
        4. 기타 판매약관으로 정하는 경우
        ② 다음 각 호에 해당할 경우, 회사는 기업회원에게 이용요금을 환불하지 않으며, 별도로 기업회원에 대한 손해배상을 청구할 수 있습니다.
        1. 회사가 본 약관 제25조에 따라 채용공고 삭제, 강제 탈퇴 등의 제재조치를 취한 경우
        2. 기타 서비스 요금의 환불이 적절하지 않은 것으로 판매약관에서 정하는 경우
        ③ 이용요금을 환불받고자 하는 기업회원은 환불 사유를 명시한 서면으로 회사에 이용요금의 환불을 요청(이하 “환불 요청”이라 합니다)하여야 합니다.
        ④ 회사는 기업회원으로부터 환불 요청을 받은 날로부터 3영업일 이내에 기업회원의 환불 요청이 회사가 정한 환불 요건을 갖추었는지 여부를 판단하여 기업회원에게 그 내용을 통지합니다.
        ⑤ 기업회원의 환불 요청이 환불 요건에 부합하는 것으로 판단될 경우, 회사는 제4항의 통지일로부터 3영업일 이내에 판매약관에서 정한 금액을 환불합니다.
        ⑥ 기타 이용요금의 환불 관련 상세 사항은 판매약관에서 정하는 바에 따릅니다.
        제16조 (S-포인트의 적립 및 이용 등)
        ① S-포인트는 유료 광고·공고상품 또는 유료 서비스의 구매, 이벤트, 프로모션 기타 고객 보상 등의 사유로 적립됩니다. 단, 동일한 기업회원이 두 개 이상의 ID를 사용할 경우 특정 ID로 S-포인트를 통합하여 적립하거나 사용할 수 없습니다.
        ② 기업고객이 적립한 S-포인트는 사이트 등에서 유료 광고·공고상품이나 유료 서비스 결제시 1포인트 당 1원의 가치로 현금처럼 사용 가능하며, 향후 회사 정책에 따라 그 사용처가 확장될 수 있습니다. 다만, 기업회원이 적립한 S-포인트는 현금 기타 현금성 지급수단으로 전환되거나 출금될 수 없습니다.
        ③ S-포인트의 이용은 회사 정책에 따라 유료 광고·공고상품이나 유료 서비스별 적립기준, 적립률, 사용조건 및 제한 등이 달라질 수 있으며, 회사는 제5조 제3항에 따라 이를 변경 내용 적용일 30일 전까지 기업회원에게 사전 공지합니다.
        ④ 제1항의 적립 사유가 해제, 해지 또는 취소되었을 경우, 회사는 해당 사유로 기업회원에게 적립된 S-포인트를 회수하며, 회수할 S-포인트가 없을 경우 최종 환불금액에서 차감합니다.
        ⑤ S-포인트를 이용하여 결제한 유료 광고·공고상품 구매나 유료 서비스 이용을 해제, 해지 또는 취소할 경우, 기업회원은 이용기간에 상응하는 S-포인트를 공제하고 남은 S-포인트를 재적립 받을 수 있습니다. 단, 본 약관 제24조 제2항 소정의 서비스부정이용행위를 한 것으로 판단되는 경우에는 그러하지 아니합니다.
        ⑥ S-포인트 적립시 별도의 유효기간을 정한 바가 없으면 적립일로부터 1년(365일)의 유효기간을 가지며, 별도의 유효기간이 설정된 경우 그 기간에 따릅니다.
        ⑦ 다음 각 호 중 어느 하나에 해당할 경우, 기업회원에게 적립된 S-포인트는 전액 소멸되어 복구되지 않으며, 재가입한 ID로 이관되지 않습니다.
        1. 유효기간이 경과한 경우
        2. 기업회원이 선택한 개인정보 보유기간 동안 사이트 등에 로그인하지 않을 경우
        3. 기업회원이 서비스 이용계약을 해지한 경우
        4. 기업회원이 회사로부터 탈퇴 처리되거나 서비스 이용중지된 경우
        제17조 (서비스 이용시간 및 제공 중지)
        ① 회사는 특별한 사유가 없는 한 연중무휴, 1일 24시간 서비스를 제공합니다. 다만, 일부 서비스의 경우 그 종류나 성질을 고려하여 별도로 이용시간을 정할 수 있으며, 회사는 그 이용 시간을 기업회원에게 사전 공지합니다.
        ② 회사는 서비스 업데이트나 정보 가공, 자료의 갱신을 위한 시스템 유지·보수 작업, 시스템 장애 해결을 위한 보수작업, 정기 PM 작업, 시스템 교체 작업이 필요하거나 회선 장애 등 서비스를 중단할 합리적인 사유가 발생한 경우, 일시적으로 서비스를 중단할 수 있습니다. 계획된 작업의 경우 서비스 중단 시간과 작업 내용을 사전에 공지하되, 우발적 장애 발생 등 부득이한 사유가 있는 경우에 한하여 그 내용을 사후에 공지할 수 있습니다.
        ③ 회사는 다음 각 호에 해당하는 경우 서비스의 제공을 중지할 수 있습니다.
        1. 설비의 보수 등 회사의 필요에 의해 사전에 기업회원들에게 공지한 경우
        2. 기간통신사업자가 전기통신서비스 제공을 중지하는 경우
        3. 기타 불가항력적인 사유에 의해 서비스 제공이 객관적으로 불가능한 경우
        ④ 제2항 내지 제3항의 경우, 회사는 기간의 정함이 있는 유료 광고·공고상품 또는 유료 서비스를 이용하는 기업회원에게 서비스 제공이 중지된 기간만큼 이용기간을 연장하고, 기업회원은 회사에 대하여 별도의 손해배상을 청구할 수 없습니다.
        제18조 (서비스 정보의 제공 또는 기타 광고의 게재)
        ① 회사는 기업회원에게 서비스 이용·개선을 위해 필요한 사항을 알리거나 각종 상품·서비스 소개, 홍보 등을 위한 정보를 우편물, 이메일이나 어플리케이션 푸쉬 알림, 모바일 장치, IoT 등 신종 기술 및 기기를 이용한 방법으로 제공할 수 있습니다.
        ② 회사는 사이트 등에 기타 광고 등을 게재할 수 있으며, 우편물, 이메일이나 어플리케이션 푸쉬 알림, 모바일 장치, IoT 등 신종 기술 및 기기를 이용한 방법으로 기업회원에게 기타 광고 등을 전달할 수 있습니다.
        ③ 회사는 사이트 등에 게재되어 있는 광고주의 판촉활동에 기업회원이 참여하거나 교신 또는 거래를 함으로써 발생하는 모든 손실과 손해에 대해 일체의 책임을 지지 않습니다.
        ④ 기업회원은 서비스 이용 시 사이트 등에 노출되는 광고 게재에 대해 동의하는 것으로 간주합니다.
        제19조 (게시물 작성과 회사의 수정·삭제 권한)
        ① 게시물이란 기업회원이 등록한 기업정보 및 채용공고와 기타 사이트 등에 게시한 일체의 게시물을 의미합니다.
        ② 기업회원은 게시물 작성시 서비스 제공 목적에 부합하게 정확한 사실에 근거하여 성실하게 그 내용을 작성하여야 하며, 작성된 게시물의 내용이 사실이 아니거나 부정확한 경우 발생하는 모든 문제에 대하여 전적인 책임을 부담합니다.
        ③ 모든 게시물의 작성 및 관리는 기업회원 본인이 하는 것이 원칙이며, 제3자를 통해 위탁 또는 대행 관리를 하더라도 게시물 작성 및 관리에 관련된 일체의 책임은 기업회원에게 귀속됩니다. 기업회원은 주기적으로 작성된 게시물을 확인하여 정확한 내용이 포함될 수 있도록 수정·변경하는 등 일체의 노력을 다하여야 합니다.
        ④ 기업회원이 등록한 게시물 내용에 오·탈자가 있을 경우, 회사는 사전 고지 없이 이를 수정할 수 있습니다.
        ⑤ 기업회원이 등록한 게시물에 대하여 제3자로부터 허위사실 및 명예훼손 등으로 삭제요청이 접수된 경우, 회사는 해당 게시물을 직권으로 삭제할 수 있으며, 기업회원에게 해당 게시물의 삭제 사실 및 사유를 사후 통지합니다.
        ⑥ 사이트 등에 채용공고를 등록한 기업회원에 대하여 고용노동부 및 유관기관, 법원 등 게시 중단을 요청할 수 있는 정당한 권한을 가진 기관으로부터 게시 중단 공문이나 명령 등이 접수된 경우, 회사는 사전 고지 없이 해당 기업회원의 채용공고 게시를 중단할 수 있으며, 채용공고 게시 중단으로 인하여 기업회원에게 발생한 손해를 배상하지 않습니다.
        제20조 (채용 관련 정보의 제공 및 활용)
        ① 기업회원이 사이트 등에 등록한 채용공고 기타 일체의 채용 관련 정보는 채용 및 고용동향 통계 자료로 제공되어 활용될 수 있으며, 채용공고는 매체를 통해 언론에 배포될 수 있습니다. 다만, 정보통신망 이용촉진 및 정보보호 등에 관한 법률, 개인정보 보호법 등 관련 법령에 따른 개인정보는 채용 관련 정보 제공 및 활용대상에서 제외됩니다.
        ② 회사는 사이트 등의 온라인 입사 지원 시스템을 통해 지원한 개인회원에게 자신의 이력서 열람 여부 및 지원자 통계 자료를 제공할 수 있습니다.
        제21조 (게시물과 지식재산권 등)
        ① 회사가 작성한 게시물 또는 저작물에 대한 저작권 및 기타 지식재산권은 회사에 귀속합니다.
        ② 기업회원이 사이트 등에 게시한 게시물에 대한 저작권은 기업회원에게 귀속됩니다. 기업회원은 자신이 창작, 등록한 게시물에 대해 무상의 비독점적 사용권을 회사에 부여합니다. 기업회원이 회사에게 부여한 사용권은 회사가 사이트 등을 운영하는 동안 계속 유효하며, 기업회원이 서비스 이용계약을 해지한 후에도 같습니다.
        ③ 기업회원은 사이트 등에 게시한 게시물에 관하여 제3자의 저작권 기타 지식재산권을 침해하지 않음을 보증합니다. 기업회원이 게시한 게시물과 관련하여 회사와 제3자간의 분쟁이 발생할 경우, 기업회원은 자신의 책임과 비용으로 이를 해결하여야 하며 회사 및 제3자와의 관계에서 회사를 완전히 면책시켜야 합니다. 만일 회사와 제3자간 분쟁으로 인하여 회사에게 손해 및/또는 지출 비용이 발생할 경우, 기업회원은 회사에게 일체의 손해 및/또는 비용을 배상 및/또는 지급하여야 합니다.
        ④ 기업회원이 사이트 등에 게시한 게시물에 대한 권리와 책임은 해당 게시물을 게시한 기업회원에게 있습니다. 회사는 기업회원의 동의 없이 해당 게시물을 서비스 제공 이외의 영리적 목적으로 사용할 수 없습니다. 다만, 비영리적 목적으로 사용하는 경우에는 기업회원의 동의를 요하지 않습니다.
        ⑤ 사이트 등에서 정당한 절차를 거쳐 기업회원이 열람한 개인회원의 이력서 정보는 해당 기업의 인사 자료이며, 이에 대한 관리 권한은 해당 기업의 정책에 따릅니다. 다만, 기업회원은 해당 정보를 채용 목적 이외의 목적을 위하여 사용할 수 없습니다.
        ⑥ 회사는 데이터베이스 제작자로서 저작권법에 의거하여 회사의 데이터베이스에 대한 권리를 보유합니다. 회사의 데이터베이스에 대하여 소프트웨어 또는 기계적 방법을 통하여 이루어지는 크롤링, 미러링 등의 대규모 이용은 엄격히 금지됩니다. 단, 영리를 목적으로 하지 않는 경우로서 다음 각 호 중 하나에 해당하는 경우는 예외로 합니다.
        1. 교육, 학술 또는 연구를 위하여 이용하는 경우
        2. 시사보도를 위하여 이용하는 경우
        3. 포털 사이트의 검색엔진 로봇에 의한 크롤링의 경우
        제22조 (회사의 의무)
        ① 회사는 본 약관에서 정한 내용에 따라 서비스를 안정적·계속적으로 제공할 수 있도록 최선을 다하여 노력합니다.
        ② 서비스 이용이나 운영과 관련된 기업회원의 불만사항이 접수되는 경우, 회사는 이를 지체없이 처리하여 그 결과를 회신할 수 있도록 노력합니다. 다만, 불만사항 내용 확인 및 경위 파악, 접수 내용 처리 등에 상당한 시간이 소요될 경우, 회사는 그 사유와 처리 일정을 기업회원에게 통지합니다.
        ③ 회사는 유료 결제와 관련한 결제사항 정보를 5년간 보존합니다.
        ④ 기업회원이 사이트에 등록한 기업정보 및 채용공고 내용은 사이트 등을 방문하는 모든 이용자에게 공개함을 원칙으로 하며, 회사는 공개 기간을 지정할 수 있습니다. 단, 일부 비공개 항목은 사이트 등에서 제시하는 별도의 옵션을 통해 지정될 수 있으며, 회사는 비공개 항목으로 지정된 사항에 대한 비공개 의무를 부담합니다.
        ⑤ 회사는 기업회원 가입과 관련하여 취득한 기업회원의 신용 정보를 타인에게 제공하거나 활용하고자 할 때에는 신용 정보의 이용 및 보호에 관한 법률 제32조 규정에 따라 사전에 그 사유 및 제3자 제공 기관 또는 업체명 등을 밝히고 해당 기업회원의 동의를 얻어야 합니다. 기업회원이 신용정보 제공·활용에 동의한 경우, 회사는 기업회원이 신용 정보 사업자 또는 신용 정보 집중기관에 신용정보를 제공하여 기업회원의 신용을 판단하기 위한 자료로 활용하거나, 공공기관에서 정책자료로 활용되도록 정보를 제공하는 데 동의한 것으로 간주합니다.
        제23조 (기업회원의 의무)
        ① 기업회원은 관계법령과 본 약관의 규정, 회사의 서비스 운영정책 기타 고지된 서비스 이용상의 유의 사항을 준수하여야 하며, 기타 회사의 업무에 지장을 초래하는 행위를 하여서는 아니됩니다.
        ② 기업회원이 신청한 유료 광고·공고 또는 유료 서비스는 등록 또는 신청과 동시에 회사와 채권, 채무 관계가 발생하며, 기업회원은 이용요금을 회사가 지정한 기일 내에 납부하여야 합니다.
        ③ 기업회원이 결제수단으로 신용카드를 사용할 경우 비밀번호 등 결제정보 유실 방지는 기업회원 스스로 관리해야 합니다. 다만, 사이트의 결함에 따른 결제정보 유실의 발생에 대한 책임은 기업회원이 부담하지 않습니다.
        ④ 기업회원은 서비스를 이용하여 얻은 정보를 회사의 사전 동의 없이 복사, 복제, 번역, 출판, 방송 기타의 방법으로 사용하거나 이를 타인에게 제공할 수 없습니다.
        ⑤ 기업회원은 본 약관에서 정한 바와 다른 목적으로 사용해서는 아니되며 제24조에서 정하는 서비스 부정이용행위를 하지 않아야 합니다.
        ⑥ 기업회원은 사이트 등을 통해 열람한 이력서 정보를 회사 및 당사자의 허락 없이 재배포할 수 없으며, 본 정보에 대한 출력 및 복사 등의 관리 책임은 전적으로 기업회원에게 있습니다.
        제4장 서비스 부정이용행위와 제재조치
        제24조 (서비스 부정이용행위)
        ① 회사는 채용정보, 기업정보, 이력서 등의 제공을 통하여 구직자와 기업의 연결을 돕는 플랫폼 서비스가 원활히 제공될 수 있도록 본조 제2항에서 정하는 서비스 부정이용행위를 금지합니다.
        ② 기업회원의 서비스 이용행위가 다음 각 호의 각 목 중 어느 하나에 해당할 경우, 서비스 부정이용행위에 해당합니다.
        1. 기업회원이 다음 각 목과 같이 그 의무를 위반하였을 경우
        I. 기업회원이 등록한 정보의 내용이 사실과 다르거나 조작되었을 경우
        II. 사업자등록증에 나타난 정보와 기업회원 가입 시의 정보가 일치하지 않을 경우
        III. 타 기업의 사업자등록번호나 상호를 도용하여 허위로 기업정보를 등록하거나 휴·폐업 사업자등록번호로 기업정보를 등록했을 경우
        IV. 본 약관 제9조 소정의 증빙자료 제출 요청을 받고도 정당한 이유 없이 응하지 아니하거나 허위의 내용이 기재된 자료, 위조 또는 변조된 자료를 제출하였을 경우
        V. 본 서비스 이용을 통하여 취득한 정보를 본래의 채용 목적이 아닌 다른 목적을 위하여 활용하여 사회적 물의를 일으킨 경우
        VI. 사이트의 정보 및 서비스를 이용하여 영리 행위를 하였을 경우
        VII. 유료 서비스 이용 요금을 납부하지 않았을 경우
        VIII. ID를 타인에게 대여하거나 다른 기업회원의 ID를 사용하였을 경우
        IX. 해킹 행위 또는 바이러스의 유포 행위를 하였을 경우
        X. 회사의 온라인 채용관리 서비스를 이용하여 지원한 개인회원 등 회사의 서비스 이용과정에서 개인정보를 지득한 제3자의 의사에 반하여 광고성 정보 등 일정한 내용을 계속적으로 전송하는 행위를 하였을 경우
        XI. 기업회원이 발송한 메일이나 문자메시지에 대하여 수신자가 스팸으로 신고하였거나 불법 스팸임이 판명되었을 경우
        XII. 기업회원이 발송한 메일이나 문자메시지에 대하여 방송통신위원회 또는 한국인터넷진흥원(KISA)이 불법 스팸 전송 사실을 확인하여 이용 정지를 요청하거나 공정거래위원회가 전화권유판매 수신거부의사 등록시스템(두낫콜)에 의한 제재조치를 취하는 경우
        XIII. 기업회원이 발송한 문자메시지에 대하여 거짓으로 표시된 전화번호로 인한 이용자 피해 예방에 관한 고시(과학기술정보통신부 고시 제2018-44호) 제10조 제1항에 따라 과학기술정보통신부장관 또는 한국인터넷진흥원(KISA)에서 번호 변작 등을 이유로 이용 정지를 요청한 경우
        XIV. 선량한 풍속, 기타 사회질서를 해하거나 관계법령에 위반하는 행위를 함으로써 개인회원, 이용자 기타 제3자에게 손해를 가하였을 경우
        XV. 회사, 본 서비스 또는 제3자의 명예를 훼손하였을 경우
        XVI. 기타 중대한 의무 위반으로 서비스의 안정적인 운영에 지장을 주거나 줄 우려가 있다고 판단되는 경우
        2. 기업회원이 다음 각 목과 같이 본 서비스를 남용했을 경우
        I. 기업회원이 보유하고 있는 하나 또는 복수의 ID를 이용하거나 제3자의 ID를 전용하여 같은 내용의 공고를 중복하여 등록하는 경우
        II. 공고를 상위에 노출시킬 목적으로 동일한 공고에 대하여 등록 및 마감을 반복하거나 채용기간을 나누어 수차례 등록하는 경우
        III. 구인 기업과 무관한 기업의 ID를 개설 또는 전용하여 공고를 등록하는 경우
        IV. 동일 사업자가 마감일이 지나지 않은 동일 내용의 채용공고를 다수 ID를 사용하여 중복 등록할 경우
        V. 정당한 사유 없이 유료 서비스를 반복적으로 결제/취소할 경우
        VI. 개인회원 및 기업회원의 지위를 이중으로 취득한 자가 자기의 업을 광고하는 수단으로 서비스를 남용한 경우(이 경우 본 약관에 의한 기업회원 지위 및 개인회원 약관에 의한 개인회원 지위 동시 박탈 가능)
        3. 기업회원이 다음 각 목과 같이 거짓 채용공고를 등록하였을 경우
        I. 구인 또는 채용을 가장하여 아이디어 수집, 사업장 홍보, 물품 판매, 유학 알선, 수강생 모집, 직업소개, 부업 알선, 자금 모집 등을 행하는 공고
        II. 작성자가 제시한 직종, 업무내용, 근로조건 등이 실제와 현저히 다른 공고
        III. 회사명, 담당자 성명, 사무실 연락처 등 구인업체의 중요 정보를 정확하게 기입하지 않았을 경우
        IV. 기타 공고의 중요 내용이 사실과 다른 공고
        V. 제I 목 내지 제IV목의 거짓 채용공고를 목적으로 구인자의 신원(업체명 또는 성명)을 표시하지 아니하는 공고
        4. 기업회원이 이용자 또는 제3자 보호를 위하여 등록을 제한할 필요성이 있는 다음 각 목의 채용공고 및 게시물을 등록하였을 경우
        I. 채용공고의 모집요강만으로 업무에 대한 내용이 명확하지 않을 경우
        II. 다단계, 피라미드 영업, 네트워크 마케팅임을 명시하지 아니하고 모집 내용을 등록했을 경우
        III. 기업회원 모집 형태의 공고 또는 카드 기업회원 모집(수당제 공고) 내용을 등록했을 경우
        IV. 취업 수수료 등 취업 관련 비용을 필요로 하는 채용공고를 등록했을 경우 (운송, 물류, 지입, 인력 용역 등)
        V. 불건전 유흥업소 채용공고를 등록했을 경우
        VI. 동업자 모집, 프랜차이즈 모집, 점포 개설, 창업, 사이트 홍보 등 직원 채용이 아닌 공고를 등록했을 경우
        VII. 지사, 지점, 영업소 등의 경우 구체적인 지사, 지점, 영업소 명칭을 사용하지 않고 기업명을 등록했거나 지사, 지점, 영업소의 사업자등록번호가 별도 있음에도 불구하고 본사의 사업자등록번호로 기업회원 가입을 했을 경우
        VIII. 모집 요강에 적합한 분류를 지정하지 않았을 경우 (※ 영업, 마케팅, 텔레마케팅, 상담인력을 모집하고자 하는 교육기관, 이벤트 업체 또는 영업대행 기관의 경우, 반드시 해당 업/직종 분류를 지정해야 “서비스” 이용 가능)
        IX. 추천인 모집 공고, 재택 쇼핑몰 분양 공고, 직업소개, 부업 알선 공고를 등록했을 경우
        X. 특수형태근로종사자(보험설계사, 학습지 교사, 택배기사 등) 모집 공고를 등록했을 경우
        XI. 임금체불 사실이 접수되었거나 근로 감독원에 진정서가 접수되어 있는 기업의 경우
        XII. 법원, 행정기관 등의 제재조치가 진행 중이며, 이용자의 보호를 위하여 본 서비스 이용을 중단하여야 할 필요가 있을 경우
        XIII. 구직자의 불편 또는 피해사례(채용공고를 통해 구직자가 입사 과정에서 피해가 발생한 경우 또는 재직 중 기업회원이 관계법령을 위반하여 피해가 발생한 경우 등)가 접수되었을 경우
        XIV. 현행법에 위배되는 내용이나 범죄적 행위에 결부된다고 인정되는 내용일 경우
        XV. 기타 관계 법규에 위배되는 내용이거나 사이트의 원활한 운영을 위하여 운영자가 필요하다고 판단한 경우
        XVI. 제3자를 비방하거나 중상모략으로 명예를 손상시키는 내용의 게시물을 등록한 경우
        XVII. 회사의 저작권 또는 제3자의 저작권 등 기타 권리를 침해하는 내용의 게시물을 등록한 경우
        XVIII. 공공질서 및 미풍양속에 위반되는 내용의 게시물을 등록한 경우
        XIX. 게시판의 성격에 부합하지 않는 게시물을 등록한 경우
        XX. 기타 본 서비스를 남용하여 회사의 영업을 방해한 경우
        제25조 (서비스의 부정이용에 대한 제재조치 등)
        ① 기업회원이 제24조 제2항의 서비스 부정이용행위를 하였을 경우, 회사는 해당 기업회원에게 사전 통지한 후 채용공고의 게시 중단 또는 삭제 조치, 기업회원 서비스 이용 중지, ID 삭제조치, 기업회원 강제 탈퇴 및 재가입 제한 조치(이하 “제재조치”라 합니다)를 취할 수 있습니다. 다만, 서비스 정상화 또는 민원처리 등 긴급한 사정이 있을 경우, 회사는 제재조치를 취한 후 사후적으로 해당 기업회원에게 통지할 수 있습니다.
        ② 기업회원은 제1항에 따른 회사의 제재조치에 대하여 이의 사유 및 증빙자료를 제출하는 방식으로 회사에게 이의를 신청 수 있습니다. 기업회원의 이의 신청을 접수한 경우, 회사는 제출된 이의 사유 및 증빙자료 기타 관련 사항을 신중히 검토하여 이의 신청에 대한 판단을 하고 그 결과를 통지합니다.
        ③ 기업회원이 강제 탈퇴 조치된 경우, 회사는 기업회원의 개인정보를 지체없이 삭제합니다. 다만, 관련 법령 및 개인정보 처리방침에 따라 기업회원 정보를 보유할 필요가 있는 경우 및 해당 기업회원의 재가입을 방지하기 위한 목적에서 필요한 정보(쿠키, 기업명, 인사담당자, 연락처, 사업자등록번호, IP주소)를 보관하는 경우는 그러하지 아니합니다.
        제 5장 기타
        제26조 (손해배상)
        ① 회사의 귀책으로 본 약관의 제10조, 제22조를 위반하여 이용자에게 손해를 입히거나 기타 회사가 제공하는 모든 서비스와 관련하여 회사의 책임 있는 사유로 인해 이용자에게 손해가 발생한 경우 회사는 그 손해를 배상합니다.
        ② 기업회원이 본 약관의 제9조, 제11조, 제23조에 위반한 행위 또는 제24조 제2항에서 정하는 서비스 부정이용행위를 한 경우, 기타 기업회원의 책임 있는 사유로 회사 및/또는 제3자에게 손해를 입힌 경우, 기업회원은 그 손해를 배상하여야 합니다.
        제27조 (면책)
        ① 회사는 기업회원이 서비스를 이용하여 기대하는 효과를 얻지 못한 것에 대하여 책임을 지지 않습니다. 또한, 회사는 회사가 제공하는 무료 서비스의 이용과 관련하여 개인정보 처리방침에서 정하는 내용을 위반하지 않은 한 기업회원에게 어떠한 책임도 부담하지 않습니다.
        ② 회사는 기업회원에게 구직자 정보의 정확성 및 진실성을 보증하지 않으며, 기업회원은 구직자로부터 수령한 정보의 정확성 및 진실성을 직접 확인하여야 합니다. 회사는 기업회원에게 구직자 정보의 정확성 및 진실성에 관련한 일체의 책임을 부담하지 않습니다.
        ③ 회사는 천재지변 또는 이에 준하는 불가항력으로 인하여 서비스를 제공할 수 없는 경우 서비스 제공에 관한 책임이 면제됩니다.
        ④ 회사는 기업회원의 고의 또는 과실로 발생한 서비스 이용의 장애 및 손해에 대하여 어떠한 책임도 부담하지 않습니다.
        제28조 (서비스 이용계약 해지 및 자동탈퇴)
        ① 기업회원이 서비스 이용계약을 해지하고자 할 경우, 고객센터 또는 "기업회원 탈퇴” 메뉴를 이용해 회사에 대한 해지 신청을 합니다. 기업회원은 서비스의 개별 또는 일괄 탈퇴 여부를 선택할 수 있습니다.
        ② 기업회원이 서비스 이용계약을 해지한 경우, 회사는 해지 즉시 기업회원의 모든 정보를 파기합니다. 다만, 다음 각 호에 해당하는 경우는 보유 목적에 필요한 최소한의 정보를 보관할 수 있습니다.
        1. 관련 법령 및 개인정보 처리방침에 따라 회사가 기업회원 정보를 보유할 수 있는 경우
        2. 기업회원이 제25조에 따른 제재조치를 회피하기 위하여 서비스 이용계약 해지를 신청한 것으로 판단되어 재가입 방지에 필요한 기업회원에 정보를 보관하는 경우
        ③ 기업회원의 휴·폐업 사실이 회사가 정한 별도의 절차에 따라 확인된 경우, 회사는 해당 기업회원에 대하여 직권으로 탈퇴 등의 적절한 조치를 취할 수 있으며, 이와 더불어 당해 기업회원이 구매한 유료상품 및 S-포인트의 제공 및 이용을 제한할 수 있습니다. 다만, 기업회원은 합리적 이의 사유가 있을 경우 이를 소명할 증빙자료를 제출하는 방식으로 이의할 수 있습니다. 기업회원의 이의 신청을 접수한 경우, 회사는 제출된 이의 사유 및 증빙자료 기타 관련 사항을 신중히 검토하여 이의 신청에 대한 판단을 하고 그 결과를 통지합니다.
        제29조 (분쟁의 해결)
        ① 회사와 기업회원은 서비스와 관련하여 발생한 분쟁을 원만하게 해결하기 위하여 필요한 모든 노력을 하여야 합니다.
        ② 제1항에도 불구하고 회사와 기업회원 간에 발생한 분쟁에 관한 소송이 제기될 경우, 민사소송법에 따른 관할법원을 제1심 관할법원으로 지정합니다.
        2021. 05. 08
        (주)백세구직
      </textarea>
				<p style="padding-top: 30px;">
					<input type="checkbox" value=""><b> </b>개인정보 수집 이용 동의 (필수)
				</p>
				<table class="table table-bordered">
					<thead>
						<tr>
							<th>이용 목적</th>
							<th>개인정보 항목</th>
							<th>보유 및 이용기간</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td>본인 확인 및 부정 이용방지</td>
							<td>아이디, 비밀번호, 기업구분, 상호명, 사업자등록번호, 이메일, 이름, 생년월일, 성별, 휴대폰
								전화번호</td>
							<td>회원 탈퇴시까지 또는 고객 요청시</td>
						</tr>
					</tbody>
				</table>
				<small>* 필수 수집 정보는 서비스 이용에 필요한 최소한의 정보이며, 동의를 해야만 서비스를 이용할 수
					있습니다.</small><br>
				<br>
				<p style="padding-top: 30px;">
					<input type="checkbox" value=""><b> </b>마케팅, 이벤트정보 수신 동의
					(선택)
				</p>
				<table class="table table-bordered">
					<thead>
						<tr>
							<th>이용 목적</th>
							<th>개인정보 항목</th>
							<th>보유 및 이용기간</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td>이용자에게 맞춤형 구직활동 지원</td>
							<td>이름, 상호(기업)명, 휴대폰 번호, 이메일</td>
							<td>회원 탈퇴시까지 또는 고객 요청에 따라 개인정보 이용동의 철회 요청시까지</td>
						</tr>
					</tbody>
				</table>
				<small>* 선택적 수집항목은 동의하지 않아도 회원가입은 가능하나, 혜택 안내가 제한될 수 있습니다.</small>
				<hr>
			</div>
			<hr>
		</div>
	</div>
	<div class="container-fluid text-center">
		<div class="row content">
			<div class="col-sm-4 sidenav"></div>
			<div class="col-sm-4 text-left">
				<form
					action="${ pageContext.servletContext.contextPath }/business/signup"
					method="POST" onsubmit="return validate();"
					encType="multipart/form-data">
					<h2 style="padding-top: 30px; padding-bottom: 20px;">기업정보</h2>
					<div class="form-group">
						<label for="buser">기업/상호명 (필수)</label> <input type="text"
							class="form-control" id="bname" placeholder="기업/상호명 입력"
							name="bName" required>
					</div>
					<div class="form-group">
						<label for="regnum">사업자번호 (필수)</label>
						<div class="form-group row">
							<div class="col-xs-12">
								<input class="form-control" id="businessNo" type="text"
									name="businessNo" required>
							</div>
						</div>
						<small>특수문자(-)를 제외한 숫자만 입력하세요.</small>
					</div>
					<div class="form-group">
						<label for="owner">대표자명</label> <input type="text"
							class="form-control" id="ownerName" placeholder="대표자 명 입력"
							name="ownerName">
					</div>
					<div class="form-group">
						<label for="business_categroy">기업 분류</label> <select name="BC"
							id="BC_select" class="form-control">
							<option>----선택-----</option>
							<option value="1">미분류</option>
							<option value="2">일반기업</option>
							<option value="3">공기업</option>
							<option value="4">사회적기업</option>
							<option value="5">공공기관</option>
						</select>

					</div>
					<div class="form-group">
						<label for="regnum">연 매출액 </label>
						<div class="form-group row">
							<div class="col-xs-10">
								<input class="form-control" id="profit" type="text"
									placeholder="숫자로만 입력해주세요 단위 : 원" name="profit">
							</div>
						</div>
						<small>백만원 단위로 입력해주세요.</small>
					</div>
					<div class="form-group">
						<label for="bphone">기업 전화번호 (필수)</label> <input type="text"
							class="form-control" id="bPhone" placeholder="기업 전화번호"
							name="bPhone"> <small>특수문자(-)를 제외한 숫자만 입력하세요.</small>
					</div>
					<div class="form-group">

						<label for="bsaddress">기업 주소</label> <br> <small>우편
							번호</small> <input type="button" value="검색" class="btn btn-yg"
							id="searchZipCode"> <input type="text" name="zipCode"
							id="zipCode" readonly class="form-control"> <br> <small>주소</small>
						<input type="text" name="address1" id="address1" readonly
							class="form-control"> <br> <small>상세주소</small> <input
							type="text" name="address2" id="address2" class="form-control"
							required>
					</div>

					<!-- 기업 로고  -->
					<div class="" id="bLogo">
						<label for="bLogo">회사 로고</label> <br> <img id="bLogo1"
							width="120" height="100"><br> <input type="file"
							name="bLogo" onchange="loadImg(this,1)" />
					</div>
					<hr>
					<!-- 이름, 휴대폰 번호, 이메일 -->
					<h2 style="padding-top: 30px;">담당자 정보</h2>
					<div class="form-group">
						<label for="bid">아이디(필수)</label> <input type="text"
							class="form-control" id="hrId_1" placeholder="아이디" name="hrId">
						<div id="checkMessage"
							style="font-size: 23px; color: red; text-align: center;"></div>
						<input type="button" id="duplicationCheck" class="btn-btn-or"
							value="중복 확인" required> <input type="hidden" id="checkId"
							name="checkId" value="fail">
					</div>
					<div class="form-group">
						<label for="bpwd">비밀 번호 (필수)</label> <input type="password"
							class="form-control" id="enteredPwd" placeholder="비밀 번호 입력"
							name="enteredPwd" required>
					</div>
					<div class="form-group">
						<label for="bpwd">비밀 번호 확인(필수)</label> <input type="password"
							class="form-control" id="checkPwd" placeholder="비밀 번호 확인"
							name="checkPwd" required>
					</div>
					<div class="form-group" style="padding-top: 10px;">
						<label for="user">이름 (필수)</label> <input type="text"
							class="form-control" id="userName" placeholder="담당자 이름"
							name="hrName" required>
					</div>
					<div class="form-group">
						<label for="buphone">휴대폰 번호 (필수)</label> <input type="text"
							class="form-control" id="hrPhone" placeholder="휴대폰 번호"
							name="hrPhone" required> <small>특수문자(-)를 제외한 숫자만
							입력하세요.</small>
					</div>
					<div class="form-group">
						<label for="">이메일 (필수)</label> <input class="form-control"
							id="hrEmail" type="text" name="hrEmail">
					</div>
					<div class="form-group"
						style="text-align: center; padding-top: 80px; padding-bottom: 80px;">
						<input type="submit" id="btnSubmit"
							class="btn btn-info btn-submit" value="확인">
					</div>
				</form>
			</div>
			<div class="col-sm-1 sidenav"></div>
		</div>
	</div>

	<jsp:include page="../common/footer.jsp" />
	<!-- 기업 이미지 넣기 -->
	<script>
	const $bLogo = document.getElementById("bLogo");
	
	$bLogo.onclick = function() {
		document.getElementById("bLogo").click();
	}

	function loadImg(value, num) {
		if (value.files && value.files[0]) {
			const reader = new FileReader();
			reader.onload = function(e) {
				switch(num){
				case 1:
					document.getElementById("bLogo1").src = e.target.result;
					break;
				}
			}
			reader.readAsDataURL(value.files[0]);
		}
	}
  </script>

	<!-- 다음 우편번호 api -->
	<!-- key 발급 없이 무제한으로 이용이 가능하다. -->
	<!-- 아래 스크립트를 불러온 후 사용해야 한다. -->
	<!-- 참고 링크 : http://postcode.map.daum.net/guide -->
	<script
		src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
	<script>
		const $searchZipCode = document.getElementById("searchZipCode");
		
		$searchZipCode.onclick = function() {
		
			//다음 우편번호 검색 창을 오픈하면서 동작할 콜백 메소드를 포함한 객체를 매개변수로 전달한다.
			new daum.Postcode({
				oncomplete: function(data){
					//팝업에서 검색결과 항목을 클릭했을 시 실행할 코드를 작성하는 부분
					document.getElementById("zipCode").value = data.zonecode;
					document.getElementById("address1").value = data.address;
					document.getElementById("address2").focus();
				}
			}).open();
		}
	</script>

	<!-- 회원가입 유효성 검사: 정규식을 통한 alert창 띄우기 -->
	<script>

       function validate(){
          var bName = document.getElementById("bName");
          var businessNo = document.getElementById("businessNo"); 
          var owner = document.getElementById("owner");
          var profit = document.getElementById("profit");
          var bPhone = document.getElementById("bPhone");
          var hrId_1 = document.getElementById("hrId_1");
          var enteredPwd = document.getElementById("enteredPwd");
          var checkPwd = document.getElementById("checkPwd");
          var userName = document.getElementById("userName");
          var hrPhone = document.getElementById("hrPhone");
          var hrEmail = document.getElementById("hrEmail");
          
          
          /*==================================기업 정보 =============================================================*/
          // bName 유효성 검사는 필요 없어
          
          // bNo1 유효성 검사
           if(!chk(/^[0-9]{10}$/,businessNo,"특수문자(-) 없이 숫자로만 사업자 번호를 입력하세요.")){/^\d{3}\d{3,4}\d{4}$/
        	  return false;	
          }
          // bPhone 유효성 검사
           if(!chk(/^[0-9]{10,11}$/,bPhone,"기업 전화번호는 특수문자(-) 없이 숫자로만 10자리 혹은 11자리를 입력하세요.")){
            return false;
         } 
          
          // 연매출액 유효성 검사
          if(!chk(/[0-9]{1,}$/,profit,"숫자만 입력해주세요.")){
        	  return false;
          }
          
          /*========================================   담당자 정보  ==================================================*/
          
         // 담당자 아이디 유효성 검사
         if(!chk(/^[a-zA-Z0-9]{6,}$/,hrId_1,"아이디는 영어와 숫자를 혼합하여 5글자 이상 입력하세요.")){
        	 return false;
         }
          
          // enteredPwd 유효성 검사
           if(!chk(/^[a-zA-Z0-9]{8,15}$/,enteredPwd,"비밀번호는 영어와 숫자를 사용하여 8자리 이상 15자리 이하 입력하세요.")){
            return false;
         }  
         
         var checkNum = document.getElementById("enteredPwd").value.search(/[0-9]/g);
         var checkEng = document.getElementById("enteredPwd").value.search(/[a-z]/ig);
         // i: case insensitive, 대소문자 구별 안함
         
          if(checkNum < 0 || checkEng < 0){
            alert("비밀번호는 숫자와 영문자를 혼용하여야 합니다.");
            enteredPwd.value="";
            enteredPwd.focus();
            return false;
         } 
        
          // enteredPwd와 userPwd1 일치하는지 확인
          if(enteredPwd.value != checkPwd.value){
             alert("비밀번호가 다릅니다. 다시 확인해주세요.");
             checkPwd.value="";
             checkPwd.focus();
             return false;
          }
          
         
         // userName 유효성 검사
            if(!chk(/^[가-힣]{1,}$/,userName,"이름은 한글로 1글자 이상 입력하세요")){
            return false;
         } 
         
          // 담당자 번호 유효성 검사
           if(!chk(/^[0-9]{10,11}$/,hrPhone,"휴대폰 번호는 특수문자(-) 없이 숫자로만 10자리 혹은 11자리를 입력하세요.")){
               return false;
            } 
         
         // hrEmail 유효성 검사
         if(!chk(/^[\w]{4,}@[\w]+(\.[\w]+){1,3}$/,hrEmail,"이메일 형식에 맞춰 입력하세요.")){
        	 return false;
         }
         
         if(idCheck.value != "success"){
        	 alert("아이디 중복 확인을 완료해주세요.");
        	 hrId_1.focus();
        	 hrId_1.value = "";
        	 return false;
         }
         
   	  if(checkId.value != "success"){
		  alert("아이디 중복체크를 완료해주시기 바랍니다.");
		    console.log(checkId);
		    hrId_1.focus();
		    hrId_1.value = "";
		    console.log(hrId_1);
		    return false;
	  }
       
         
        // 유효성 검사 alert 창 띄워주는 것
          function chk(re, ele, msg){
              if(!re.test(ele.value)){
                 alert(msg);
                 ele.value="";
                 ele.focus();   
                 return false;
              }
              
              return true;
           }
         
         // 아이디 중복 체크
          if(checkMessage.innerHTML != "사용할 수 있는 아이디입니다."){
         	 duplicationCheck.focus();
         	 alert("휴대폰번호 중복확인을 해주세요.")
         	 return false;
          }
     
       
       }
       </script>
	<!-- script 끝남 -->

</body>
</html>