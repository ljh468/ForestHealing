<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

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
	<link href="https://fonts.googleapis.com/css?family=Montserrat:300,300i,400,400i,500,500i,600,600i,700,700i"
		rel="stylesheet">
	<!--[if lt IE 9]>
	<script src="js/html5shiv.js"></script>
	<script src="js/respond.min.js"></script>
	<![endif]-->



	<!-- 홍두표 - 나눔스퀘어 폰트 불러오기 -->
	<style>
		@import url(https://cdn.rawgit.com/moonspam/NanumSquare/master/nanumsquare.css);

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

	<!-- submit css -->
	<style>
		body,
		.button,
		.tick {
			display: flex;
			justify-content: center;
			align-items: center;
			font-family: sans-serif;
		}

		.button {
			width: 300px;
			height: 80px;
			background: #28a745;
			border-radius: 6px;
			transition: all .3s cubic-bezier(0.67, 0.17, 0.40, 0.83);
		}

		.button svg {
			transform: rotate(180deg);
			transition: all .5s;
		}

		.button__circle {
			width: 120px;
			height: 120px;
			background: mediumseagreen;
			border-radius: 50%;
			transform: rotate(-180deg);
		}

		.button:hover {
			cursor: pointer;
		}

		.tick {
			color: white;
			font-size: 2em;
			transition: all .9s;
		}
	</style>

</head>

<body>
	<%@ include file="/WEB-INF/view/top.jsp" %>
		<%@ include file="/WEB-INF/view/sidebar.jsp" %>

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
							<div class="panel-heading clearfix">프로그램 결과 입력</div>
							<div class="panel-body">

								<!-- form 시작 -->
								<div class="form-horizontal row-border">
									<div class="form-group justify-content-center">
										<label class="col-md-2 control-label">단체명</label>
										<div class="col-md-10">
											<input type="text" name="agency" class="form-control"
												placeholder="직접입력" style="font-size: 16pt;">
										</div>
									</div>
									<hr>
									<div class="form-group justify-content-center">
										<label class="col-md-2 control-label">OM</label>
										<div class="col-md-10">
											<input type="text" name="om" class="form-control" placeholder="직접입력"
												style="font-size: 16pt;">
										</div>
									</div>
									<hr>
									<div class="form-group justify-content-center">
										<label class="col-md-2 control-label">참여일자</label>
										<div class="col-md-10">
											<input type='date' name="openday" id="openday"
												style="font-size: 16pt" /> <input type='date' name="endday"
												id="endday" style="font-size: 16pt" />

										</div>
									</div>
									<hr>
									<div class="form-group justify-content-center">
										<label class="col-md-2 control-label">체류기간</label>
										<div class="col-md-10">
											<span class="help-block " id="tostay"></span>
										</div>
									</div>
									<hr>
									<div class="form-group justify-content-center">
										<label class="col-md-2 control-label">거주지역</label>
										<div class="col-md-10">
											<select class="form-control input-lg" name="residence" id="residence"
												style="border-radius: 5px;">
												<option value="서울">서울</option>
												<option value="인천">인천</option>
												<option value="세종">세종</option>
												<option value="부산">부산</option>
												<option value="대구">대구</option>
												<option value="광주">광주</option>
												<option value="대전">대전</option>
												<option value="울산">울산</option>
												<option value="경기">경기</option>
												<option value="강원">강원</option>
												<option value="충북">충북</option>
												<option value="충남">충남</option>
												<option value="경북">경북</option>
												<option value="경남">경남</option>
												<option value="전북">전북</option>
												<option value="전남">전남</option>
												<option value="제주">제주</option>
												<option value="폐광지역">폐광지역</option>
											</select>
										</div>
									</div>
									<hr>
									<div class="form-group justify-content-center">
										<label class="col-md-2 control-label">참여인원</label>
										<div class="col-md-10">
											<label class="checkbox-inline">참여자 </label> <br />

											<div class="col-md-5" style="display: inline-flex;">
												<label class="col-md-3 control-label">남자</label>
												<div class="col-md-3">
													<input type="text" name="part_man_cnt" class="form-control"
														id="per01" placeholder="명" style="font-size: 16pt">
												</div>

												<label class="col-md-3 control-label">여자</label>
												<div class="col-md-3">
													<input type="text" name="part_woman_cnt" class="form-control"
														id="per02" placeholder="명" style="font-size: 16pt">
												</div>
											</div>
										</div>

										<label class="col-md-2 control-label"></label>
										<div class="col-md-10">
											<label class="checkbox-inline">인솔자 </label> <br />

											<div class="col-md-5" style="display: inline-flex;">
												<label class="col-md-3 control-label">남자</label>
												<div class="col-md-3">
													<input type="text" name="lead_man_cnt" class="form-control"
														id="per03" placeholder="명" style="font-size: 16pt">
												</div>

												<label class="col-md-3 control-label">여자</label>
												<div class="col-md-3">
													<input type="text" name="lead_woman_cnt" class="form-control"
														id="per04" placeholder="명" style="font-size: 16pt">
												</div>
											</div>
										</div>

										<div class="col-md-5 control-label">
											<label class="checkbox-inline"> <span class="help-block "
													id="total_people">실인원 : 참여자+인솔자 </span>
											</label> <label class="checkbox-inline"> <span class="help-block"
													id="total_people_days">연인원 : 실인원×체류기간</span>
											</label>
										</div>
									</div>

									<hr>
									<div class="form-group justify-content-center">
										<label class="col-md-2 control-label">지원사항</label>
										<div class="col-md-10">
											<label class="checkbox-wrap checkbox-success"> <input type="checkbox"
													name="support" id="support" value="프로그램">프로그램<span
													class="checkmark"></span>
											</label> <label class="checkbox-wrap checkbox-success"> <input
													type="checkbox" name="support" id="support" value="숙박">숙박<span
													class="checkmark"></span>
											</label> <label class="checkbox-wrap checkbox-success"> <input
													type="checkbox" name="support" id="support" value="식사">식사<span
													class="checkmark"></span>
											</label> <label class="checkbox-wrap checkbox-success"> <input
													type="checkbox" name="support" id="support" value="해당없음">해당없음<span
													class="checkmark"></span>
											</label>
										</div>
									</div>

									<hr>
									<div class="form-group justify-content-center">
										<label class="col-md-2 control-label">수입구분</label>
										<div class="col-md-10">
											<label class="checkbox-wrap checkbox-success"> <input type="checkbox"
													name="income_type" id="income" value="사회공헌사업">사회공헌사업<span
													class="checkmark"></span>
											</label> <label class="checkbox-wrap checkbox-success"> <input
													type="checkbox" name="income_type" id="income"
													value="수익사업">수익사업<span class="checkmark"></span>
											</label>
										</div>
									</div>

									<hr>
									<div class="form-group justify-content-center">
										<label class="col-md-2 control-label">참가자유형</label>
										<div class="col-md-10">
											<label class="checkbox-wrap checkbox-success"> <input type="checkbox"
													name="part_type" id="participant" value="아동">아동<span
													class="checkmark"></span>
											</label> <label class="checkbox-wrap checkbox-success"> <input
													type="checkbox" name="part_type" id="participant"
													value="청소년">청소년<span class="checkmark"></span>
											</label> <label class="checkbox-wrap checkbox-success"> <input
													type="checkbox" name="part_type" id="participant"
													value="성인">성인<span class="checkmark"></span>
											</label> <label class="checkbox-wrap checkbox-success"> <input
													type="checkbox" name="part_type" id="participant"
													value="노인">노인<span class="checkmark"></span>
											</label> <label class="checkbox-wrap checkbox-success"> <input
													type="checkbox" name="part_type" id="participant"
													value="장애인">장애인<span class="checkmark"></span>
											</label> <label class="checkbox-wrap checkbox-success"> <input
													type="checkbox" name="part_type" id="participant"
													value="가족">가족<span class="checkmark"></span>
											</label> <label class="checkbox-wrap checkbox-success"> <input
													type="checkbox" name="part_type" id="participant"
													value="저소득">저소득<span class="checkmark"></span>
											</label> <label class="checkbox-wrap checkbox-success"> <input
													type="checkbox" name="part_type" id="participant"
													value="중독">중독<span class="checkmark"></span>
											</label> <label class="checkbox-wrap checkbox-success"> <input
													type="checkbox" name="part_type" id="participant"
													value="중독">중독<span class="checkmark"></span>
											</label> <label class="checkbox-wrap checkbox-success"> <input
													type="checkbox" name="part_type" id="participant"
													value="기타(중복가능)">기타(중복가능)<span class="checkmark"></span>
											</label> <label class="checkbox-wrap checkbox-success"> <input
													type="checkbox" name="part_type" id="participant"
													value="추가">추가<span class="checkmark"></span>
											</label> <label class="checkbox-wrap checkbox-success"> <input
													type="checkbox" name="part_type" id="participant"
													value="추가">추가<span class="checkmark"></span>
											</label>
										</div>
									</div>

									<hr>
									<div class="form-group justify-content-center">
										<label class="col-md-2 control-label">사업목적</label>
										<div class="col-md-10">
											<label class="checkbox-wrap checkbox-success"> <input type="checkbox"
													name="biz_purpose" id="business" value="사회공헌">사회공헌<span
													class="checkmark"></span>
											</label> <label class="checkbox-wrap checkbox-success"> <input
													type="checkbox" name="biz_purpose" id="business"
													value="수익사업">수익사업<span class="checkmark"></span>
											</label> <label class="checkbox-wrap checkbox-success"> <input
													type="checkbox" name="biz_purpose" id="business"
													value="녹색자금">녹색자금<span class="checkmark"></span>
											</label> <label class="checkbox-wrap checkbox-success"> <input
													type="checkbox" name="biz_purpose" id="business"
													value="산림복지바우처">산림복지바우처<span class="checkmark"></span>
											</label> <label class="checkbox-wrap checkbox-success"> <input
													type="checkbox" name="biz_purpose" id="business"
													value="교직원">교직원<span class="checkmark"></span>
											</label> <label class="checkbox-wrap checkbox-success"> <input
													type="checkbox" name="biz_purpose" id="business"
													value="기타">기타<span class="checkmark"></span>
											</label> <label class="checkbox-wrap checkbox-success"> <input
													type="checkbox" name="biz_purpose" id="business"
													value="추가">추가<span class="checkmark"></span>
											</label>
										</div>
									</div>

									<hr>
									<div class="form-group justify-content-center">
										<label class="col-md-2 control-label">서비스유형</label>
										<div class="col-md-10">
											<label class="checkbox-wrap checkbox-success"> <input type="checkbox"
													name="service_type" id="service" value="1">산림교육<span
													class="checkmark"></span>
											</label> <label class="checkbox-wrap checkbox-success"> <input
													type="checkbox" name="service_type" id="service"
													value="산림치유">산림치유<span class="checkmark"></span>
											</label> <label class="checkbox-wrap checkbox-success"> <input
													type="checkbox" name="service_type" id="service"
													value="행위중독치유">행위중독치유<span class="checkmark"></span>
											</label> <label class="checkbox-wrap checkbox-success"> <input
													type="checkbox" name="service_type" id="service"
													value="행위중독예방">행위중독예방<span class="checkmark"></span>
											</label> <label class="checkbox-wrap checkbox-success"> <input
													type="checkbox" name="service_type" id="service"
													value="힐링">힐링<span class="checkmark"></span>
											</label>
										</div>
									</div>
									<hr>
									<div id="test00">
										<div style="float: right; padding-right: 100px;">
											<span id="box1"><input type="button" value="추가"
													class="btn btn-primary btn-info btn-md"
													style="font-size: 18px;"></span> <span id="box2"><input
													type="button" value="삭제" class="btn btn-primary btn-info btn-md"
													style="font-size: 18px;"></span>
										</div>
										<div class="form-group justify-content-center" id="test">
											<label class="col-md-2 control-label">프로그램</label>
											<div class="col-md-3">
												<select class="form-control input-lg" name="program"
													style="border-radius: 5px; font-size: 15pt;">
													<option value="">선택</option>
													<option value="인문">인문</option>
													<option value="음악">음악</option>
													<option value="미술">미술</option>
													<option value="요가명상">요가명상</option>
													<option value="동작">동작</option>
													<option value="자연치유">자연치유</option>
													<option value="예방교육">예방교육</option>
													<option value="산림교육">산림교육</option>
													<option value="산림치유">산림치유</option>
													<option value="이벤트">이벤트</option>
													<option value="지역">지역</option>
													<option value="신규">신규</option>
													<option value="기타">기타</option>
												</select>
											</div>
											<label class="col-md-1 control-label">내부강사</label>
											<div class="col-md-1">
												<input type="text" name="in_tutor" class="form-control"
													placeholder="명" style="font-size: 16pt;">
											</div>

											<label class="col-md-1 control-label">외부강사</label>
											<div class="col-md-1">
												<input type="text" name="out_tutor" class="form-control"
													placeholder="명" style="font-size: 16pt;">
											</div>

										</div>


									</div>

									<hr>

									<div class="form-group justify-content-center">
										<label class="col-md-2 control-label">객실</label>
										<div class="col-md-10">
											<label class="checkbox-inline">참여자 </label> <br />

											<div class="col-md-5" style="display: inline-flex;">
												<label class="col-md-3 control-label">인원</label>
												<div class="col-md-3">
													<input type="text" name="room_part_people" class="form-control"
														id="room01" placeholder="명" style="font-size: 16pt;">
												</div>

												<label class="col-md-3 control-label">객실</label>
												<div class="col-md-3">
													<input type="text" name="room_part_room" class="form-control"
														id="room02" placeholder="객실" style="font-size: 16pt;">
												</div>
											</div>
										</div>

										<label class="col-md-2 control-label"></label>
										<div class="col-md-10">
											<label class="checkbox-inline">인솔자 </label> <br />

											<div class="col-md-5" style="display: inline-flex;">
												<label class="col-md-3 control-label">인원</label>
												<div class="col-md-3">
													<input type="text" name="room_lead_people" class="form-control"
														id="room03" placeholder="명" style="font-size: 16pt;">
												</div>

												<label class="col-md-3 control-label">객실</label>
												<div class="col-md-3">
													<input type="text" name="room_lead_room" class="form-control"
														id="room04" placeholder="객실" style="font-size: 16pt;">
												</div>
											</div>
										</div>

										<label class="col-md-2 control-label"></label>
										<div class="col-md-10">
											<label class="checkbox-inline">기타 </label> <br />

											<div class="col-md-5" style="display: inline-flex;">
												<label class="col-md-3 control-label">인원</label>
												<div class="col-md-3">
													<input type="text" name="room_etc_people" class="form-control"
														id="room05" placeholder="명" style="font-size: 16pt;">
												</div>

												<label class="col-md-3 control-label">객실</label>
												<div class="col-md-3">
													<input type="text" name="room_etc_room" class="form-control"
														id="room06" placeholder="객실" style="font-size: 16pt;">
												</div>
											</div>
										</div>

										<div class="col-md-5 control-label">
											<label class="checkbox-inline"> <span class="help-block "
													id="total_room_person"> 총인원 : </span>
											</label> <label class="checkbox-inline"> <span class="help-block"
													id="total_room_count"> 총객실 : </span>
											</label>
										</div>
									</div>
									<hr />

									<div class="form-group justify-content-center">
										<label class="col-md-2 control-label">식사</label>
										<div class="col-md-10">
											<label class="checkbox-wrap checkbox-success"> <input type="checkbox"
													name="meal_type" id="meal" value="1">1일 중식<span
													class="checkmark"></span>
											</label> <label class="checkbox-wrap checkbox-success"> <input
													type="checkbox" name="meal_type" id="meal" value="2">1일 석식<span
													class="checkmark"></span>
											</label> <label class="checkbox-wrap checkbox-success"> <input
													type="checkbox" name="meal_type" id="meal" value="3">2일 조식<span
													class="checkmark"></span>
											</label> <label class="checkbox-wrap checkbox-success"> <input
													type="checkbox" name="meal_type" id="meal" value="4">2일 중식<span
													class="checkmark"></span>
											</label> <label class="checkbox-wrap checkbox-success"> <input
													type="checkbox" name="meal_type" id="meal" value="5">2일 석식<span
													class="checkmark"></span>
											</label> <label class="checkbox-wrap checkbox-success"> <input
													type="checkbox" name="meal_type" id="meal" value="6">3일 조식<span
													class="checkmark"></span>
											</label> <label class="checkbox-wrap checkbox-success"> <input
													type="checkbox" name="meal_type" id="meal" value="7">3일 중식<span
													class="checkmark"></span>
											</label> <label class="checkbox-wrap checkbox-success"> <input
													type="checkbox" name="meal_type" id="meal" value="7">3일 석식<span
													class="checkmark"></span>
											</label> <label class="checkbox-wrap checkbox-success"> <input
													type="checkbox" name="meal_type" id="meal" value="8">기타<span
													class="checkmark"></span>
											</label>

										</div>

										<div class="form-group justify-content-center"
											style="display: inline-flex;">

											<label class="col-md-3 control-label"></label>

											<div class="col-md-2.5">
												<label class="checkbox-inline">참여자</label> <br />

												<div class="col-md-10" style="display: inline-flex;">
													<label class="col-md-4 control-label">인원</label>
													<div class="col-md-6">
														<input type="text" name="meal_part" class="form-control"
															id="room03" placeholder="명" style="font-size: 16pt;">
													</div>
												</div>
											</div>

											<div class="col-md-2.5">
												<label class="checkbox-inline">인솔자</label> <br />

												<div class="col-md-10" style="display: inline-flex;">
													<label class="col-md-4 control-label">인원</label>
													<div class="col-md-6">
														<input type="text" name="meal_lead" class="form-control"
															id="room03" placeholder="명" style="font-size: 16pt;">
													</div>
												</div>
											</div>

											<div class="col-md-2.5">
												<label class="checkbox-inline">기타</label> <br />

												<div class="col-md-10" style="display: inline-flex;">
													<label class="col-md-4 control-label">인원</label>
													<div class="col-md-6">
														<input type="text" name="meal_etc" class="form-control"
															id="room03" placeholder="명" style="font-size: 16pt;">
													</div>
												</div>
											</div>

										</div>
									</div>
									<hr />

									<div class="form-group justify-content-center">
										<label class="col-md-2 control-label">프로그램 만족도 </label> <label
											class="btn btn-default" style="margin-top: 10px;"> <input type="file"
												hidden="" name="program_facility_satisfaction">
										</label>
										<button type="button" class="btn btn-primary btn-info btn-md"
											style="font-size: 16px; margin-top: 10px;">Upload</button>
									</div>

									<div class="form-group justify-content-center">
										<label class="col-md-2 control-label">시설서비스 만족도 </label> <label
											class="btn btn-default" style="margin-top: 10px;"> <input type="file"
												hidden="" name="facility_satisfaction">
										</label>
										<button type="button" class="btn btn-primary btn-info btn-md"
											style="font-size: 16px; margin-top: 10px;">Upload</button>
									</div>

									<div class="form-group justify-content-center">
										<label class="col-md-2 control-label">상담&치유 서비스<br>효과평가</label> <label
											class="btn btn-default" style="margin-top: 10px;"> <input type="file"
												hidden="" name="counseling_effect">
										</label>
										<button type="button" class="btn btn-primary btn-info btn-md"
											style="font-size: 16px; margin-top: 10px;">Upload</button>
									</div>

									<div class="form-group justify-content-center">
										<label class="col-md-2 control-label">예방서비스<br>효과평가</label> <label
											class="btn btn-default" style="margin-top: 10px;"> <input type="file"
												hidden="" name="prevent_effect">
										</label>
										<button type="button" class="btn btn-primary btn-info btn-md"
											style="font-size: 16px; margin-top: 10px;">Upload</button>
									</div>

									<div class="form-group justify-content-center">
										<label class="col-md-2 control-label">힐링서비스<br>효과평가</label> <label
											class="btn btn-default" style="margin-top: 10px;"> <input type="file"
												hidden="" name="healing__effect">
										</label>
										<button type="button" class="btn btn-primary btn-info btn-md"
											style="font-size: 16px; margin-top: 10px;">Upload</button>
									</div>

									<div class="form-group justify-content-center">
										<label class="col-md-2 control-label">자율신경검사<br>효과평가 </label> <label
											class="btn btn-default" style="margin-top: 10px;"> <input type="file"
												hidden="" name="nervous_effect">
										</label>
										<button type="button" class="btn btn-primary btn-info btn-md"
											style="font-size: 16px; margin-top: 10px;">Upload</button>
									</div>
									<hr />
									<div class="form-group justify-content-center">
										<label class="col-md-2 control-label">프로그램 소감</label>
										<div class="col-md-10">
											<textarea id="story" name="program_opinion" class="form-control"
												style="font-size: 13pt" rows="7" cols="100"></textarea>
										</div>
									</div>
									<div class="form-group justify-content-center">
										<label class="col-md-2 control-label">시설서비스 소감</label>
										<div class="col-md-10">
											<textarea id="story" name="service_opinion" class="form-control"
												style="font-size: 13pt" rows="7" cols="100"></textarea>
										</div>
									</div>

									<div class="form-group justify-content-center">
										<label class="col-md-2 control-label">종합의견</label>
										<div class="col-md-10">
											<textarea id="story" name="overall_opinion" class="form-control"
												style="font-size: 13pt" rows="7" cols="100"></textarea>
										</div>
									</div>
									<hr />
									<div class="form-group justify-content-center">
										<label class="col-md-2 control-label">지출금액</label>
										<div class="col-md-10">
											<label class="checkbox-inline">강사 </label> <br />

											<div class="col-md-10" style="display: inline-flex;">
												<label class="col-md-3 control-label">강사비</label>
												<div class="col-md-4">
													<input type="text" name="" class="form-control" id=""
														placeholder="원" style="font-size: 16pt;">
												</div>

												<label class="col-md-3 control-label">교통비</label>
												<div class="col-md-4">
													<input type="text" name="" class="form-control" id=""
														placeholder="원" style="font-size: 16pt;">
												</div>

												<label class="col-md-3 control-label">식비</label>
												<div class="col-md-4">
													<input type="text" name="" class="form-control" id=""
														placeholder="원" style="font-size: 16pt;">
												</div>
											</div>
											<div class="col-md-6"
												style="display: inline-flex;margin-left: 10px;margin-top: 20px;">
												<label class="control-label col-md-4">세부내역</label>
												<textarea id="instructor_details" name="instructor_details"
													class="form-control col-md-3" style="font-size: 13pt" rows="2"
													cols="200"></textarea>
											</div>
										</div>
										<div>
											<hr />
										</div>
										<label class="col-md-2 control-label"></label>
										<div class="col-md-10">
											<label class="checkbox-inline">참가자 </label> <br />

											<div class="col-md-10" style="display: inline-flex;">
												<label class="col-md-3 control-label">숙박비</label>
												<div class="col-md-4">
													<input type="text" name="" class="form-control" id=""
														placeholder="원" style="font-size: 16pt;">
												</div>

												<label class="col-md-3 control-label">식비</label>
												<div class="col-md-4">
													<input type="text" name="" class="form-control" id=""
														placeholder="원" style="font-size: 16pt;">
												</div>

												<label class="col-md-3 control-label">재료비</label>
												<div class="col-md-4">
													<input type="text" name="" class="form-control" id=""
														placeholder="원" style="font-size: 16pt;">
												</div>
											</div>

											<div class="col-md-6"
												style="display: inline-flex;margin-left: 10px;margin-top: 20px;">
												<label class="control-label col-md-4">세부내역</label>
												<textarea id="instructor_details" name="instructor_details"
													class="form-control col-md-3" style="font-size: 13pt" rows="2"
													cols="200"></textarea>
											</div>
										</div>


										<div class="col-md-5 control-label">
											<label class="checkbox-inline"> <span class="help-block " id="">예비비
												</span>
											</label> <label class="checkbox-inline"> <span class="help-block"
													id="">합계</span>
											</label>
										</div>
									</div>
									<hr />
									<div class="form-group justify-content-center">
										<label class="col-md-2 control-label">수입금액</label>
										<div class="col-md-10">
											<label class="checkbox-inline col-md-8"> 프로그램 </label> <select
												class="form-control input-lg" name="income_program"
												style="border-radius: 5px; width: 534px; margin-left: 20px;">
												<option value="인문">인문</option>
												<option value="음악">음악</option>
												<option value="미술">미술</option>
												<option value="요가명상">요가명상</option>
												<option value="동작">동작</option>
												<option value="자연치유">자연치유</option>
												<option value="예방교육">예방교육</option>
												<option value="산림교육">산림교육</option>
												<option value="산림치유">산림치유</option>
												<option value="이벤트">이벤트</option>
												<option value="지역">지역</option>
												<option value="신규">신규</option>
												<option value="기타">기타</option>
											</select> <br />
											<div class="col-md-10" style="display: inline-flex;">
												<label class="col-md-3 control-label">숙박</label>
												<div class="col-md-4">
													<input type="text" name="" class="form-control" id=""
														placeholder="원" style="font-size: 16pt;">
												</div>

												<label class="col-md-3 control-label">식사</label>
												<div class="col-md-4">
													<input type="text" name="" class="form-control" id=""
														placeholder="원" style="font-size: 16pt;">
												</div>

												<label class="col-md-3 control-label">대관 및 기타</label>
												<div class="col-md-4">
													<input type="text" name="" class="form-control" id=""
														placeholder="원" style="font-size: 16pt;">
												</div>
											</div>
											<div class="col-md-6"
												style="display: inline-flex;margin-left: 13px;margin-top: 20px;">
												<label class="control-label col-md-4">세부내역</label>
												<textarea id="instructor_details" name="instructor_details"
													class="form-control col-md-3" style="font-size: 13pt" rows="2"
													cols="200"></textarea>
											</div>
										</div>

										<div class="col-md-5 control-label">
											<label class="checkbox-inline"> <span class="help-block "
													id="">합계</span>
											</label> <label class="checkbox-inline"> <span class="help-block"
													id="">최종금액</span>
											</label>
										</div>
									</div>
									<hr>
									<button class="button" style="margin: 0 auto;">
										<div class="container">
											<div class="tick"></div>
										</div>
									</button>
								</div>
								<!-- form 끝 -->
							</div>

						</div>
					</div>
				</div>

			</div>

</body>
<!-- 스크립트 -->
<script>

	// 참여일자 계산
	let L_TODAY = document.querySelector('#tostay');
	let days_to_stay = 0;
	endday.oninput = function () {

		var openday = document.getElementById("openday").valueAsDate.getTime();
		var endday = document.getElementById("endday").valueAsDate.getTime();
		console.log(openday);
		days_to_stay = ((endday-openday) / 1000 / 60 / 60 / 24) + 1;

		console.info(days_to_stay + "일")

		tostay.innerHTML = days_to_stay + "일";
	}

	// 참여인원 계산
	per04.oninput = function () {

		var user1 = document.getElementById("per01").value;
		var user2 = document.getElementById("per02").value;
		var user3 = document.getElementById("per03").value;
		var user4 = document.getElementById("per04").value;
		var total = parseInt(user1) + parseInt(user2) + parseInt(user3) + parseInt(user4);
		var yeartotal = L_TODAY.textContent.replace("일", "");
		console.info(total);
		total_people.innerHTML = "실인원 : " + total + "명";

		console.log(yeartotal);
		total_people_days.innerHTML = "연인원 : " + (total * yeartotal) + "명";
	}

	// 프로그램 추가 삭제 
	var count = 1;
	box1.onclick = function () {
		const box = document.getElementById("test00");
		const test = document.getElementById('test').innerHTML;
		const newP = document.createElement('div');
		newP.setAttribute("id", "test" + count);
		newP.setAttribute("class", "form-group justify-content-center");

		newP.innerHTML = test;
		box.appendChild(newP);
		count++;
	}
	
	box2.onclick = function () {

		var addedFormDiv = document.getElementById("test00");
		if (count > 1) { // 현재 폼이 두개 이상이면
			var addedDiv = document.getElementById("test" + (--count));
			// 마지막으로 생성된 폼의 ID를 통해 Div객체를 가져옴
			addedFormDiv.removeChild(addedDiv); // 폼 삭제 
		} else { // 마지막 폼만 남아있다면
			document.baseForm.reset(); // 폼 내용 삭제
		}

	}

	// 객실인원 계산
	room06.oninput = function () {

		var room01 = document.getElementById("room01").value;
		var room02 = document.getElementById("room02").value;
		var room03 = document.getElementById("room03").value;
		var room04 = document.getElementById("room04").value;
		var room05 = document.getElementById("room05").value;
		var room06 = document.getElementById("room06").value;

		var room_person = parseInt(room01) + parseInt(room03) + parseInt(room05);
		var room_count = parseInt(room02) + parseInt(room04) + parseInt(room06);
		console.log(total_room_person);
		console.log(total_room_count);
		total_room_person.innerHTML = "총인원 : " + room_person + "명";
		total_room_count.innerHTML = "총 객실 : " + room_count + "호";

	}

	
	// submit 버튼 
	let button = document.querySelector('.button');
	let buttonText = document.querySelector('.tick');
	
	const tickMark = "<svg width=\"58\" height=\"45\" viewBox=\"0 0 58 45\" xmlns=\"http://www.w3.org/2000/svg\"><path fill=\"#fff\" fill-rule=\"nonzero\" d=\"M19.11 44.64L.27 25.81l5.66-5.66 13.18 13.18L52.07.38l5.65 5.65\"/></svg>";

	buttonText.innerHTML = "저장";
	
	button.addEventListener('click', function () {
		
		if (buttonText.innerHTML !== "저장") {
			buttonText.innerHTML = "저장";
		} else if (buttonText.innerHTML === "저장") {
			buttonText.innerHTML = tickMark;
		}
		this.classList.toggle('button__circle');
		
		
		// 입력된 데이터를 object객체에 저장(BasicInfoDTO 내부 필드와 자동 매핑되도록 동일한 이름 사용)
		let object = {};
		
		// 체크박스에서 체크된 항목만 object객체 내 배열에 담는 함수 정의
		pushByCheckedBok = (name) => {
			let j = 0;
			document.getElementsByName(name).forEach(item => {
				if (item.checked) {
					object[name+'[' + (j++) + ']'] = item.parentNode.innerText;
				}
			})	
		}
	
		// input태그에 입력된 값을 object객체에 담는 함수 정의
		pushByInputName = (name) => {
			object[name]=document.getElementsByName(name)[0].value;
		}
		
		// 단체명
		pushByInputName('agency');
		
		// OM
		pushByInputName('om');
		
		// 참여일자(시작일,종료일)
		pushByInputName('openday');
		pushByInputName('endday');
		// 체류기간
		object['days_to_stay']=days_to_stay;
		
		// 거주지역
		object['residence'] = $("#residence option:checked").text();	//selectbox
		
		// 참여인원
		pushByInputName('part_man_cnt');	// 참여자_남자
		pushByInputName('part_woman_cnt');	// 참여자_여자
		pushByInputName('lead_man_cnt');	// 인솔자_남자
		pushByInputName('lead_woman_cnt');	// 인솔자_여자
		
		// 지원사항
		pushByCheckedBok('support');
		
		// 수입구분
		pushByCheckedBok('income_type');
		
		// 참가자유형
		pushByCheckedBok('part_type');
		
		// 사업목적
		pushByCheckedBok('biz_purpose');
		
		// 서비스유형
		pushByCheckedBok('service_type');
		
		// 프로그램 중복선택가능
		for (let i = 0; i < $('select[name="program"]').length; i++) {
			object['program_in_out[' + i + '].program'] = $('select[name="program"]').get(i).value;	//selectbox
			object['program_in_out[' + i + '].in_tutor'] = $('input[name="in_tutor"]').get(i).value;
			object['program_in_out[' + i + '].out_tutor'] = $('input[name="out_tutor"]').get(i).value;
		}
		
		// 객실
		pushByInputName('room_part_people');	// 참여자_인원
		pushByInputName('room_part_room');		// 참여자_객실
		pushByInputName('room_lead_people');	// 인솔자_인원
		pushByInputName('room_lead_room');		// 인솔자_객실
		pushByInputName('room_etc_people');		// 기타_인원
		pushByInputName('room_etc_room');		// 기타_객실
		
		// 식사
		pushByCheckedBok('meal_type');	// 식사 체크박스
		pushByInputName('meal_part');	// 참여자_인원
		pushByInputName('meal_lead');	// 인솔자_인원
		pushByInputName('meal_etc');	// 기타_인원
		
		// 프로그램 만족도 [파일첨부]
		// 시설서비스 만족도 [파일첨부]
		// 상담&치유 서비스 효과평가 [파일첨부]
		// 예방서비스 효과평가 [파일첨부]
		// 힐링서비스 효과평가 [파일첨부]
		// 자율신경검사 효과평가 [파일첨부]
		
		// 프로그램 소감 [텍스트]
		pushByInputName('program_opinion');
		// 시설서비스 소감 [텍스트]
		pushByInputName('service_opinion');
		// 종합의견 [텍스트]
		pushByInputName('overall_opinion');
		
		
		// 지출금액---------
		// 강사
		// 강사비 [숫자]
		// 교통비 [숫자]
		// 식비 [숫자]
		// 세부내역 [텍스트]
		
		// 참가자
		// 숙박비 [숫자]
		// 식비 [숫자]
		// 재료비 [숫자]
		// 세부내역 [텍스트]
		// 합계------------*/
		
		// 수입금액---------
		// 프로그램
		object['income_program'] = $("select[name=income_program] option:checked").text();	//selectbox
		// 숙박 [숫자]
		// 식사 [숫자]
		// 대관 및 기타 [숫자]
		// 세부내역 [텍스트]
		// 합계최종금액------*/
		


		// list[33].selectedOptions[0].innerText
		// list[33].type
		// document.getElementsByName('part_type').forEach((item,i)=> {
		// 	if(item.checked) {
		// 		object['part_type['+i+']'] = item.parentNode.innerText;
		// 		console.log(item.parentNode.innerText)
		// 	}
		// })
		

		console.table(object);
		// 프로그램 결과 데이터가 담긴 object객체를 컨트롤러로 전달 
		$.ajax({
			url: "/operate/insertOperateResultProc.do",
			method: "post",
			data: object,
			success: function (res) {
				console.log(res)
			},
			error: function (err) {
				console.log("fail")
			}
		})

	});


</script>

</html>