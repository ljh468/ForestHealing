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
							<div class="form-group justify-content-center">
								<label class="col-md-2 control-label">단체명</label>
								<div class="col-md-10">
									<input type="text" name="groupname" class="form-control"
										placeholder="직접입력" style="font-size:16pt";>
								</div>
							</div>
							<hr>
							<div class="form-group justify-content-center">
								<label class="col-md-2 control-label">OM</label>
								<div class="col-md-10">
									<input type="text" name="om" class="form-control"
										placeholder="직접입력" style="font-size:16pt";>
								</div>
							</div>
							<hr>
							<div class="form-group justify-content-center">
								<label class="col-md-2 control-label">참여일자</label>
								<div class="col-md-10">
									<input type='date' name="openday" id="openday" style="font-size:16pt";/>
									<input type='date' name="endday" id="endday" style="font-size:16pt";/>
										
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
										<option value="">폐광지역</option>
									</select>
								</div>
							</div>
							<hr>
							<div class="form-group justify-content-center" >
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
											<input type="text" name="male2" class="form-control" id="per3" 
												placeholder="명" style="font-size:16pt";>
										</div>

										<label class="col-md-3 control-label">여자</label>
										<div class="col-md-3">
											<input type="text" name="fmale2" class="form-control" id="per4" 
												placeholder="명" style="font-size:16pt";>
										</div>
									</div>
								</div>
								
								<div class="col-md-5 control-label">
								<label class="checkbox-inline"> <span class="help-block " id="person1" >실인원 : 참여자+인솔자 </span> </label>
								<label class="checkbox-inline"> <span class="help-block"  id="person2">연인원 : 실인원×체류기간</span> </label>
								</div>
							</div>

					<hr>			
					<div class="form-group justify-content-center"  >
						<label class="col-md-2 control-label">지원사항</label>
						<div class="col-md-10">
							<label class="checkbox-wrap checkbox-success"> 
							<input type="checkbox" name="support" id="support" value="1">프로그램<span class="checkmark"></span>
							</label> <label class="checkbox-wrap checkbox-success"> 
							<input type="checkbox" name="support" id="support" value="2">숙박<span class="checkmark"></span>
							</label> <label class="checkbox-wrap checkbox-success"> 
							<input type="checkbox" name="support" id="support" value="3">식사<span class="checkmark"></span>
							</label> <label class="checkbox-wrap checkbox-success"> 
							<input type="checkbox" name="support" id="support" value="4">해당없음<span class="checkmark"></span>
							</label> <label class="checkbox-wrap checkbox-success"> 
							<input type="checkbox" name="support" id="support" value="5">기타<span class="checkmark"></span>
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
								name="participant" id="participant" value="1">아동<span class="checkmark"></span>
							</label> <label class="checkbox-wrap checkbox-success"> <input type="checkbox"
								name="participant" id="participant" value="2">청소년<span class="checkmark"></span>
							</label> <label class="checkbox-wrap checkbox-success"> <input type="checkbox"
								name="participant" id="participant" value="3">성인<span class="checkmark"></span>
							</label> <label class="checkbox-wrap checkbox-success"> <input type="checkbox"
								name="participant" id="participant" value="4">노인<span class="checkmark"></span>
							</label> <label class="checkbox-wrap checkbox-success"> <input type="checkbox"
								name="participant" id="participant" value="5">장애인<span class="checkmark"></span>
							</label> <label class="checkbox-wrap checkbox-success"> <input type="checkbox"
								name="participant" id="participant" value="6">가족<span class="checkmark"></span>
							</label> <label class="checkbox-wrap checkbox-success"> <input type="checkbox"
								name="participant" id="participant" value="7">저소득<span class="checkmark"></span>
							</label> <label class="checkbox-wrap checkbox-success"> <input type="checkbox"
								name="participant" id="participant" value="8">다문화<span class="checkmark"></span>
							</label>  <label class="checkbox-wrap checkbox-success"> <input type="checkbox"
								name="participant" id="participant" value="9">중독<span class="checkmark"></span>
							</label>  <label class="checkbox-wrap checkbox-success"> <input type="checkbox"
								name="participant" id="participant" value="10">기타(중복가능)<span class="checkmark"></span>
							</label>  <label class="checkbox-wrap checkbox-success"> <input type="checkbox"
								name="participant" id="participant" value="11">추가<span class="checkmark"></span>
							</label>  <label class="checkbox-wrap checkbox-success"> <input type="checkbox"
								name="participant" id="participant" value="12">추가<span class="checkmark"></span>
							</label>  <label class="checkbox-wrap checkbox-success"> <input type="checkbox"
								name="participant" id="participant" value="13">추가<span class="checkmark"></span>
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
					<div id="test00" >
					<div class="form-group justify-content-center" id="test" >
						<label class="col-md-2 control-label">프로그램</label>
							<div class="col-md-3">
								<select class="form-control input-lg" name="program" style="border-radius: 5px; font-size:16pt; ">
									<option value="humanities">인문</option>
									<option value="music">음악</option>
									<option value="art">미술</option>
									<option value="yoga">요가명상</option>
									<option value="movement">동작</option>
									<option value="natural">자연치유</option>
									<option value="prevent">예방교육</option>
									<option value="forestedu">산림교육</option>
									<option value="forestcure">산림치유</option>
									<option value="event">이벤트</option>
									<option value="area">지역</option>
									<option value="new">신규</option>
									<option value="etc">기타</option>
								</select>
							</div>
						<label class="col-md-1 control-label">내부강사</label>
								<div class="col-md-1">
									<input type="text" name="instructor" class="form-control" placeholder="명" style="font-size:16pt";>
								</div>

						<label class="col-md-1 control-label">외부강사</label>
								<div class="col-md-1">
									<input type="text" name="outstructor" class="form-control" placeholder="명" style="font-size:16pt";>
								</div>
							
					</div>
					<span id="box1" ><input type="button" value="추가" class="btn btn-primary btn-info btn-md" style="font-size: 18px;"></span>
					<span id="box2" ><input type="button" value="삭제" class="btn btn-primary btn-info btn-md" style="font-size: 18px;"></span>
					
					</div>
					
					<hr>
										
					<div class="form-group justify-content-center" >
								<label class="col-md-2 control-label">객실</label>
								<div class="col-md-10">
									<label class="checkbox-inline">참여자 </label> <br />
									
									<div class="col-md-5" style="display: inline-flex;">
										<label class="col-md-3 control-label">인원</label>
										<div class="col-md-3">
											<input type="text" name="parti_person_count" class="form-control" id="per1"
												placeholder="명" style="font-size:16pt";>
										</div>

										<label class="col-md-3 control-label">객실</label>
										<div class="col-md-3">
											<input type="text" name="parti_room_count" class="form-control" id="per2" 
												placeholder="명" style="font-size:16pt";>
										</div>
									</div>
								</div>
			
								<label class="col-md-2 control-label"></label>
								<div class="col-md-10">
									<label class="checkbox-inline">인솔자 </label> <br />
									
									<div class="col-md-5" style="display: inline-flex;">
										<label class="col-md-3 control-label">인원</label>
										<div class="col-md-3">
											<input type="text" name="leader_person_count" class="form-control" id="per3" 
												placeholder="명" style="font-size:16pt";>
										</div>

										<label class="col-md-3 control-label">객실</label>
										<div class="col-md-3">
											<input type="text" name="leader_room_count" class="form-control" id="per4" 
												placeholder="명" style="font-size:16pt";>
										</div>
									</div>
								</div>
								
								<label class="col-md-2 control-label"></label>
								<div class="col-md-10">
									<label class="checkbox-inline">기타 </label> <br />
									
									<div class="col-md-5" style="display: inline-flex;">
										<label class="col-md-3 control-label">인원</label>
										<div class="col-md-3">
											<input type="text" name="etc_person_conut" class="form-control" id="per3" 
												placeholder="명" style="font-size:16pt";>
										</div>

										<label class="col-md-3 control-label">객실</label>
										<div class="col-md-3">
											<input type="text" name="etc_room_conut" class="form-control" id="per4" 
												placeholder="명" style="font-size:16pt";>
										</div>
									</div>
								</div>
								
								<div class="col-md-5 control-label">
								<label class="checkbox-inline"> <span class="help-block " id="personcount" > 총인원 :  </span> </label>
								<label class="checkbox-inline"> <span class="help-block"  id="person2"> 총객실 : </span> </label>
								</div>
							</div>
					
					<div class="form-group justify-content-center"  >
						<label class="col-md-2 control-label">식사</label>
						<div class="col-md-10">
							<label class="checkbox-wrap checkbox-success"> <input type="checkbox"
								name="meal" id="meal" value="1">1일 중식<span class="checkmark"></span>
							</label> <label class="checkbox-wrap checkbox-success"> <input type="checkbox"
								name="meal" id="meal" value="2">1일 석식<span class="checkmark"></span>
							</label> <label class="checkbox-wrap checkbox-success"> <input type="checkbox"
								name="meal" id="meal" value="3">2일 조식<span class="checkmark"></span>
							</label> <label class="checkbox-wrap checkbox-success"> <input type="checkbox"
								name="meal" id="meal" value="4">2일 중식<span class="checkmark"></span>
							</label> <label class="checkbox-wrap checkbox-success"> <input type="checkbox"
								name="meal" id="meal" value="5">2일 석식<span class="checkmark"></span>
							</label> <label class="checkbox-wrap checkbox-success"> <input type="checkbox"
								name="meal" id="meal" value="6">3일 조식<span class="checkmark"></span>
							</label> <label class="checkbox-wrap checkbox-success"> <input type="checkbox"
							name="meal" id="meal" value="7">3일 중식<span class="checkmark"></span>
							</label> <label class="checkbox-wrap checkbox-success"> <input type="checkbox"
								name="meal" id="meal" value="7">3일 석식<span class="checkmark"></span>
							</label> <label class="checkbox-wrap checkbox-success"> <input type="checkbox"
								name="meal" id="meal" value="8">기타<span class="checkmark"></span>
							</label> 
						</div>
					</div>
					<hr/>
					
					<div class="form-group justify-content-center">
							<label class="col-md-2 control-label">프로그램 만족도 </label>
							<label class="btn btn-default">
								<input type="file" hidden="" name="program_facility_satisfaction">
							</label>
							<button type="button" class="btn btn-primary btn-info btn-md" style="font-size: 16px;">Upload</button>
					</div>
					
					<div class="form-group justify-content-center">
							<label class="col-md-2 control-label">시설서비스 만족도 </label>
							<label class="btn btn-default">
								<input type="file" hidden="" name="facility_satisfaction">
							</label>
							<button type="button" class="btn btn-primary btn-info btn-md" style="font-size: 16px;">Upload</button>
					</div>
					
					<div class="form-group justify-content-center">
								<label class="col-md-2 control-label">상담&치유 서비스 효과평가</label>
								<label class="btn btn-default">
								<input type="file" hidden="" name="counseling_effect">
							</label>
							<button type="button" class="btn btn-primary btn-info btn-md" style="font-size: 16px;">Upload</button>
					</div>
					
					<div class="form-group justify-content-center">
								<label class="col-md-2 control-label">예방서비스 효과평가</label>
								<label class="btn btn-default">
								<input type="file" hidden="" name="prevent_effect">
							</label>
							<button type="button" class="btn btn-primary btn-info btn-md" style="font-size: 16px;">Upload</button>
					</div>
					
					<div class="form-group justify-content-center">
								<label class="col-md-2 control-label">힐링서비스 효과평가</label>
								<label class="btn btn-default">
								<input type="file" hidden="" name="healing__effect">
							</label>
							<button type="button" class="btn btn-primary btn-info btn-md" style="font-size: 16px;">Upload</button>
					</div>

					<div class="form-group justify-content-center">
								<label class="col-md-2 control-label">자율신경검사 효과평가 </label>
								<label class="btn btn-default">
								<input type="file" hidden="" name="nervous_effect">
							</label>
							<button type="button" class="btn btn-primary btn-info btn-md" style="font-size: 16px;">Upload</button>
					</div>
					<hr />
					<div class="form-group justify-content-center">
								<label class="col-md-2 control-label">소감</label>
								<div class="col-md-10">
									<textarea id="story" name="story" class="form-control" style="font-size:13pt" rows="7" cols="100"></textarea>
								</div>
								
								
								
					</div>
					
					<div class="form-group justify-content-center">
								<label class="col-md-2 control-label">종합의견</label>
								<div class="col-md-10">
									<textarea id="story" name="story" class="form-control" style="font-size:13pt" rows="4" cols="100"></textarea>
								</div>
					</div>
					
					<div class="form-group justify-content-center">
								<label class="col-md-2 control-label">지출금액</label>
								<div class="col-md-10">
									<textarea id="story" name="story" class="form-control" style="font-size:13pt" rows="2" cols="100"></textarea>
								</div>
					</div>
					
					<div class="form-group justify-content-center">
								<label class="col-md-2 control-label">수입금액</label>
								<div class="col-md-10">
									<textarea id="story" name="story" class="form-control" style="font-size:13pt" rows="2" cols="100"></textarea>
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
	
	let L_TODAY = document.querySelector('#tostay');

	endday.oninput = function(){
		
		var openday = document.getElementById("openday").valueAsDate.getTime();
		var endday = document.getElementById("endday").valueAsDate.getTime();
		console.log(openday);
		var day = (endday-openday)/1000/60/60/24+1;
		
		console.info("abc")
		
		tostay.innerHTML = day + "일";
	}

	
	per4.oninput = function(){
		
		var user1 = document.getElementById("per1").value;
		var user2 = document.getElementById("per2").value;
		var user3 = document.getElementById("per3").value;
		var user4 = document.getElementById("per4").value;
		var total = parseInt(user1) + parseInt(user2) + parseInt(user3) + parseInt(user4);
		var yeartotal = L_TODAY.textContent.replace("일","");
		console.info(total);
		person1.innerHTML = "실인원 : " + total + "명";
		
		console.log(yeartotal);
		person2.innerHTML = "연인원 : " + (total * yeartotal) + "명";
	}
	
	var count = 1;
	box1.onclick = function() {
         const box = document.getElementById("test00");
         const test = document.getElementById('test').innerHTML;
         const newP = document.createElement('div');
         newP.setAttribute("id", "test"+count);
         newP.setAttribute("class","form-group justify-content-center");
    
         newP.innerHTML = test;
         box.appendChild(newP);
         count ++;
	}
	box2.onclick = function() {

         var addedFormDiv = document.getElementById("test00");
         if(count >1){ // 현재 폼이 두개 이상이면
                    var addedDiv = document.getElementById("test"+(--count));
                    // 마지막으로 생성된 폼의 ID를 통해 Div객체를 가져옴
                    addedFormDiv.removeChild(addedDiv); // 폼 삭제 
         }else{ // 마지막 폼만 남아있다면
                    document.baseForm.reset(); // 폼 내용 삭제
         }

    }
	</script>

</body>
</html>