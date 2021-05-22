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
			<div class="col-md-12">
				
				<div class="panel panel-default chat">
				
					<div class="panel-heading" style="display: flex;">
						<p style="margin: 0; padding: 0 1rem; white-space: nowrap; text-overflow: ellipsis; overflow: hidden;">서비스환경 만족도</p>
						<div style="flex: auto; padding: 0 1rem; flex-basis: auto; white-space: nowrap;">
							<input type="button" class="btn btn-success btn-sm" value="추가" onclick="add_div()">
							<input type="button" class="btn btn-danger btn-sm" value="삭제" onclick="remove_div(this)">
						</div>
						<!-- 버튼 선택부분 시작 -->
						<div style="padding: 0 1rem; white-space: nowrap;">
							<button type="button" class="btn btn-primary btn-sm" disabled=false id="insertInfo" onclick="btn_insertInfo()" style="text-overflow: ellipsis; white-space: nowrap; overflow: hidden;">직접입력</button>
							<button type="button" class="btn btn-primary btn-sm" id="loadExcel" onclick="btn_loadExcel()">엑셀로 불러오기</button>
						</div>
						<!--  -->
					</div>
				
				
					<div class="panel-body" style="overflow-x: scroll; height: auto;">
						<!--  -->
						
						<div style="width: 2500px;height: 70px">
							<div style="width: 120px; float: left; margin-right: 10px; text-align: center; -webkit-text-emphasis-style: open;"><h4 style="font-weight: 600">이름</h4></div>
							<div style="width: 120px; float: left; margin-right: 10px; text-align: center; -webkit-text-emphasis-style: open;"><h4 style="font-weight: 600">참여프로그램</h4></div>
							<div style="width: 120px; float: left; margin-right: 10px; text-align: center; -webkit-text-emphasis-style: open;"><h4 style="font-weight: 600">성별</h4></div>
							<div style="width: 60px; float: left; margin-right: 10px; text-align: center; -webkit-text-emphasis-style: open;"><h4 style="font-weight: 600">연령</h4></div>
							<div style="width: 90px; float: left; margin-right: 10px; text-align: center; -webkit-text-emphasis-style: open;"><h4 style="font-weight: 600">거주지</h4></div>
							<div style="width: 120px; float: left; margin-right: 10px; text-align: center; -webkit-text-emphasis-style: open;"><h4 style="font-weight: 600">직업</h4></div>
							<div style="width: 60px; float: left; margin-right: 20px; text-align: center;"><h4 style="font-weight: 600">숙소<br>(문항1)</h4></div>
							<div style="width: 60px; float: left; margin-right: 20px; text-align: center;"><h4 style="font-weight: 600">숙소<br>(문항2)</h4></div>
							<div style="width: 60px; float: left; margin-right: 20px; text-align: center"><h4 style="font-weight: 600">식당<br>(문항3)</h4></div>
							<div style="width: 60px; float: left; margin-right: 20px; text-align: center"><h4 style="font-weight: 600">식당<br>(문항4)</h4></div>
							<div style="width: 105px; float: left; margin-right: 20px; text-align: center"><h4 style="font-weight: 600">프로그램 장소(문항5)</h4></div>
							<div style="width: 105px; float: left; margin-right: 20px; text-align: center"><h4 style="font-weight: 600">프로그램 장소(문항6)</h4></div>
							<div style="width: 105px; float: left; margin-right: 20px; text-align: center"><h4 style="font-weight: 600">프로그램 장소(문항7)</h4></div>
							<div style="width: 60px; float: left; margin-right: 20px; text-align: center"><h4 style="font-weight: 600">야외<br>(문항8)</h4></div>
							<div style="width: 60px; float: left; margin-right: 20px; text-align: center"><h4 style="font-weight: 600">야외<br>(문항9)</h4></div>
							<div style="width: 70px; float: left; margin-right: 20px; text-align: center"><h4 style="font-weight: 600">야외<br>(문항10)</h4></div>
							<div style="width: 60px; float: left; margin-right: 20px; text-align: center"><h4 style="font-weight: 600">운영<br>(문항1)</h4></div>
							<div style="width: 60px; float: left; margin-right: 20px; text-align: center"><h4 style="font-weight: 600">운영<br>(문항2)</h4></div>
							<div style="width: 60px; float: left; margin-right: 20px; text-align: center"><h4 style="font-weight: 600">운영<br>(문항3)</h4></div>
							<div style="width: 60px; float: left; margin-right: 20px; text-align: center"><h4 style="font-weight: 600">식사<br>(문항4)</h4></div>
							<div style="width: 60px; float: left; margin-right: 20px; text-align: center"><h4 style="font-weight: 600">식사<br>(문항5)</h4></div>
							<div style="width: 60px; float: left; margin-right: 20px; text-align: center"><h4 style="font-weight: 600">식사<br>(문항6)</h4></div>
							<div style="width: 90px; float: left; margin-right: 20px; text-align: center"><h4 style="font-weight: 600">잠재적 관광수요(문항8)</h4></div>
							<div style="width: 90px; float: left; margin-right: 20px; text-align: center"><h4 style="font-weight: 600">잠재적 관광수요(문항9)</h4></div>
						</div>                                                                           
						
						<!--  -->
					
						<!-- <div id="insertForm"> -->
						<%for(int i=0; i<20; i++)  { %>
						<div style="width: 2350px">
						
						<!--  -->
						<div style="width: 120px; float: left; margin-right: 10px;">
							<form role="form">
								<div class="form-group">
									<input class="form-control" placeholder="이름">
								</div>
							</form>
						</div>
						<!--  -->
						<div style="width: 120px; float: left; margin-right: 10px;">
							<form role="form">
							
								<div class="form-group">
									<select class="form-control" style="height: 46px;">
										<option>당일형</option>
										<option>1박2일형</option>
										<option>2박3일형</option>
									</select>
								</div>
							</form>
						</div>
						<!--  -->
						<div style="width: 120px; float: left; margin-right: 10px;">
							<form role="form">
								<div class="form-group">
									<input class="form-control" placeholder="성별">
								</div>
							</form>
						</div>
						<!--  -->
						<div style="width: 60px; float: left; margin-right: 10px;">
							<form role="form">
								<div class="form-group">
									<input class="form-control" placeholder="연령">
								</div>
							</form>
						</div>
						
						<div style="width: 90px; float: left; margin-right: 10px;">
							<form role="form">
							
								<div class="form-group">
									<select class="form-control" style="height: 46px;">
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
							</form>
						</div>
						
						<!--  -->
						<div style="width: 120px; float: left; margin-right: 10px;">
							<form role="form">
							
								<div style="width: 120px">
									<select class="form-control" style="height: 46px;">
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
							</form>
						</div>
						
						<div style="width: 60px; float: left; margin-right: 20px;">
							<form role="form">
								<div class="form-group">
									<input class="form-control" placeholder="점수">
								</div>
							</form>
						</div>
						
						<div style="width: 60px; float: left;margin-right: 20px;">
							<form role="form">
								<div class="form-group">
									<input class="form-control" placeholder="점수">
								</div>
							</form>
						</div>
						
						<div style="width: 60px; float: left;margin-right: 20px;">
							<form role="form">
							
								<div class="form-group">
									<input class="form-control" placeholder="점수">
								</div>
							</form>
						</div>
						
						<div style="width: 60px; float: left;margin-right: 20px;">
							<form role="form">
							
								<div class="form-group">
									<input class="form-control" placeholder="점수">
								</div>
							</form>
						</div>
						
						<div style="width: 60px; float: left; margin-right: 43px; margin-left: 22px;">
							<form role="form">
							
								<div class="form-group">
									<input class="form-control" placeholder="점수">
								</div>
							</form>
						</div>
						
						<div style="width: 60px; float: left; margin-right: 44px; margin-left: 22px;">
							<form role="form">
							
								<div class="form-group">
									<input class="form-control" placeholder="점수">
								</div>
							</form>
						</div>
						
						<div style="width: 60px; float: left; margin-right: 43px; margin-left: 22px;">
							<form role="form">
							
								<div class="form-group">
									<input class="form-control" placeholder="점수">
								</div>
							</form>
						</div>
						
						<div style="width: 60px; float: left;margin-right: 20px;">
							<form role="form">
							
								<div class="form-group">
									<input class="form-control" placeholder="점수">
								</div>
							</form>
						</div>
						
						<div style="width: 60px; float: left; margin-right: 20px;">
							<form role="form">
							
								<div class="form-group">
									<input class="form-control" placeholder="점수">
								</div>
							</form>
						</div>
						
						<div style="width: 60px; float: left;margin-right: 25px; margin-left: 5px">
							<form role="form">
							
								<div class="form-group">
									<input class="form-control" placeholder="점수">
								</div>
							</form>
						</div>
						
						<div style="width: 60px; float: left;margin-right: 20px;">
							<form role="form">
							
								<div class="form-group">
									<input class="form-control" placeholder="점수">
								</div>
							</form>
						</div>
						
						<div style="width: 60px; float: left; margin-right: 20px;">
							<form role="form">
							
								<div class="form-group">
									<input class="form-control" placeholder="점수">
								</div>
							</form>
						</div>
						
						<div style="width: 60px; float: left; margin-right: 20px;">
							<form role="form">
							
								<div class="form-group">
									<input class="form-control" placeholder="점수">
								</div>
							</form>
						</div>
						
						<div style="width: 60px; float: left; margin-right: 20px;">
							<form role="form">
							
								<div class="form-group">
									<input class="form-control" placeholder="점수">
								</div>
							</form>
						</div>
						
						<div style="width: 60px; float: left; margin-right: 20px;">
							<form role="form">
							
								<div class="form-group">
									<input class="form-control" placeholder="점수">
								</div>
							</form>
						</div>
						
						<div style="width: 60px; float: left; margin-right: 20px;">
							<form role="form">
							
								<div class="form-group">
									<input class="form-control" placeholder="점수">
								</div>
							</form>
						</div>
						
						<div style="width: 60px; float: left; margin-right: 35px; margin-left: 15px">
							<form role="form">
							
								<div class="form-group">
									<input class="form-control" placeholder="점수">
								</div>
							</form>
						</div>
						
						<div style="width: 60px; float: left; margin-right: 35px; margin-left: 15px">
							<form role="form">
							
								<div class="form-group">
									<input class="form-control" placeholder="점수">
								</div>
							</form>
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
	</div>	<!--/.main-->
	
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
	
	
	
		
</body>
</html>