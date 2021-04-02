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
			<li class="active"><a href="index.do"><em class="fa fa-dashboard">&nbsp;</em> 프로그램 결과 입력</a></li>
					
			<li><a href="index2.do"><em class="fa fa-calendar">&nbsp;</em> 만족도 및 효과평가 입력</a></li>
					
			<li><a href="seBygroup.do"><em class="fa fa-bar-chart">&nbsp;</em> 결과검색</a></li>
			
			<li class="parent "><a data-toggle="collapse" href="#sub-item-1"><em class="fa fa-navicon">&nbsp;</em> 
			만족도 및 효과평가 결과검색 
			<span data-toggle="collapse" href="#sub-item-1" class="icon pull-right"><em class="fa fa-plus"></em></span>
			</a>
			
			
				<ul class="children collapse" id="sub-item-1">
					<li><a class="" href="seBysubject.do"> <span class="fa fa-arrow-right">&nbsp;</span>
							단체별 만족도 및 효과평가
					</a></li>
					<li><a class="" href="seBysubject2.do"> <span class="fa fa-arrow-right">&nbsp;</span>
							주제어별 만족도 및 효과평가
					</a></li>
				</ul></li>
			<li><a href="login.html"><em class="fa fa-power-off">&nbsp;</em>
					관리자 모드</a></li>
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
	$(function(){
	    var url = window.location.pathname;  
	    var activePage = url.substring(url.lastIndexOf('/')+1);
	    
	    $('.nav li a').each(function(){  
	        var currentPage = this.href.substring(this.href.lastIndexOf('/')+1);
			
	        if (activePage == currentPage) {
	        	$(".nav").find(".active").removeClass("active");
	            $(this).parent().addClass('active'); 
	            $(this).addClass('active');
	        }
	    });
	})
	
	
	


	</script>

</html>