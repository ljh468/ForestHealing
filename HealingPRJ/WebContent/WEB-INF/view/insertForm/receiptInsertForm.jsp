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
							<h4 style="float : left; margin-right : 10px;">콘텐츠 종류</h4> 
							<div style="width: 120px; float: left; margin-right: 20px;">
								<select class="form-control" name="form-contents"style="height: 46px;">
									<option>게임</option>
									<option>도박</option>
									<option>SNS</option>
									<option>성인물</option>
									<option>웹툰/웹소설</option>
									<option>기타동영상</option>
									<option>기타</option>
								</select>
							</div>
							<h4 style="float : left; margin-right : 10px;">회기</h4> 
							<div style="width: 90px; float: left; margin-right: 10px;">
								<input class="form-control" name='form-time' placeholder="회당시간">
							</div>
							<div style="width: 90px; float: left; margin-right: 20px;">
								<input class="form-control" name='form-bill' placeholder="월사용료">
							</div>
							<h4 style="float : left; margin-right : 10px;">시점</h4> 
							<div style="width: 90px; float: left; margin-right: 10px;">
								<select class="form-control" name="form-pv"style="height: 46px;">
									<option>사전</option>
									<option>중간</option>
									<option>종결</option>
								</select>
							</div>
						</div>
					</div>
				
				
					<div class="panel-body" style="overflow-x: scroll; height: auto; overflow-y: hidden;">
						<!--  -->
						
						<div style="width:5400px;height: 70px">
						
							<div style="width: 120px; float: left; margin-right: 10px; margin-left:30px; text-align: center; -webkit-text-emphasis-style: open;"><h4 style="font-weight: 600">이름</h4></div>
						
							<!--입력양식의 공통부분 -->
							<div style="width: 60px; float: left; margin-right: 10px; text-align: center; -webkit-text-emphasis-style: open;"><h4 style="font-weight: 600">성별</h4></div>
							<div style="width: 60px; float: left; margin-right: 10px; text-align: center; -webkit-text-emphasis-style: open;"><h4 style="font-weight: 600">연령</h4></div>
							<div style="width: 90px; float: left; margin-right: 10px; text-align: center; -webkit-text-emphasis-style: open;"><h4 style="font-weight: 600">거주지</h4></div>
							<div style="width: 120px; float: left; margin-right: 10px; text-align: center; -webkit-text-emphasis-style: open;"><h4 style="font-weight: 600">직업</h4></div>
							<!--입력양식의 공통부분 -->
							
							<div style="width: 120px; float: left; margin-right: 30px; text-align: center;"><h4 style="font-weight: 600">과거 상담/치유 서비스 경험</h4></div>
							<div style="width: 150px; float: left; margin-right: 13px;text-align: center;"><h4 style="font-weight: 600; margin-bottom: 0px">변화동기</h4>
								<h5 style="font-weight: 600;display: inline-block;width:65px; float:left;">문항1 </h5>
								<h5 style="font-weight: 600;display: inline-block;width:70px">문항2 </h5>
							</div>
							<div style="width: 210px; float: left; margin-right: 13px;text-align: center; "><h4 style="font-weight: 600; margin-bottom: 0px">신뢰(라포)</h4>
								<h5 style="font-weight: 600;display: inline-block;width:65px; float:left;">문항3</h5>
								<h5 style="font-weight: 600;display: inline-block;width:65px">문항4</h5>
								<h5 style="font-weight: 600;display: inline-block;width:70px">문항5</h5>
							</div>
							<div style="width: 150px; float: left; margin-right: 13px;text-align: center; "><h4 style="font-weight: 600; margin-bottom: 0px">서비스이해</h4>
								<h5 style="font-weight: 600;display: inline-block;width:65px; float:left;">문항6 </h5>
								<h5 style="font-weight: 600;display: inline-block;width:70px">문항7 </h5>
							</div>
							<div style="width: 210px; float: left; margin-right: 13px;text-align: center; "><h4 style="font-weight: 600; margin-bottom: 0px">조절실패</h4>
								<h5 style="font-weight: 600;display: inline-block;width:65px; float:left;">문항8</h5>
								<h5 style="font-weight: 600;display: inline-block;width:65px">문항9</h5>
								<h5 style="font-weight: 600;display: inline-block;width:70px">문항10</h5>
							</div>
							<div style="width: 210px; float: left; margin-right: 13px;text-align: center; "><h4 style="font-weight: 600; margin-bottom: 0px">현저성</h4>
								<h5 style="font-weight: 600;display: inline-block;width:65px; float:left;">문항11</h5>
								<h5 style="font-weight: 600;display: inline-block;width:65px">문항12</h5>
								<h5 style="font-weight: 600;display: inline-block;width:70px">문항13</h5>
							</div>
							<div style="width: 290px; float: left; margin-right: 13px;text-align: center;"><h4 style="font-weight: 600; margin-bottom: 0px">문제적 결과</h4>
								<h5 style="font-weight: 600;display: inline-block;width:65px; float:left;">문항14</h5>
								<h5 style="font-weight: 600;display: inline-block;width:65px">문항15</h5>
								<h5 style="font-weight: 600;display: inline-block;width:65px">문항16</h5>
								<h5 style="font-weight: 600;display: inline-block;width:70px">문항17</h5>
							</div>
							<div style="width: 430px; float: left; margin-right: 13px;text-align: center;"><h4 style="font-weight: 600; margin-bottom: 0px">낮은자기조절력</h4>
								<h5 style="font-weight: 600;display: inline-block;width:65px; float:left;">문항18</h5>
								<h5 style="font-weight: 600;display: inline-block;width:65px">문항19</h5>
								<h5 style="font-weight: 600;display: inline-block;width:65px">문항20</h5>
								<h5 style="font-weight: 600;display: inline-block;width:65px">문항21</h5>
								<h5 style="font-weight: 600;display: inline-block;width:65px">문항22</h5>
								<h5 style="font-weight: 600;display: inline-block;width:70px">문항23</h5>
							</div>
							<div style="width: 210px; float: left; margin-right: 13px;text-align: center; "><h4 style="font-weight: 600; margin-bottom: 0px">부정정서</h4>
								<h5 style="font-weight: 600;display: inline-block;width:65px; float:left;">문항24</h5>
								<h5 style="font-weight: 600;display: inline-block;width:65px">문항25</h5>
								<h5 style="font-weight: 600;display: inline-block;width:70px">문항26</h5>
							</div>
							<div style="width: 210px; float: left; margin-right: 13px;text-align: center; "><h4 style="font-weight: 600; margin-bottom: 0px">편향된 신념</h4>
								<h5 style="font-weight: 600;display: inline-block;width:65px; float:left;">문항27</h5>
								<h5 style="font-weight: 600;display: inline-block;width:65px">문항28</h5>
								<h5 style="font-weight: 600;display: inline-block;width:70px">문항29</h5>
							</div>
							<div style="width: 430px; float: left; margin-right: 13px;text-align: center; "><h4 style="font-weight: 600; margin-bottom: 0px">역기능적 자기도식</h4>
								<h5 style="font-weight: 600;display: inline-block;width:65px; float:left;">문항30</h5>
								<h5 style="font-weight: 600;display: inline-block;width:65px">문항31</h5>
								<h5 style="font-weight: 600;display: inline-block;width:65px">문항32</h5>
								<h5 style="font-weight: 600;display: inline-block;width:65px">문항33</h5>
								<h5 style="font-weight: 600;display: inline-block;width:65px">문항34</h5>
								<h5 style="font-weight: 600;display: inline-block;width:70px">문항35</h5>
							</div>
							<div style="width: 210px; float: left; margin-right: 13px;text-align: center; "><h4 style="font-weight: 600; margin-bottom: 0px">대인관계 기술부적</h4>
								<h5 style="font-weight: 600;display: inline-block;width:65px; float:left;">문항36</h5>
								<h5 style="font-weight: 600;display: inline-block;width:65px">문항37</h5>
								<h5 style="font-weight: 600;display: inline-block;width:70px">문항38</h5>
							</div>
							<div style="width: 290px; float: left; margin-right: 13px;text-align: center; "><h4 style="font-weight: 600; margin-bottom: 0px">대인 민감성</h4>
								<h5 style="font-weight: 600;display: inline-block;width:65px; float:left;">문항39</h5>
								<h5 style="font-weight: 600;display: inline-block;width:65px">문항40</h5>
								<h5 style="font-weight: 600;display: inline-block;width:65px">문항41</h5>
								<h5 style="font-weight: 600;display: inline-block;width:70px">문항42</h5>
							</div>
							<div style="width: 150px; float: left; margin-right: 13px;text-align: center; "><h4 style="font-weight: 600; margin-bottom: 0px">관계/유능 욕구충족</h4>
								<h5 style="font-weight: 600;display: inline-block;width:65px; float:left;">문항43</h5>
								<h5 style="font-weight: 600;display: inline-block;width:70px">문항44</h5>
							</div>
							<div style="width: 210px; float: left; margin-right: 13px;text-align: center; "><h4 style="font-weight: 600; margin-bottom: 0px">긍정정서</h4>
								<h5 style="font-weight: 600;display: inline-block;width:65px; float:left;">문항45</h5>
								<h5 style="font-weight: 600;display: inline-block;width:65px">문항46</h5>
								<h5 style="font-weight: 600;display: inline-block;width:70px">문항47</h5>
							</div>
							<div style="width: 210px; float: left; margin-right: 18px;text-align: center; "><h4 style="font-weight: 600; margin-bottom: 0px">삶의만족</h4>
								<h5 style="font-weight: 600;display: inline-block;width:65px; float:left;">문항48</h5>
								<h5 style="font-weight: 600;display: inline-block;width:65px">문항49</h5>
								<h5 style="font-weight: 600;display: inline-block;width:70px">문항50</h5>
							</div>
							<div style="width: 290px; float: left; margin-right: 13px;text-align: center; "><h4 style="font-weight: 600; margin-bottom: 0px">자기이해</h4>
								<h5 style="font-weight: 600;display: inline-block;width:65px; float:left;">문항51</h5>
								<h5 style="font-weight: 600;display: inline-block;width:65px">문항52</h5>
								<h5 style="font-weight: 600;display: inline-block;width:65px">문항53</h5>
								<h5 style="font-weight: 600;display: inline-block;width:70px">문항54</h5>
							</div>
							<div style="width: 210px; float: left; margin-right: 16px;text-align: center; "><h4 style="font-weight: 600; margin-bottom: 0px">자기수용</h4>
								<h5 style="font-weight: 600;display: inline-block;width:65px; float:left;">문항55</h5>
								<h5 style="font-weight: 600;display: inline-block;width:65px">문항56</h5>
								<h5 style="font-weight: 600;display: inline-block;width:70px">문항57</h5>
							</div>
							<div style="width: 210px; float: left; margin-right: 16px;text-align: center; "><h4 style="font-weight: 600; margin-bottom: 0px">마음관리 기술/기회</h4>
								<h5 style="font-weight: 600;display: inline-block;width:65px; float:left;">문항58</h5>
								<h5 style="font-weight: 600;display: inline-block;width:65px">문항59</h5>
								<h5 style="font-weight: 600;display: inline-block;width:70px">문항60</h5>
							</div>
							<div style="width: 150px; float: left; margin-right: 13px;text-align: center; "><h4 style="font-weight: 600; margin-bottom: 0px">스마트폰 활용역량</h4>
								<h5 style="font-weight: 600;display: inline-block;width:65px; float:left;">문항61</h5>
								<h5 style="font-weight: 600;display: inline-block;width:70px">문항62</h5>
							</div>
				
						</div>                                                                           
						
						<div id="parent">
						<%for(int i=0; i<20; i++)  { %>
							<div class="insertForm" style="width: 5400px; height: 60px;" name='form-main' id="child<%=i%>">
								<button onclick="delete_info(<%=i%>)" style="font-size:70%; display:block; margin-top:7px; margin-right:5px; float: left;">X</button>
								<div style="width: 120px; float: left; margin-right: 10px;">
									<input class="form-control" name='form-name' placeholder="이름">
								</div>
								<!--  -->
								<div style="width: 60px; float: left; margin-right: 10px;">
									<input class="form-control" name='form-sex' placeholder="성별">
								</div>
								<!--  -->
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
								<!--  -->
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
								<!--  -->
								<div style="width: 120px; float: left; margin-right: 35px;">
									<input class="form-control" name='form-pastExp' placeholder="1=유  / 2=무">
								</div>
								<!--  -->
								<!--  -->
								<div style="width: 60px; float: left; margin-right: 10px;">
									<input class="form-control" name='form-score1' placeholder="점수">
								</div>
								<div style="width: 60px; float: left; margin-right: 28px;">
									<input class="form-control" name='form-score2' placeholder="점수">
								</div>
								<div style="width: 60px; float: left; margin-right: 10px;">
									<input class="form-control" name='form-score3' placeholder="점수">
								</div>
								<div style="width: 60px; float: left; margin-right: 10px;">
									<input class="form-control" name='form-score4' placeholder="점수">
								</div>
								<div style="width: 60px; float: left; margin-right: 28px;">
									<input class="form-control" name='form-score5' placeholder="점수">
								</div>
								<div style="width: 60px; float: left; margin-right: 10px;">
									<input class="form-control"  name='form-score6' placeholder="점수">
								</div>
								<div style="width: 60px; float: left; margin-right: 28px;">
									<input class="form-control"  name='form-score7' placeholder="점수">
								</div>
								<div style="width: 60px; float: left; margin-right: 10px;">
									<input class="form-control"  name='form-score8' placeholder="점수">
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
								<div style="width: 60px; float: left; margin-right: 10px;">
									<input class="form-control" name='form-score12' placeholder="점수">
								</div>
								<div style="width: 60px; float: left; margin-right: 28px;">
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
								<div style="width: 60px; float: left; margin-right: 10px;">
									<input class="form-control" name='form-score20' placeholder="점수">
								</div>
								<div style="width: 60px; float: left; margin-right: 10px;">
									<input class="form-control" name='form-score21' placeholder="점수">
								</div>
								<div style="width: 60px; float: left; margin-right: 10px;">
									<input class="form-control" name='form-score22' placeholder="점수">
								</div>
								<div style="width: 60px; float: left; margin-right: 28px;">
									<input class="form-control" name='form-score23' placeholder="점수">
								</div>
								<div style="width: 60px; float: left; margin-right: 10px;">
									<input class="form-control" name='form-score24' placeholder="점수">
								</div>
								<div style="width: 60px; float: left; margin-right: 10px;">
									<input class="form-control" name='form-score25' placeholder="점수">
								</div>
								<div style="width: 60px; float: left; margin-right: 28px;">
									<input class="form-control" name='form-score26' placeholder="점수">
								</div>
								<div style="width: 60px; float: left; margin-right: 10px;">
									<input class="form-control" name='form-score27' placeholder="점수">
								</div>
								<div style="width: 60px; float: left; margin-right: 10px;">
									<input class="form-control" name='form-score28' placeholder="점수">
								</div>
								<div style="width: 60px; float: left; margin-right: 28px;">
									<input class="form-control" name='form-score29' placeholder="점수">
								</div>
								<div style="width: 60px; float: left; margin-right: 10px;">
									<input class="form-control" name='form-score30' placeholder="점수">
								</div>
								<div style="width: 60px; float: left; margin-right: 10px;">
									<input class="form-control" name='form-score31' placeholder="점수">
								</div>
								<div style="width: 60px; float: left; margin-right: 10px;">
									<input class="form-control" name='form-score32' placeholder="점수">
								</div>
								<div style="width: 60px; float: left; margin-right: 10px;">
									<input class="form-control" name='form-score33' placeholder="점수">
								</div>
								<div style="width: 60px; float: left; margin-right: 10px;">
									<input class="form-control" name='form-score34' placeholder="점수">
								</div>
								<div style="width: 60px; float: left; margin-right: 28px;">
									<input class="form-control" name='form-score35' placeholder="점수">
								</div>
								<div style="width: 60px; float: left; margin-right: 10px;">
									<input class="form-control" name='form-score36' placeholder="점수">
								</div>
								<div style="width: 60px; float: left; margin-right: 10px;">
									<input class="form-control" name='form-score37' placeholder="점수">
								</div>
								<div style="width: 60px; float: left; margin-right: 28px;">
									<input class="form-control" name='form-score38' placeholder="점수">
								</div>
								<div style="width: 60px; float: left; margin-right: 10px;">
									<input class="form-control" name='form-score39' placeholder="점수">
								</div>
								<div style="width: 60px; float: left; margin-right: 10px;">
									<input class="form-control" name='form-score40' placeholder="점수">
								</div>
								<div style="width: 60px; float: left; margin-right: 10px;">
									<input class="form-control" name='form-score41' placeholder="점수">
								</div>
								<div style="width: 60px; float: left; margin-right: 28px;">
									<input class="form-control" name='form-score42' placeholder="점수">
								</div>
								<div style="width: 60px; float: left; margin-right: 10px;">
									<input class="form-control" name='form-score43' placeholder="점수">
								</div>
								<div style="width: 60px; float: left; margin-right: 28px;">
									<input class="form-control" name='form-score44' placeholder="점수">
								</div>
								<div style="width: 60px; float: left; margin-right: 10px;">
									<input class="form-control" name='form-score45' placeholder="점수">
								</div>
								<div style="width: 60px; float: left; margin-right: 10px;">
									<input class="form-control" name='form-score46' placeholder="점수">
								</div>
								<div style="width: 60px; float: left; margin-right: 28px;">
									<input class="form-control" name='form-score47' placeholder="점수">
								</div>
								<div style="width: 60px; float: left; margin-right: 10px;">
									<input class="form-control" name='form-score48' placeholder="점수">
								</div>
								<div style="width: 60px; float: left; margin-right: 10px;">
									<input class="form-control" name='form-score49' placeholder="점수">
								</div>
								<div style="width: 60px; float: left; margin-right: 28px;">
									<input class="form-control" name='form-score50' placeholder="점수">
								</div>
								<div style="width: 60px; float: left; margin-right: 10px;">
									<input class="form-control" name='form-score51' placeholder="점수">
								</div>
								<div style="width: 60px; float: left; margin-right: 10px;">
									<input class="form-control" name='form-score52' placeholder="점수">
								</div>
								<div style="width: 60px; float: left; margin-right: 10px;">
									<input class="form-control" name='form-score53' placeholder="점수">
								</div>
								<div style="width: 60px; float: left; margin-right: 28px;">
									<input class="form-control" name='form-score54' placeholder="점수">
								</div>
								<div style="width: 60px; float: left; margin-right: 10px;">
									<input class="form-control" name='form-score55' placeholder="점수">
								</div>
								<div style="width: 60px; float: left; margin-right: 10px;">
									<input class="form-control" name='form-score56' placeholder="점수">
								</div>
								<div style="width: 60px; float: left; margin-right: 28px;">
									<input class="form-control" name='form-score57' placeholder="점수">
								</div>
								<div style="width: 60px; float: left; margin-right: 10px;">
									<input class="form-control" name='form-score58' placeholder="점수">
								</div>
								<div style="width: 60px; float: left; margin-right: 10px;">
									<input class="form-control" name='form-score59' placeholder="점수">
								</div>
								<div style="width: 60px; float: left; margin-right: 28px;">
									<input class="form-control" name='form-score60' placeholder="점수">
								</div>
								<div style="width: 60px; float: left; margin-right: 10px;">
									<input class="form-control" name='form-score61' placeholder="점수">
								</div>
								<div style="width: 60px; float: left; margin-right: 28px;">
									<input class="form-control" name='form-score62' placeholder="점수">
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

	<!--  -->
	<script type="text/javascript">
	function action() {
		var param = {};
		
		let agency = document.getElementsByName('form-agency')[0].value;
		let date = document.getElementsByName('form-date')[0].value;
		let contents = document.getElementsByName('form-contents')[0].value;
		let session = "None";
		if(document.getElementsByName('form-pv')[0].value == '사전') {
			session = "시작회기/" + document.getElementsByName('form-time')[0].value + "/" + document.getElementsByName('form-bill')[0].value;
			console.log(session);
		} else if(document.getElementsByName('form-pv')[0].value == '중간') {
			session = "중간회기/" + document.getElementsByName('form-time')[0].value + "/" + document.getElementsByName('form-bill')[0].value;
			console.log(session);
		} else {
			session = "종결회기/" + document.getElementsByName('form-time')[0].value + "/" + document.getElementsByName('form-bill')[0].value;
			console.log(session);
		}
		
		let pv = document.getElementsByName('form-pv')[0].value;
		
		let formArr = document.getElementsByName('form-main');
		
		  //유효성 검사
	      if(agency.trim() == '') {
	    	  alert('기관을 입력해주세요.');
	    	  return false;
	      } else if(date.trim() == '') { 
	    	  alert('실시일자를 입력해주세요.');
	    	  return false;
	      } else if(contents.trim() == '') { 
	    	  alert('참여프로그램을 입력해주세요.');
	    	  return false;
	      } else if(session.trim() == '') { 
	    	  alert('회기를 입력해주세요.');
	    	  return false;
	      } else if(pv.trim() == '') {
	    	  alert('시점을 입력해주세요.');
	    	  return false;
	      }
		
		
		for(let i = 0; i < formArr.length; i++) {
			let name = document.getElementsByName('form-name')[i].value;
			let sex = document.getElementsByName('form-sex')[i].value;
			let age = document.getElementsByName('form-age')[i].value;
			let residence = document.getElementsByName('form-residence')[i].value;
			let job = document.getElementsByName('form-job')[i].value;
			let pastExp = document.getElementsByName('form-pastExp')[i].value;
			
			
			if(sex.trim() == '' && name.trim() == '') {
	       	 	
	         } else {
	        	 if(name.trim() == '') { 
	 	        	alert('이름을 입력해주세요.');
	 	        	console.log(i);
	 	       		return document.getElementsByName('form-name')[i].focus();
	        	 } else if(sex.trim() == '') { 
		 	        alert('성별을 입력해주세요.');
		 	        console.log(i);
		 	       	return document.getElementsByName('form-sex')[i].focus();
		        } else if(age.trim() == '') { 
		 	        alert('나이를 입력해주세요.');
		 	        console.log(i);
		 	       	return document.getElementsByName('form-age')[i].focus();
		        } else if(residence.trim() == '') { 
		 	        alert('거주지 입력해주세요.');
		 	        console.log(i);
		 	       	return document.getElementsByName('form-residence')[i].focus();
		        } else if(job.trim() == '') { 
		 	        alert('직업을 입력해주세요.');
		 	        console.log(i);
		 	       	return document.getElementsByName('form-job')[i].focus();
		        } else if(pastExp.trim() == '') { 
		 	        alert('과거 상담 서비스 경험을 입력해주세요.');
		 	        console.log(i);
		 	       	return document.getElementsByName('form-pastExp')[i].focus();
		        }
		         for(let j = 0; j < 62; j++) {
					if(document.getElementsByName('form-score'+(j+1))[i].value.trim() == '') { 
						alert('점수를 입력해주세요.');
						return document.getElementsByName('form-score'+(j+1))[i].focus();
					}
					param['receiptDtoList['+i+'].scoreList['+j+']'] = document.getElementsByName('form-score'+(j+1))[i].value;
				}
	         }
			 if(sex=="") {
				 break;
			 } else { 
				 param['receiptDtoList['+i+'].agency']=agency;
		         param['receiptDtoList['+i+'].date']=date; 
		         param['receiptDtoList['+i+'].contents']=contents; 
		         param['receiptDtoList['+i+'].session']=session; 
		         param['receiptDtoList['+i+'].name']=name; 
		         param['receiptDtoList['+i+'].sex']=sex;
		         param['receiptDtoList['+i+'].age']=age;
		         param['receiptDtoList['+i+'].residence']=residence;
		         param['receiptDtoList['+i+'].job']=job;
		         param['receiptDtoList['+i+'].pastExp']=pastExp;
		         param['receiptDtoList['+i+'].pv']=pv;
			 }
		}
		 console.log(param);
	      $.ajax({
	         url: "/insertForm/receiptInsertForm/insertData.do",
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