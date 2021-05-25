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
	<link href="https://fonts.googleapis.com/css?family=Montserrat:300,300i,400,400i,500,500i,600,600i,700,700i" rel="stylesheet">
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
			<div class="col-md-12">
			<div class="col-md-3">
				<div class="form-group">
					<label>입력양식</label>
					<select class="form-control">
						<option>서비스환경 만족도</option>
						<option>프로그램 만족도</option>
						<option>예방서비스 효과평가</option>
						<option>힐링서비스 효과평가</option>
					</select>
				</div>
			</div>
			<!-- 고르기 버튼 끝 -->
			</div>
		</div>
			
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
							<div style="width: 160px; float: left; margin-right: 30px;">
								<input class="form-control" type="date" name='form-date'>
							</div>
							
							<h4 style="float : left; margin-right : 10px;">참여프로그램</h4> 
							<div style="width: 120px; float: left;">
								<select class="form-control" name="form-ptcProgram"style="height: 46px;">
									<option>당일형</option>
									<option>1박2일형</option>
									<option>2박3일형</option>
								</select>
							</div>
							<h4 style="float : left; margin-right : 10px;">프로그램명</h4> 
							<div style="width: 120px;float: left;margin-right: 30px;flex: auto;padding: 0 1rem;flex-basis: auto;white-space: nowrap;max-width: 300px;">
								<input class="form-control" name='form-programName' placeholder="프로그램명">
							</div>
							<h4 style="float : left; margin-right : 10px;">강사명</h4> 
							<div style="width: 120px;float: left;margin-right: 30px;flex: auto;padding: 0 1rem;flex-basis: auto;white-space: nowrap;max-width: 300px;">
								<input class="form-control" name='form-teacher' placeholder="강사명">
							</div>
							<h4 style="float : left; margin-right : 10px;">장소</h4> 
							<div style="width: 120px;float: left;margin-right: 30px;flex: auto;padding: 0 1rem;flex-basis: auto;white-space: nowrap;max-width: 300px;">
								<input class="form-control" name='form-place' placeholder="장소">
							</div>
						</div>
					</div>
				
				
					<div class="panel-body" style="overflow-x: scroll; height: auto;">
						<!--  -->
						<div style="width: 1400px; height: 70px">
							<div
								style="width: 60px; float: left; margin-right: 10px; text-align: center; -webkit-text-emphasis-style: open;">
								<h4 style="font-weight: 600">성별</h4>
							</div>
							<div
								style="width: 60px; float: left; margin-right: 10px; text-align: center; -webkit-text-emphasis-style: open;">
								<h4 style="font-weight: 600">연령</h4>
							</div>
							<div
								style="width: 90px; float: left; margin-right: 10px; text-align: center; -webkit-text-emphasis-style: open;">
								<h4 style="font-weight: 600">거주지</h4>
							</div>
							<div
								style="width: 120px; float: left; margin-right: 10px; text-align: center; -webkit-text-emphasis-style: open;">
								<h4 style="font-weight: 600">직업</h4>
							</div>
							<div
								style="width: 60px; float: left; margin-right: 20px; text-align: center;">
								<h4 style="font-weight: 600">
									강사<br>(문항1)
								</h4>
							</div>
							<div
								style="width: 60px; float: left; margin-right: 20px; text-align: center;">
								<h4 style="font-weight: 600">
									강사<br>(문항2)
								</h4>
							</div>
							<div
								style="width: 60px; float: left; margin-right: 20px; text-align: center">
								<h4 style="font-weight: 600">
									강사<br>(문항3)
								</h4>
							</div>
							<div
								style="width: 75px; float: left; margin-right: 20px; text-align: center">
								<h4 style="font-weight: 600">
									구성/품질<br>(문항4)
								</h4>
							</div>
							<div
								style="width: 75px; float: left; margin-right: 20px; text-align: center">
								<h4 style="font-weight: 600">
									구성/품질<br>(문항5)
								</h4>
							</div>
							<div
								style="width: 75px; float: left; margin-right: 20px; text-align: center">
								<h4 style="font-weight: 600">
									구성/품질<br>(문항6)
								</h4>
							</div>
							<div
								style="width: 60px; float: left; margin-right: 20px; text-align: center">
								<h4 style="font-weight: 600">
									효과성<br>(문항7)
								</h4>
							</div>
							<div
								style="width: 60px; float: left; margin-right: 20px; text-align: center">
								<h4 style="font-weight: 600">
									효과성<br>(문항8)
								</h4>
							</div>
							<div
								style="width: 60px; float: left; margin-right: 20px; text-align: center">
								<h4 style="font-weight: 600">
									효과성<br>(문항9)
								</h4>
							</div>
							<div
								style="width: 140px; float: left; margin-right: 20px; text-align: center; -webkit-text-emphasis-style: open;">
								<h4 style="font-weight: 600">기타의견</h4>
							</div>
						</div>
						
						<%
							for(int i=0; i<20; i++)  { 
						%>
						
						<div style="width: 1400px; height: 60px;" name="form-main">
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
							<div style="width: 60px; float: left; margin-right: 20px;">
								<input class="form-control" name='form-score1' placeholder="점수">
							</div>
							<div style="width: 60px; float: left;margin-right: 20px;">
								<input class="form-control" name='form-score2' placeholder="점수">
							</div>
							<div style="width: 60px; float: left;margin-right: 20px;">
								<input class="form-control" name='form-score3' placeholder="점수">
							</div>
							<div style="width: 60px; float: left;margin-right: 27px;margin-left: 8px;">
								<input class="form-control" name='form-score4' placeholder="점수">
							</div>
							<div style="width: 60px; float: left; margin-right: 27px;margin-left: 8px;">
								<input class="form-control" name='form-score5' placeholder="점수">
							</div>
							<div style="width: 60px; float: left; margin-right: 27px;margin-left: 8px;">
								<input class="form-control" name='form-score6' placeholder="점수">
							</div>
							<div style="width: 60px; float: left; margin-right: 20px;">
								<input class="form-control" name='form-score7' placeholder="점수">
							</div>
							<div style="width: 60px; float: left;margin-right: 20px;">
								<input class="form-control" name='form-score8' placeholder="점수">
							</div>
							<div style="width: 60px; float: left;margin-right: 20px;">
								<input class="form-control" name='form-score9' placeholder="점수">
							</div>
							<div style="width: 140px; float: left; margin-right: 10px; margin-left: 10px">
								<input class="form-control" name='form-opinion1' placeholder="기타의견">
							</div>
						</div>
						<% }  %>
					<!-- </div> -->
					
				<div id="field"></div>
						<!--  -->
						
				</div>
				</div>
				
			</div>
				
		</div>
		<!--  -->
		
		
		
		<!--test구간  -->

		<!--  -->
		<!--/.main-->
	
	<script src="/lumino/js/jquery-1.11.1.min.js"></script>
	<script src="/lumino/js/bootstrap.min.js"></script>
	<script src="/lumino/js/chart.min.js"></script>
	<script src="/lumino/js/chart-data.js"></script>
	<script src="/lumino/js/easypiechart.js"></script>
	<script src="/lumino/js/easypiechart-data.js"></script>
	<script src="/lumino/js/bootstrap-datepicker.js"></script>
	<script src="/lumino/js/custom.js"></script>
	
	
	<!--홍석민 버튼 활성화 비활성화 -->

	<script type="text/javascript">
		var insertBtn = document.getElementById('insertInfo');
		var loadBtn = document.getElementById('loadExcel');
		
		function btn_insertInfo() {
			if(insertBtn.disabled==false) {
				loadBtn.disabled = false;
				insertBtn.disabled = 'disabled';		
			}
		}
		function btn_loadExcel() {
			if(loadBtn.disabled==false) {
				insertBtn.disabled = false;
				loadBtn.disabled = 'disabled';	
			}
		}

		
	</script>
	
	
	<!--test구간  -->

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
		let ptcProgram = document.getElementsByName('form-ptcProgram')[0].value;
		let programName = document.getElementsByName('form-programName')[0].value;
		let teacher = document.getElementsByName('form-teacher')[0].value;
		let place = document.getElementsByName('form-place')[0].value;
		
		let formArr = document.getElementsByName('form-main');
		
		for(let i = 0; i < formArr.length; i++) {
			let sex = document.getElementsByName('form-sex')[i].value;
			let age = document.getElementsByName('form-age')[i].value;
			let residence = document.getElementsByName('form-residence')[i].value;
			let job = document.getElementsByName('form-job')[i].value;
 			let score1 = document.getElementsByName('form-score1')[i].value;
			let score2 = document.getElementsByName('form-score2')[i].value;
			let score3 = document.getElementsByName('form-score3')[i].value;
			let score4 = document.getElementsByName('form-score4')[i].value;
			let score5 = document.getElementsByName('form-score5')[i].value;
			let score6 = document.getElementsByName('form-score6')[i].value;
			let score7 = document.getElementsByName('form-score7')[i].value;
			let score8 = document.getElementsByName('form-score8')[i].value;
			let score9 = document.getElementsByName('form-score9')[i].value;
			let opinion1 = document.getElementsByName('form-opinion1')[i].value;
			
			let scoreList = [score1, score2, score3, score4, score5, score6, score7, score8, score9, opinion1];
			 
			if(sex=="") { 
				break;
			} else {
				 param['programDtoList['+i+'].agency']=agency;
		         param['programDtoList['+i+'].date']=date; 
		         param['programDtoList['+i+'].ptcProgram']=ptcProgram;
		         param['programDtoList['+i+'].sex']=sex;
		         param['programDtoList['+i+'].age']=age;
		         param['programDtoList['+i+'].residence']=residence;
		         param['programDtoList['+i+'].job']=job;
		         param['programDtoList['+i+'].programName']=programName;
		         param['programDtoList['+i+'].teacher']=teacher;
		         param['programDtoList['+i+'].place']=place;
		         for(let j = 0; j < scoreList.length; j++) {
		        	 if(scoreList[j]=="") {
				         param['programDtoList['+i+'].scoreList['+j+']'] ="0"; 
		        	 }else {
				         param['programDtoList['+i+'].scoreList['+j+']'] =scoreList[j]; 
		        	 }
		         }
			}
	         
		}
		 console.log(param);
	      $.ajax({
	         url: "/insertForm/programInsertForm/insertData.do",
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