<%@page import="poly.dto.HealingInsertDTO"%>
<%@page import="static poly.util.CmmUtil.nvl"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	List<HealingInsertDTO> hList = (List<HealingInsertDTO>)request.getAttribute("hList");
	int[] groupMargin = { 10, 30, 10, 10, 30, 10, 10, 30, 10, 10, 10, 30, 10, 10, 30, 10, 10, 30, 10, 10, 10, 30, 10, 10, 30, 10, 10, 30 };
%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>하이힐링원 통계프로그램</title>
</head>
<body>
	
	<%for(int i = 0; i < hList.size(); i++)	{ %>
		<div class="insertForm" style="width: 3200px; height: 60px;" name='form-main' id="child<%=i%>">
			<button onclick="delete_info(<%=i%>)" style="font-size:70%; display:block; margin-top:7px; margin-right:5px; float: left;">X</button>
			<div style="width: 120px; float: left; margin-right: 10px;">
				<input class="form-control" name='form-name' placeholder="이름" value="<%=nvl(hList.get(i).getName()) %>">
			</div>
			<div style="width: 120px; float: left; margin-right: 10px;">
				<input class="form-control" name='form-sex' placeholder="성별" value="<%=nvl(hList.get(i).getSex()) %>">
			</div>
			<div style="width: 60px; float: left; margin-right: 10px;">
				<input class="form-control" name='form-age' placeholder="연령" value="<%=nvl(hList.get(i).getAge()) %>">
			</div>
			<div style="width: 90px; float: left; margin-right: 10px;">
				<select class="form-control" name='form-residence' style="height: 46px;">
					<option><%=nvl(hList.get(i).getResidence()) %></option>
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
			<div style="width: 120px; float: left; margin-right: 10px;">
				<select class="form-control" name='form-job' style="height: 46px;">
					<option><%=nvl(hList.get(i).getJob()) %></option>
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
			<div style="width: 120px; float: left; margin-right: 35px; margin-left: 25px">
				<input class="form-control" name='form-pastStress' placeholder="1=유	/ 2=무" value="<%=nvl(hList.get(i).getPast_stress_experience()) %>">
			</div>
			<%
			List<String> scoreList = hList.get(i).getScoreString2List();
			for(int j = 0; j < scoreList.size(); j++) { %>
			<div style="width: 60px; float: left; margin-right: <%=groupMargin[j]%>px;">
				<input class="form-control" name='form-score<%=j+1 %>' placeholder="점수" value="<%=nvl(scoreList.get(j)) %>">
			</div>
			<% } %>
		</div>
	<% } %>
	<div id="field"></div>
	<script type="text/javascript">
		/* swal() 호출 함수 정의 */
		doSwal = function (title, content, type) {
			swal(title, content, type, {
				timer : 3000,
				showConfirmButton : false
			});
		}
		
	</script>
</body>
</html>