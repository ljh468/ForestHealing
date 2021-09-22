<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
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
<body onload="addE()">
	<!--/.sidebar Sart-->
	<%@ include file="/WEB-INF/view/top.jsp"%>
	<%@ include file="/WEB-INF/view/sidebar.jsp"%>
	<!--/.sidebar End-->
	<div class="col-sm-9 col-sm-offset-3 col-lg-10 col-lg-offset-2 main">
		<div class="row">
			<ol class="breadcrumb">
				<li>
					<a href="#">
						<em class="fa fa-home"></em>
					</a>
				</li>
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
		<!--홍석민이 만들고 있음  -->
		<div class="row">
			<!--고르기버튼 include -->
			<%@ include file="/WEB-INF/view/select.jsp"%>
			<div class="col-md-12">
				<div class="panel panel-default chat">
					<div class="panel-heading" style="display: flex; height: auto !important; flex-flow: row-reverse;">
						<!-- <p
							style="margin: 0; padding: 0 1rem; white-space: nowrap; text-overflow: ellipsis; overflow: hidden;">서비스환경
							만족도</p> -->
						<div style="padding: 0 1rem; flex-basis: auto; white-space: nowrap; align-self: center;">
							<input type="button" class="btn btn-success btn-sm" value="추가" onclick="add_div()">
							<input type="button" class="btn btn-default btn-sm" value="전송" onclick="action()">
						</div>
						<div style="flex: auto; padding: 0 1rem; flex-basis: auto; white-space: nowrap; display: inline-flex; overflow: hidden;">
							<h4 style="float: left; margin-right: 10px;">기관명</h4>
							<div style="width: 120px; float: left; margin-right: 30px; flex: auto; padding: 0 1rem; flex-basis: auto; white-space: nowrap; max-width: 300px;">
								<input class="form-control" name='form-agency' placeholder="기관명">
							</div>
							<h4 style="float: left; margin-right: 10px;">측정기구</h4>
							<div style="width: 120px; float: left; margin-right: 30px; flex: auto; padding: 0 1rem; flex-basis: auto; white-space: nowrap; max-width: 300px;">
								<input class="form-control" name='form-equipment' placeholder="측정기구">
							</div>
						</div>
					</div>
					<div class="panel-body" style="overflow-x: scroll; height: auto; overflow-y: hidden;">
						<!--  -->
						<div style="width: 2500px; height: 70px">
							<div style="width: 120px; float: left; margin-right: 10px; margin-left:30px; text-align: center; -webkit-text-emphasis-style: open;">
								<h4 style="font-weight: 600">ID</h4>
							</div>
							<div style="width: 120px; float: left; margin-right: 10px; text-align: center; -webkit-text-emphasis-style: open;">
								<h4 style="font-weight: 600">이름</h4>
							</div>
							<div style="width: 190px; float: left; margin-right: 10px; text-align: center; -webkit-text-emphasis-style: open;">
								<h4 style="font-weight: 600">주민등록번호</h4>
							</div>
							<!--입력양식의 공통부분 -->
							<div style="width: 60px; float: left; margin-right: 10px; text-align: center; -webkit-text-emphasis-style: open;">
								<h4 style="font-weight: 600">성별</h4>
							</div>
							<div style="width: 60px; float: left; margin-right: 10px; text-align: center; -webkit-text-emphasis-style: open;">
								<h4 style="font-weight: 600">연령</h4>
							</div>
							<div style="width: 160px; float: left; margin-right: 10px; text-align: center; -webkit-text-emphasis-style: open;">
								<h4 style="font-weight: 600">실시일자</h4>
							</div>
							<div style="width: 200px; float: left; margin-right: 10px; text-align: center; -webkit-text-emphasis-style: open;">
								<h4 style="font-weight: 600">자율신경계 수치 / 상태</h4>
							</div>
							<div style="width: 200px; float: left; margin-right: 10px; text-align: center; -webkit-text-emphasis-style: open;">
								<h4 style="font-weight: 600">자율신경계2 수치 / 상태</h4>
							</div>
							<div style="width: 200px; float: left; margin-right: 10px; text-align: center; -webkit-text-emphasis-style: open;">
								<h4 style="font-weight: 600">스트레스 저항도 / 상태</h4>
							</div>
							<div style="width: 200px; float: left; margin-right: 10px; text-align: center; -webkit-text-emphasis-style: open;">
								<h4 style="font-weight: 600">스트레스 지수 / 상태</h4>
							</div>
							<div style="width: 200px; float: left; margin-right: 10px; text-align: center; -webkit-text-emphasis-style: open;">
								<h4 style="font-weight: 600">피로도 지수 / 상태</h4>
							</div>
							<div style="width: 200px; float: left; margin-right: 10px; text-align: center; -webkit-text-emphasis-style: open;">
								<h4 style="font-weight: 600">이상 심박동수 지수 / 상태</h4>
							</div>
							<div style="width: 200px; float: left; margin-right: 10px; text-align: center; -webkit-text-emphasis-style: open;">
								<h4 style="font-weight: 600">심장 안정도 지수 / 상태</h4>
							</div>
							<div style="width: 200px; float: left; margin-right: 10px; text-align: center; -webkit-text-emphasis-style: open;">
								<h4 style="font-weight: 600">이상 심박동 지수 / 상태</h4>
							</div>
							<!--입력양식의 공통부분 -->
						</div>
						<!--  -->
						<!-- <div id="insertForm"> -->
						<div id="parent">
						<%
							for (int i = 0; i < 20; i++) {
						%>
							<div class="insertForm" style="width:2500px; height: 60px;" name="form-main" id="child<%=i%>">
								<button onclick="delete_info(<%=i%>)" style="font-size:70%; display:block; margin-top:7px; margin-right:5px; float: left;">X</button>
								<div style="width: 120px; float: left; margin-right: 10px;">
									<input class="form-control" name='form-id' placeholder="ID">
								</div>
								<div style="width: 120px; float: left; margin-right: 10px;">
									<input class="form-control" name='form-name' placeholder="이름">
								</div>
								<div style="width: 190px; float: left; margin-right: 10px;">
									<input class="form-control" name='form-jumin1' placeholder="앞자리" style="width: 90px; float: left;" maxlength="6">
									<p style="display: inline-flex; vertical-align: sub;">-</p>
									<input class="form-control" name='form-jumin2' placeholder="뒷자리" style="width: 90px; float: right;" maxlength="1">
								</div>
								<!--  -->
								<div style="width: 60px; float: left; margin-right: 10px;">
									<input class="form-control" name='form-sex' placeholder="성별">
								</div>
								<!--  -->
								<div style="width: 60px; float: left; margin-right: 10px;">
									<input class="form-control" name='form-age' placeholder="연령">
								</div>
								<div style="width: 160px; float: left; margin-right: 10px;">
									<input class="form-control" type="date" name='form-date'>
								</div>
								
								<div style="width: 60px; float: left; margin-right: 10px;">
									<input class="form-control form-num1" data-id="<%=i%>" data-type="listA" name='form-num1' placeholder="수치">
								</div>
								<div class='listA' style="width: 130px; float: left; margin-right: 10px;">-</div>
								
								<div style="width: 60px; float: left; margin-right: 10px;">
									<input class="form-control form-num2" data-id="<%=i%>" data-type="listB" name='form-num2' placeholder="수치">
								</div>
								<div class='listB' style="width: 130px; float: left; margin-right: 10px;">-</div>
								
								<div style="width: 60px; float: left; margin-right: 10px;">
									<input class="form-control form-num3" data-id="<%=i%>" data-type="listC" name='form-num3' placeholder="수치">
								</div>
								<div class='listC' style="width: 130px; float: left; margin-right: 10px;">-</div>
								
								<div style="width: 60px; float: left; margin-right: 10px;">
									<input class="form-control form-num4" data-id="<%=i%>" data-type="listD" name='form-num4' placeholder="수치">
								</div>
								<div class='listD' style="width: 130px; float: left; margin-right: 10px;">-</div>
								
								<div style="width: 60px; float: left; margin-right: 10px;">
									<input class="form-control form-num5" data-id="<%=i%>" data-type="listE" name='form-num5' placeholder="수치">
								</div>
								<div class='listE' style="width: 130px; float: left; margin-right: 10px;">-</div>
								
								<div style="width: 60px; float: left; margin-right: 10px;">
									<input class="form-control form-num6" data-id="<%=i%>" data-type="listF" name='form-num6' placeholder="수치">
								</div>
								<div class='listF' style="width: 130px; float: left; margin-right: 10px;">-</div>
								
								<div style="width: 60px; float: left; margin-right: 10px;">
									<input class="form-control form-num7" data-id="<%=i%>" data-type="listG" name='form-num7' placeholder="수치">
								</div>
								<div class='listG' style="width: 130px; float: left; margin-right: 10px;">-</div>
								
								<div style="width: 60px; float: left; margin-right: 80px; margin-left: 70px;">
									<input class="form-control" name='form-num8' placeholder="수치">
								</div>
							</div>
						<%
							}
						%>
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
	function addE() {
		document.querySelectorAll('.insertForm .form-num1').forEach(item => item.addEventListener("focusout",(e) => testA(e.target.dataset.type,e.target.value, e.target.dataset.id) ));
		document.querySelectorAll('.insertForm .form-num2').forEach(item => item.addEventListener("focusout",(e) => testB(e.target.dataset.type, e.target.value, e.target.dataset.id) ));
		document.querySelectorAll('.insertForm .form-num3').forEach(item => item.addEventListener("focusout",(e) => testC(e.target.dataset.type, e.target.value, e.target.dataset.id) ));
		document.querySelectorAll('.insertForm .form-num4').forEach(item => item.addEventListener("focusout",(e) => testD(e.target.dataset.type, e.target.value, e.target.dataset.id) ));
		document.querySelectorAll('.insertForm .form-num5').forEach(item => item.addEventListener("focusout",(e) => testE(e.target.dataset.type, e.target.value, e.target.dataset.id) ));
		document.querySelectorAll('.insertForm .form-num6').forEach(item => item.addEventListener("focusout",(e) => testF(e.target.dataset.type, e.target.value, e.target.dataset.id) ));
		document.querySelectorAll('.insertForm .form-num7').forEach(item => item.addEventListener("focusout",(e) => testG(e.target.dataset.type, e.target.value, e.target.dataset.id) ));
	}
	function testA(type, value,inx) {
		let val = Number(value);
		let valText = document.querySelectorAll('.'+type);
		switch (true) {
			case (val>0 && val<=70):
				valText[inx].textContent = '매우나쁨';
				break;
			case (val>70 && val<=90):
				valText[inx].textContent = '나쁨';
				break;
			case (val>90 && val<=110):
				valText[inx].textContent = '정상';
				break;
			case (val>110 && val<=130):
				valText[inx].textContent = '정상';
				break;
			case (val>130):
				valText[inx].textContent = '매우좋음';
				break;
			default:
				break;
		}
	}
	function testB(type, value,inx) {
		let val = Number(value);
		let valText = document.querySelectorAll('.'+type);
		switch (true) {
		case (val>0 && val<=50):
			valText[inx].textContent = '균형';
			break;
		case (val>50 && val<=100):
			valText[inx].textContent = '불균형';
			break;
		case (val>100):
			valText[inx].textContent = '매우불균형';
			break;
		default:
			break;
		}
	}
	function testC(type, value,inx) {
		let val = Number(value);
		let valText = document.querySelectorAll('.'+type);
		switch (true) {
		case (val>0 && val<=70):
			valText[inx].textContent = '매우나쁨';
			break;
		case (val>70 && val<=90):
			valText[inx].textContent = '나쁨';
			break;
		case (val>90 && val<=110):
			valText[inx].textContent = '정상';
			break;
		case (val>110 && val<=130):
			valText[inx].textContent = '좋음';
			break;
		case (val>130):
			valText[inx].textContent = '매우좋음';
			break;
		default:
			break;
		}
	}
	function testD(type, value,inx) {
		let val = Number(value);
		let valText = document.querySelectorAll('.'+type);
		switch (true) {
		case (val>0 && val<=70):
			valText[inx].textContent = '매우좋음';
			break;
		case (val>70 && val<=90):
			valText[inx].textContent = '좋음';
			break;
		case (val>90 && val<=110):
			valText[inx].textContent = '정상';
			break;
		case (val>110 && val<=130):
			valText[inx].textContent = '나쁨';
			break;
		case (val>130):
			valText[inx].textContent = '매우나쁨';
			break;
		default:
			break;
		}
	}
	function testE(type, value,inx) {
		let val = Number(value);
		let valText = document.querySelectorAll('.'+type);
		switch (true) {
		case (val>0 && val<=70):
			valText[inx].textContent = '매우좋음';
			break;
		case (val>70 && val<=90):
			valText[inx].textContent = '좋음';
			break;
		case (val>90 && val<=110):
			valText[inx].textContent = '정상';
			break;
		case (val>110 && val<=130):
			valText[inx].textContent = '나쁨';
			break;
		case (val>130):
			valText[inx].textContent = '매우나쁨';
			break;
		default:
			break;
		}
	}
	function testF(type, value,inx) {
		let val = Number(value);
		let valText = document.querySelectorAll('.'+type);
		switch (true) {
		case (val>0 && val<=60):
			valText[inx].textContent = '매우낮음';
			break;
		case (val>60 && val<=65):
			valText[inx].textContent = '낮음';
			break;
		case (val>65 && val<=80):
			valText[inx].textContent = '정상';
			break;
		case (val>80 && val<=100):
			valText[inx].textContent = '높음';
			break;
		case (val>100):
			valText[inx].textContent = '매우높음';
			break;
		default:
			break;
		}
	}
	function testG(type, value,inx) {
		let val = Number(value);
		let valText = document.querySelectorAll('.'+type);
		switch (true) {
		case (val>0 && val<=70):
			valText[inx].textContent = '매우나쁨';
			break;
		case (val>70 && val<=90):
			valText[inx].textContent = '나쁨';
			break;
		case (val>90 && val<=110):
			valText[inx].textContent = '정상';
			break;
		case (val>110 && val<=130):
			valText[inx].textContent = '정상';
			break;
		case (val>130):
			valText[inx].textContent = '매우좋음';
			break;
		default:
			break;
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
	<!--  -->
	<script type="text/javascript">
	function action() {
		var param = {};
		
		let agency = document.getElementsByName('form-agency')[0].value;
		let equipment = document.getElementsByName('form-equipment')[0].value;
		let formArr = document.getElementsByName('form-main');

		  //유효성 검사
	      if(agency.trim() == '') {
	    	  alert('기관을 입력해주세요.');
	    	  return false;
	      } else if(equipment.trim() == '') { 
	    	  alert('측정기구를 입력해주세요.');
	    	  return false;
	      }
		
		for(let i = 0; i < formArr.length; i++) {
			let id = document.getElementsByName('form-id')[i].value;
			let name = document.getElementsByName('form-name')[i].value;
			let sex = document.getElementsByName('form-sex')[i].value;
			let age = document.getElementsByName('form-age')[i].value;
			let date = document.getElementsByName('form-date')[i].value;
			let jumin = document.getElementsByName('form-jumin1')[i].value + document.getElementsByName('form-jumin2')[i].value;
			let num8 = document.getElementsByName('form-num8')[i].value;
			
			
			if(id.trim() == '' && name.trim() == '') {
	       	 	
	         } else {
	        	 if(id.trim() == '') { 
	 	        	alert('아이디를 입력해주세요.');
	 	        	console.log(i);
	 	       		return document.getElementsByName('form-id')[i].focus();
	        	 } else if(name.trim() == '') { 
			 	        alert('이름을 입력해주세요.');
			 	        console.log(i);
			 	       	return document.getElementsByName('form-name')[i].focus();
	        	 }else if(jumin.trim() == '') { 
			 	        alert('주민등록번호를 입력해주세요.');
			 	        console.log(i);
			 	    	return document.getElementsByName('form-jumin1')[i].focus();
			     }else if(sex.trim() == '') { 
		 	       	alert('성별을 입력해주세요.');
		 	        console.log(i);
		 	       	return document.getElementsByName('form-sex')[i].focus();
		        } else if(age.trim() == '') { 
		 	        alert('나이를 입력해주세요.');
		 	        console.log(i);
		 	       	return document.getElementsByName('form-age')[i].focus();
		        } else if(date.trim() == '') {
		        	alert('실시일자를 입력해주세요.');
		        	console.log(i);
		        	return document.getElementsByName('form-date')[i].focus();
		        }
				for(let x = 1; x < 8; x++) {
					if(document.getElementsByName('form-num'+x)[i].value.trim() == '') { 
						alert('수치를 입력해주세요.');
						return document.getElementsByName('form-num'+x)[i].focus();
					}
					param['hrvDtoList['+i+'].scoreList[' + (x-1) +']'] = document.getElementsByName('form-num'+x)[i].value;
				}
				if(num8.trim() == '') {
					alert('수치를 입력해주세요.');
					return document.getElementsByName('form-num8')[i].focus();
				}
	         }
			 if(sex=="") {
				 break;
			 } else { 
				 param['hrvDtoList['+i+'].agency']=agency;
		         param['hrvDtoList['+i+'].equipment']=equipment; 
		         param['hrvDtoList['+i+'].id']=id; 
		         param['hrvDtoList['+i+'].name']=name; 
		         param['hrvDtoList['+i+'].jumin']=jumin; 
		         param['hrvDtoList['+i+'].sex']=sex;
		         param['hrvDtoList['+i+'].age']=age;
		         param['hrvDtoList['+i+'].date']=date; 
		         param['hrvDtoList['+i+'].num8']=num8;
			 }
		}
		 console.log(param);
	      $.ajax({
	         url: "/insertForm/hrvInsertForm/insertData.do",
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