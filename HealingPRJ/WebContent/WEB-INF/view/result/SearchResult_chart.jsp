<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>주제어별 통계</title>
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
<style>
.cell_30_bot_right {
	width: 50px;
	height: 30px;
	line-height: 30px;
	border-bottom: 1px solid black;
	border-right: 1px solid black;
	text-align: center;
}

.cell_30_no_right {
	width: 50px;
	height: 30px;
	line-height: 30px;
	border-right: 1px solid black;
	text-align: center;
}

.cell_30_bot_no {
	width: 50px;
	height: 30px;
	line-height: 30px;
	border-bottom: 1px solid black;
	text-align: center;
}

.cell_30 {
	width: 50px;
	height: 30px;
	line-height: 30px;
	text-align: center;
}

.cell_60_bot_right {
	width: 50px;
	height: 60px;
	line-height: 60px;
	border-bottom: 1px solid black;
	border-right: 1px solid black;
	text-align: center;
}

.cell_60_no_right {
	width: 50px;
	height: 60px;
	line-height: 60px;
	border-right: 1px solid black;
	text-align: center;
}

.cell_60_bot_no {
	width: 50px;
	height: 60px;
	line-height: 60px;
	border-bottom: 1px solid black;
	text-align: center;
}

.cell_60 {
	width: 50px;
	height: 60px;
	line-height: 60px;
	text-align: center;
}
</style>


</head>
<body>
	<!-- 상단 제목 -->
	<div
		style="width: 1000px; height: 60px; border-collapse: collapse; font-size: 10px;">
		<div style="display: table-cell; width: 790px;"></div>
		<div style="display: table-cell;">
			<div
				style="width: 70px; line-height: 20px; height: 20px; border-top: 1px solid black; border-bottom: 1px solid black; border-left: 1px solid black; border-right: 1px solid black; text-align: center; background-color: #ccc;">담당</div>
			<div
				style="width: 70px; line-height: 40px; height: 40px; border-bottom: 1px solid black; border-right: 1px solid black; border-left: 1px solid black; text-align: center;"></div>
		</div>
		<div style="display: table-cell">
			<div
				style="width: 70px; line-height: 20px; height: 20px; border-top: 1px solid black; border-bottom: 1px solid black; border-right: 1px solid black; text-align: center; background-color: #ccc;">팀장</div>
			<div
				style="width: 70px; line-height: 40px; height: 40px; border-bottom: 1px solid black; border-right: 1px solid black; text-align: center;"></div>
		</div>
		<div style="display: table-cell">
			<div
				style="width: 70px; line-height: 20px; height: 20px; border-top: 1px solid black; border-bottom: 1px solid black; border-right: 1px solid black; text-align: center; background-color: #ccc;">사무국장</div>
			<div
				style="width: 70px; line-height: 40px; height: 40px; border-bottom: 1px solid black; border-right: 1px solid black; text-align: center;"></div>
		</div>
	</div>
	<div style="width: 1000px; height: 40px; text-align: center;">
		<h3>하이힐링원 주제어별 실시 결과 보고</h3>
	</div>
	<div
		style="display: table inline-block; padding: 10px; border-collapse: collapse; font-size: 10px; text-align: center;">
		<div
			style="display: table-row; width: 950px; border: 1px solid black;">
			<div
				style="display: table-cell; width: 100px; height: 60px; border-right: 1px solid black;">주제어
				1</div>
			<div
				style="display: table-cell; width: 100px; height: 60px; border-right: 1px solid black;">주제어
				2</div>
			<div
				style="display: table-cell; width: 100px; height: 60px; border-right: 1px solid black;">주제어
				3</div>
			<div style="display: table-cell;">
				<div
					style="width: 200px; height: 30px; border-bottom: 1px solid black; border-right: 1px solid black;">강사</div>
				<div style="display: table-cell;">
					<div
						style="display: table-cell; width: 50px; height: 30px; border-right: 1px solid black;">전문성</div>
					<div
						style="display: table-cell; width: 50px; height: 30px; border-right: 1px solid black;">성실성</div>
					<div
						style="display: table-cell; width: 50px; height: 30px; border-right: 1px solid black;">반응성</div>
					<div
						style="display: table-cell; width: 50px; height: 30px; border-right: 1px solid black;">평균</div>
				</div>
			</div>
			<div style="display: table-cell;">
				<div
					style="display: table-row; width: 200px; height: 30px; border-bottom: 1px solid black; border-right: 1px solid black;">내용구성</div>
				<div style="display: table-cell;">
					<div
						style="display: table-cell; width: 50px; height: 30px; border-right: 1px solid black;">체계성</div>
					<div
						style="display: table-cell; width: 50px; height: 30px; border-right: 1px solid black;">적합성</div>
					<div
						style="display: table-cell; width: 50px; height: 30px; border-right: 1px solid black;">흥미성</div>
					<div
						style="display: table-cell; width: 50px; height: 30px; border-right: 1px solid black;">평균</div>
				</div>
			</div>
			<div style="display: table-cell;">
				<div
					style="width: 200 px; height: 30px; border-bottom: 1px solid black; border-right: 1px solid black;">효과성</div>
				<div style="display: table-cell;">
					<div
						style="display: table-cell; width: 50px; height: 30px; border-right: 1px solid black;">학습성</div>
					<div
						style="display: table-cell; width: 50px; height: 30px; border-right: 1px solid black;">재참여</div>
					<div
						style="display: table-cell; width: 50px; height: 30px; border-right: 1px solid black;">추천</div>
					<div
						style="display: table-cell; width: 50px; height: 30px; border-right: 1px solid black;">평균</div>
				</div>
			</div>
			<div
				style="display: table-cell; width: 100px; height: 60px; border-right: 1px solid black;">평균</div>
		</div>
		<!-- for문 실행 -->

		<div
			style="display: table-row; width: 950px; border: 1px solid black;">
			<div
				style="display: table-cell; width: 100px; height: 30px; border-right: 1px solid black;">주제어
				1</div>
			<div
				style="display: table-cell; width: 100px; height: 30px; border-right: 1px solid black;">주제어
				2</div>
			<div
				style="display: table-cell; width: 100px; height: 30px; border-right: 1px solid black;">주제어
				3</div>
			<div>

				<div style="display: table-cell;">
					<div
						style="display: table-cell; width: 50px; height: 30px; border-right: 1px solid black;">전문성</div>
					<div
						style="display: table-cell; width: 50px; height: 30px; border-right: 1px solid black;">성실성</div>
					<div
						style="display: table-cell; width: 50px; height: 30px; border-right: 1px solid black;">반응성</div>
					<div
						style="display: table-cell; width: 50px; height: 30px; border-right: 1px solid black;">평균</div>
				</div>
			</div>
			<div style="display: table-cell;">
				<div style="display: table-cell;">
					<div
						style="display: table-cell; width: 50px; height: 30px; border-right: 1px solid black;">체계성</div>
					<div
						style="display: table-cell; width: 50px; height: 30px; border-right: 1px solid black;">적합성</div>
					<div
						style="display: table-cell; width: 50px; height: 30px; border-right: 1px solid black;">흥미성</div>
					<div
						style="display: table-cell; width: 50px; height: 30px; border-right: 1px solid black;">평균</div>
				</div>
			</div>
			<div>
				<div style="display: table-cell;">
					<div
						style="display: table-cell; width: 50px; height: 30px; border-right: 1px solid black;">학습성</div>
					<div
						style="display: table-cell; width: 50px; height: 30px; border-right: 1px solid black;">재참여</div>
					<div
						style="display: table-cell; width: 50px; height: 30px; border-right: 1px solid black;">추천</div>
					<div
						style="display: table-cell; width: 50px; height: 30px; border-right: 1px solid black;">평균</div>
				</div>
			</div>
			<div
				style="display: table-cell; width: 100px; height: 30px; border-right: 1px solid black;">평균</div>
		</div>
	</div>
</body>
</html>