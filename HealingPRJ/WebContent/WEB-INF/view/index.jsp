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
						<form class="form-horizontal row-border" action="#">
							<div class="form-group">
								<label class="col-md-2 control-label">단체명</label>
								<div class="col-md-10">
									<input type="text" name="groupname" class="form-control"
										placeholder="직접입력">
								</div>
							</div>

							<div class="form-group">
								<label class="col-md-2 control-label">OM</label>
								<div class="col-md-10">
									<input type="text" name="om" class="form-control"
										placeholder="직접입력">
								</div>
							</div>

							<div class="form-group">
								<label class="col-md-2 control-label">참여일자</label>
								<div class="col-md-10">
									<input type="text" name="om" class="form-control"
										placeholder="직접입력">
								</div>
							</div>

							<div class="form-group">
								<label class="col-md-2 control-label">체류기간</label>
								<div class="col-md-10">
									<input type="text" name="om" class="form-control"
										placeholder="직접입력">
								</div>
							</div>
							
							<div class="form-group">
								<label class="col-md-2 control-label">거주지역</label>
								<div class="col-md-10">
									<select class="form-control input-lg" name="period" style="border-radius: 5px;">
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






							<div class="form-group">
								<label class="col-md-2 control-label">참여인원</label>
								<div class="col-md-10">
									<label class="checkbox-inline"><input type="checkbox"
										id="inlineCheckbox1" value="parti">참여자 </label> <label
										class="checkbox-inline"><input type="checkbox"
										id="inlineCheckbox1" value="lead">인솔자 </label>
								
							<div class="form-group">
								<div class="col-md-5" style="display:inline-flex;">
									<label class="col-md-3 control-label">남자</label>
									<div class="col-md-3">
										<input type="text" name="male" class="form-control" placeholder="명">
									</div>

									<label class="col-md-3 control-label">여자</label>
									<div class="col-md-3">
										<input type="text" name="fmale" class="form-control" placeholder="명">
									</div>
								</div>

									
								</div>
								<span class="help-block">실인원 : </span> <span class="help-block">참여인원
										: </span>
							</div>
							</div>
							
							
							<div class="form-group">
								<label class="col-md-2 control-label">지원사항</label>
								<div class="col-md-10">
							<label class="radio-inline">
								<input type="radio" name="optionsRadios" id="Radios1" value="option1" >프로그램
							</label>
							
							<label class="radio-inline">
								<input type="radio" name="optionsRadios" id="Radios2" value="option2" >숙박
							</label>
							
							<label class="radio-inline">
								<input type="radio" name="optionsRadios" id="Radios3" value="option3" >식사
							</label>
							
								</div>
							</div>



							<div class="panel-heading clearfix">Check boxes</div>
							<div class="panel-body">
								<label class="checkbox-inline"><input type="checkbox"
									id="inlineCheckbox1" value="option1" checked="">1 </label> <label
									class="checkbox-inline"> <input type="checkbox"
									id="inlineCheckbox2" value="option2">2
								</label> <label class="checkbox-inline"> <input type="checkbox"
									id="inlineCheckbox3" value="option3" disabled="">3
								</label>
							</div>



							<div class="form-group">
								<label class="col-md-2 control-label">Predefined value</label>
								<div class="col-md-10">
									<input type="text" name="regular" value="http://"
										class="form-control">
								</div>
							</div>
							<div class="form-group">
								<label class="col-md-2 control-label">Column sizing</label>
								<div class="col-md-10">
									<div class="row">
										<div class="col-xs-3">
											<input type="text" class="form-control"
												placeholder=".col-xs-3">
										</div>
										<div class="col-xs-5">
											<input type="text" class="form-control"
												placeholder=".col-xs-5">
										</div>
										<div class="col-xs-4">
											<input type="text" class="form-control"
												placeholder=".col-xs-4">
										</div>
									</div>
								</div>
							</div>

						</form>
					</div>
				</div>
			</div>

		</div>

	</div>
	<!--/.main-->

	<script src="/lumino/js/jquery-1.11.1.min.js"></script>
	<script src="/lumino/js/bootstrap.min.js"></script>
	<script src="/lumino/js/chart.min.js"></script>
	<script src="/lumino/js/chart-data.js"></script>
	<script src="/lumino/js/easypiechart.js"></script>
	<script src="/lumino/js/easypiechart-data.js"></script>
	<script src="/lumino/js/bootstrap-datepicker.js"></script>
	<script src="/lumino/js/custom.js"></script>




</body>
</html>