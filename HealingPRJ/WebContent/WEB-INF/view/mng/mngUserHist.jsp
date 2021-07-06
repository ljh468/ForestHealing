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
	<nav class="navbar navbar-custom navbar-fixed-top" role="navigation">
		<div class="container-fluid">
			<div class="navbar-header">
				<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#sidebar-collapse"><span class="sr-only">Toggle navigation</span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span></button>
				<a class="navbar-brand" href="#" style="margin-left: 1%;"><span>하이</span>힐링원</a>
			</div>
		</div><!-- /.container-fluid -->
	</nav>
	<div id="sidebar-collapse" class="col-sm-3 col-lg-2 sidebar">
		<div class="profile-sidebar">
			<div class="profile-userpic">
				<img src="http://placehold.it/50/30a5ff/fff" class="img-responsive" alt="">
			</div>
			<div class="profile-usertitle">
				<div class="profile-usertitle-name">홍두표-관리자</div>
				<div class="profile-usertitle-status"><span class="indicator label-success"></span>사용중</div>
			</div>
			<div class="clear"></div>
		</div>
		<div class="divider"></div>
		<form role="search">
			<div class="form-group">
				<input type="text" class="form-control" placeholder="Search">
			</div>
		</form>
		<ul class="nav menu">
			<!-- 홍두표 - li태그에 "active" 클래스를 추가해주면 버튼 활성화 -->
			<li><a href="#"><em class="fa fa-dashboard">&nbsp;</em> 프로그램 결과 입력</a></li>
			<li><a href="#"><em class="fa fa-calendar">&nbsp;</em> Widgets</a></li>
			<li><a href="#"><em class="fa fa-bar-chart">&nbsp;</em> Charts</a></li>
			<li><a href="#"><em class="fa fa-toggle-off">&nbsp;</em> UI Elements</a></li>
			<li><a href="#"><em class="fa fa-clone">&nbsp;</em> Alerts &amp; Panels</a></li>
			
			<li class="parent "><a data-toggle="collapse" href="#sub-item-1">
				<em class="fa fa-navicon">&nbsp;</em> Multilevel <span data-toggle="collapse" href="#sub-item-1" class="icon pull-right"><em class="fa fa-plus"></em></span>
				</a>
				<ul class="children collapse" id="sub-item-1">
					<li><a class="" href="#">
						<span class="fa fa-arrow-right">&nbsp;</span> Sub Item 1
					</a></li>
					<li><a class="" href="#">
						<span class="fa fa-arrow-right">&nbsp;</span> Sub Item 2
					</a></li>
					<li><a class="" href="#">
						<span class="fa fa-arrow-right">&nbsp;</span> Sub Item 3
					</a></li>
				</ul>
			</li>
			
			<!-- 홍두표 - li.parent > a 에서 em태그를 사용하면 활성화 될 때 아이콘이 'fa-minus'로 바뀌므로 span태그를 사용하기를 권장함. -->
			<li class="parent active"><a data-toggle="collapse" href="#sub-item-2">
				<span class="fa fa-power-off">&nbsp;</span> 관리자 모드 <span data-toggle="collapse" href="#sub-item-2" class="icon pull-right"><em class="fa fa-plus"></em></span>
				</a>
				<ul class="children collapse" id="sub-item-2">
					<li><a class="" href="/mng/mngGetUserList.do">
						<span class="fa fa-arrow-right">&nbsp;</span> 직원 계정 관리
					</a></li>
					<li><a class="" href="/mng/mngGetUserHist.do">
						<span class="fa fa-arrow-right">&nbsp;</span> 사용자 이용 기록 조회
					</a></li>
				</ul>
			</li>
			
			
		</ul>
	</div><!--/.sidebar-->
		
	<div class="col-sm-9 col-sm-offset-3 col-lg-10 col-lg-offset-2 main">
		<div class="row">
			<ol class="breadcrumb">
				<li><a href="#">
					<em class="fa fa-home"></em>
				</a></li>
				<li class="active">관리자 모드</li>
				<li class="active">사용자 이용 기록 조회</li>
			</ol>
		</div><!--/.row-->
		
		<div class="row">
			<div class="col-lg-12">
				<h1 class="page-header">사용자 이용 기록 조회</h1>
			</div>
		</div><!--/.row-->
		
		<!-- 홍두표 - 사용자 이용 기록 조회 -->
		<div class="panel panel-default ">
					<div class="panel-heading">
						사용자 이용 기록
						<span class="pull-right clickable panel-toggle panel-button-tab-left"><em class="fa fa-toggle-up"></em></span></div>
					
					<div class="panel-body timeline-container">
						<ul class="timeline">
							<li>
								<div class="timeline-badge primary"><i class="glyphicon glyphicon-user"></i></div>
								<div class="timeline-panel">
									<div class="timeline-heading">
										<span class="timeline-title" style="display:inline-block; margin-bottom: 3px; font-size: smaller;">홍두표 - 관리자  |  </span>
										<span style="display:inline-block; font-size:small">2021-03-24 15:36</span>
									</div>
									<div class="timeline-body">
										<span>이재훈(님) 권한 변경</span>
									</div>
								</div>
							</li>
							<li>
								<div class="timeline-badge"><i class="glyphicon glyphicon-user"></i></div>
								<div class="timeline-panel">
									<div class="timeline-heading">
										<span class="timeline-title" style="display:inline-block; margin-bottom: 3px; font-size: smaller;">홍석민 - 직원 | </span>
										<span style="display:inline-block; font-size:small">2021-03-24 14:00</span>
									</div>
									<div class="timeline-body">
										<span>해당 일자에 홈페이지 접속</span>
									</div>
								</div>
							</li>
							<li>
								<div class="timeline-badge"><i class="glyphicon glyphicon-user"></i></div>
								<div class="timeline-panel">
									<div class="timeline-heading">
										<span class="timeline-title" style="display:inline-block; margin-bottom: 3px; font-size: smaller;">이재훈 - 관리자 | </span>
										<span style="display:inline-block; font-size:small">2021-03-23 20:15</span>
									</div>
									<div class="timeline-body">
										<span>프로그램 하부 메뉴 변경</span>
									</div>
								</div>
							</li>
							<li>
								<div class="timeline-badge"><i class="glyphicon glyphicon-user"></i></div>
								<div class="timeline-panel">
									<div class="timeline-heading">
										<span class="timeline-title" style="display:inline-block; margin-bottom: 3px; font-size: smaller;">유연준 - 관리자 | </span>
										<span style="display:inline-block; font-size:small">2021-03-23 18:14</span>
									</div>
									<div class="timeline-body">
										<span>홍석민(님) 권한 변경</span>
									</div>
								</div>
							</li>
							<li>
								<div class="timeline-badge primary"><i class="glyphicon glyphicon-user"></i></div>
								<div class="timeline-panel">
									<div class="timeline-heading">
										<span class="timeline-title" style="display:inline-block; margin-bottom: 3px; font-size: smaller;">홍두표 - 관리자 | </span>
										<span style="display:inline-block; font-size:small">2021-03-20 18:14</span>
									</div>
									<div class="timeline-body">
										<span>해당 일자에 홈페이지 접속</span>
									</div>
								</div>
							</li>
						</ul>
					</div>
				</div>
		<!-- <div class="row">
			<div class="col-lg-12">
				<div class="panel panel-default chat" style="word-break: break-all;">
					사용중입니다.
				</div>
			</div>
		</div> -->
		
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
	<script>
		window.onload = function () {
	var chart1 = document.getElementById("line-chart").getContext("2d");
	window.myLine = new Chart(chart1).Line(lineChartData, {
	responsive: true,
	scaleLineColor: "rgba(0,0,0,.2)",
	scaleGridLineColor: "rgba(0,0,0,.05)",
	scaleFontColor: "#c5c7cc"
	});
};
	</script>
		
</body>
</html>