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
						<div style="flex: auto;padding: 0 1rem;flex-basis: auto;white-space: nowrap;display: inline-flex;overflow: hidden;">
							<h4 style="float : left; margin-right : 10px;">기관명</h4> 
							<div style="width: 120px;float: left;margin-right: 30px;flex: auto;padding: 0 1rem;flex-basis: auto;white-space: nowrap;max-width: 300px;">
								<input class="form-control" name='form-agency' placeholder="기관명">
							</div>
							
							<h4 style="float : left; margin-right : 10px;">실시일자</h4> 
							<div style="width: 140px; float: left; margin-right: 20px;">
								<input class="form-control" type="date" name='form-date'>
							</div>
							<h4 style="float : left; margin-right : 10px;">참여프로그램</h4> 
							<div style="width: 120px; float: left; margin-right: 20px">
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
				
				
					<div class="panel-body" style="overflow-x: scroll; height: auto; overflow-y: hidden;">
						<!--  -->
						
						<div style="width: 2300px;height: 70px">
						
							<div style="width: 120px; float: left; margin-right: 10px; margin-left:30px; text-align: center; -webkit-text-emphasis-style: open;"><h4 style="font-weight: 600">이름</h4></div>
						
							<!--입력양식의 공통부분 -->
							<div style="width: 120px; float: left; margin-right: 10px; text-align: center; -webkit-text-emphasis-style: open;"><h4 style="font-weight: 600">성별</h4></div>
							<div style="width: 60px; float: left; margin-right: 10px; text-align: center; -webkit-text-emphasis-style: open;"><h4 style="font-weight: 600">연령</h4></div>
							<div style="width: 90px; float: left; margin-right: 10px; text-align: center; -webkit-text-emphasis-style: open;"><h4 style="font-weight: 600">거주지</h4></div>
							<div style="width: 120px; float: left; margin-right: 10px; text-align: center; -webkit-text-emphasis-style: open;"><h4 style="font-weight: 600">직업</h4></div>
							<!--입력양식의 공통부분 -->
							<div style="width: 170px; float: left; margin-right: 10px; text-align: center;"><h4 style="font-weight: 600">과거스트레스 해소 및 힐링 서비스 경험</h4></div>
							
							<div style="width: 210px; float: left; margin-right: 13px;text-align: center; "><h4 style="font-weight: 600; margin-bottom: 0px">중독특징이해</h4>
								<h5 style="font-weight: 600;display: inline-block;width:65px; float:left;">문항1</h5>
								<h5 style="font-weight: 600;display: inline-block;width:65px">문항2</h5>
								<h5 style="font-weight: 600;display: inline-block;width:70px">문항3</h5>
							</div>
							<div style="width: 210px; float: left; margin-right: 13px;text-align: center; "><h4 style="font-weight: 600; margin-bottom: 0px">핵심증상이해</h4>
								<h5 style="font-weight: 600;display: inline-block;width:65px; float:left;">문항4</h5>
								<h5 style="font-weight: 600;display: inline-block;width:65px">문항5</h5>
								<h5 style="font-weight: 600;display: inline-block;width:70px">문항6</h5>
							</div>
							<div style="width: 290px; float: left; margin-right: 13px;text-align: center;"><h4 style="font-weight: 600; margin-bottom: 0px">문제대응방법이해</h4>
								<h5 style="font-weight: 600;display: inline-block;width:65px; float:left;">문항7</h5>
								<h5 style="font-weight: 600;display: inline-block;width:65px">문항8</h5>
								<h5 style="font-weight: 600;display: inline-block;width:65px">문항9</h5>
								<h5 style="font-weight: 600;display: inline-block;width:70px">문항10</h5>
							</div>
							<div style="width: 150px; float: left; margin-right: 13px;text-align: center;"><h4 style="font-weight: 600; margin-bottom: 0px">활용역량</h4>
								<h5 style="font-weight: 600;display: inline-block;width:65px; float:left;">문항11</h5>
								<h5 style="font-weight: 600;display: inline-block;width:70px">문항12</h5>
							</div>
							<div style="width: 350px; float: left; margin-right: 13px;text-align: center; "><h4 style="font-weight: 600; margin-bottom: 0px">심리적면역력강화법</h4>
								<h5 style="font-weight: 600;display: inline-block;width:65px; float:left;">문항13</h5>
								<h5 style="font-weight: 600;display: inline-block;width:65px">문항14</h5>
								<h5 style="font-weight: 600;display: inline-block;width:65px">문항15</h5>
								<h5 style="font-weight: 600;display: inline-block;width:65px">문항16</h5>
								<h5 style="font-weight: 600;display: inline-block;width:70px">문항17</h5>
							</div>
							<div style="width: 210px; float: left; margin-right: 13px;text-align: center; "><h4 style="font-weight: 600; margin-bottom: 0px">삶의 질</h4>
								<h5 style="font-weight: 600;display: inline-block;width:65px; float:left;">문항18</h5>
								<h5 style="font-weight: 600;display: inline-block;width:65px">문항19</h5>
								<h5 style="font-weight: 600;display: inline-block;width:70px">문항20</h5>
							</div>
						</div>
						<!--  -->
						<!-- <div id="insertForm"> -->
						<div id="parent">
						<%for(int i=0; i<20; i++)  { %>
							<div class="insertForm" style="width:2500px; height: 60px;" name="form-main" id="child<%=i%>">
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
									<input class="form-control" name='form-pastStress' placeholder="1=유  / 2=무">
								</div>
								<div style="width: 60px; float: left; margin-right: 10px;">
									<input class="form-control" name='form-score1' placeholder="점수">
								</div>
								<div style="width: 60px; float: left; margin-right: 10px;">
									<input class="form-control" name='form-score2' placeholder="점수">
								</div>
								<div style="width: 60px; float: left; margin-right: 28px;">
									<input class="form-control" name='form-score3' placeholder="점수">
								</div>
								<div style="width: 60px; float: left; margin-right: 10px;">
									<input class="form-control" name='form-score4' placeholder="점수">
								</div>
								<div style="width: 60px; float: left; margin-right: 10px;">
									<input class="form-control" name='form-score5' placeholder="점수">
								</div>
								<div style="width: 60px; float: left; margin-right: 28px;">
									<input class="form-control" name='form-score6' placeholder="점수">
								</div>
								<div style="width: 60px; float: left; margin-right: 10px;">
									<input class="form-control" name='form-score7' placeholder="점수">
								</div>
								<div style="width: 60px; float: left; margin-right: 10px;">
									<input class="form-control" name='form-score8' placeholder="점수">
								</div>
								<div style="width: 60px; float: left; margin-right: 10px;">
									<input class="form-control" name='form-score9' placeholder="점수">
								</div>
								<div style="width: 60px; float: left; margin-right: 28px;">
									<input class="form-control" name='form-score10' placeholder="점수">
								</div>
								<div style="width: 60px; float: left; margin-right: 10px;">
									<input class="form-control" name='form-score11' placeholder="점수">
								</div>
								<div style="width: 60px; float: left; margin-right: 28px;">
									<input class="form-control" name='form-score12' placeholder="점수">
								</div>	
								<div style="width: 60px; float: left; margin-right: 10px;">
									<input class="form-control" name='form-score13' placeholder="점수">
								</div>
								<div style="width: 60px; float: left; margin-right: 10px;">
									<input class="form-control" name='form-score14' placeholder="점수">
								</div>
								<div style="width: 60px; float: left; margin-right: 10px;">
									<input class="form-control" name='form-score15' placeholder="점수">
								</div>
								<div style="width: 60px; float: left; margin-right: 10px;">
									<input class="form-control" name='form-score16' placeholder="점수">
								</div>
								<div style="width: 60px; float: left; margin-right: 28px;">
									<input class="form-control" name='form-score17' placeholder="점수">
								</div>
								<div style="width: 60px; float: left; margin-right: 10px;">
									<input class="form-control" name='form-score18' placeholder="점수">
								</div>
								<div style="width: 60px; float: left; margin-right: 10px;">
									<input class="form-control" name='form-score19' placeholder="점수">
								</div>
								<div style="width: 60px; float: left; margin-right: 28px;">
									<input class="form-control" name='form-score20' placeholder="점수">
								</div>
							</div>
						<% }  %>
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
	function action() {
		var param = {};
		
		let agency = document.getElementsByName('form-agency')[0].value;
		let date = document.getElementsByName('form-date')[0].value;
		let ptcProgram = document.getElementsByName('form-ptcProgram')[0].value;
		let pv = document.getElementsByName('form-pv')[0].value;
		
		//유효성 검사
	    if(agency.trim() == '') {
	   	  alert('기관을 입력해주세요.');
	   	  return false;
	    } else if(date.trim() == '') { 
	   	  alert('실시일자를 입력해주세요.');
	   	  return false;
	    } else if(ptcProgram.trim() == '') { 
	   	  alert('참여프로그램을 입력해주세요.');
	   	  return false;
	    } else if(pv.trim() == '') { 
	   	  alert('시점 입력해주세요.');
	   	  return false;
	    } 
		
		
		let formArr = document.getElementsByName('form-main');
		
		for(let i = 0; i < formArr.length; i++) {
			let name = document.getElementsByName('form-name')[i].value;
			let sex = document.getElementsByName('form-sex')[i].value;
			let age = document.getElementsByName('form-age')[i].value;
			let residence = document.getElementsByName('form-residence')[i].value;
			let job = document.getElementsByName('form-job')[i].value;
			let pastStress = document.getElementsByName('form-pastStress')[i].value;
			 
			if(name=="") { 
				break;
			} else { 
				 param['preventDtoList['+i+'].agency']=agency;
		         param['preventDtoList['+i+'].date']=date; 
		         param['preventDtoList['+i+'].ptcProgram']=ptcProgram; 
		         param['preventDtoList['+i+'].name']=name; 
		         param['preventDtoList['+i+'].sex']=sex;
		         param['preventDtoList['+i+'].age']=age;
		         param['preventDtoList['+i+'].residence']=residence;
		         param['preventDtoList['+i+'].job']=job;
		         param['preventDtoList['+i+'].past_stress_experience']=pastStress;
		         param['preventDtoList['+i+'].pv']=pv;

		         
			     for(let j = 0; j < 20; j++) {
					param['preventDtoList['+i+'].scoreList['+j+']'] = document.getElementsByName('form-score'+(j+1))[i].value;
				}
			}
		}
		 console.log(param);
	      $.ajax({
	         url: "/insertForm/preventInsertForm/insertData.do",
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
	<script>
	function delete_info(num) {
		let parent = document.getElementById('parent');
		let child = document.getElementById('child'+num);
		
		parent.removeChild(child);
		
    }
	</script>
</body>
</html>