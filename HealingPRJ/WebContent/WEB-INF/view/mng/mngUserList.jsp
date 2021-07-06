<%@page import="java.util.Calendar"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	String[] uNameArr = {"최별규", "w홍석민", "이재훈", "유연준", "w홍두표"};
	String[] uRoleArr = {"관리자", "직원", "관리자", "관리자", "직원"};

	Calendar cal = Calendar.getInstance();
	SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd  HH:mm");
	String datestr = sdf.format(cal.getTime());
	System.out.println(datestr);
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

<script>
	
</script>

</head>
<body>
	<!--/.sidebar Sart-->
	<%@ include file="/WEB-INF/view/top.jsp"%>
	<%@ include file="/WEB-INF/view/sidebar.jsp"%>
	<!--/.sidebar End-->

<!-- 	<nav class="navbar navbar-custom navbar-fixed-top" role="navigation">
		<div class="container-fluid">
			<div class="navbar-header">
				<button type="button" class="navbar-toggle collapsed"
					data-toggle="collapse" data-target="#sidebar-collapse">
					<span class="sr-only">Toggle navigation</span> <span
						class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>
				<a class="navbar-brand" href="/index.do" style="margin-left: 1%;"><span>하이</span>힐링원</a>

			</div>
		</div>
		/.container-fluid
	</nav>
	<div id="sidebar-collapse" class="col-sm-3 col-lg-2 sidebar">
		<div class="profile-sidebar">
			<div class="profile-userpic">
				<img src="http://placehold.it/50/30a5ff/fff" class="img-responsive"
					alt="">
			</div>
			<div class="profile-usertitle">
				<div class="profile-usertitle-name">홍두표-관리자</div>
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
			홍두표 - li태그에 "active" 클래스를 추가해주면 버튼 활성화
			<li><a href="#"><em class="fa fa-dashboard">&nbsp;</em> 프로그램
					결과 입력</a></li>
			<li><a href="#"><em class="fa fa-calendar">&nbsp;</em>
					Widgets</a></li>
			<li><a href="#"><em class="fa fa-bar-chart">&nbsp;</em>
					Charts</a></li>
			<li><a href="#"><em class="fa fa-toggle-off">&nbsp;</em> UI
					Elements</a></li>
			<li><a href="#"><em class="fa fa-clone">&nbsp;</em> Alerts
					&amp; Panels</a></li>

			<li class="parent "><a data-toggle="collapse" href="#sub-item-1">
					<em class="fa fa-navicon">&nbsp;</em> Multilevel <span
					data-toggle="collapse" href="#sub-item-1" class="icon pull-right"><em
						class="fa fa-plus"></em></span>
			</a>
				<ul class="children collapse" id="sub-item-1">
					<li><a class="" href="#"> <span class="fa fa-arrow-right">&nbsp;</span>
							Sub Item 1
					</a></li>
					<li><a class="" href="#"> <span class="fa fa-arrow-right">&nbsp;</span>
							Sub Item 2
					</a></li>
					<li><a class="" href="#"> <span class="fa fa-arrow-right">&nbsp;</span>
							Sub Item 3
					</a></li>
				</ul></li>

			홍두표 - li.parent > a 에서 em태그를 사용하면 활성화 될 때 아이콘이 'fa-minus'로 바뀌므로 span태그를 사용하기를 권장함.
			<li class="parent active"><a data-toggle="collapse"
				href="#sub-item-2"> <span class="fa fa-power-off">&nbsp;</span>
					관리자 모드 <span data-toggle="collapse" href="#sub-item-2"
					class="icon pull-right"><em class="fa fa-plus"></em></span>
			</a>
				<ul class="children collapse" id="sub-item-2">
					<li><a class="" href="/mng/mngGetUserList.do"> <span
							class="fa fa-arrow-right">&nbsp;</span> 직원 계정 관리
					</a></li>
					<li><a class="" href="/mng/mngGetUserHist.do"> <span
							class="fa fa-arrow-right">&nbsp;</span> 사용자 이용 기록 조회
					</a></li>
				</ul></li>
			홍두표 - li.parent > a 에서 em태그를 사용하면 활성화 될 때 아이콘이 'fa-minus'로 바뀌므로 span태그를 사용하기를 권장함.
			홍두표 - li태그에 "active" 클래스를 추가해주면 버튼 활성화
		</ul>
	</div>
	/.sidebar -->

	<div class="col-sm-9 col-sm-offset-3 col-lg-10 col-lg-offset-2 main">
		<div class="row">
			<ol class="breadcrumb">
				<li><a href="#"> <em class="fa fa-home"></em>
				</a></li>
				<li class="active">관리자 모드</li>
				<li class="active">직원 계정 관리</li>
			</ol>
		</div>
		<!--/.row-->

		<div class="row">
			<div class="col-lg-12">
				<h1 class="page-header">직원 계정 관리</h1>
			</div>
		</div>
		<!--/.row-->

		<!-- 홍두표 - 직원 계정 관리 -->
		<div class="panel panel-default" style="min-height: 700px;">
			<div class="panel-heading"
				style="height: auto; border-bottom: none; margin-bottom: 3%;">
				<div>직원 계정 목록</div>
				<div class="input-group">
					<input id="btn-input" type="text" class="form-control input-md"
						placeholder="검색어를 입력하세요" /> <span class="input-group-btn"
						style="width: auto;">
						<button class="btn btn-lg btn-primary fa fa-search" id="btn-todo"></button>
					</span>
				</div>

			</div>

			<div class="panel-body">
				<ul class="todo-list">


					<!-- 홍두표 - 직원 계정 목록 -->
					<li class="todo-list-item">
						<div class="checkbox" style="width: 10%;">
							<!-- 번호 -->
							<label for="">번호</label>
						</div>
						<div class="checkbox" style="width: 20%; margin-right: 20%;">
							<!-- 직원명 -->
							<label for="">직원명</label>
						</div>
						<div class="checkbox" style="width: 10%; margin-right: 3%;">
							<!-- 권한 -->
							<label for="">권한</label>
						</div>
						<div class="checkbox" style="width: 20%; margin-right: 6%;">
							<!-- 가입일자 -->
							<%-- <label for=""><%=uList.get(i).getRegDate()%></label> --%>
							<label for="">가일일자</label>
						</div>
						<div class="checkbox" style="width: 6%; margin-right: 2%;">
							<label style="padding-left: 0px">삭제</label>
						</div> <!-- 삭제 -->
					</li>
					<li class="todo-list-item"
						style="padding: 1px 0px 1px 0px; border-top: 1px solid #dddddd; margin: 0px 20px 0px 25px;">
					</li>
					<!-- 홍두표 - 직원 목록 for문 -->
					<%
						for (int i = 0; i < uNameArr.length; i++) {
					%>
					<li class="todo-list-item userDetail" data-userNo="<%=i + 8%>">
						<%-- <li class="todo-list-item" onclick="userDetail(<%=i+8%>)"> --%>
						<%-- <li class="todo-list-item" onclick="userDetail(<%=uList.get(i).getUserNo()%>)"> --%>
						<div class="checkbox" style="width: 10%;">
							<!-- 번호 -->
							<%-- <label for=""><%=uList.get(i).getUserNo()%></label> --%>
							<label for=""><%=i + 8%></label>
						</div>
						<div class="checkbox" style="width: 20%; margin-right: 20%;">
							<!-- 직원명 -->
							<%
								if (uNameArr[i].substring(0, 1).equals("w")) {
							%>
							<label for=""><%=uNameArr[i].substring(1)%></label>
							<%
								} else {
							%>
							<label for=""><%=uNameArr[i]%></label>
							<%
								}
							%>
							<!-- 홍두표 - 승인 여부 컬럼값으로 조건문 처리 -->
							<%
								if (uNameArr[i].substring(0, 1).equals("w")) {
							%>
							<a type="button" class="btn btn-md btn-success agreeWait"
								data-name="<%=uNameArr[i].substring(1)%>"
								style="height: 22px; padding: 1px;">승인대기중</a>
							<!-- 승인여부 -->
							<%
								}
							%>
							<!-- 홍두표 - 승인 여부 컬럼값으로 조건문 처리 -->
						</div>
						<div class="checkbox" style="width: 10%; margin-right: 3%;">
							<!-- 권한 -->
							<label for=""><%=uRoleArr[i]%></label>
						</div>
						<div class="checkbox" style="width: 20%; margin-right: 6%;">
							<!-- 가입일자 -->
							<%-- <label for=""><%=uList.get(i).getRegDate()%></label> --%>
							<label><%=datestr%></label>
						</div>
						<div class="checkbox" style="width: 6%; margin-right: 2%;">
							<a href="#" class="trash"><span class="fa fa-trash"></span></a>
						</div> <!-- 삭제 -->
					</li>
					<%
						}
					%>
					<!-- 홍두표 - 직원 계정 목록 -->

				</ul>

			</div>
			<!-- 홍두표 - 계정 생성 -->
			<div class="form-group"
				style="margin-top: 150px; margin-right: 100px;">
				<div class="" style="text-align: right; width: 100%;">
					<button type="submit" class="btn btn-md btn-primary"
						onclick="location.href='/mng/mngCreateUser.do'">계정생성</button>
				</div>
			</div>

		</div>


		<div class="row">
			<div class="col-lg-12">
				<div class="panel panel-default chat" style="word-break: break-all;">

				</div>
			</div>
		</div>

		<!--  -->


	</div>
	<!--/.main-->

	<!-- <div class="row">
		<div class="col-xs-10 col-xs-offset-1 col-sm-8 col-sm-offset-2 col-md-4 col-md-offset-4">
			<div class="login-panel panel panel-default">
				<div class="panel-heading">Log in</div>
				<div class="panel-body">
					<form role="form">
						<fieldset>
							<div style="margin-bottom:10px">하이힐링원에 오신 것을 환영합니다!</div>
							<a href="index.html" class="btn btn-primary">Login</a>
						</fieldset>
					</form>
				</div>
			</div>
		</div>/.col
	</div>/.row -->

	<script src="/lumino/js/jquery-1.11.1.min.js"></script>
	<script src="/lumino/js/bootstrap.min.js"></script>
	<script src="/lumino/js/chart.min.js"></script>
	<script src="/lumino/js/chart-data.js"></script>
	<script src="/lumino/js/easypiechart.js"></script>
	<script src="/lumino/js/easypiechart-data.js"></script>
	<script src="/lumino/js/bootstrap-datepicker.js"></script>
	<script src="/lumino/js/custom.js"></script>
	<script>
		$(function() {
			$('.userDetail').click(
					function() {
						location.href = "/mng/mngGetUserDetail.do?userNo="
								+ $(this).attr('data-userNo');
					})
			$('.agreeWait').click(
					function() {
						$('.userDetail').unbind();
						isAllow = confirm($(this).attr('data-name')
								+ "님의 가입 신청을 승인하시겠습니까?");
						if (isAllow) {
							alert("승인되었습니다.");
						} else {
							isDisAllow = confirm("신청을 거부하시겠습니까?");
							if (isDisAllow) {
								alert("거부되었습니다.");
							}
						}
					})
		})
	</script>

</body>
</html>