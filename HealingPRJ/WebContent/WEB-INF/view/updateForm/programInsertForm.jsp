<%@page import="static poly.util.CmmUtil.convertXSS"%>
<%@page import="poly.dto.ProgramInsertDTO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	int[] groupMargin = { 5, 5, 5, 5, 5, 5, 5, 5, 5 };
	int[] groupWidth = { 60, 60, 60, 75, 75, 75, 60, 60, 60 };
	List<ProgramInsertDTO> pList = (List<ProgramInsertDTO>)request.getAttribute("programList");
%>
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

	<!-- 홍두표 - 나눔스퀘어 폰트 불러오기 및 css 클래스 분리 -->
	<style>
		@import url(https://cdn.rawgit.com/moonspam/NanumSquare/master/nanumsquare.css);
		body {
			text-decoration: none;
			text-decoration-line: none;
			text-decoration-thickness: initial;
			text-decoration-style: initial;
			text-decoration-color: initial;
			font-family: "NanumSquare";
			font-size: 20px;
			font-weight: 500;
		}
		
		.item-title {
			width: 110px;
			text-align: center;
		}
		.healing-btn {
			width: 145px; 
			height: 40px; 
			font-size: large;
		}
		
		.balloon {  
			position: absolute;
			margin: 3px;
			width: 85.2%;
			height: 35px;
			background: white;
			border-radius: 5px;
			border: 1px solid #c5c5c5;
			left: 660px;
			z-index: 1;
		}
		.balloon:after { 
		}
		
		.form-control {
			display: block;
			width: 100%;
			height: 35px;
			padding: 3px 10px;
			font-size: 14px;
			border: 1px solid #ccc;
			border-radius: 4px;
		}
		
		input.form-control {
			display: block;
			width: 100%;
			height: 35px;
			padding: 3px 10px;
			font-size: 14px;
			border: 1px solid #ccc;
			border-radius: 4px;
		}
		
		.sub-head {
			font-weight: 600;
			display: inline-block;
			width: 60px; 
			margin-right: 5px; 
			float:left;
			text-align: center;
		}
		
		.main-head {
			font-weight: 600; 
			margin-bottom: 0px;
			text-align: center;
		}
		/* .container {
			width: 2300px;
			max-width: none !important;
		} */
	</style>
	<!-- 홍두표 - 나눔스퀘어 폰트 불러오기 및 css 클래스 분리 -->
	
	<!-- start---/. 페이지 로딩 후 바로 자바스크립트 함수를 실행하는 부분 -->
	<script>
	
	
	</script>
	<!-- 페이지 로딩 후 바로 자바스크립트 함수를 실행하는 부분 ./---end -->
</head>
<body class="">
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
				<li class="active">수정 및 삭제</li>
			</ol>
		</div><!--/.row-->
		
		<div class="row">
			<div class="col-lg-12">
				<h1 class="page-header">프로그램 만족도 수정</h1>
			</div>
		</div><!--/.row-->
		
		<!--홍석민이 만들고 있음  -->
		<div class="row">
			<div class="col-md-12">
				
				<div class="panel panel-default chat">
				
					<div class="panel-heading" style="display: inline-block; height: auto; width: 100%;">
						
						<div style="height: auto; width: auto;">
							<div style="display: inline-block;">
								<h4 class="item-title" style="float: left; margin: 8px 5px 8px 0px;">기관명</h4> 
								<div style="width: 120px; float: left; margin-right: 10px; white-space: nowrap; max-width: 300px;">
									<input class="form-control form-agency" name="form-agency" placeholder="기관명" value="<%=convertXSS(pList.get(0).getAgency())%>">
								</div>
								
								<h4 class="item-title" style="float: left; margin: 8px 5px 8px 0px;  width: 90px;">시작일자</h4> 
								<div style="float: left; margin-right: 10px;">
									<input class="form-control form-openday" style="width: 155px;" type="date" name="form-openday" value="<%=convertXSS(pList.get(0).getOpenday())%>">
								</div>
							</div>
							
							<div style="display: block;">
								<div style="margin-right:10px">
									<h4 class="item-title" style="float: left; margin: 8px 5px 8px 0px;">참여프로그램</h4> 
									<div style="float: left; margin-right: 10px;">
										<select class="form-control" name="form-ptcProgram" style="width: 120px; height: 35px;">
											<option><%=convertXSS(pList.get(0).getPtcProgram())%></option>
											<option>당일형</option>
											<option>1박2일형</option>
											<option>2박3일형</option>
										</select>
									</div>
								</div>
								<div style="margin-right :10px;">
									<h4 class="item-title" style="float: left; margin: 8px 5px 8px 0px; width: 90px;">실시일자</h4> 
									<div style="float: left; margin-right: 10px;">
										<input class="form-control form-eval_date" style="width: 155px;" type="date" name="form-eval_date" value="<%=convertXSS(pList.get(0).getEval_date())%>">
									</div>
								</div>
								<div style="margin-right:10px">
									<h4 class="item-title" style="float: left; margin: 8px 5px 8px 0px; width: 95px;">프로그램명</h4> 
									<div style="float: left; margin-right: 10px;">
										<input class="form-control" name="form-programName" style="width: 120px;" placeholder="프로그램명" value="<%=convertXSS(pList.get(0).getProgram_name())%>">
									</div>
								</div>
								<div style="margin-right:10px">
									<h4 class="item-title" style="float: left; margin: 8px 5px 8px 0px; width: 55px;">강사명</h4> 
									<div style="float: left; margin-right: 10px;">
										<input class="form-control" style="width: 70px;" name="form-teacher" placeholder="강사명" value="<%=convertXSS(pList.get(0).getTeacher())%>">
									</div>
								</div>
								<div style="margin-right:10px">
									<h4 class="item-title" style="float: left; margin: 8px 5px 8px 0px; width: 55px;">장소</h4> 
									<div style="float: left; margin-right: 10px;">
										<input class="form-control" style="width: 90px;" name="form-place" placeholder="장소" value="<%=convertXSS(pList.get(0).getPlace())%>">
									</div>
								</div>
								<div style="margin-right:10px">
									<h4 class="item-title" style="float: left; margin: 8px -17px 8px -28px;">분야</h4> 
									<div style="float: left; margin-right: 10px;">
										<select class="form-control" name="form-bunya" style="width: 90px; height: 35px;">
											<option><%=convertXSS(pList.get(0).getBunya())%></option>
											<option>철학</option>
											<option>음악</option>
											<option>미술</option>
											<option>요가명상</option>
											<option>동작</option>
											<option>자연치유</option>
											<option>예방교육</option>
											<option>산림교육</option>
											<option>산림치유</option>
											<option>이벤트</option>
											<option>지역</option>
											<option>신규</option>
											<option>기타</option>
										</select>
									</div>
								</div>
							</div>
						</div>
						<div style="display: flex; justify-content: flex-end;">
							<input type="button" class="btn btn-success btn-sm healing-btn" name="form-add" style="margin-right: 5px;" value="추가" onclick="add_div()"> 
							<input type="button" class="btn btn-default btn-sm healing-btn" style="margin-right: 5px;" value="수정" onclick="action()">
						</div>
						
					</div>
					
					
					
					<div class="panel-body" style="overflow-x: scroll; height: auto; overflow-y: hidden;">
						<div style="width: 1550px; height: 60px;">
							<div style="width: 85px; float: left; margin-right: 5px; text-align: center; margin-left:30px; -webkit-text-emphasis-style: open;">
								<h4 style="font-weight: 600">성별</h4>
							</div>
							<div style="width: 65px; float: left; margin-right: 5px; text-align: center; -webkit-text-emphasis-style: open;">
								<h4 style="font-weight: 600">연령</h4>
							</div>
							<div style="width: 90px; float: left; margin-right: 5px; text-align: center; -webkit-text-emphasis-style: open;">
								<h4 style="font-weight: 600">거주지</h4>
							</div>
							<div style="width: 140px; float: left; margin-right: 5px; text-align: center; -webkit-text-emphasis-style: open;">
								<h4 style="font-weight: 600">직업</h4>
							</div>
							<div style="width: 90px; float: left; margin-right: 5px; text-align: center; -webkit-text-emphasis-style: open;">
								<h4 style="font-weight: 600">참여구분</h4>
							</div>
							<div style="width: 60px; float: left; margin-right: 5px; text-align: center;">
								<h4 class="sub-head">
									강사<br>(문항1)
								</h4>
							</div>
							<div style="width: 60px; float: left; margin-right: 5px; text-align: center;">
								<h4 class="sub-head">
									강사<br>(문항2)
								</h4>
							</div>
							<div style="width: 60px; float: left; margin-right: 5px; text-align: center">
								<h4 class="sub-head">
									강사<br>(문항3)
								</h4>
							</div>
							<div style="width: 75px; float: left; margin-right: 5px; text-align: center">
								<h4 class="sub-head" style="width: 75px;">
									구성/품질 (문항4)
								</h4>
							</div>
							<div style="width: 75px; float: left; margin-right: 5px; text-align: center">
								<h4 class="sub-head" style="width: 75px;">
									구성/품질 (문항5)
								</h4>
							</div>
							<div style="width: 75px; float: left; margin-right: 5px; text-align: center">
								<h4 class="sub-head" style="width: 75px;">
									구성/품질 (문항6)
								</h4>
							</div>
							<div style="width: 60px; float: left; margin-right: 5px; text-align: center">
								<h4 class="sub-head">
									효과성 (문항7)
								</h4>
							</div>
							<div style="width: 60px; float: left; margin-right: 5px; text-align: center">
								<h4 class="sub-head">
									효과성 (문항8)
								</h4>
							</div>
							<div style="width: 60px; float: left; margin-right: 5px; text-align: center">
								<h4 class="sub-head">
									효과성 (문항9)
								</h4>
							</div>
							<div style="width: 140px; float: left; margin-right: 5px; text-align: center; -webkit-text-emphasis-style: open;">
								<h4 style="font-weight: 600">기타의견</h4>
							</div>
						</div>
						
						
						
						<!-- 데이터 입력 부분 -->
						<div id="parent">
							<%for(int i = 0; i < pList.size(); i++) { %>
							<div class="insertForm" style="width: 1550px; height: 40px;" name="form-main" id="child<%=i%>">
								<button onclick="delete_info(<%=i%>)" name="form-delete" style="font-size:70%; display:block; margin: 5px 5px 0px 0px; float: left;">X</button>
								<div style="width: 85px; float: left; margin-right: 5px;">
									<select class="form-control" name="form-sex" style="height: 35px;">
										<option><%=convertXSS(pList.get(i).getSex()) %></option>
										<%@ include file="/WEB-INF/view/insertForm/sex.jsp"%>
									</select>
								</div>
								<div style="width: 65px; float: left; margin-right: 5px;">
									<input class="form-control" type="number" name="form-age" placeholder="연령" value="<%=convertXSS(pList.get(i).getAge())%>">
								</div>
								<div style="width: 90px; float: left; margin-right: 5px;">
									<select class="form-control" name="form-residence" style="height: 35px;">
										<option><%=convertXSS(pList.get(i).getResidence())%></option>
										<%@ include file="/WEB-INF/view/insertForm/residences.jsp"%>
									</select>
								</div>
								<div style="width: 140px; float: left; margin-right: 5px;">
									<select class="form-control" name="form-job" style="height: 35px;">
										<option><%=convertXSS(pList.get(i).getJob())%></option>
										<%@ include file="/WEB-INF/view/insertForm/jobs.jsp"%>
									</select>
								</div>
								<div style="width: 90px; float: left; margin-right: 5px;">
									<select class="form-control" name="form-type" style="height: 35px;">
										<%if(convertXSS(pList.get(i).getType()).equals("참여자")) { %>
											<option><%=convertXSS(pList.get(i).getType())%></option>
											<option>인솔자</option>
										<%} else {%>
											<option><%=convertXSS(pList.get(i).getType())%></option>
											<option>참여자</option>
										<%} %>
									</select>
								</div>
								<%
								// 반복문을 돌려서 문항 개수만큼 문항 만들기
								for(int j = 0; j < groupMargin.length; j++) { 
									if(j==groupMargin.length-1 && convertXSS(pList.get(i).getType()).equals("참여자")) { %>
										<div style="width: <%=groupWidth[j]%>px; float: left; margin-right: 5px;">
											<input style="display:none; margin-right:65px;" class="form-control" name="form-score<%=j+1 %>" placeholder="점수">
										</div>
									<%} else {%>
										<div style="width: <%=groupWidth[j]%>px; float: left; margin-right: 5px;">
											<input class="form-control" type="number" name="form-score<%=j+1 %>" placeholder="점수" value="<%=pList.get(i).getScoreString2List().get(j)%>">
										</div>
									<%} 
								  } 
								  
								if(convertXSS(pList.get(i).getType()).equals("참여자")) { %>
									<div style="width: 140px; float: left; margin-right: 5px; text-algin: center;">
										<input style="margin-left:65px" class="form-control" name="form-opinion1" placeholder="기타의견" value="<%=convertXSS(pList.get(i).getScoreString2List().get(9))%>">
									</div>
								<%} else {%>
									<div style="width: 140px; float: left; margin-right: 5px; text-algin: center;">
										<input class="form-control" name="form-opinion1" placeholder="기타의견" value="<%=convertXSS(pList.get(i).getScoreString2List().get(9))%>">
									</div>
								<%}%> 
							</div>
							<% }  %>
							<div class="new-field"></div>
						
						</div>
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

	<!-- start---/. 페이지 내에서 이벤트가 발생하면 자바스크립트 함수를 실행하는 부분 -->
	<script type="text/javascript">
		/*  */
		function getElementIndex(element, range) {
			  if (!!range) return [].indexOf.call(element, range);
			  return [].indexOf.call(element.parentNode.children, element);
		}
		function add_div() {
			let index = document.getElementsByName("form-main").length;
			let val = document.getElementsByName("form-main")[index-1].id;
			let num = val.substring(5,val.length);
			index = parseInt(num) + 1;
			console.log(index);
			let idName = "child" + index + "";
			let new_div = '<div class="insertForm" style="width: 1550px; height: 40px;" name="form-main" id="child'
				+ index + '"><button onclick="delete_info('
				+ index + `)" style="font-size:70%; display:block; margin: 5px 5px 0px 0px; float: left;">X</button><div style="width: 85px; float: left; margin-right: 5px;"><select class="form-control" name="form-sex" style="height: 35px;"><%@ include file="/WEB-INF/view/insertForm/sex.jsp"%></select></div>`
	    	    + '<div style="width: 65px; float: left; margin-right: 5px;"><input class="form-control" type="number" name="form-age" placeholder="연령"></div>'
	    	    + `<div style="width: 90px; float: left; margin-right: 5px;"><select class="form-control" name="form-residence" style="height: 35px;"><%@ include file="/WEB-INF/view/insertForm/residences.jsp"%></select></div>`
	    	    + `<div style="width: 140px; float: left; margin-right: 5px;"><select class="form-control" name="form-job" style="height: 35px;"><%@ include file="/WEB-INF/view/insertForm/jobs.jsp"%></select></div>`
	    	    + `<div style="width: 90px; float: left; margin-right: 5px;"><select class="form-control" name="form-type" style="height: 35px;"><%@ include file="/WEB-INF/view/insertForm/type.jsp"%></select></div>`
	    	    + `<%for(int j = 0; j < groupMargin.length; j++) { %><div style="width: <%=groupWidth[j]%>px; float: left; margin-right: 5px;">`
	    		+ `<input class="form-control" type="number" name="form-score<%=j+1 %>" placeholder="점수"></div><% } %><div style="width: 140px; float: left; margin-right: 5px; text-algin: center;"><input class="form-control" name="form-opinion1" placeholder="기타의견"></div></div>`;
	    		
			$(".new-field").append(new_div);
			console.log(idName);
			index++;
			
			[].forEach.call(document.querySelectorAll("select[name=form-type]"), function(el) {
			      el.addEventListener("change", function() {
			    		 var index = getElementIndex(document.querySelectorAll("select[name=form-type]"), el);
				         var line = document.getElementsByName("form-score9")[index];
				         if(document.getElementsByName('form-type')[index].value=='인솔자') { 
				        	 line.value='';
				        	 line.style.display='';
				        	 document.getElementsByName('form-opinion1')[index].style.marginLeft = '0px';
					         line.disabled = false;
				         }else {
				        	 line.value=0;
				        	 line.style.display='none';
				        	 document.getElementsByName('form-opinion1')[index].style.marginLeft = '65px';
					         line.disabled = true;
				         }
			      });
			   });
		}
		
		function action() {
			var param = {};
			
			let agency = document.getElementsByName("form-agency")[0].value;
			let openday = document.getElementsByName("form-openday")[0].value;
			let ptcProgram = document.getElementsByName("form-ptcProgram")[0].value;
			let programName = document.getElementsByName("form-programName")[0].value;
			let teacher = document.getElementsByName("form-teacher")[0].value;
			let place = document.getElementsByName("form-place")[0].value;
			let eval_date = document.getElementsByName("form-eval_date")[0].value;
			let bunya = document.getElementsByName("form-bunya")[0].value;
			let formArr = document.getElementsByName("form-main");
			
			//유효성 검사
			if(agency.trim() == "") {
				alert("기관을 입력해주세요.");
				return false;
			} else if(openday.trim() == "") { 
				alert("시작일자를 입력해주세요.");
				return false;
			} else if(programName.trim() == "") { 
				alert("프로그램명을 입력해주세요.");
				return false;
			} else if(teacher.trim() == "") { 
				alert("강사명을 입력해주세요.");
				return false;
			} else if(place.trim() == "") { 
				alert("장소를 입력해주세요.");
				return false;
			} else if(eval_date.trim() == "") { 
				alert("실시일자를 입력해주세요.");
				return false;
			} else if(bunya.trim() == ""){
				alert("분야를 입력해주세요.");
				return false;
			}
			let rowCnt = 0;
			for(let i = 0; i < formArr.length; i++) {
				let sex = document.getElementsByName("form-sex")[i].value;
				let age = document.getElementsByName("form-age")[i].value;
				let residence = document.getElementsByName("form-residence")[i].value;
				let job = document.getElementsByName("form-job")[i].value;
				let type = document.getElementsByName("form-type")[i].value;
				let score1 = document.getElementsByName("form-score1")[i].value;
				let score2 = document.getElementsByName("form-score2")[i].value;
				let score3 = document.getElementsByName("form-score3")[i].value;
				let score4 = document.getElementsByName("form-score4")[i].value;
				let score5 = document.getElementsByName("form-score5")[i].value;
				let score6 = document.getElementsByName("form-score6")[i].value;
				let score7 = document.getElementsByName("form-score7")[i].value;
				let score8 = document.getElementsByName("form-score8")[i].value;
				let score9 = document.getElementsByName("form-score9")[i].value;
				let opinion1 = document.getElementsByName("form-opinion1")[i].value + " ";
				
				let totalLength = age.length + score1.length + score2.length + score3.length + score4.length +
				score5.length + score6.length + score7.length + score8.length + score9.length;
				
				if(totalLength==0) {
					if(i==0){
						return first_row_check();
					}
				} else if(totalLength==1 && type=="참여자") {
					if(i==0){
						return first_row_check();
					}
				} else {
					if(age.trim() == '') {
						alert("연령을 입력해주세요.");
						return document.getElementsByName("form-age")[i].focus();
					} else if(score1.trim() == "") {
						alert("점수를 입력해주세요.");
						return document.getElementsByName("form-score1")[i].focus();
					} else if(score2.trim() == "") {
						alert("점수를 입력해주세요.");
						return document.getElementsByName("form-score2")[i].focus();
					} else if(score3.trim() == "") {
						alert("점수를 입력해주세요.");
						return document.getElementsByName("form-score3")[i].focus();
					} else if(score4.trim() == "") {
						alert("점수를 입력해주세요.");
						return document.getElementsByName("form-score4")[i].focus();
					} else if(score5.trim() == "") {
						alert("점수를 입력해주세요.");
						return document.getElementsByName("form-score5")[i].focus();
					} else if(score6.trim() == "") {
						alert("점수를 입력해주세요.");
						return document.getElementsByName("form-score6")[i].focus();
					} else if(score7.trim() == "") {
						alert("점수를 입력해주세요.");
						return document.getElementsByName("form-score7")[i].focus();
					} else if(score8.trim() == "") {
						alert("점수를 입력해주세요.");
						return document.getElementsByName("form-score8")[i].focus();
					} else if(score9.trim() == "" && type == '참여자') {
						document.getElementsByName("form-score9")[i].value=0;
					} else if(score9.trim() == "") {
						alert("점수를 입력해주세요.");
						return document.getElementsByName("form-score9")[i].focus();
					}
				}
				
				let scoreList = [score1, score2, score3, score4, score5, score6, score7, score8, score9, opinion1];
				
				if(age=="") { 
					break;
				} else {
					param["programDtoList["+i+"].agency"]=agency;
					param["programDtoList["+i+"].openday"]=openday; 
					param["programDtoList["+i+"].ptcProgram"]=ptcProgram;
					param["programDtoList["+i+"].sex"]=sex;
					param["programDtoList["+i+"].age"]=age;
					param["programDtoList["+i+"].residence"]=residence;
					param["programDtoList["+i+"].job"]=job;
					param["programDtoList["+i+"].program_name"]=programName;
					param["programDtoList["+i+"].teacher"]=teacher;
					param["programDtoList["+i+"].place"]=place;
					param["programDtoList["+i+"].eval_date"]=eval_date;
					param["programDtoList["+i+"].type"]=type;
					param["programDtoList["+i+"].bunya"]=bunya;
					for(let j = 0; j < scoreList.length; j++) {
						param["programDtoList["+i+"].scoreList["+j+"]"] =scoreList[j]; 
					}
					rowCnt++;
				}
				
			}
			console.log(param);
			
			swal("수정하시겠습니까? 행 개수: " + rowCnt, "", "info", {
				buttons : ["취소", "확인"]
			}).then(function(confirm) {
				console.log(confirm);
				if (confirm) {
					$.ajax({
						url: "/insertForm/programInsertForm/insertData.do",
						type: "POST",
						data: param, 
						success:function(result) {
							swal({
								title : "수정 성공",
								text : "확인 버튼을 눌러주세요.",
								icon : "success"
							}).then(function() {
								window.location.reload();
							}); 
						},
						error:function(e) {
							console.log(e);
						}
					})
				}
			});	
		}
		
		/* 참여구분 문항9 막기 */
	function getElementIndex(element, range) {
        if (!!range) return [].indexOf.call(element, range);
        return [].indexOf.call(element.parentNode.children, element);
   }

		/* function changeType() { 
			[].forEach.call(document.querySelectorAll("select[name=form-type]"), function(el) {
			      el.addEventListener("change", function() {
			    	  var index = getElementIndex(document.querySelectorAll("select[name=form-type]"), el);
				         var line = document.getElementsByName("form-score9")[index];
				         if(document.getElementsByName('form-type')[index].value=='인솔자') { 
				        	 line.value='';
				        	 line.style.display='';
				        	 document.getElementsByName('form-opinion1')[index].style.marginLeft = '0px';
					         line.disabled = false;
				         }else {
				        	 line.value=0;
				        	 line.style.display='none';
				        	 document.getElementsByName('form-opinion1')[index].style.marginLeft = '65px';
					         line.disabled = true;
				         }
			      });
			   });
			} */
	[].forEach.call(document.querySelectorAll("select[name=form-type]"), function(el) {
	      el.addEventListener("change", function() {
	    	  
	    	 var index = getElementIndex(document.querySelectorAll("select[name=form-type]"), el);
	         var line = document.getElementsByName("form-score9")[index];
	         if(document.getElementsByName('form-type')[index].value=='인솔자') { 
	        	 line.value='';
	        	 line.style.display='';
	        	 document.getElementsByName('form-opinion1')[index].style.marginLeft = '0px';
		         line.disabled = false;
	         }else {
	        	 line.value=0;
	        	 line.style.display='none';
	        	 document.getElementsByName('form-opinion1')[index].style.marginLeft = '65px';
		         line.disabled = true;
	         }
	      });
	   });
	</script>
	<script type="text/javascript" src="/resources/js/common.js"></script>
	<!-- 페이지 내에서 이벤트가 발생하면 자바스크립트 함수를 실행하는 부분 ./---end -->
</body>
</html>