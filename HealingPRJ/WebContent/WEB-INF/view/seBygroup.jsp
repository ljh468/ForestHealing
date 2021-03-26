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
	<nav class="navbar navbar-custom navbar-fixed-top" role="navigation">
		<div class="container-fluid">
			<div class="navbar-header">
				<button type="button" class="navbar-toggle collapsed"
					data-toggle="collapse" data-target="#sidebar-collapse">
					<span class="sr-only">Toggle navigation</span> <span
						class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>
				<a class="navbar-brand" href="#" style="margin-left: 1%;"><span>하이</span>힐링원</a>
				<ul class="nav navbar-top-links navbar-right">
					<li class="dropdown"><a class="dropdown-toggle count-info"
						data-toggle="dropdown" href="#"> <em class="fa fa-envelope"></em><span
							class="label label-danger">15</span>
					</a>
						<ul class="dropdown-menu dropdown-messages">
							<li>
								<div class="dropdown-messages-box">
									<a href="profile.html" class="pull-left"> <img alt="image"
										class="img-circle" src="http://placehold.it/40/30a5ff/fff">
									</a>
									<div class="message-body">
										<small class="pull-right">3 mins ago</small> <a href="#"><strong>John
												Doe</strong> commented on <strong>your photo</strong>.</a> <br /> <small
											class="text-muted">1:24 pm - 25/03/2015</small>
									</div>
								</div>
							</li>
							<li class="divider"></li>
							<li>
								<div class="dropdown-messages-box">
									<a href="profile.html" class="pull-left"> <img alt="image"
										class="img-circle" src="http://placehold.it/40/30a5ff/fff">
									</a>
									<div class="message-body">
										<small class="pull-right">1 hour ago</small> <a href="#">New
											message from <strong>Jane Doe</strong>.
										</a> <br /> <small class="text-muted">12:27 pm -
											25/03/2015</small>
									</div>
								</div>
							</li>
							<li class="divider"></li>
							<li>
								<div class="all-button">
									<a href="#"> <em class="fa fa-inbox"></em> <strong>All
											Messages</strong>
									</a>
								</div>
							</li>
						</ul></li>
					<li class="dropdown"><a class="dropdown-toggle count-info"
						data-toggle="dropdown" href="#"> <em class="fa fa-bell"></em><span
							class="label label-info">5</span>
					</a>
						<ul class="dropdown-menu dropdown-alerts">
							<li><a href="#">
									<div>
										<em class="fa fa-envelope"></em> 1 New Message <span
											class="pull-right text-muted small">3 mins ago</span>
									</div>
							</a></li>
							<li class="divider"></li>
							<li><a href="#">
									<div>
										<em class="fa fa-heart"></em> 12 New Likes <span
											class="pull-right text-muted small">4 mins ago</span>
									</div>
							</a></li>
							<li class="divider"></li>
							<li><a href="#">
									<div>
										<em class="fa fa-user"></em> 5 New Followers <span
											class="pull-right text-muted small">4 mins ago</span>
									</div>
							</a></li>
						</ul></li>
				</ul>
			</div>
		</div>
		<!-- /.container-fluid -->
	</nav>
	<div id="sidebar-collapse" class="col-sm-3 col-lg-2 sidebar">
		<div class="profile-sidebar">
			<div class="profile-userpic">
				<img src="http://placehold.it/50/30a5ff/fff" class="img-responsive"
					alt="">
			</div>
			<div class="profile-usertitle">
				<div class="profile-usertitle-name">관리자</div>
				<div class="profile-usertitle-status">
					<span class="indicator label-success"></span>사용중
				</div>
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
			<li class="active"><a href="#"><em class="fa fa-dashboard">&nbsp;</em>
					프로그램 결과 입력</a></li>
			<li><a href="#"><em class="fa fa-calendar">&nbsp;</em> 만족도 및
					효과평가 입력</a></li>
			<li><a href="#"><em class="fa fa-bar-chart">&nbsp;</em> 결과검색</a></li>
			<li class="parent "><a data-toggle="collapse" href="#sub-item-1">
					<em class="fa fa-navicon">&nbsp;</em> 만족도 및 효과평가 결과검색 <span
					data-toggle="collapse" href="#sub-item-1" class="icon pull-right"><em
						class="fa fa-plus"></em></span>
			</a>
				<ul class="children collapse" id="sub-item-1">
					<li><a class="" href="#"> <span class="fa fa-arrow-right">&nbsp;</span>
							단체별 만족도 및 효과평가
					</a></li>
					<li><a class="" href="#"> <span class="fa fa-arrow-right">&nbsp;</span>
							주제어별 만족도 및 효과평가
					</a></li>
				</ul></li>
			<li><a href="login.html"><em class="fa fa-power-off">&nbsp;</em>
					관리자 모드</a></li>
		</ul>
	</div>
	<!--/.sidebar-->

	<div class="col-sm-9 col-sm-offset-3 col-lg-10 col-lg-offset-2 main">
		<div class="row">
			<ol class="breadcrumb">
				<li><a href="#"> <em class="fa fa-home"></em>
				</a></li>
				<li class="active">만족도&효과평가 단체별 검색</li>
			</ol>
		</div>
		<!--/.row-->

		<div class="row">
			<div class="col-lg-12">
				<h1 class="page-header">만족도&효과평가 단체별 검색</h1>
			</div>
		</div>


		<form>
			<div style="display: inline-flex;">
				&nbsp;&nbsp; <span class="input-group input-group-lg"
					style="width: 300px;"> <select name="effect"
					class="form-control" style="border-radius: 5px;">
						<option value="program">프로그램 만족도</option>
						<option value="facility">시설서비스 환경 만족도</option>
						<option value="counseling">상담&치유 서비스</option>
						<option value="prevention">예방 서비스</option>
						<option value="healing">힐링 서비스</option>
						<option value="health">건강</option>
				</select>
				</span>
			</div>

			<hr style="margin-top: 10px; margin-bottom: 10px;">
			&nbsp;&nbsp;단체명을 입력하세요 <br>
			<div style="display: inline-flex">
				&nbsp;&nbsp;
				<div class="input-group input-group-lg" style="width: 500px;">
					<input type="text" placeholder="Search" class="form-control">
					<div class="input-group-btn">
						<button type="button" class="btn btn-default" tabindex="-1">
							<i class="fa fa-search"></i>
						</button>
					</div>
				</div>
			</div>
		</form>

		&nbsp;&nbsp;
		<div class="row" style="display: inline-flex; margin-top: 2%">
			<div class="col-lg-12">
				<div id="wrapper">
					<h1>&nbsp;&nbsp;&nbsp;프로그램 만족도</h1>
					<div style="width: 100%; height: 100%; overflow: auto">
						<table id="keywords" cellspacing="0" cellpadding="0">
							<tbody style="font-size: 0.51em;">
								<tr style="background-color: rgb(208, 219, 233);">
									<td rowspan="2">순번</td>
									<td rowspan="2">실시일자</td>
									<td rowspan="2">단체명</td>
									<td rowspan="2">참가자유형</td>
									<td rowspan="2">사업유형</td>
									<td rowspan="2">체류기간</td>
									<td rowspan="2">분야</td>
									<td rowspan="2">프로그램명</td>
									<td rowspan="2">강사명</td>
									<td colspan="4">강사</td>
									<td colspan="4">내용구성</td>
									<td colspan="4">효과성</td>
									<td rowspan="2">전체평균</td>
								</tr>

								<tr style="background-color: rgb(208, 219, 233);">
									<td rowspan="1">전문성</td>
									<td rowspan="1">성실성</td>
									<td rowspan="1">반응성</td>
									<td rowspan="1">평균</td>

									<td rowspan="1">체계성</td>
									<td rowspan="1">적합성</td>
									<td rowspan="1">흥미성</td>
									<td rowspan="1">평균</td>

									<td rowspan="1">학습성</td>
									<td rowspan="1">재참여</td>
									<td rowspan="1">추천</td>
									<td rowspan="1">평균</td>
								</tr>

								<%
									for (int i = 0; i < 50; i++) {
								%>
								<tr class="ProgramSatisfaction">
									<td>1</td>
									<td>2</td>
									<td>폴리텍 데이터분석과</td>
									<td>4</td>
									<td>5</td>
									<td>6</td>
									<td>7</td>
									<td>8</td>
									<td>9</td>
									<td>10</td>
									<td>11</td>
									<td>12</td>
									<td>13</td>
									<td>14</td>
									<td>15</td>
									<td>16</td>
									<td>17</td>
									<td>18</td>
									<td>19</td>
									<td>20</td>
									<td>21</td>
									<td>22</td>

								</tr>
								<%
									}
								%>
							</tbody>
						</table>
						</div>
						<!--/.table-->
						<br>
						<br>
						<br>
						<br>
						<br>
						<br>
					</div>
				</div>
			</div>
			<!--/.row-->

			<!--  -->


		</div>
		<!--/.main-->

		<script src="/lumino/js/jquery-1.11.1.min.js"></script>
		<script src="/lumino/js/bootstrap.min.js"></script>
		<script src="/lumino/js/chart.min.js"></script>
		<script src="/lumino/js/chart-data.js"></script>
		<script src="/lumino/js/easypiechart.js"></script>
		<script src="/lumino/js/easypiechart-data.js"></script>
		<script src="/lumino/js/bootstrap-datepicker.js"></script>
		<script src="/lumino/js/custom.js"></script>
		<script>
			window.onload = function() {
				var chart1 = document.getElementById("line-chart").getContext(
						"2d");
				window.myLine = new Chart(chart1).Line(lineChartData, {
					responsive : true,
					scaleLineColor : "rgba(0,0,0,.2)",
					scaleGridLineColor : "rgba(0,0,0,.05)",
					scaleFontColor : "#c5c7cc"
				});
			};
		</script>
</body>
</html>