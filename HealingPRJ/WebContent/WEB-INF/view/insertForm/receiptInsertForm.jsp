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
	<link href="https://fonts.googleapis.com/css?family=Montserrat:300,300i,400,400i,500,500i,600,600i,700,700i" rel="stylesheet">
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
</head>
<body>
	<!--/.sidebar Sart-->
	<%@ include file="/WEB-INF/view/top.jsp"%>
	<%@ include file="/WEB-INF/view/sidebar.jsp"%>
	<!--/.sidebar End-->
	
	<div class="col-sm-9 col-sm-offset-3 col-lg-10 col-lg-offset-2 main">
		<div class="row">
			<ol class="breadcrumb">
				<li><a href="#">
					<em class="fa fa-home"></em>
				</a></li>
				<li class="active">프로그램 결과 입력</li>
			</ol>
		</div><!--/.row-->
		
		<div class="row">
			<div class="col-lg-12">
				<h1 class="page-header">프로그램 결과 입력</h1>
			</div>
		</div><!--/.row-->
		
		
		
		
		<!--홍석민이 만들고 있음  -->
		<div class="row">
			<!-- 고르기 버튼 시작-->
			<!-- 고르기 버튼 시작-->
			<%@ include file="/WEB-INF/view/select.jsp"%>
			<!-- 고르기 버튼 끝 -->
			<div class="col-md-12">
				
				<div class="panel panel-default chat">
				
					<div class="panel-heading" style="display: flex;height: auto !important;flex-flow: row-reverse;">
						<!-- <p
							style="margin: 0; padding: 0 1rem; white-space: nowrap; text-overflow: ellipsis; overflow: hidden;">서비스환경
							만족도</p> -->
						<div
							style="padding: 0 1rem;flex-basis: auto;white-space: nowrap;align-self: center;">
							<input type="button" class="btn btn-success btn-sm" value="추가"
								onclick="add_div()"> 
								<input type="button"
								class="btn btn-default btn-sm" value="전송"
								onclick="action()">
						</div>
						
						<div style="flex: auto;padding: 0 1rem;flex-basis: auto;white-space: nowrap;display: inline-flex;overflow: hidden;">
							<h4 style="float : left; margin-right : 10px;">기관명</h4> 
							<div style="width: 120px;float: left;margin-right: 30px;flex: auto;padding: 0 1rem;flex-basis: auto;white-space: nowrap;max-width: 300px;">
								<input class="form-control" name='form-agency' placeholder="기관명">
							</div>
							
							<h4 style="float : left; margin-right : 10px;">실시일자</h4> 
							<div style="width: 140px; float: left; margin-right: 20px;">
								<input class="form-control" type="date" name='form-date'>
							</div>
							<h4 style="float : left; margin-right : 10px;">콘텐츠 종류</h4> 
							<div style="width: 120px; float: left; margin-right: 20px;">
								<select class="form-control" name="form-contents"style="height: 46px;">
									<option>게임</option>
									<option>도박</option>
									<option>SNS</option>
									<option>성인물</option>
									<option>웹툰/웹소설</option>
									<option>기타동영상</option>
									<option>기타</option>
								</select>
							</div>
							<h4 style="float : left; margin-right : 10px;">회기</h4> 
							<div style="width: 120px; float: left; margin-right: 10px;">
								<select class="form-control" name="form-eval"style="height: 46px;">
									<option>시작회기</option>
									<option>중간회기</option>
									<option>종결회기</option>
								</select>
							</div>
							<div style="width: 90px; float: left; margin-right: 10px;">
								<input class="form-control" name='form-time' placeholder="회당시간">
							</div>
							<div style="width: 90px; float: left;">
								<input class="form-control" name='form-bill' placeholder="월사용료">
							</div>
						</div>
					</div>
				
				
					<div class="panel-body" style="overflow-x: scroll; height: auto;">
						<!--  -->
						
						<div style="width: 5100px;height: 70px">
						
							<div style="width: 120px; float: left; margin-right: 10px; text-align: center; -webkit-text-emphasis-style: open;"><h4 style="font-weight: 600">이름</h4></div>
						
							<!--입력양식의 공통부분 -->
							<div style="width: 60px; float: left; margin-right: 10px; text-align: center; -webkit-text-emphasis-style: open;"><h4 style="font-weight: 600">성별</h4></div>
							<div style="width: 60px; float: left; margin-right: 10px; text-align: center; -webkit-text-emphasis-style: open;"><h4 style="font-weight: 600">연령</h4></div>
							<div style="width: 90px; float: left; margin-right: 10px; text-align: center; -webkit-text-emphasis-style: open;"><h4 style="font-weight: 600">거주지</h4></div>
							<div style="width: 120px; float: left; margin-right: 10px; text-align: center; -webkit-text-emphasis-style: open;"><h4 style="font-weight: 600">직업</h4></div>
							<!--입력양식의 공통부분 -->
							
							<div style="width: 120px; float: left; margin-right: 40px; text-align: center;"><h4 style="font-weight: 600">과거 상담/치유 서비스 경험</h4></div>
							<div style="width: 75px; float: left; margin-right: 93px; margin-left: 62px;text-align: center;-webkit-text-emphasis-style: open;"><h4 style="font-weight: 600">변화동기</h4></div>
							<div style="width: 75px; float: left; margin-right: 93px; margin-left: 62px;text-align: center;"><h4 style="font-weight: 600">신뢰<br>(라포)</h4></div>
							<div style="width: 75px; float: left; margin-right: 93px; margin-left: 62px;text-align: center;"><h4 style="font-weight: 600">서비스<br>이해</h4></div>
							<div style="width: 75px; float: left; margin-right: 93px; margin-left: 62px;text-align: center;-webkit-text-emphasis-style: open;"><h4 style="font-weight: 600">조절실패</h4></div>
							<div style="width: 75px; float: left; margin-right: 93px; margin-left: 62px;text-align: center;-webkit-text-emphasis-style: open;"><h4 style="font-weight: 600">현저성</h4></div>
							<div style="width: 75px; float: left; margin-right: 93px; margin-left: 62px;text-align: center;"><h4 style="font-weight: 600">문제적<br>결과</h4></div>
							<div style="width: 75px; float: left; margin-right: 93px; margin-left: 62px;text-align: center;"><h4 style="font-weight: 600">낮은자기<br>조절력</h4></div>
							<div style="width: 75px; float: left; margin-right: 93px; margin-left: 62px;text-align: center;-webkit-text-emphasis-style: open;"><h4 style="font-weight: 600">부정정서</h4></div>
							<div style="width: 75px; float: left; margin-right: 93px; margin-left: 62px;text-align: center;"><h4 style="font-weight: 600">편향된<br>신념</h4></div>
							<div style="width: 75px; float: left; margin-right: 93px; margin-left: 62px;text-align: center;"><h4 style="font-weight: 600">역기능적<br>자기도식</h4></div>
							<div style="width: 75px; float: left; margin-right: 93px; margin-left: 62px;text-align: center;"><h4 style="font-weight: 600">대인관계<br>기술부적</h4></div>
							<div style="width: 75px; float: left; margin-right: 93px; margin-left: 62px;text-align: center;"><h4 style="font-weight: 600">대인<br>민감성</h4></div>
							<div style="width: 75px; float: left; margin-right: 93px; margin-left: 62px;text-align: center;"><h4 style="font-weight: 600">관계/유능<br>욕구충족</h4></div>
							<div style="width: 75px; float: left; margin-right: 93px; margin-left: 62px;text-align: center;-webkit-text-emphasis-style: open;"><h4 style="font-weight: 600">긍정정서</h4></div>
							<div style="width: 75px; float: left; margin-right: 93px; margin-left: 62px;text-align: center;-webkit-text-emphasis-style: open;"><h4 style="font-weight: 600">삶의만족</h4></div>
							<div style="width: 75px; float: left; margin-right: 93px; margin-left: 62px;text-align: center;-webkit-text-emphasis-style: open;"><h4 style="font-weight: 600">자기이해</h4></div>
							<div style="width: 75px; float: left; margin-right: 93px; margin-left: 62px;text-align: center;-webkit-text-emphasis-style: open;"><h4 style="font-weight: 600">자기수용</h4></div>
							<div style="width: 75px; float: left; margin-right: 93px; margin-left: 62px;text-align: center;"><h4 style="font-weight: 600">마음관리<br>기술/기회</h4></div>
							<div style="width: 75px; float: left; margin-right: 93px; margin-left: 62px;text-align: center;"><h4 style="font-weight: 600">스마트폰<br>활용역량</h4></div>
				
						</div>                                                                           
						
						<!--  -->
					
						<!-- <div id="insertForm"> -->
						<%for(int i=0; i<20; i++)  { %>
						<div id="insertForm">
							<div style="width: 5100px; height: 60px;" name='form-main'>
							
							<!--  -->
							<div style="width: 120px; float: left; margin-right: 10px;">
								<input class="form-control" name='form-name' placeholder="이름">
							</div>
							<!--  -->
							<div style="width: 60px; float: left; margin-right: 10px;">
								<input class="form-control" name='form-sex' placeholder="성별">
							</div>
							<!--  -->
							<div style="width: 60px; float: left; margin-right: 10px;">
								<input class="form-control" name='form-age' placeholder="연령">
							</div>
							<div style="width: 90px; float: left; margin-right: 10px;">
								<select class="form-control" name='form-residence' style="height: 46px;">
									<option>서울</option>
									<option>부산</option>
									<option>대구</option>
									<option>인천</option>
									<option>광주</option>
									<option>대전</option>
									<option>울산</option>
									<option>세종</option>
									<option>경기</option>
									<option>강원</option>
									<option>충북</option>
									<option>충남</option>
									<option>전북</option>
									<option>전남</option>
									<option>경북</option>
									<option>경남</option>
									<option>제주</option>
								</select>
							</div>
							<!--  -->
							<div style="width: 120px; float: left; margin-right: 10px;">
								<select class="form-control" name='form-job' style="height: 46px;">
									<option>학생</option>
									<option>자영업</option>
									<option>서비스직</option>
									<option>판매영업직</option>
									<option>기능/생산직</option>
									<option>단순노무직</option>
									<option>고위공직</option>
									<option>임직원</option>
									<option>전문직</option>
									<option>일반사무직</option>
									<option>농림어업축산직</option>
									<option>주부</option>
									<option>무직</option>
									<option>기타</option>
								</select>
							</div>
							<!--  -->
							<div style="width: 120px; float: left; margin-right: 30px;">
								<input class="form-control" name='form-pastExp' placeholder="1=유  / 2=무">
							</div>
							<!--  -->
							<!--  -->
							<div style="width: 60px; float: left; margin-right: 10px;">
								<input class="form-control" name='form-score1-1' placeholder="사전">
							</div>
							
							<div style="width: 60px; float: left;margin-right: 10px;">
								<input class="form-control" name='form-score1-2' placeholder="중간">
							</div>
							
							<div style="width: 60px; float: left;margin-right: 30px;">
								<input class="form-control" name='form-score1-3' placeholder="종결">
							</div>
							<!--  -->
							<div style="width: 60px; float: left; margin-right: 10px;">
								<input class="form-control" name='form-score2-1' placeholder="사전">
							</div>
							
							<div style="width: 60px; float: left;margin-right: 10px;">
								<input class="form-control" name='form-score2-2' placeholder="중간">
							</div>
							<div style="width: 60px; float: left;margin-right: 30px;">
								<input class="form-control" name='form-score2-3' placeholder="종결">
							</div>
							<div style="width: 60px; float: left; margin-right: 10px;">
								<input class="form-control" name='form-score3-1' placeholder="사전">
							</div>
							<div style="width: 60px; float: left;margin-right: 10px;">
								<input class="form-control" name='form-score3-2' placeholder="중간">
							</div>
							<div style="width: 60px; float: left;margin-right: 30px;">
								<input class="form-control" name='form-score3-3' placeholder="종결">
							</div>
							<div style="width: 60px; float: left; margin-right: 10px;">
								<input class="form-control" name='form-score4-1' placeholder="사전">
							</div>
							<div style="width: 60px; float: left;margin-right: 10px;">
								<input class="form-control" name='form-score4-2' placeholder="중간">
							</div>
							<div style="width: 60px; float: left;margin-right: 30px;">
								<input class="form-control" name='form-score4-3' placeholder="종결">
							</div>
							<div style="width: 60px; float: left; margin-right: 10px;">
								<input class="form-control" name='form-score5-1' placeholder="사전">
							</div>
							<div style="width: 60px; float: left;margin-right: 10px;">
								<input class="form-control" name='form-score5-2' placeholder="중간">
							</div>
							<div style="width: 60px; float: left;margin-right: 30px;">
								<input class="form-control"  name='form-score5-3' placeholder="종결">
							</div>
							<div style="width: 60px; float: left; margin-right: 10px;">
								<input class="form-control"  name='form-score6-1' placeholder="사전">
							</div>
							<div style="width: 60px; float: left;margin-right: 10px;">
								<input class="form-control"  name='form-score6-2' placeholder="중간">
							</div>
							<div style="width: 60px; float: left;margin-right: 30px;">
								<input class="form-control"  name='form-score6-3' placeholder="종결">
							</div>
							<div style="width: 60px; float: left; margin-right: 10px;">
								<input class="form-control"  name='form-score7-1' placeholder="사전">
							</div>
							<div style="width: 60px; float: left;margin-right: 10px;">
								<input class="form-control"  name='form-score7-2' placeholder="중간">
							</div>
							<div style="width: 60px; float: left;margin-right: 30px;">
								<input class="form-control"  name='form-score7-3' placeholder="종결">
							</div>
							<div style="width: 60px; float: left; margin-right: 10px;">
								<input class="form-control"  name='form-score8-1' placeholder="사전">
							</div>
							<div style="width: 60px; float: left;margin-right: 10px;">
								<input class="form-control"  name='form-score8-2' placeholder="중간">
							</div>
							<div style="width: 60px; float: left;margin-right: 30px;">
								<input class="form-control"  name='form-score8-3' placeholder="종결">
							</div>
							<div style="width: 60px; float: left; margin-right: 10px;">
								<input class="form-control" name='form-score9-1' placeholder="사전">
							</div>
							<div style="width: 60px; float: left;margin-right: 10px;">
								<input class="form-control" name='form-score9-2' placeholder="중간">
							</div>
							<div style="width: 60px; float: left;margin-right: 30px;">
								<input class="form-control" name='form-score9-3' placeholder="종결">
							</div>
							<div style="width: 60px; float: left; margin-right: 10px;">
								<input class="form-control" name='form-score10-1' placeholder="사전">
							</div>
							<div style="width: 60px; float: left;margin-right: 10px;">
								<input class="form-control" name='form-score10-2' placeholder="중간">
							</div>
							<div style="width: 60px; float: left;margin-right: 30px;">
								<input class="form-control" name='form-score10-3' placeholder="종결">
							</div>
							<div style="width: 60px; float: left; margin-right: 10px;">
								<input class="form-control" name='form-score11-1' placeholder="사전">
							</div>
							<div style="width: 60px; float: left;margin-right: 10px;">
								<input class="form-control" name='form-score11-2' placeholder="중간">
							</div>
							<div style="width: 60px; float: left;margin-right: 30px;">
								<input class="form-control" name='form-score11-3' placeholder="종결">
							</div>
							<div style="width: 60px; float: left; margin-right: 10px;">
								<input class="form-control" name='form-score12-1' placeholder="사전">
							</div>
							<div style="width: 60px; float: left;margin-right: 10px;">
								<input class="form-control" name='form-score12-2' placeholder="중간">
							</div>
							<div style="width: 60px; float: left;margin-right: 30px;">
								<input class="form-control" name='form-score12-3' placeholder="종결">
							</div>
							<div style="width: 60px; float: left; margin-right: 10px;">
								<input class="form-control" name='form-score13-1' placeholder="사전">
							</div>
							<div style="width: 60px; float: left;margin-right: 10px;">
								<input class="form-control" name='form-score13-2' placeholder="중간">
							</div>
							<div style="width: 60px; float: left;margin-right: 30px;">
								<input class="form-control" name='form-score13-3' placeholder="종결">
							</div>
							<div style="width: 60px; float: left; margin-right: 10px;">
								<input class="form-control" name='form-score14-1' placeholder="사전">
							</div>
							<div style="width: 60px; float: left;margin-right: 10px;">
								<input class="form-control" name='form-score14-2' placeholder="중간">
							</div>
							<div style="width: 60px; float: left;margin-right: 30px;">
								<input class="form-control" name='form-score14-3' placeholder="종결">
							</div>
							<div style="width: 60px; float: left; margin-right: 10px;">
								<input class="form-control" name='form-score15-1' placeholder="사전">
							</div>
							<div style="width: 60px; float: left;margin-right: 10px;">
								<input class="form-control" name='form-score15-2' placeholder="중간">
							</div>
							<div style="width: 60px; float: left;margin-right: 30px;">
								<input class="form-control" name='form-score15-3' placeholder="종결">
							</div>
							<div style="width: 60px; float: left; margin-right: 10px;">
								<input class="form-control" name='form-score16-1' placeholder="사전">
							</div>
							<div style="width: 60px; float: left;margin-right: 10px;">
								<input class="form-control" name='form-score16-2' placeholder="중간">
							</div>
							<div style="width: 60px; float: left;margin-right: 30px;">
								<input class="form-control" name='form-score16-3' placeholder="종결">
							</div>
							<div style="width: 60px; float: left; margin-right: 10px;">
								<input class="form-control" name='form-score17-1' placeholder="사전">
							</div>
							<div style="width: 60px; float: left;margin-right: 10px;">
								<input class="form-control" name='form-score17-2' placeholder="중간">
							</div>
							<div style="width: 60px; float: left;margin-right: 30px;">
								<input class="form-control" name='form-score17-3' placeholder="종결">
							</div>
							<div style="width: 60px; float: left; margin-right: 10px;">
								<input class="form-control" name='form-score18-1' placeholder="사전">
							</div>
							<div style="width: 60px; float: left;margin-right: 10px;">
								<input class="form-control" name='form-score18-2' placeholder="중간">
							</div>
							<div style="width: 60px; float: left;margin-right: 30px;">
								<input class="form-control" name='form-score18-3' placeholder="종결">
							</div>
							<div style="width: 60px; float: left; margin-right: 10px;">
								<input class="form-control" name='form-score19-1' placeholder="사전">
							</div>
							<div style="width: 60px; float: left;margin-right: 10px;">
								<input class="form-control" name='form-score19-2' placeholder="중간">
							</div>
							<div style="width: 60px; float: left;margin-right: 30px;">
								<input class="form-control" name='form-score19-3' placeholder="종결">
							</div>
							<!--  -->
							</div>
						</div>
						<% }  %>
						<div id="field"></div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<script src="/lumino/js/jquery-1.11.1.min.js"></script>
	<script src="/lumino/js/bootstrap.min.js"></script>
	<script src="/lumino/js/chart.min.js"></script>
	<script src="/lumino/js/chart-data.js"></script>
	<script src="/lumino/js/easypiechart.js"></script>
	<script src="/lumino/js/easypiechart-data.js"></script>
	<script src="/lumino/js/bootstrap-datepicker.js"></script>
	<script src="/lumino/js/custom.js"></script>
	<script type="text/javascript">
		function add_div() {

			var div = document.createElement('div');

			div.innerHTML = document.getElementById('insertForm').innerHTML;

			document.getElementById('field').appendChild(div);

		}

		function remove_div(obj) {

			document.getElementById('field').removeChild(obj.parentNode);

		}
	</script>

	<!--  -->
	<script type="text/javascript">
	function action() {
		var param = {};
		
		let agency = document.getElementsByName('form-agency')[0].value;
		let date = document.getElementsByName('form-date')[0].value;
		let contents = document.getElementsByName('form-contents')[0].value;
		let session = document.getElementsByName('form-eval')[0].value + "/" +
					  document.getElementsByName('form-time')[0].value + "/" +
					  document.getElementsByName('form-bill')[0].value;
		
		let formArr = document.getElementsByName('form-main');
		
		  //유효성 검사
	      if(agency.trim() == '') {
	    	  alert('기관을 입력해주세요.');
	    	  return false;
	      } else if(date.trim() == '') { 
	    	  alert('실시일자를 입력해주세요.');
	    	  return false;
	      } else if(contents.trim() == '') { 
	    	  alert('참여프로그램을 입력해주세요.');
	    	  return false;
	      } else if(session.trim() == '') { 
	    	  alert('회기를 입력해주세요.');
	    	  return false;
	      }
		
		
		for(let i = 0; i < formArr.length; i++) {
			let name = document.getElementsByName('form-name')[i].value;
			let sex = document.getElementsByName('form-sex')[i].value;
			let age = document.getElementsByName('form-age')[i].value;
			let residence = document.getElementsByName('form-residence')[i].value;
			let job = document.getElementsByName('form-job')[i].value;
			let pastExp = document.getElementsByName('form-pastExp')[i].value;
			
			
			if(sex.trim() == '' && name.trim() == '') {
	       	 	
	         } else {
	        	 if(name.trim() == '') { 
	 	        	alert('이름을 입력해주세요.');
	 	        	console.log(i);
	 	       		return document.getElementsByName('form-name')[i].focus();
	        	 } else if(sex.trim() == '') { 
		 	        alert('성별을 입력해주세요.');
		 	        console.log(i);
		 	       	return document.getElementsByName('form-sex')[i].focus();
		        } else if(age.trim() == '') { 
		 	        alert('나이를 입력해주세요.');
		 	        console.log(i);
		 	       	return document.getElementsByName('form-age')[i].focus();
		        } else if(residence.trim() == '') { 
		 	        alert('거주지 입력해주세요.');
		 	        console.log(i);
		 	       	return document.getElementsByName('form-residence')[i].focus();
		        } else if(job.trim() == '') { 
		 	        alert('직업을 입력해주세요.');
		 	        console.log(i);
		 	       	return document.getElementsByName('form-job')[i].focus();
		        } else if(pastExp.trim() == '') { 
		 	        alert('과거 상담 서비스 경험을 입력해주세요.');
		 	        console.log(i);
		 	       	return document.getElementsByName('form-pastExp')[i].focus();
		        }
		         for(let j = 0; j < 19; j++) {
					for(let x = 1; x < 4; x++) {
						if(document.getElementsByName('form-score'+(j+1)+'-'+x)[i].value.trim() == '') { 
							alert('점수를 입력해주세요.');
							return document.getElementsByName('form-score'+(j+1)+'-'+x)[i].focus();
						}
						param['receiptDtoList['+i+'].scoreList['+j+']['+(x-1)+']'] = document.getElementsByName('form-score'+(j+1)+'-'+x)[i].value;
					}
				}
	         }
			 if(sex=="") {
				 break;
			 } else { 
				 param['receiptDtoList['+i+'].agency']=agency;
		         param['receiptDtoList['+i+'].date']=date; 
		         param['receiptDtoList['+i+'].contents']=contents; 
		         param['receiptDtoList['+i+'].session']=session; 
		         param['receiptDtoList['+i+'].name']=name; 
		         param['receiptDtoList['+i+'].sex']=sex;
		         param['receiptDtoList['+i+'].age']=age;
		         param['receiptDtoList['+i+'].residence']=residence;
		         param['receiptDtoList['+i+'].job']=job;
		         param['receiptDtoList['+i+'].pastExp']=pastExp;
			 }
		}
		 console.log(param);
	      $.ajax({
	         url: "/insertForm/receiptInsertForm/insertData.do",
	         type: "POST",
	         data: param, 
	         success:function(result) {
	            console.log(result);
	         },
	         error:function(e) {
	            console.log(e);
	         }
	      })
	}
	</script>
</body>
</html>