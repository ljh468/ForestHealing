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
		
		
		
		
		<!--홍석민이 만들고 있음	-->
		<div class="row">
			<!--고르기버튼 include -->
			<%@ include file="/WEB-INF/view/select.jsp"%>
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
						<div style="flex: auto;flex-basis: auto;white-space: nowrap;display: inline-flex;overflow: hidden;">
							<div style="margin-right: 15px;">
								<h4 style="float : left; margin: 13px 10px 13px 0px;">기관명</h4> 
								<div style="width: 120px;float: left;margin-right: 10px;flex: auto;flex-basis: auto;white-space: nowrap;max-width: 300px;">
									<input class="form-control form-agency" name='form-agency' placeholder="기관명">
								</div>
								
								<h4 style="float : left; margin: 13px 10px 13px 0px;">실시일자</h4> 
								<div style="width: 160px; float: left; margin-right: 10px;">
									<input class="form-control form-openday" type="date" name='form-openday'>
								</div>
								<div style="float: left; margin: 2px 10px 2px 0px;">
									<input type="button" class="btn btn-default btn-sm has-history" value="조회">
								</div>
							</div>
							<div>
								<h4 style="float : left; margin-right : 10px;">참여프로그램</h4> 
								<div style="float: left; margin-right: 20px;">
									<select class="form-control" name="form-ptcProgram"style="height: 46px;">
										<option>당일형</option>
										<option>1박2일형</option>
										<option>2박3일형</option>
									</select>
								</div>
								<h4 style="float : left; margin-right : 10px;">시점</h4> 
								<div style="width: 90px; float: left; margin-right: 10px;">
									<select class="form-control" name="form-pv"style="height: 46px;">
										<option>사전</option>
										<option>사후</option>
									</select>
								</div>
							</div>
						</div>
					</div>
				
				
					<div class="panel-body" style="overflow-x: scroll; height: auto; overflow-y: hidden;">
						<!--	-->
						
						<div style="width: 3200px;height: 70px">
							<div style="width: 120px; float: left; margin-right: 10px; margin-left:30px; text-align: center; -webkit-text-emphasis-style: open;"><h4 style="font-weight: 600">이름</h4></div>
							<!--입력양식의 공통부분 -->
							<div style="width: 120px; float: left; margin-right: 10px; text-align: center; -webkit-text-emphasis-style: open;"><h4 style="font-weight: 600">성별</h4></div>
							<div style="width: 60px; float: left; margin-right: 10px; text-align: center; -webkit-text-emphasis-style: open;"><h4 style="font-weight: 600">연령</h4></div>
							<div style="width: 90px; float: left; margin-right: 10px; text-align: center; -webkit-text-emphasis-style: open;"><h4 style="font-weight: 600">거주지</h4></div>
							<div style="width: 120px; float: left; margin-right: 10px; text-align: center; -webkit-text-emphasis-style: open;"><h4 style="font-weight: 600">직업</h4></div>
							<!--입력양식의 공통부분 -->
							<div style="width: 170px; float: left; margin-right: 10px; text-align: center;"><h4 style="font-weight: 600">과거스트레스 해소 및 힐링 서비스 경험</h4></div>
							
							<div style="width: 150px; float: left; margin-right: 10px;text-align: center;"><h4 style="font-weight: 600; margin-bottom: 0px">욕구충족</h4>
								<h5 style="font-weight: 600;display: inline-block;width:65px; float:left;">문항1 </h5>
								<h5 style="font-weight: 600;display: inline-block;width:70px">문항2 </h5>
							</div>
							<div style="width: 210px; float: left; margin-right: 20px;text-align: center; "><h4 style="font-weight: 600; margin-bottom: 0px">긍정정서</h4>
								<h5 style="font-weight: 600;display: inline-block;width:65px; float:left;">문항3</h5>
								<h5 style="font-weight: 600;display: inline-block;width:65px">문항4</h5>
								<h5 style="font-weight: 600;display: inline-block;width:70px">문항5</h5>
							</div>
							<div style="width: 210px; float: left; margin-right: 20px;text-align: center; "><h4 style="font-weight: 600; margin-bottom: 0px">삶의만족</h4>
								<h5 style="font-weight: 600;display: inline-block;width:65px; float:left;">문항6</h5>
								<h5 style="font-weight: 600;display: inline-block;width:65px">문항7</h5>
								<h5 style="font-weight: 600;display: inline-block;width:70px">문항8</h5>
							</div>
							<div style="width: 290px; float: left; margin-right: 10px;text-align: center;"><h4 style="font-weight: 600; margin-bottom: 0px">자기이해</h4>
								<h5 style="font-weight: 600;display: inline-block;width:65px; float:left;">문항9</h5>
								<h5 style="font-weight: 600;display: inline-block;width:65px">문항10</h5>
								<h5 style="font-weight: 600;display: inline-block;width:65px">문항11</h5>
								<h5 style="font-weight: 600;display: inline-block;width:70px">문항12</h5>
							</div>
							<div style="width: 210px; float: left; margin-right: 20px;text-align: center; "><h4 style="font-weight: 600; margin-bottom: 0px">자기수용</h4>
								<h5 style="font-weight: 600;display: inline-block;width:65px; float:left;">문항13</h5>
								<h5 style="font-weight: 600;display: inline-block;width:65px">문항14</h5>
								<h5 style="font-weight: 600;display: inline-block;width:70px">문항15</h5>
							</div>
							<div style="width: 210px; float: left; margin-right: 20px;text-align: center; "><h4 style="font-weight: 600; margin-bottom: 0px">마음관리기술</h4>
								<h5 style="font-weight: 600;display: inline-block;width:65px; float:left;">문항16</h5>
								<h5 style="font-weight: 600;display: inline-block;width:65px">문항17</h5>
								<h5 style="font-weight: 600;display: inline-block;width:70px">문항18</h5>
							</div>
							<div style="width: 280px; float: left; margin-right: 20px;text-align: center;"><h4 style="font-weight: 600; margin-bottom: 0px">정서능력측면</h4>
								<h5 style="font-weight: 600;display: inline-block;width:65px; float:left;">문항1</h5>
								<h5 style="font-weight: 600;display: inline-block;width:65px">문항2</h5>
								<h5 style="font-weight: 600;display: inline-block;width:65px">문항3</h5>
								<h5 style="font-weight: 600;display: inline-block;width:70px">문항4</h5>
							</div>
							<div style="width: 210px; float: left; margin-right: 20px;text-align: center; "><h4 style="font-weight: 600; margin-bottom: 0px">영성측면</h4>
								<h5 style="font-weight: 600;display: inline-block;width:65px; float:left;">문항5</h5>
								<h5 style="font-weight: 600;display: inline-block;width:65px">문항6</h5>
								<h5 style="font-weight: 600;display: inline-block;width:70px">문항7</h5>
							</div>
							<div style="width: 210px; float: left; margin-right: 20px;text-align: center; "><h4 style="font-weight: 600; margin-bottom: 0px">삶의 조망측면</h4>
								<h5 style="font-weight: 600;display: inline-block;width:65px; float:left;">문항8</h5>
								<h5 style="font-weight: 600;display: inline-block;width:65px">문항9</h5>
								<h5 style="font-weight: 600;display: inline-block;width:70px">문항10</h5>
							</div>
						</div>
						<!--	-->
						<div id="parent">
						<%for(int i=0; i<24; i++)	{ %>
							<div class="insertForm" style="width: 3200px; height: 60px;" name='form-main' id="child<%=i%>">
								<button onclick="delete_info(<%=i%>)" style="font-size:70%; display:block; margin-top:7px; margin-right:5px; float: left;">X</button>
								<div style="width: 120px; float: left; margin-right: 10px;">
									<input class="form-control" name='form-name' placeholder="이름">
								</div>
								<div style="width: 120px; float: left; margin-right: 10px;">
									<input class="form-control" name='form-sex' placeholder="성별">
								</div>
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
								<div style="width: 120px; float: left; margin-right: 35px; margin-left: 25px">
									<input class="form-control" name='form-pastStress' placeholder="1=유	/ 2=무">
								</div>
								<div style="width: 60px; float: left; margin-right: 10px;">
									<input class="form-control" name='form-score1' placeholder="점수">
								</div>
								<div style="width: 60px; float: left; margin-right: 30px;">
									<input class="form-control" name='form-score2' placeholder="점수">
								</div>
								<div style="width: 60px; float: left; margin-right: 10px;">
									<input class="form-control" name='form-score3' placeholder="점수">
								</div>
								<div style="width: 60px; float: left; margin-right: 10px;">
									<input class="form-control" name='form-score4' placeholder="점수">
								</div>
								<div style="width: 60px; float: left; margin-right: 30px;">
									<input class="form-control" name='form-score5' placeholder="점수">
								</div>
								<div style="width: 60px; float: left; margin-right: 10px;">
									<input class="form-control" name='form-score6' placeholder="점수">
								</div>
								<div style="width: 60px; float: left; margin-right: 10px;">
									<input class="form-control" name='form-score7' placeholder="점수">
								</div>
								<div style="width: 60px; float: left; margin-right: 30px;">
									<input class="form-control" name='form-score8' placeholder="점수">
								</div>
								<div style="width: 60px; float: left; margin-right: 10px;">
									<input class="form-control" name='form-score9' placeholder="점수">
								</div>
								<div style="width: 60px; float: left; margin-right: 10px;">
									<input class="form-control" name='form-score10' placeholder="점수">
								</div>
								<div style="width: 60px; float: left; margin-right: 10px;">
									<input class="form-control" name='form-score11' placeholder="점수">
								</div>
								<div style="width: 60px; float: left; margin-right: 30px;">
									<input class="form-control" name='form-score12' placeholder="점수">
								</div>
								<div style="width: 60px; float: left; margin-right: 10px;">
									<input class="form-control" name='form-score13' placeholder="점수">
								</div>
								<div style="width: 60px; float: left; margin-right: 10px;">
									<input class="form-control" name='form-score14' placeholder="점수">
								</div>
								<div style="width: 60px; float: left; margin-right: 30px;">
									<input class="form-control" name='form-score15' placeholder="점수">
								</div>
								<div style="width: 60px; float: left; margin-right: 10px;">
									<input class="form-control" name='form-score16' placeholder="점수">
								</div>
								<div style="width: 60px; float: left; margin-right: 10px;">
									<input class="form-control" name='form-score17' placeholder="점수">
								</div>
								<div style="width: 60px; float: left; margin-right: 30px;">
									<input class="form-control" name='form-score18' placeholder="점수">
								</div>
								<div style="width: 60px; float: left; margin-right: 10px;">
									<input class="form-control" name='form-score19' placeholder="점수">
								</div>
								<div style="width: 60px; float: left; margin-right: 10px;">
									<input class="form-control" name='form-score20' placeholder="점수">
								</div>
								<div style="width: 60px; float: left; margin-right: 10px;">
									<input class="form-control" name='form-score21' placeholder="점수">
								</div>
								<div style="width: 60px; float: left; margin-right: 30px;">
									<input class="form-control" name='form-score22' placeholder="점수">
								</div>
								<div style="width: 60px; float: left; margin-right: 10px;">
									<input class="form-control" name='form-score23' placeholder="점수">
								</div>
								<div style="width: 60px; float: left; margin-right: 10px;">
									<input class="form-control" name='form-score24' placeholder="점수">
								</div>
								<div style="width: 60px; float: left; margin-right: 30px;">
									<input class="form-control" name='form-score25' placeholder="점수">
								</div>
								<div style="width: 60px; float: left; margin-right: 10px;">
									<input class="form-control" name='form-score26' placeholder="점수">
								</div>
								<div style="width: 60px; float: left; margin-right: 10px;">
									<input class="form-control" name='form-score27' placeholder="점수">
								</div>
								<div style="width: 60px; float: left; margin-right: 30px;">
									<input class="form-control" name='form-score28' placeholder="점수">
								</div>
							</div>
						<% }	%>
						</div>
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
	<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
	
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
	<script type="text/javascript">
		/* swal() 호출 함수 정의 */
		doSwal = function (title, content, type) {
			swal(title, content, type, {
				timer : 3000,
				showConfirmButton : false
			});
		}
		
		/*/.start--- 홍두표 - 기관명 및 실시일자로 DB조회 */
		const selectElement = document.querySelector('.has-history');
	
		selectElement.addEventListener('click', () => {
			let form_agency = document.querySelector('.form-agency').value;
			let form_openday = document.querySelector('.form-openday').value;
			if(form_agency.length == 0 || form_openday.length == 0) {
				alert('기관명과 실시일자가 올바르게 입력되었는지 확인해주십시오.');
				return false;
			}
			obj = {};
			obj['agency'] = form_agency;
			obj['openday'] = form_openday;
			console.table(obj);
			/* JQuery는 협의 후 axios로 변환 */
			$.ajax({
				url: "/insertForm/healingInsertForm/getPreviousList.do",
				type: "POST",
				data: obj,
				success: function(result) {
					if(result.length > 0) {
						doSwal('사전 기록이 존재합니다.', '사후 데이터를 입력해주기 바랍니다.', 'success');
						document.getElementById('parent').innerHTML = result;
						return false;
					}
					doSwal('새로운 입력입니다.', '사전 데이터를 입력해주기 바랍니다.', 'info');
				},
				error: function(e) {
					/* 협의 후 로그 말고 다른 이벤트 실행 */
					console.log(e);
					alert('데이터를 조회할 수 없습니다.\n올바른 데이터인지 확인 후 재요청 해주십시오.');
				}
			});
			return false;
		});
		/* 홍두표 - 기관명 및 실시일자로 DB조회 ./---end */
		
		function action() {
			var param = {};
			let agency = document.getElementsByName('form-agency')[0].value;
			let openday = document.getElementsByName('form-openday')[0].value;
			let ptcProgram = document.getElementsByName('form-ptcProgram')[0].value;
			let pv = document.getElementsByName('form-pv')[0].value;
			let formArr = document.getElementsByName('form-main');
			//유효성 검사
			if(agency.trim() == '') {
				alert('기관을 입력해주세요.');
				return false;
			} else if(openday.trim() == '') {
				alert('실시일자를 입력해주세요.');
				return false;
			} else if(ptcProgram.trim() == '') {
				alert('참여프로그램을 입력해주세요.');
				return false;
			}
			for(let i = 0; i < formArr.length; i++) {
				let name = document.getElementsByName('form-name')[i].value;
				let sex = document.getElementsByName('form-sex')[i].value;
				let age = document.getElementsByName('form-age')[i].value;
				let residence = document.getElementsByName('form-residence')[i].value;
				let job = document.getElementsByName('form-job')[i].value;
				let pastStress = document.getElementsByName('form-pastStress')[i].value;
				if(sex.trim() == '' && name.trim() == '') {
				}else { 
					if(name.trim() == '') {
						alert('이름을 입력해주세요.');
						return document.getElementsByName('form-name')[i].focus();
					} else if(sex.trim() == '') {
						alert('성별을 입력해주세요.');
						return document.getElementsByName('form-sex')[i].focus();
					} else if(age.trim() == '') {
						alert('연령을 입력해주세요.');
						return document.getElementsByName('form-age')[i].focus();
					} else if(residence.trim() == '') {
						alert('거주지를 입력해주세요.');
						return document.getElementsByName('form-residence')[i].focus();
					} else if(job.trim() == '') {
						alert('직업을 입력해주세요.');
						return document.getElementsByName('form-job')[i].focus();
					} else if(pastStress.trim() == '') {
						alert('과거 상담 서비스 경험을 입력해주세요.');
						return document.getElementsByName('form-pastStress')[i].focus();
					}
				}
				for(let j = 0; j < 28; j++) {
					if(document.getElementsByName('form-score'+(j+1))[i].value.trim() == '') {
						alert('점수를 입력해주세요.');
						return document.getElementsByName('form-score'+(j+1))[i].focus();
					}
					param['healingDtoList['+i+'].scoreList['+j+']'] = document.getElementsByName('form-score'+(j+1))[i].value;
				}
					
				if(sex=="") {
					break;
				} else { 
					 param['healingDtoList['+i+'].agency']=agency;
				     param['healingDtoList['+i+'].openday']=openday; 
				     param['healingDtoList['+i+'].ptcProgram']=ptcProgram; 
				     param['healingDtoList['+i+'].name']=name; 
				     param['healingDtoList['+i+'].sex']=sex;
				     param['healingDtoList['+i+'].age']=age;
				     param['healingDtoList['+i+'].residence']=residence;
				     param['healingDtoList['+i+'].job']=job;
				     param['healingDtoList['+i+'].past_stress_experience']=pastStress;
				     param['healingDtoList['+i+'].pv']=pv;
				}
			}
			console.log(param);
			$.ajax({
				url: "/insertForm/healingInsertForm/insertData.do",
				type: "POST",
				data: param, 
				success:function(result) {
					 swal({
				 				title : "전송 성공 !!",
				 				text : "확인 버튼을 눌러주세요.",
				 				icon : "success"
				 			}).then(function() {
				 				window.location.reload();
				 			});
				},
				error:function(e) {
					console.log(e);
				}
			});
		}
	</script>
	<script>
	function delete_info(num) {
		let parent = document.getElementById('parent');
		let child = document.getElementById('child'+num);
		
		parent.removeChild(child);
		
    }
	</script>
</body>
</html>