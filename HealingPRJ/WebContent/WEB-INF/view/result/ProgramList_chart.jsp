<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import ="poly.util.CmmUtil" %>
<%@ page import ="poly.dto.BasicInfoDTO" %>
<%@ page import ="java.util.List" %>
<%
	List<BasicInfoDTO> rList = (List<BasicInfoDTO>)request.getAttribute("rList");
%>
<!DOCTYPE html>
<html>
<head>
<link href="/lumino/css/bootstrap.min.css" rel="stylesheet">
<link href="/lumino/css/font-awesome.min.css" rel="stylesheet">
<link href="/lumino/css/datepicker3.css" rel="stylesheet">
<link href="/lumino/css/styles.css" rel="stylesheet">

<!--Custom Font-->
<link
	href="https://fonts.googleapis.com/css?family=Montserrat:300,300i,400,400i,500,500i,600,600i,700,700i"
	rel="stylesheet">
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="/lumino/js/jquery-1.11.1.min.js"></script>
<script src="/lumino/js/bootstrap.min.js"></script>
<script src="/lumino/js/chart.min.js"></script>
<script src="/lumino/js/chart-data.js"></script>
<script src="/lumino/js/easypiechart.js"></script>
<script src="/lumino/js/easypiechart-data.js"></script>
<script src="/lumino/js/bootstrap-datepicker.js"></script>
<script src="/lumino/js/custom.js"></script>
</head>
<body>

	<table class="table table-hover">

		<thead>
			<tr>
				<th>단체 명</th>
				<th>시작일</th>
				<th>종료일</th>
				<th>인원수</th>
				<th>om</th>
			</tr>
		</thead>
		<%
			for (int i = 0; i < rList.size(); i++) {
		%>
		<tbody>
			<tr>
				<td><%= rList.get(i).getAgency() %></td>
				<td><%= rList.get(i).getOpenday() %></td>
				<td><%= rList.get(i).getEndday() %></td>
				<td><%= Integer.parseInt(rList.get(i).getLead_man_cnt()) + Integer.parseInt(rList.get(i).getLead_woman_cnt())+ Integer.parseInt(rList.get(i).getPart_man_cnt()) + Integer.parseInt(rList.get(i).getPart_woman_cnt()) %></td>
				<td><%= rList.get(i).getOm() %></td>
			</tr>
		</tbody>
		<%
			}
		%>



		</tbody>

	</table>
</div>
</body>
</html>