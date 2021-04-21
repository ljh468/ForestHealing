<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>하이힐링원 통계프로그램</title>
<link href="/lumino/css/bootstrap.min.css" rel="stylesheet">
<link href="/lumino/css/font-awesome.min.css" rel="stylesheet">
<link href="/lumino/css/datepicker3.css" rel="stylesheet">
<link href="/lumino/css/styles.css" rel="stylesheet">
<link rel="stylesheet" href="/css/checkstyle.css">


<!--Custom Font-->
<link
	href="https://fonts.googleapis.com/css?family=Montserrat:300,300i,400,400i,500,500i,600,600i,700,700i"
	rel="stylesheet">
<!--[if lt IE 9]>
	<script src="js/html5shiv.js"></script>
	<script src="js/respond.min.js"></script>
	<![endif]-->



<!-- 홍두표 - 나눔스퀘어 폰트 불러오기 -->
<style>
@import
	url(https://cdn.rawgit.com/moonspam/NanumSquare/master/nanumsquare.css)
	;

body {
	text-decoration: none;
	text-decoration-line: none;
	text-decoration-thickness: initial;
	text-decoration-style: initial;
	text-decoration-color: initial;
	font-family: 'NanumSquare';
	font-size: 20px;
	font-weight: 500;
}
</style>
<!-- 홍두표 - 나눔스퀘어 폰트 불러오기 -->


</head>
<body>
	<%@ include file="/WEB-INF/view/top.jsp"%>
	<%@ include file="/WEB-INF/view/sidebar.jsp"%>

	<div class="col-sm-9 col-sm-offset-3 col-lg-10 col-lg-offset-2 main">
		<div class="row">
			<ol class="breadcrumb">
				<li><a href="#"> <em class="fa fa-home"></em>
				</a></li>
				<li class="active">프로그램 결과 입력</li>
			</ol>
		</div>
		<!--/.row-->

		<div class="row">
			<div class="col-lg-12">
				<h1 class="page-header">프로그램 결과 입력</h1>
			</div>
		</div>
		<!--/.row-->


		<!-- 입력서식  -->
		<div class="row">

			<div class="col-md-12">
				<div class="panel panel-default">
					<div class="panel-heading clearfix">Inputs</div>
					<div class="panel-body">
					
					<!-- form 시작 -->
						<form class="form-horizontal row-border" action="#">
							<div class="form-group">
								<label class="col-md-2 control-label">단체명</label>
								<div class="col-md-10">
									<input type="text" name="groupname" class="form-control"
										placeholder="직접입력" style="font-size:16pt";>
								</div>
							</div>

							<div class="form-group">
								<label class="col-md-2 control-label">OM</label>
								<div class="col-md-10">
									<input type="text" name="om" class="form-control"
										placeholder="직접입력" style="font-size:16pt";>
								</div>
							</div>

							<div class="form-group">
								<label class="col-md-2 control-label">참여일자</label>
								<div class="col-md-10">
									<input type="text" name="topartic" class="form-control"
										placeholder="직접입력" style="font-size:16pt";>
								</div>
							</div>

							<div class="form-group">
								<label class="col-md-2 control-label">체류기간</label>
								<div class="col-md-10">
									<input type="text" name="tostay" class="form-control"
										placeholder="직접입력" style="font-size:16pt";>
								</div>
							</div>

							<div class="form-group">
								<label class="col-md-2 control-label">거주지역</label>
								<div class="col-md-10">
									<select class="form-control input-lg" name="residence"
										style="border-radius: 5px;">
										<option value="">서울</option>
										<option value="">인천</option>
										<option value="">세종</option>
										<option value="">부산</option>
										<option value="">대구</option>
										<option value="">광주</option>
										<option value="">대전</option>
										<option value="">울산</option>
										<option value="">경기</option>
										<option value="">강원</option>
										<option value="">충북</option>
										<option value="">충남</option>
										<option value="">경북</option>
										<option value="">경남</option>
										<option value="">전북</option>
										<option value="">전남</option>
										<option value="">제주</option>
									</select>
								</div>
							</div>

							<div class="form-group" >
								<label class="col-md-2 control-label">참여인원</label>
								<div class="col-md-10">
									<label class="checkbox-inline">참여자 </label> <br />
									
									<div class="col-md-5" style="display: inline-flex;">
										<label class="col-md-3 control-label">남자</label>
										<div class="col-md-3">
											<input type="text" name="male1" class="form-control" id="per1"
												placeholder="명" style="font-size:16pt";>
										</div>

										<label class="col-md-3 control-label">여자</label>
										<div class="col-md-3">
											<input type="text" name="fmale1" class="form-control" id="per2" 
												placeholder="명" style="font-size:16pt";>
										</div>
									</div>
								</div>
								
								<label class="col-md-2 control-label"></label>
								<div class="col-md-10">
									<label class="checkbox-inline">인솔자 </label> <br />
									
									<div class="col-md-5" style="display: inline-flex;">
										<label class="col-md-3 control-label">남자</label>
										<div class="col-md-3">
											<input type="text" name="male2" class="form-control"
												placeholder="명" style="font-size:16pt";>
										</div>

										<label class="col-md-3 control-label">여자</label>
										<div class="col-md-3">
											<input type="text" name="fmale2" class="form-control"
												placeholder="명" style="font-size:16pt";>
										</div>
									</div>
								</div>
								
								<div class="col-md-5 control-label">
								<label class="checkbox-inline"> <span class="help-block " id="person1" >실인원 : 참여자+인솔자 </span> </label>
								<label class="checkbox-inline"> <span class="help-block person2">연인원 : 실인원×체류기간</span> </label>
								</div>
							</div>

					<hr>			
					<div class="form-group justify-content-center"  >
						<label class="col-md-2 control-label">지원사항</label>
						<div class="col-md-10">
							<label class="checkbox-wrap checkbox-success"> <input type="checkbox"
								name="support" id="support" value="1">프로그램<span class="checkmark"></span>
							</label> <label class="checkbox-wrap checkbox-success"> <input type="checkbox"
								name="support" id="support" value="2">숙박<span class="checkmark"></span>
							</label> <label class="checkbox-wrap checkbox-success"> <input type="checkbox"
								name="support" id="support" value="3">식사<span class="checkmark"></span>
							</label>
						</div>
					</div>
					
					<hr>
					<div class="form-group justify-content-center"  >
						<label class="col-md-2 control-label">수입구분</label>
						<div class="col-md-10">
							<label class="checkbox-wrap checkbox-success"> <input type="checkbox"
								name="income" id="income" value="1">사회공헌사업<span class="checkmark"></span>
							</label> <label class="checkbox-wrap checkbox-success"> <input type="checkbox"
								name="income" id="income" value="2">수익사업<span class="checkmark"></span>
							</label> 
						</div>
					</div>
					
					<hr>
					<div class="form-group justify-content-center"  >
						<label class="col-md-2 control-label">참가자유형</label>
						<div class="col-md-10">
							<label class="checkbox-wrap checkbox-success"> <input type="checkbox"
								name="participant" id="participant" value="1">아동청소년<span class="checkmark"></span>
							</label> <label class="checkbox-wrap checkbox-success"> <input type="checkbox"
								name="participant" id="participant" value="2">성인<span class="checkmark"></span>
							</label> <label class="checkbox-wrap checkbox-success"> <input type="checkbox"
								name="participant" id="participant" value="3">노인<span class="checkmark"></span>
							</label> <label class="checkbox-wrap checkbox-success"> <input type="checkbox"
								name="participant" id="participant" value="4">장애인<span class="checkmark"></span>
							</label> <label class="checkbox-wrap checkbox-success"> <input type="checkbox"
								name="participant" id="participant" value="5">가족<span class="checkmark"></span>
							</label> <label class="checkbox-wrap checkbox-success"> <input type="checkbox"
								name="participant" id="participant" value="6">저소득<span class="checkmark"></span>
							</label> <label class="checkbox-wrap checkbox-success"> <input type="checkbox"
								name="participant" id="participant" value="7">다문화<span class="checkmark"></span>
							</label>  <label class="checkbox-wrap checkbox-success"> <input type="checkbox"
								name="participant" id="participant" value="8">중독<span class="checkmark"></span>
							</label>  <label class="checkbox-wrap checkbox-success"> <input type="checkbox"
								name="participant" id="participant" value="9">기타(중복가능)<span class="checkmark"></span>
							</label>  
						</div>
					</div>
					
					<hr>
					<div class="form-group justify-content-center"  >
						<label class="col-md-2 control-label">사업목적</label>
						<div class="col-md-10">
							<label class="checkbox-wrap checkbox-success"> <input type="checkbox"
								name="business" id="business" value="1">사회공헌<span class="checkmark"></span>
							</label> <label class="checkbox-wrap checkbox-success"> <input type="checkbox"
								name="business" id="business" value="2">수익사업<span class="checkmark"></span>
							</label> <label class="checkbox-wrap checkbox-success"> <input type="checkbox"
								name="business" id="business" value="3">녹색자금<span class="checkmark"></span>
							</label> <label class="checkbox-wrap checkbox-success"> <input type="checkbox"
								name="business" id="business" value="4">산림복지바우처<span class="checkmark"></span>
							</label> <label class="checkbox-wrap checkbox-success"> <input type="checkbox"
								name="business" id="business" value="5">교직원<span class="checkmark"></span>
							</label> <label class="checkbox-wrap checkbox-success"> <input type="checkbox"
								name="business" id="business" value="6">기타<span class="checkmark"></span>
							</label> 
						</div>
					</div>
					
					<hr>
					<div class="form-group justify-content-center"  >
						<label class="col-md-2 control-label">서비스유형</label>
						<div class="col-md-10">
							<label class="checkbox-wrap checkbox-success"> <input type="checkbox"
								name="service" id="service" value="1">산림교육<span class="checkmark"></span>
							</label> <label class="checkbox-wrap checkbox-success"> <input type="checkbox"
								name="service" id="service" value="2">산림치유<span class="checkmark"></span>
							</label> <label class="checkbox-wrap checkbox-success"> <input type="checkbox"
								name="service" id="service" value="3">행위중독치유<span class="checkmark"></span>
							</label> <label class="checkbox-wrap checkbox-success"> <input type="checkbox"
								name="service" id="service" value="4">행위중독예방<span class="checkmark"></span>
							</label> <label class="checkbox-wrap checkbox-success"> <input type="checkbox"
								name="service" id="service" value="5">힐링<span class="checkmark"></span>
							</label> 
						</div>
					</div>
					
					
					<hr>
					<div class="form-group col-md-12">
						<label class="col-md-2 control-label">프로그램</label>
							<div class="col-md-3">
								<select class="form-control input-lg" name="program" style="border-radius: 5px; font-size:16pt;" >
									<option value="Id">인문</option>
									<option value="">음악</option>
									<option value="">미술</option>
									<option value="">요가명상</option>
									<option value="">동작</option>
									<option value="">자연치유</option>
									<option value="">예방교육</option>
									<option value="">산림교육</option>
									<option value="">산림치유</option>
									<option value="">이벤트</option>
									<option value="">지역</option>
									<option value="">신규</option>
									<option value="">기타</option>
								</select>
							</div>
						<label class="col-md-1 control-label">내부강사</label>
								<div class="col-md-1">
									<input type="text" name="male2" class="form-control" placeholder="명" style="font-size:16pt";>
								</div>

						<label class="col-md-1 control-label">외부강사</label>
								<div class="col-md-1">
									<input type="text" name="fmale2" class="form-control" placeholder="명" style="font-size:16pt";>
								</div>
								
								
				
			
		</div>
					
					
					
					<!-- form 끝 -->
					</form>
					</div>
				
				</div>
			</div>
		</div>

	</div>

	<!--/.main-->

	
	<script>
	
	per2.oninput = function(){
		
		var user1 = document.getElementById("per1").value;
		var user2 = document.getElementById("per2").value; 
		var total = parseInt(user1) + parseInt(user2);
		
		person1.innerHTML = "실인원 : " + total + "명";
	}
	
	

	
	
	
	</script>



</body>
</html>