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
						<div style="padding: 0 1rem;flex-basis: auto;white-space: nowrap;align-self: center;">
							<div style="float: left; margin: 2px 10px 2px 0px;padding: 0 1rem; flex-basis: auto;white-space: nowrap;align-self: center;">
								<input type="button" class="btn btn-default btn-sm has-history" value="조회" onclick="selectList()">
							</div>
						</div>
						<div style="flex: auto;flex-basis: auto;white-space: nowrap;display: inline-flex;overflow: hidden;">
							<div style="margin-right: 15px;">
								<h4 style="float : left; margin: 13px 10px 13px 0px;">기관명</h4> 
								<div style="width: 120px;float: left;margin-right: 10px;flex: auto;flex-basis: auto;white-space: nowrap;max-width: 300px;">
									<input class="form-control form-agency" name='form-agency' placeholder="기관명">
								</div>
								
								<h4 style="float : left; margin: 13px 10px 13px 0px;">실시일자</h4> 
								<div style="width: 160px; float: left; margin-right: 10px;">
									<input class="form-control form-date" type="date" name='form-date'>
								</div>
							</div>
						</div>
					</div>
					<div class="panel-body" style="overflow-x: hidden; height: auto; overflow-y: hidden;">
					
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
	<script type="text/javascript">
	function selectList() { 
		let agency = document.getElementsByName('form-agency')[0].value;
		let date = document.getElementsByName('form-date')[0].value;
		
		if(agency.trim() == '') {
			alert('기관을 입력해주세요.');
			return false;
		} else if(date.trim() == '') {
			alert('실시일자를 입력해주세요.');
			return false;
		}
		
		$.ajax({
			url: "/updateForm/getList.do",
			type: "POST",
			data: {'agency':agency, 'date':date}, 
			success:function(result) {
				
				
			},
			error:function(e) {
				console.log(e);
			}
		});
		
		console.log(agency);
		console.log(date);
	}
	</script>
	
</body>
</html>