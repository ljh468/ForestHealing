<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<!-- .sidebar start -->
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
			<li class="active"><a href="/insertOperateResult.do"><em
					class="fa fa-dashboard">&nbsp;</em> 프로그램 결과 입력</a></li>
					
			<li class="active"><a href="/result/ProgramList.do"><em
					class="fa fa-dashboard">&nbsp;</em> 연월별 단체 검색</a></li>

			<li class="parent"><a data-toggle="collapse" href="#sub-item-1">
					<em class="fa fa-bar-chart">&nbsp;</em> 운영결과 결과보고 <span
					data-toggle="collapse" href="#sub-item-1" class="icon pull-right">
						<em class="fa fa-plus"></em>
				</span>
			</a>
				<ul class="children collapse" id="sub-item-1">
					<li><a class="" href="/result/YearMonthResult.do"> <span
							class="fa fa-arrow-right">&nbsp;</span> 연●월 통계
					</a></li>
					<li><a class="" href="/result/ProgramResult.do"> <span
							class="fa fa-arrow-right">&nbsp;</span> 프로그램 운영결과
					</a></li>
					<li><a class="" href="/result/SearchResult.do"> <span
							class="fa fa-arrow-right">&nbsp;</span> 주제어별 운영결과 검색
					</a></li>
				</ul></li>
			
			<li class="active"><a href="/insertForm/serviceInsertForm.do"><em class="fa fa-dashboard">&nbsp;</em> 만족도 및 효과평가 입력</a></li>
			
			<li class="parent"><a data-toggle="collapse" href="#sub-item-2">
					<em class="fa fa-navicon">&nbsp;</em> 만족도 및 효과평가 결과검색 <span
					data-toggle="collapse" href="#sub-item-2" class="icon pull-right">
						<em class="fa fa-plus"></em>
				</span>
			</a>
				<ul class="children collapse" id="sub-item-2">
					<li><a class="" href="/seBy/seBygroup.do"> <span
							class="fa fa-arrow-right">&nbsp;</span> 단체별 만족도 및 효과평가
					</a></li>
					<li><a class="" href="/seBy/seBysubject.do"> <span
							class="fa fa-arrow-right">&nbsp;</span> 주제어별 만족도 및 효과평가
					</a></li>
				</ul></li>
			
			<li class="parent"><a data-toggle="collapse" href="#sub-item-3">
					<em class="fa fa-power-off">&nbsp;</em> 관리자모드 <span
					data-toggle="collapse" href="#sub-item-4" class="icon pull-right">
						<em class="fa fa-plus"></em>
				</span>
			</a>
				<ul class="children collapse" id="sub-item-3">
					<li><a class="" href="/mng/mngGetUserList.do"> <span
							class="fa fa-arrow-right">&nbsp;</span> 직원 계정 관리
					</a></li>
					<li><a class="" href="/mng/mngGetUserHist.do"> <span
							class="fa fa-arrow-right">&nbsp;</span> 사용자 이용 기록 조회
					</a></li>
				</ul></li>
			<!-- 홍두표 - li.parent > a 에서 em태그를 사용하면 활성화 될 때 아이콘이 'fa-minus'로 바뀌므로 span태그를 사용하기를 권장함. -->
				<!-- <li class="parent active"><a data-toggle="collapse"
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
					</ul>
				</li> -->
				<!-- 홍두표 - li.parent > a 에서 em태그를 사용하면 활성화 될 때 아이콘이 'fa-minus'로 바뀌므로 span태그를 사용하기를 권장함. -->
				<!-- 홍두표 - li태그에 "active" 클래스를 추가해주면 버튼 활성화 -->
		</ul>
	</div>
	<!--/.sidebar end-->

</body>
<script src="/lumino/js/jquery-1.11.1.min.js"></script>
<script src="/lumino/js/bootstrap.min.js"></script>
<script src="/lumino/js/chart.min.js"></script>
<script src="/lumino/js/chart-data.js"></script>
<script src="/lumino/js/easypiechart.js"></script>
<script src="/lumino/js/easypiechart-data.js"></script>
<script src="/lumino/js/bootstrap-datepicker.js"></script>
<script src="/lumino/js/custom.js"></script>



<script>
	/*menu handler*/
	$(function() {
		var url = window.location.pathname;
		var activePage = url.substring(url.lastIndexOf('/') + 1);

		$('.nav li a').each(
				function() {
					var currentPage = this.href.substring(this.href
							.lastIndexOf('/') + 1);

					if (activePage == currentPage) {
						$(".nav").find(".active").removeClass("active");
						$(this).parent().addClass('active');
						$(this).addClass('active');
					}
				});
	})
</script>

</html>