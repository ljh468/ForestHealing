<%@page import="poly.dto.BasicInfoDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import ="poly.util.CmmUtil" %>
<%@ page import ="poly.dto.BasicInfoDTO" %>
<%@ page import ="java.util.List" %>
 <%

	List<BasicInfoDTO> basicList = (List<BasicInfoDTO>)request.getAttribute("basicList");

%> 
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>프로그램 통계</title>
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
<style>
        .cell_30_bot_right{
            width: 50px; height: 30px; line-height: 30px; border-bottom: 1px solid black; border-right: 1px solid black; text-align: center;
        }
        .cell_30_no_right{
            width: 50px; height: 30px; line-height: 30px; border-right: 1px solid black; text-align: center;
        }
        .cell_30_bot_no{
            width: 50px; height: 30px; line-height: 30px; border-bottom: 1px solid black;text-align: center;
        }
        .cell_30{
            width: 50px; height: 30px; line-height: 30px; text-align: center;
        }
        .cell_60_bot_right{
            width: 50px; height: 60px; line-height: 60px; border-bottom: 1px solid black; border-right: 1px solid black; text-align: center;
        }
        .cell_60_no_right{
            width: 50px; height: 60px; line-height: 60px; border-right: 1px solid black; text-align: center;
        }
        .cell_60_bot_no{
            width: 50px; height: 60px; line-height: 60px; border-bottom: 1px solid black;text-align: center;
        }
        .cell_60{
            width: 50px; height: 60px; line-height: 60px; text-align: center;
        }

    </style>
<body>
	 <!-- 상단 제목 -->
    <div style="width:1000px; height:60px;  border-collapse: collapse;font-size: 10px;">
        <div style="display: table-cell; width :790px;"></div>
        <div style="display: table-cell;">   
            <div style="width: 70px; line-height: 20px;height: 20px; border-top:1px solid black;border-bottom: 1px solid black;border-left: 1px solid black; border-right: 1px solid black; text-align: center; background-color: #ccc;">담당</div>
            <div style="width: 70px; line-height: 40px;height: 40px; border-bottom: 1px solid black; border-right: 1px solid black;border-left: 1px solid black;text-align: center; " ></div>
        </div> 
        <div style="display: table-cell">   
            <div style="width: 70px; line-height: 20px;height: 20px; border-top:1px solid black;border-bottom: 1px solid black; border-right: 1px solid black; text-align: center; background-color: #ccc;">팀장</div>
            <div style="width: 70px; line-height: 40px;height: 40px; border-bottom: 1px solid black; border-right: 1px solid black;text-align: center; " ></div>
        </div> 
        <div style="display: table-cell">   
            <div style="width: 70px; line-height: 20px;height: 20px; border-top:1px solid black;border-bottom: 1px solid black; border-right: 1px solid black; text-align: center; background-color: #ccc;">사무국장</div>
            <div style="width: 70px; line-height: 40px;height: 40px; border-bottom: 1px solid black; border-right: 1px solid black;text-align: center; " ></div>
        </div> 
    </div>
    <div style="width:1000px; height:40px;text-align: center;"><h3>하이힐링원 프로그램 실시 결과 보고</h3></div>
    <div style="width:1000px; height:30px;">
        <div style="display: table-cell;">
            <div style="display: table-cell;width: 200px; line-height: 30px;height: 30px;  "></div>
            <div style="display: table-cell;width: 200px; line-height: 30px;height: 30px;  "></div>
            <div style="display: table-cell;width: 200px; line-height: 30px;height: 30px;  "></div>
            <div style="display: table-cell;width: 200px; line-height: 30px;height: 30px; font-size: 8px;  ">단체명 : &nbsp;&nbsp; &nbsp;<%-- <%=basicList.get(0).getAgency() %> --%> </div>
            <div style="display: table-cell;width: 200px; line-height: 30px;height: 30px; font-size: 8px;  ">om : <%-- <%=basicList.get(0).getOm() %> --%></div>
        </div>
    </div>
    <!-- 참가유형 -->
    <div style=" display:table inline-block; padding:10px; border-collapse: collapse; font-size: 10px;text-align: center; ">
        <div style="display: table-cell; border:1px solid black; width: 50px; height: 120px; vertical-align: middle; background-color: #ccc;">프로<br>그램<br>시행<br>개요</div>
        <div style="display: table-cell; border:1px solid black; width:150px; height: 120px; text-align: center;">
            <div style=" border-bottom:1px solid black; width:150px;line-height: 30px; height: 30px; text-align: center; background-color: #ccc;"> 참여일자 및 기간</div>
            <div style="display: table-cell">   
                <div style="display:table-cell;vertical-align: middle;width: 100px; height: 60px; border-bottom: 1px solid black; border-right: 1px solid black;vertical-align: middle; text-align: center; background-color: #ccc;">참여일자</div>
                <div style="width: 100px; height: 30px; border-right: 1px solid black;  text-align: center;"><%=basicList.get(0).getOpenday()%></div>
            </div> 
            <div style="display: table-cell; vertical-align: middle;">   
                <div style="display:table-cell;vertical-align: middle;width: 50px; height: 60px; border-bottom: 1px solid black;  text-align: center; background-color: #ccc;">체류일자</div>
                <div style="width: 50px; height: 30px; text-align: center;"><%=basicList.get(0).getDays_to_stay() %> </div>
            </div> 
        </div>
        <div style="display: table-cell; border:1px solid black; width: 50px; height: 120px; vertical-align: middle;" >
            <div style=" display:table-cell;vertical-align: middle;border-bottom:1px solid black; width:50px; height: 90px; text-align: center;background-color: #ccc; ">지역</div>
            <div style=" width:50px; height: 30px; text-align: center; "><%=basicList.get(0).getResidence() %></div>
        </div>
        <div style="display: table-cell; border:1px solid black; width: 400px; height: 120px; vertical-align: middle;" >
            <div style="display: table-cell; border-bottom:1px solid black; width: 400px; height: 30px; background-color: #ccc;">참여인원(명)</div>
            <div style="display: table;  width: 300px; height: 30px; ">
                <div style="display: table-cell; width :150px; height: 90px;">
                    <div style=" border-bottom:1px solid black; width:150px; height: 30px; border-right: 1px solid black;text-align: center; background-color: #ccc;"> 참여자(명)</div>
                    <div style="display: table-cell">   
                         <div class="cell_30_bot_right">남</div>
                         <div style="border-right: 1px solid black;width: 50px; height: 30px;  text-align: center;"> <%=basicList.get(0).getPart_man_cnt() %></div>
                    </div> 
                    <div style="display: table-cell; vertical-align: middle;">   
                        <div class="cell_30_bot_right">여</div>
                        <div style="border-right: 1px solid black;width: 50px; height: 30px; text-align: center;"><%=basicList.get(0).getPart_woman_cnt() %></div>
                    </div> 
                    <div style="display: table-cell; vertical-align: middle;">   
                        <div style="width: 50px; height: 30px; line-height: 30px; border-bottom: 1px solid black; border-right: 1px solid black; text-align: center;">계</div>
                        <div style="border-right: 1px solid black;width: 50px; height: 30px; text-align: center;"> <%= Integer.parseInt(basicList.get(0).getPart_man_cnt()) + Integer.parseInt(basicList.get(0).getPart_woman_cnt())  %></div>
                    </div>
                </div>
                <div style="display: table-cell; width :150px; height: 90px;">
                    <div style=" border-bottom:1px solid black; width:150px; height: 30px; border-right: 1px solid black;text-align: center; background-color: #ccc;">인솔자(명)</div>
                    <div style="display: table-cell">   
                         <div class="cell_30_bot_right">남</div>
                         <div style="border-right: 1px solid black;width: 50px; height: 30px;  text-align: center;"><%=basicList.get(0).getLead_man_cnt() %></div>
                    </div> 
                    <div style="display: table-cell; vertical-align: middle;">   
                        <div class="cell_30_bot_right">여</div>
                        <div style="border-right: 1px solid black;width: 50px; height: 30px; text-align: center;"><%=basicList.get(0).getLead_woman_cnt() %></div>
                    </div> 
                    <div style="display: table-cell; vertical-align: middle;">   
                        <div class="cell_30_bot_right">계</div>
                        <div style="border-right: 1px solid black;width: 50px; height: 30px; text-align: center;"><%=Integer.parseInt(basicList.get(0).getLead_man_cnt()) + Integer.parseInt(basicList.get(0).getLead_woman_cnt()) %></div>
                    </div> 
                </div>
                <div style="display: table-cell; width :100px; height: 60px;">
                    <div style="display: table-cell">   
                         <div style=" display: table-cell;width: 50px; height: 60px; border-bottom: 1px solid black; border-left: 1px solid blac; border-right: 1px solid black; text-align: center;background-color: #ccc;">실인원</div>
                         <div style="border-right: 1px solid black;width: 50px; height: 30px;  text-align: center;"></div>
                    </div> 
                    <div style="display: table-cell;">   
                        <div style=" display: table-cell;width: 50px; height: 60px; border-bottom: 1px solid black; text-align: center; background-color: #ccc; ">연인원</div>
                        <div style="width: 50px; height: 30px; text-align: center;"></div>
                    </div> 
                </div>
            </div>
        </div>
        <div style="display: table-cell; border:1px solid black; width: 50px; height: 120px; vertical-align: middle;" >
            <div style=" display:table-cell;vertical-align: middle;border-bottom:1px solid black; width:50px; height: 90px; text-align: center;background-color: #ccc; ">지원사항</div>
            <div style=" width:50px; height: 30px; text-align: center; "><%=basicList.get(0).getSupport() %></div>
        </div>
        <div style="display: table-cell; border:1px solid black; width: 50px; height: 120px; vertical-align: middle;" >
            <div style=" display:table-cell;vertical-align: middle;border-bottom:1px solid black; width:50px; height: 90px; text-align: center;background-color: #ccc;vertical-align: middle; ">수입구분</div>
            <div style=" width:50px; height: 30px; text-align: center; "><%=basicList.get(0).getIncome_type() %></div>
        </div>
        <div style="display: table-cell; border:1px solid black; width: 50px; height: 120px; vertical-align: middle;" >
            <div style="display:table-cell;vertical-align: middle; border-bottom:1px solid black; width:50px; height: 90px; text-align: center;background-color: #ccc; ">참가자유형</div>
            <div style=" width:50px; height: 30px; text-align: center; "><%=basicList.get(0).getPart_type() %></div>
        </div>
        <div style="display: table-cell; border:1px solid black; width: 50px; height: 120px; vertical-align: middle;" >
            <div style=" display:table-cell;vertical-align: middle;border-bottom:1px solid black; width:50px; height: 90px; text-align: center;background-color: #ccc; ">사업구분</div>
            <div style=" width:50px; height: 30px; text-align: center; "><%=basicList.get(0).getBiz_purpose() %></div>
        </div>    
        <div style="display: table-cell; border:1px solid black; width: 50px; height: 120px; vertical-align: middle;" >
            <div style=" display:table-cell;vertical-align: middle;border-bottom:1px solid black; width:50px; height: 90px; text-align: center;"></div>
            <div style=" width:50px; height: 30px; text-align: center; "> </div>
        </div>    
    </div>
     <!-- 프로그램 운영 -->
       <div style=" display:table inline-block; padding:10px; border-collapse: collapse; font-size: 10px;text-align: center; ">
        <div style="display: table-cell; border:1px solid black; width: 50px;  vertical-align: middle; background-color: #ccc;">프로그램<br>운영</div>
        <div style="display: table-cell; border:1px solid black; width: 50px; height: 90px; vertical-align: middle;" >
            <div style="  border-bottom:1px solid black; width: 50px; height: 30px; text-align: center; background-color: #ccc;">서비스<br>유형</div>
            <div style=" border-bottom:1px solid black; width:50px; height: 30px; text-align: center;"> </div>
            <div style=" border-bottom:1px solid black; width:50px; height: 30px; text-align: center;"> </div>
            <div style=" border-bottom:1px solid black; width:50px; height: 30px; text-align: center;"> </div>
            <div style=" width:50px; line-height:60px;height: 60px; text-align: center;">객실배정 </div>
        </div>
        <div style="display: table-cell; border:1px solid black; width: 50px; height: 90px; vertical-align: middle;" >
            <div class="cell_30_bot_no">구분</div>
            <div style=" border-bottom:1px solid black; width:50px; height: 30px; text-align: center;">프로그램(개) </div>
            <div style=" border-bottom:1px solid black; width:50px; height: 30px; text-align: center;">내부강사(명) </div>
            <div style=" border-bottom:1px solid black; width:50px; height: 30px; text-align: center;"> 외부강사(명)</div>
            <div class="cell_60"> 인원(명) </div>
        </div>
        <div style="display: table-cell; border:1px solid black; width: 50px; height: 90px; vertical-align: middle;" >
            <div class="cell_30_bot_no">인문</div>
            <div class="cell_30_bot_no"> </div>
            <div class="cell_30_bot_no"> </div>
            <div class="cell_30_bot_no"> </div>
            <div class="cell_30_bot_no">참여자 </div>
            <div class="cell_30"><%=basicList.get(0).getRoom_part_people()%></div>
        </div>
        <div style="display: table-cell; border:1px solid black; width: 50px; height: 90px; vertical-align: middle;" >
            <div class="cell_30_bot_no">음악</div>
            <div class="cell_30_bot_no"> </div>
            <div class="cell_30_bot_no"> </div>
            <div class="cell_30_bot_no"> </div>
            <div class="cell_30_bot_no">인솔자 </div>
            <div class="cell_30"><%=basicList.get(0).getRoom_lead_people()%></div>
        </div>
        <div style="display: table-cell; border:1px solid black; width: 50px; height: 90px; vertical-align: middle;" >
            <div style="  border-bottom:1px solid black; width: 50px; height: 30px; text-align: center; background-color: #ccc; ">미술</div>
            <div style=" border-bottom:1px solid black; width:50px; height: 30px; text-align: center;"> </div>
            <div style=" border-bottom:1px solid black; width:50px; height: 30px; text-align: center;"> </div>
            <div style=" border-bottom:1px solid black; width:50px; height: 30px; text-align: center;"> </div>
            <div style=" border-bottom:1px solid black; width:50px; height: 30px; text-align: center; background-color: #ccc;">기타 </div>
            <div style=" width:50px; height: 30px; text-align: center;"><%=basicList.get(0).getRoom_etc_people() %></div>
        </div>
        <div style="display: table-cell; border:1px solid black; width: 50px; height: 90px; vertical-align: middle;" >
            <div style="  border-bottom:1px solid black; width: 50px; height: 30px; text-align: center; background-color: #ccc; ">요가명상</div>
            <div style=" border-bottom:1px solid black; width:50px; height: 30px; text-align: center;"> </div>
            <div style=" border-bottom:1px solid black; width:50px; height: 30px; text-align: center;"> </div>
            <div style=" border-bottom:1px solid black; width:50px; height: 30px; text-align: center;"> </div>
            <div style=" border-bottom:1px solid black; width:50px; height: 30px; text-align: center; background-color: #ccc;">계</div>
            <div style=" width:50px; height: 30px; text-align: center;"> </div>
        </div>
        <div style="display: table-cell; border:1px solid black; width: 50px; height: 90px; vertical-align: middle;" >
            <div style="  border-bottom:1px solid black; width: 50px; height: 30px; text-align: center; background-color: #ccc;">동작</div>
            <div style=" border-bottom:1px solid black; width:50px; height: 30px; text-align: center;"> </div>
            <div style=" border-bottom:1px solid black; width:50px; height: 30px; text-align: center;"> </div>
            <div style=" border-bottom:1px solid black; width:50px; height: 30px; text-align: center;"> </div>
            <div style=" width:50px; height: 60px; text-align: center;">객실(실) </div>
        </div>
        <div style="display: table-cell; border:1px solid black; width: 50px; height: 90px; vertical-align: middle;" >
            <div style="  border-bottom:1px solid black; width: 50px; height: 30px; text-align: center; background-color: #ccc; ">자연치유</div>
            <div style=" border-bottom:1px solid black; width:50px; height: 30px; text-align: center;"> </div>
            <div style=" border-bottom:1px solid black; width:50px; height: 30px; text-align: center;"> </div>
            <div style=" border-bottom:1px solid black; width:50px; height: 30px; text-align: center;"> </div>
            <div style=" border-bottom:1px solid black; width:50px; height: 30px; text-align: center; background-color: #ccc;">참여자</div>
            <div style=" width:50px; height: 30px; text-align: center;"><%=basicList.get(0).getRoom_part_room() %></div>
        </div>
        <div style="display: table-cell; border:1px solid black; width: 50px; height: 90px; vertical-align: middle;" >
            <div style="  border-bottom:1px solid black; width: 50px; height: 30px; text-align: center; background-color: #ccc; ">예방교육</div>
            <div style=" border-bottom:1px solid black; width:50px; height: 30px; text-align: center;"> </div>
            <div style=" border-bottom:1px solid black; width:50px; height: 30px; text-align: center;"> </div>
            <div style=" border-bottom:1px solid black; width:50px; height: 30px; text-align: center;"> </div>
            <div style=" border-bottom:1px solid black; width:50px; height: 30px; text-align: center; background-color: #ccc;">인솔자</div>
            <div style=" width:50px; height: 30px; text-align: center;"><%=basicList.get(0).getRoom_lead_room() %></div>
        </div>
        <div style="display: table-cell; border:1px solid black; width: 50px; height: 90px; vertical-align: middle;" >
            <div style="  border-bottom:1px solid black; width: 50px; height: 30px; text-align: center; background-color: #ccc; ">산림교육</div>
            <div style=" border-bottom:1px solid black; width:50px; height: 30px; text-align: center;"> </div>
            <div style=" border-bottom:1px solid black; width:50px; height: 30px; text-align: center;"> </div>
            <div style=" border-bottom:1px solid black; width:50px; height: 30px; text-align: center;"> </div>
            <div style=" border-bottom:1px solid black; width:50px; height: 30px; text-align: center; background-color: #ccc;">기타</div>
            <div style=" width:50px; height: 30px; text-align: center;"><%=basicList.get(0).getRoom_etc_room() %></div>
        </div>
        <div style="display: table-cell; border:1px solid black; width: 50px; height: 90px; vertical-align: middle;" >
            <div style="  border-bottom:1px solid black; width: 50px; height: 30px; text-align: center; background-color: #ccc; ">산림치유</div>
            <div style=" border-bottom:1px solid black; width:50px; height: 30px; text-align: center;"> </div>
            <div style=" border-bottom:1px solid black; width:50px; height: 30px; text-align: center;"> </div>
            <div style=" border-bottom:1px solid black; width:50px; height: 30px; text-align: center;"> </div>
            <div style=" border-bottom:1px solid black; width:50px; height: 30px; text-align: center; background-color: #ccc;">계</div>
            <div style=" width:50px; height: 30px; text-align: center;"> </div>
        </div>
        <div style="display: table-cell; border:1px solid black; width: 50px; height: 90px; vertical-align: middle;" >
            <div style="  border-bottom:1px solid black; width: 50px; height: 30px; text-align: center; background-color: #ccc;">이벤트</div>
            <div style=" border-bottom:1px solid black; width:50px; height: 30px; text-align: center;"> </div>
            <div style=" border-bottom:1px solid black; width:50px; height: 30px; text-align: center;"> </div>
            <div style=" border-bottom:1px solid black; width:50px; height: 30px; text-align: center;"> </div>
            <div style=" width:50px; height: 60px; text-align: center;">식사 </div>
        </div>
        <div style="display: table-cell; border:1px solid black; width: 50px; height: 90px; vertical-align: middle;" >
            <div style="  border-bottom:1px solid black; width: 50px; height: 30px; text-align: center; background-color: #ccc; ">지역</div>
            <div style=" border-bottom:1px solid black; width:50px; height: 30px; text-align: center;"> </div>
            <div style=" border-bottom:1px solid black; width:50px; height: 30px; text-align: center;"> </div>
            <div style=" border-bottom:1px solid black; width:50px; height: 30px; text-align: center;"> </div>
            <div style=" border-bottom:1px solid black; width:50px; height: 30px; text-align: center; background-color: #ccc;">참여자</div>
            <div style=" width:50px; height: 30px; text-align: center;"> </div>
        </div>
        <div style="display: table-cell; border:1px solid black; width: 50px; height: 90px; vertical-align: middle;" >
            <div style="  border-bottom:1px solid black; width: 50px; height: 30px; text-align: center; background-color: #ccc; ">신규</div>
            <div style=" border-bottom:1px solid black; width:50px; height: 30px; text-align: center;"> </div>
            <div style=" border-bottom:1px solid black; width:50px; height: 30px; text-align: center;"> </div>
            <div style=" border-bottom:1px solid black; width:50px; height: 30px; text-align: center;"> </div>
            <div style=" border-bottom:1px solid black; width:50px; height: 30px; text-align: center; background-color: #ccc;">인솔자</div>
            <div style=" width:50px; height: 30px; text-align: center;"> </div>
        </div>
        <div style="display: table-cell; border:1px solid black; width: 50px; height: 90px; vertical-align: middle;" >
            <div style="  border-bottom:1px solid black; width: 50px; height: 30px; text-align: center; background-color: #ccc; ">기타</div>
            <div style=" border-bottom:1px solid black; width:50px; height: 30px; text-align: center;"> </div>
            <div style=" border-bottom:1px solid black; width:50px; height: 30px; text-align: center;"> </div>
            <div style=" border-bottom:1px solid black; width:50px; height: 30px; text-align: center;"> </div>
            <div style=" border-bottom:1px solid black; width:50px; height: 30px; text-align: center; background-color: #ccc;">기타</div>
            <div style=" width:50px; height: 30px; text-align: center;"> </div>
        </div>
        <div style="display: table-cell; border:1px solid black; width: 50px; height: 90px; vertical-align: middle;" >
            <div style="  border-bottom:1px solid black; width: 50px; height: 30px; text-align: center; background-color: #ccc; ">계</div>
            <div style=" border-bottom:1px solid black; width:50px; height: 30px; text-align: center;"> </div>
            <div style=" border-bottom:1px solid black; width:50px; height: 30px; text-align: center;"> </div>
            <div style=" border-bottom:1px solid black; width:50px; height: 30px; text-align: center;"> </div>
            <div style=" border-bottom:1px solid black; width:50px; height: 30px; text-align: center; background-color: #ccc;">계</div>
            <div style=" width:50px; height: 30px; text-align: center;"> </div>
        </div>
        <div style="display: table-cell; border:1px solid black; width: 50px; height: 90px; vertical-align: middle;" >
            <div style="  border-bottom:1px solid black; width: 50px; height: 30px; text-align: center; "></div>
            <div style=" border-bottom:1px solid black; width:50px; height: 30px; text-align: center;"> </div>
            <div style=" border-bottom:1px solid black; width:50px; height: 30px; text-align: center;"> </div>
            <div style=" border-bottom:1px solid black; width:50px; height: 30px; text-align: center;"> </div>
            <div style=" border-bottom:1px solid black; width:50px; height: 30px; text-align: center;"></div>
            <div style=" width:50px; height: 30px; text-align: center;"> </div>
        </div>
    </div>
    <!-- 프로그램 만족도 -->
    <div style=" display:table inline-block; padding:10px; border-collapse: collapse; font-size: 10px;text-align: center; ">
        <div style="display: table-cell; border:1px solid black; width: 50px; height: 210px; vertical-align: middle; background-color: #ccc;">프로그램<br>만족도</div>
        <div style="display: table-cell; border:1px solid black; width: 50px; height: 210px; vertical-align: middle; ">
            <div style=" display:table-cell;vertical-align: middle; border-bottom:1px solid black; width: 50px; height: 60px; text-align: center; background-color: #ccc; ">구분</div>
            <div style=" border-bottom:1px solid black; width:50px; height: 15px; text-align: center;">참여자</div>
            <div style=" border-bottom:1px solid black; width:50px; height: 15px; text-align: center;">인솔자 </div>
            <div style=" border-bottom:1px solid black; width:50px; height: 15px; text-align: center;">참여자</div>
            <div style=" border-bottom:1px solid black; width:50px; height: 15px; text-align: center;">인솔자 </div>
            <div style=" border-bottom:1px solid black; width:50px; height: 15px; text-align: center;">참여자</div>
            <div style=" border-bottom:1px solid black; width:50px; height: 15px; text-align: center;">인솔자</div>
            <div style=" border-bottom:1px solid black; width:50px; height: 15px; text-align: center;">참여자</div>
            <div style=" border-bottom:1px solid black; width:50px; height: 15px; text-align: center;">인솔자</div>
            <div style=" border-bottom:1px solid black; width:50px; height: 15px; text-align: center;">참여자</div>
            <div style=" width:50px; height: 15px; text-align: center;"> 인솔자</div>
        </div>
        <div style="display: table-cell; border:1px solid black; width: 50px; height: 210px; vertical-align: middle; ">
            <div style=" display:table-cell;vertical-align: middle; border-bottom:1px solid black; width: 50px; height: 60px; text-align: center; background-color: #ccc; ">분야</div>
            <div style=" border-bottom:1px solid black; width:50px; height: 30px; text-align: center;"> </div>
            <div style=" border-bottom:1px solid black; width:50px; height: 30px; text-align: center;"> </div>
            <div style=" border-bottom:1px solid black; width:50px; height: 30px; text-align: center;"> </div>
            <div style=" border-bottom:1px solid black; width:50px; height: 30px; text-align: center;"></div>
            <div style=" width:50px; height: 30px; text-align: center;"> </div>
        </div>
        <div style="display: table-cell; border:1px solid black; width: 50px; height: 210px; vertical-align: middle; ">
            <div style=" display:table-cell;vertical-align: middle; border-bottom:1px solid black; width: 50px; height: 60px; text-align: center; background-color: #ccc; ">프로그램명</div>
            <div style=" border-bottom:1px solid black; width:50px; height: 30px; text-align: center;"> </div>
            <div style=" border-bottom:1px solid black; width:50px; height: 30px; text-align: center;"> </div>
            <div style=" border-bottom:1px solid black; width:50px; height: 30px; text-align: center;"> </div>
            <div style=" border-bottom:1px solid black; width:50px; height: 30px; text-align: center;"></div>
            <div style=" width:50px; height: 30px; text-align: center;"> </div>
        </div>
        <div style="display: table-cell; border:1px solid black; width: 50px; height: 210px; vertical-align: middle; ">
            <div style=" display:table-cell;vertical-align: middle; border-bottom:1px solid black; width: 50px; height: 60px; text-align: center; background-color: #ccc; ">강사명</div>
            <div style=" border-bottom:1px solid black; width:50px; height: 30px; text-align: center;"> </div>
            <div style=" border-bottom:1px solid black; width:50px; height: 30px; text-align: center;"> </div>
            <div style=" border-bottom:1px solid black; width:50px; height: 30px; text-align: center;"> </div>
            <div style=" border-bottom:1px solid black; width:50px; height: 30px; text-align: center;"></div>
            <div style=" width:50px; height: 30px; text-align: center;"> </div>
        </div>
        <div style="display: table-cell; border:1px solid black; width:200px; height: 120px; text-align: center;">
            <div style=" border-bottom:1px solid black; width:200px; height: 30px; text-align: center; background-color: #ccc;"> 강사 </div>
            <div style="display: table-cell">   
                <div style="width: 50px; height: 31px; border-bottom: 1px solid black; border-right: 1px solid black; text-align: center; background-color: #ccc;">전문성</div>
                <div style="width: 50px; height: 15px; border-bottom: 1px solid black; border-right: 1px solid black; text-align: center;"></div>
                <div style="width: 50px; height: 15px; border-bottom: 1px solid black; border-right: 1px solid black; text-align: center;"></div>
                <div style="width: 50px; height: 15px; border-bottom: 1px solid black; border-right: 1px solid black; text-align: center;"></div>
                <div style="width: 50px; height: 15px; border-bottom: 1px solid black; border-right: 1px solid black; text-align: center;"></div>
                <div style="width: 50px; height: 15px; border-bottom: 1px solid black; border-right: 1px solid black; text-align: center;"></div>
                <div style="width: 50px; height: 15px; border-bottom: 1px solid black; border-right: 1px solid black; text-align: center;"></div>
                <div style="width: 50px; height: 15px; border-bottom: 1px solid black; border-right: 1px solid black; text-align: center;"></div>
                <div style="width: 50px; height: 15px; border-bottom: 1px solid black; border-right: 1px solid black; text-align: center;"></div>
                <div style="width: 50px; height: 15px; border-bottom: 1px solid black; border-right: 1px solid black; text-align: center;"></div>
                <div style="width: 50px; height: 15px; border-right: 1px solid black; text-align: center;"></div>
            </div> 
            <div style="display: table-cell">   
                <div style="width: 50px; height: 31px; border-bottom: 1px solid black; border-right: 1px solid black; text-align: center; background-color: #ccc;">성실성</div>
                <div style="width: 50px; height: 15px; border-bottom: 1px solid black; border-right: 1px solid black; text-align: center;"></div>
                <div style="width: 50px; height: 15px; border-bottom: 1px solid black; border-right: 1px solid black; text-align: center;"></div>
                <div style="width: 50px; height: 15px; border-bottom: 1px solid black; border-right: 1px solid black; text-align: center;"></div>
                <div style="width: 50px; height: 15px; border-bottom: 1px solid black; border-right: 1px solid black; text-align: center;"></div>
                <div style="width: 50px; height: 15px; border-bottom: 1px solid black; border-right: 1px solid black; text-align: center;"></div>
                <div style="width: 50px; height: 15px; border-bottom: 1px solid black; border-right: 1px solid black; text-align: center;"></div>
                <div style="width: 50px; height: 15px; border-bottom: 1px solid black; border-right: 1px solid black; text-align: center;"></div>
                <div style="width: 50px; height: 15px; border-bottom: 1px solid black; border-right: 1px solid black; text-align: center;"></div>
                <div style="width: 50px; height: 15px; border-bottom: 1px solid black; border-right: 1px solid black; text-align: center;"></div>
                <div style="width: 50px; height: 15px; border-right: 1px solid black; text-align: center;"></div>
            </div> 
            <div style="display: table-cell">   
                <div style="width: 50px; height: 31px; border-bottom: 1px solid black; border-right: 1px solid black; text-align: center; background-color: #ccc;">반응성</div>
                <div style="width: 50px; height: 15px; border-bottom: 1px solid black; border-right: 1px solid black; text-align: center;"></div>
                <div style="width: 50px; height: 15px; border-bottom: 1px solid black; border-right: 1px solid black; text-align: center;"></div>
                <div style="width: 50px; height: 15px; border-bottom: 1px solid black; border-right: 1px solid black; text-align: center;"></div>
                <div style="width: 50px; height: 15px; border-bottom: 1px solid black; border-right: 1px solid black; text-align: center;"></div>
                <div style="width: 50px; height: 15px; border-bottom: 1px solid black; border-right: 1px solid black; text-align: center;"></div>
                <div style="width: 50px; height: 15px; border-bottom: 1px solid black; border-right: 1px solid black; text-align: center;"></div>
                <div style="width: 50px; height: 15px; border-bottom: 1px solid black; border-right: 1px solid black; text-align: center;"></div>
                <div style="width: 50px; height: 15px; border-bottom: 1px solid black; border-right: 1px solid black; text-align: center;"></div>
                <div style="width: 50px; height: 15px; border-bottom: 1px solid black; border-right: 1px solid black; text-align: center;"></div>
                <div style="width: 50px; height: 15px; border-right: 1px solid black; text-align: center;"></div>
            </div> 
            <div style="display: table-cell">   
                <div style="width: 50px; height: 31px; border-bottom: 1px solid black;  text-align: center; background-color: #ccc;">평균</div>
                <div style="width: 50px; height: 15px; border-bottom: 1px solid black;  text-align: center;"></div>
                <div style="width: 50px; height: 15px; border-bottom: 1px solid black;  text-align: center;"></div>
                <div style="width: 50px; height: 15px; border-bottom: 1px solid black;  text-align: center;"></div>
                <div style="width: 50px; height: 15px; border-bottom: 1px solid black;  text-align: center;"></div>
                <div style="width: 50px; height: 15px; border-bottom: 1px solid black;  text-align: center;"></div>
                <div style="width: 50px; height: 15px; border-bottom: 1px solid black;  text-align: center;"></div>
                <div style="width: 50px; height: 15px; border-bottom: 1px solid black;  text-align: center;"></div>
                <div style="width: 50px; height: 15px; border-bottom: 1px solid black;  text-align: center;"></div>
                <div style="width: 50px; height: 15px; border-bottom: 1px solid black;  text-align: center;"></div>
                <div style="width: 50px; height: 15px;  text-align: center;"></div>
            </div> 
        </div>
        <div style="display: table-cell; border:1px solid black; width:200px; height: 120px; text-align: center;">
            <div style=" border-bottom:1px solid black; width:200px; height: 30px; text-align: center; background-color: #ccc;"> 내용구성 </div>
            <div style="display: table-cell">   
                <div style="width: 50px; height: 31px; border-bottom: 1px solid black; border-right: 1px solid black; text-align: center; background-color: #ccc;">적합성</div>
                <div style="width: 50px; height: 15px; border-bottom: 1px solid black; border-right: 1px solid black; text-align: center;"></div>
                <div style="width: 50px; height: 15px; border-bottom: 1px solid black; border-right: 1px solid black; text-align: center;"></div>
                <div style="width: 50px; height: 15px; border-bottom: 1px solid black; border-right: 1px solid black; text-align: center;"></div>
                <div style="width: 50px; height: 15px; border-bottom: 1px solid black; border-right: 1px solid black; text-align: center;"></div>
                <div style="width: 50px; height: 15px; border-bottom: 1px solid black; border-right: 1px solid black; text-align: center;"></div>
                <div style="width: 50px; height: 15px; border-bottom: 1px solid black; border-right: 1px solid black; text-align: center;"></div>
                <div style="width: 50px; height: 15px; border-bottom: 1px solid black; border-right: 1px solid black; text-align: center;"></div>
                <div style="width: 50px; height: 15px; border-bottom: 1px solid black; border-right: 1px solid black; text-align: center;"></div>
                <div style="width: 50px; height: 15px; border-bottom: 1px solid black; border-right: 1px solid black; text-align: center;"></div>
                <div style="width: 50px; height: 15px; border-right: 1px solid black; text-align: center;"></div>
            </div> 
            <div style="display: table-cell">   
                <div style="width: 50px; height: 31px; border-bottom: 1px solid black; border-right: 1px solid black; text-align: center; background-color: #ccc;">흥미성</div>
                <div style="width: 50px; height: 15px; border-bottom: 1px solid black; border-right: 1px solid black; text-align: center;"></div>
                <div style="width: 50px; height: 15px; border-bottom: 1px solid black; border-right: 1px solid black; text-align: center;"></div>
                <div style="width: 50px; height: 15px; border-bottom: 1px solid black; border-right: 1px solid black; text-align: center;"></div>
                <div style="width: 50px; height: 15px; border-bottom: 1px solid black; border-right: 1px solid black; text-align: center;"></div>
                <div style="width: 50px; height: 15px; border-bottom: 1px solid black; border-right: 1px solid black; text-align: center;"></div>
                <div style="width: 50px; height: 15px; border-bottom: 1px solid black; border-right: 1px solid black; text-align: center;"></div>
                <div style="width: 50px; height: 15px; border-bottom: 1px solid black; border-right: 1px solid black; text-align: center;"></div>
                <div style="width: 50px; height: 15px; border-bottom: 1px solid black; border-right: 1px solid black; text-align: center;"></div>
                <div style="width: 50px; height: 15px; border-bottom: 1px solid black; border-right: 1px solid black; text-align: center;"></div>
                <div style="width: 50px; height: 15px; border-right: 1px solid black; text-align: center;"></div>
            </div> 
            <div style="display: table-cell">   
                <div style="width: 50px; height: 31px; border-bottom: 1px solid black; border-right: 1px solid black; text-align: center; background-color: #ccc;">흥미성</div>
                <div style="width: 50px; height: 15px; border-bottom: 1px solid black; border-right: 1px solid black; text-align: center;"></div>
                <div style="width: 50px; height: 15px; border-bottom: 1px solid black; border-right: 1px solid black; text-align: center;"></div>
                <div style="width: 50px; height: 15px; border-bottom: 1px solid black; border-right: 1px solid black; text-align: center;"></div>
                <div style="width: 50px; height: 15px; border-bottom: 1px solid black; border-right: 1px solid black; text-align: center;"></div>
                <div style="width: 50px; height: 15px; border-bottom: 1px solid black; border-right: 1px solid black; text-align: center;"></div>
                <div style="width: 50px; height: 15px; border-bottom: 1px solid black; border-right: 1px solid black; text-align: center;"></div>
                <div style="width: 50px; height: 15px; border-bottom: 1px solid black; border-right: 1px solid black; text-align: center;"></div>
                <div style="width: 50px; height: 15px; border-bottom: 1px solid black; border-right: 1px solid black; text-align: center;"></div>
                <div style="width: 50px; height: 15px; border-bottom: 1px solid black; border-right: 1px solid black; text-align: center;"></div>
                <div style="width: 50px; height: 15px; border-right: 1px solid black; text-align: center;"></div>
            </div> 
            <div style="display: table-cell">   
                <div style="width: 50px; height: 31px; border-bottom: 1px solid black;  text-align: center; background-color: #ccc;">평균</div>
                <div style="width: 50px; height: 15px; border-bottom: 1px solid black;  text-align: center;"></div>
                <div style="width: 50px; height: 15px; border-bottom: 1px solid black;  text-align: center;"></div>
                <div style="width: 50px; height: 15px; border-bottom: 1px solid black;  text-align: center;"></div>
                <div style="width: 50px; height: 15px; border-bottom: 1px solid black;  text-align: center;"></div>
                <div style="width: 50px; height: 15px; border-bottom: 1px solid black;  text-align: center;"></div>
                <div style="width: 50px; height: 15px; border-bottom: 1px solid black;  text-align: center;"></div>
                <div style="width: 50px; height: 15px; border-bottom: 1px solid black;  text-align: center;"></div>
                <div style="width: 50px; height: 15px; border-bottom: 1px solid black;  text-align: center;"></div>
                <div style="width: 50px; height: 15px; border-bottom: 1px solid black;  text-align: center;"></div>
                <div style="width: 50px; height: 15px;  text-align: center;"></div>
            </div> 
        </div>
        <div style="display: table-cell; border:1px solid black; width:200px; height: 120px; text-align: center;">
            <div style=" border-bottom:1px solid black; width:200px; height: 30px; text-align: center; background-color: #ccc;"> 효과성 </div>
            <div style="display: table-cell">   
                <div style="width: 50px; height: 31px; border-bottom: 1px solid black; border-right: 1px solid black; text-align: center; background-color: #ccc;">학습성</div>
                <div style="width: 50px; height: 15px; border-bottom: 1px solid black; border-right: 1px solid black; text-align: center;"></div>
                <div style="width: 50px; height: 15px; border-bottom: 1px solid black; border-right: 1px solid black; text-align: center;"></div>
                <div style="width: 50px; height: 15px; border-bottom: 1px solid black; border-right: 1px solid black; text-align: center;"></div>
                <div style="width: 50px; height: 15px; border-bottom: 1px solid black; border-right: 1px solid black; text-align: center;"></div>
                <div style="width: 50px; height: 15px; border-bottom: 1px solid black; border-right: 1px solid black; text-align: center;"></div>
                <div style="width: 50px; height: 15px; border-bottom: 1px solid black; border-right: 1px solid black; text-align: center;"></div>
                <div style="width: 50px; height: 15px; border-bottom: 1px solid black; border-right: 1px solid black; text-align: center;"></div>
                <div style="width: 50px; height: 15px; border-bottom: 1px solid black; border-right: 1px solid black; text-align: center;"></div>
                <div style="width: 50px; height: 15px; border-bottom: 1px solid black; border-right: 1px solid black; text-align: center;"></div>
                <div style="width: 50px; height: 15px; border-right: 1px solid black; text-align: center;"></div>
            </div> 
            <div style="display: table-cell">   
                <div style="width: 50px; height: 31px; border-bottom: 1px solid black; border-right: 1px solid black; text-align: center; background-color: #ccc;">재참여</div>
                <div style="width: 50px; height: 15px; border-bottom: 1px solid black; border-right: 1px solid black; text-align: center;"></div>
                <div style="width: 50px; height: 15px; border-bottom: 1px solid black; border-right: 1px solid black; text-align: center;"></div>
                <div style="width: 50px; height: 15px; border-bottom: 1px solid black; border-right: 1px solid black; text-align: center;"></div>
                <div style="width: 50px; height: 15px; border-bottom: 1px solid black; border-right: 1px solid black; text-align: center;"></div>
                <div style="width: 50px; height: 15px; border-bottom: 1px solid black; border-right: 1px solid black; text-align: center;"></div>
                <div style="width: 50px; height: 15px; border-bottom: 1px solid black; border-right: 1px solid black; text-align: center;"></div>
                <div style="width: 50px; height: 15px; border-bottom: 1px solid black; border-right: 1px solid black; text-align: center;"></div>
                <div style="width: 50px; height: 15px; border-bottom: 1px solid black; border-right: 1px solid black; text-align: center;"></div>
                <div style="width: 50px; height: 15px; border-bottom: 1px solid black; border-right: 1px solid black; text-align: center;"></div>
                <div style="width: 50px; height: 15px; border-right: 1px solid black; text-align: center;"></div>
            </div> 
            <div style="display: table-cell">   
                <div style="width: 50px; height: 31px; border-bottom: 1px solid black; border-right: 1px solid black; text-align: center; background-color: #ccc;">추천</div>
                <div style="width: 50px; height: 15px; border-bottom: 1px solid black; border-right: 1px solid black; text-align: center;"></div>
                <div style="width: 50px; height: 15px; border-bottom: 1px solid black; border-right: 1px solid black; text-align: center;"></div>
                <div style="width: 50px; height: 15px; border-bottom: 1px solid black; border-right: 1px solid black; text-align: center;"></div>
                <div style="width: 50px; height: 15px; border-bottom: 1px solid black; border-right: 1px solid black; text-align: center;"></div>
                <div style="width: 50px; height: 15px; border-bottom: 1px solid black; border-right: 1px solid black; text-align: center;"></div>
                <div style="width: 50px; height: 15px; border-bottom: 1px solid black; border-right: 1px solid black; text-align: center;"></div>
                <div style="width: 50px; height: 15px; border-bottom: 1px solid black; border-right: 1px solid black; text-align: center;"></div>
                <div style="width: 50px; height: 15px; border-bottom: 1px solid black; border-right: 1px solid black; text-align: center;"></div>
                <div style="width: 50px; height: 15px; border-bottom: 1px solid black; border-right: 1px solid black; text-align: center;"></div>
                <div style="width: 50px; height: 15px; border-right: 1px solid black; text-align: center;"></div>
            </div> 
            <div style="display: table-cell">   
                <div style="width: 50px; height: 31px; border-bottom: 1px solid black;  text-align: center; background-color: #ccc;">평균</div>
                <div style="width: 50px; height: 15px; border-bottom: 1px solid black;  text-align: center;"></div>
                <div style="width: 50px; height: 15px; border-bottom: 1px solid black;  text-align: center;"></div>
                <div style="width: 50px; height: 15px; border-bottom: 1px solid black;  text-align: center;"></div>
                <div style="width: 50px; height: 15px; border-bottom: 1px solid black;  text-align: center;"></div>
                <div style="width: 50px; height: 15px; border-bottom: 1px solid black;  text-align: center;"></div>
                <div style="width: 50px; height: 15px; border-bottom: 1px solid black;  text-align: center;"></div>
                <div style="width: 50px; height: 15px; border-bottom: 1px solid black;  text-align: center;"></div>
                <div style="width: 50px; height: 15px; border-bottom: 1px solid black;  text-align: center;"></div>
                <div style="width: 50px; height: 15px; border-bottom: 1px solid black;  text-align: center;"></div>
                <div style="width: 50px; height: 15px;  text-align: center;"></div>
            </div> 
        </div>
        <div style="display: table-cell; border:1px solid black; width: 50px; height: 210px; vertical-align: middle; ">
            <div style=" display:table-cell;vertical-align: middle;border-bottom:1px solid black; width: 50px; height: 60px;  background-color: #ccc; ">전체<br>평균</div>
            <div style="width: 50px; height: 15px; border-bottom: 1px solid black; text-align: center;"></div>
                <div style="width: 50px; height: 15px; border-bottom: 1px solid black;  text-align: center;"></div>
                <div style="width: 50px; height: 15px; border-bottom: 1px solid black;  text-align: center;"></div>
                <div style="width: 50px; height: 15px; border-bottom: 1px solid black;  text-align: center;"></div>
                <div style="width: 50px; height: 15px; border-bottom: 1px solid black;  text-align: center;"></div>
                <div style="width: 50px; height: 15px; border-bottom: 1px solid black;  text-align: center;"></div>
                <div style="width: 50px; height: 15px; border-bottom: 1px solid black;  text-align: center;"></div>
                <div style="width: 50px; height: 15px; border-bottom: 1px solid black;  text-align: center;"></div>
                <div style="width: 50px; height: 15px; border-bottom: 1px solid black;  text-align: center;"></div>
                <div style="width: 50px; height: 15px;  text-align: center;"></div>
        </div>
    </div>
    <br><br><br>
    <!-- 시설서비스 만족도 -->
    <div style=" display:table inline-block; padding:10px; border-collapse: collapse; font-size: 10px;text-align: center; ">
        <div style="display: table-cell; border:1px solid black; width: 50px; height: 90px; vertical-align: middle; background-color: #ccc;">시설서비스<br>만족도</div>
        <div style="display: table-cell; border:1px solid black; width:100px; height: 90px; text-align: center;">
            <div style=" border-bottom:1px solid black; width:100px; height: 30px; text-align: center; background-color: #ccc;"> 숙소 </div>
            <div style="display: table-cell">   
                <div style="width: 50px; height: 30px; border-bottom: 1px solid black; border-right: 1px solid black; text-align: center; background-color: #ccc;">편리</div>
                <div style="width: 50px; height: 30px;  border-right: 1px solid black; text-align: center;"></div>
            </div>
            <div style="display: table-cell">   
                <div style="width: 50px; height: 30px; border-bottom: 1px solid black; text-align: center; background-color: #ccc;">편리</div>
                <div style="width: 50px; height: 30px; text-align: center;"></div>
            </div>
         </div>
        <div style="display: table-cell; border:1px solid black; width:100px; height: 90px; text-align: center;">
            <div style=" border-bottom:1px solid black; width:100px; height: 30px; text-align: center; background-color: #ccc;"> 식당 </div>
            <div style="display: table-cell">   
                <div style="width: 50px; height: 30px; border-bottom: 1px solid black; border-right: 1px solid black; text-align: center; background-color: #ccc;">편리</div>
                <div style="width: 50px; height: 30px;  border-right: 1px solid black; text-align: center;"></div>
            </div>
            <div style="display: table-cell">   
                <div style="width: 50px; height: 30px; border-bottom: 1px solid black; text-align: center; background-color: #ccc;">편리</div>
                <div style="width: 50px; height: 30px; text-align: center;"></div>
            </div>
         </div>
        <div style="display: table-cell; border:1px solid black; width:150px; height: 90px; text-align: center;">
            <div style=" border-bottom:1px solid black; width:150px; height: 30px; text-align: center; background-color: #ccc;"> 프로그램 장소 </div>
            <div style="display: table-cell">   
                <div style="width: 50px; height: 30px; border-bottom: 1px solid black; border-right: 1px solid black; text-align: center; background-color: #ccc;">만족도</div>
                <div style="width: 50px; height: 30px;  border-right: 1px solid black; text-align: center;"></div>
            </div>
            <div style="display: table-cell">   
                <div style="width: 50px; height: 30px; border-bottom: 1px solid black; border-right: 1px solid black;text-align: center; background-color: #ccc;">청결도</div>
                <div style="width: 50px; height: 30px; border-right: 1px solid black;text-align: center;"></div>
            </div>
            <div style="display: table-cell">   
                <div style="width: 50px; height: 30px; border-bottom: 1px solid black; text-align: center; background-color: #ccc;">풍경</div>
                <div style="width: 50px; height: 30px; text-align: center;"></div>
            </div>
        </div>
        <div style="display: table-cell; border:1px solid black; width:150px; height: 90px; text-align: center;">
            <div style=" border-bottom:1px solid black; width:150px; height: 30px; text-align: center; background-color: #ccc;"> 숲(야외) </div>
            <div style="display: table-cell">   
                <div style="width: 50px; height: 30px; border-bottom: 1px solid black; border-right: 1px solid black; text-align: center; background-color: #ccc;">만족도</div>
                <div style="width: 50px; height: 30px;  border-right: 1px solid black; text-align: center;"></div>
            </div>
            <div style="display: table-cell">   
                <div style="width: 50px; height: 30px; border-bottom: 1px solid black; border-right: 1px solid black;text-align: center; background-color: #ccc;">청결도</div>
                <div style="width: 50px; height: 30px; border-right: 1px solid black;text-align: center;"></div>
            </div>
            <div style="display: table-cell">   
                <div style="width: 50px; height: 30px; border-bottom: 1px solid black; text-align: center; background-color: #ccc;">풍경</div>
                <div style="width: 50px; height: 30px; text-align: center;"></div>
            </div>
        </div>
        <div style="display: table-cell; border:1px solid black; width:150px; height: 90px; text-align: center;">
            <div style=" border-bottom:1px solid black; width:150px; height: 30px; text-align: center; background-color: #ccc;"> 운영 </div>
            <div style="display: table-cell">   
                <div style="width: 50px; height: 30px; border-bottom: 1px solid black; border-right: 1px solid black; text-align: center; background-color: #ccc;">운영방식</div>
                <div style="width: 50px; height: 30px;  border-right: 1px solid black; text-align: center;"></div>
            </div>
            <div style="display: table-cell">   
                <div style="width: 50px; height: 30px; border-bottom: 1px solid black; border-right: 1px solid black;text-align: center; background-color: #ccc;">시간편성</div>
                <div style="width: 50px; height: 30px; border-right: 1px solid black;text-align: center;"></div>
            </div>
            <div style="display: table-cell">   
                <div style="width: 50px; height: 30px; border-bottom: 1px solid black; text-align: center; background-color: #ccc;">직원친절</div>
                <div style="width: 50px; height: 30px; text-align: center;"></div>
            </div>
        </div>
        <div style="display: table-cell; border:1px solid black; width:150px; height: 90px; text-align: center;">
            <div style=" border-bottom:1px solid black; width:150px; height: 30px; text-align: center; background-color: #ccc;"> 식사 </div>
            <div style="display: table-cell">   
                <div style="width: 50px; height: 30px; border-bottom: 1px solid black; border-right: 1px solid black; text-align: center; background-color: #ccc;">신선도</div>
                <div style="width: 50px; height: 30px;  border-right: 1px solid black; text-align: center;"></div>
            </div>
            <div style="display: table-cell">   
                <div style="width: 50px; height: 30px; border-bottom: 1px solid black; border-right: 1px solid black;text-align: center; background-color: #ccc;">다양성</div>
                <div style="width: 50px; height: 30px; border-right: 1px solid black;text-align: center;"></div>
            </div>
            <div style="display: table-cell">   
                <div style="width: 50px; height: 30px; border-bottom: 1px solid black; text-align: center; background-color: #ccc;">영양</div>
                <div style="width: 50px; height: 30px; text-align: center;"></div>
            </div>
        </div>
        <div style="display: table-cell; border:1px solid black; width: 50px; height: 90px; vertical-align: middle; background-color: #ccc;"></div>
    </div>
    <!-- 프로그램 효과성  -->
    <div style=" display:table inline-block; padding:10px; border-collapse: collapse; font-size: 10px;text-align: center; ">
        <div style="display: table-cell; border:1px solid black; width: 50px; height: 90px; vertical-align: middle; background-color: #ccc;">프로그램<br>효과성</div>
        <div style="display: table-cell; border:1px solid black; width: 50px; height: 90px; vertical-align: middle; background-color: #ccc;">예방효과</div>
        <div style="display: table-cell; border:1px solid black; width:100px; height: 90px; text-align: center;">
            <div style=" border-bottom:1px solid black; width:100px; height: 30px; text-align: center; background-color: #ccc;"> 총점 </div>
            <div style="display: table-cell">   
                <div style="width: 50px; height: 30px; border-bottom: 1px solid black; border-right: 1px solid black; text-align: center; background-color: #ccc;">사전</div>
                <div style="width: 50px; height: 30px;  border-right: 1px solid black; text-align: center;"></div>
            </div>
            <div style="display: table-cell">   
                <div style="width: 50px; height: 30px; border-bottom: 1px solid black; text-align: center; background-color: #ccc;">사후</div>
                <div style="width: 50px; height: 30px; text-align: center;"></div>
            </div>
         </div>
        <div style="display: table-cell; border:1px solid black; width:100px; height: 90px; text-align: center;">
            <div style=" border-bottom:1px solid black; width:100px; height: 30px; text-align: center; background-color: #ccc;"> 평점 </div>
            <div style="display: table-cell">   
                <div style="width: 50px; height: 30px; border-bottom: 1px solid black; border-right: 1px solid black; text-align: center; background-color: #ccc;">사전</div>
                <div style="width: 50px; height: 30px;  border-right: 1px solid black; text-align: center;"></div>
            </div>
            <div style="display: table-cell">   
                <div style="width: 50px; height: 30px; border-bottom: 1px solid black; text-align: center; background-color: #ccc;">사후</div>
                <div style="width: 50px; height: 30px; text-align: center;"></div>
            </div>
         </div>
        <div style="display: table-cell; border:1px solid black; width: 50px; height: 90px; vertical-align: middle; background-color: #ccc;">상담치유<br>효과</div>
        <div style="display: table-cell; border:1px solid black; width:100px; height: 90px; text-align: center;">
            <div style=" border-bottom:1px solid black; width:100px; height: 30px; text-align: center; background-color: #ccc;"> 총점 </div>
            <div style="display: table-cell">   
                <div style="width: 50px; height: 30px; border-bottom: 1px solid black; border-right: 1px solid black; text-align: center; background-color: #ccc;">사전</div>
                <div style="width: 50px; height: 30px;  border-right: 1px solid black; text-align: center;"></div>
            </div>
            <div style="display: table-cell">   
                <div style="width: 50px; height: 30px; border-bottom: 1px solid black; text-align: center; background-color: #ccc;">사후</div>
                <div style="width: 50px; height: 30px; text-align: center;"></div>
            </div>
         </div>
        <div style="display: table-cell; border:1px solid black; width:100px; height: 90px; text-align: center;">
            <div style=" border-bottom:1px solid black; width:100px; height: 30px; text-align: center; background-color: #ccc;"> 평점 </div>
            <div style="display: table-cell">   
                <div style="width: 50px; height: 30px; border-bottom: 1px solid black; border-right: 1px solid black; text-align: center; background-color: #ccc;">사전</div>
                <div style="width: 50px; height: 30px;  border-right: 1px solid black; text-align: center;"></div>
            </div>
            <div style="display: table-cell">   
                <div style="width: 50px; height: 30px; border-bottom: 1px solid black; text-align: center; background-color: #ccc;">사후</div>
                <div style="width: 50px; height: 30px; text-align: center;"></div>
            </div>
         </div>
        <div style="display: table-cell; border:1px solid black; width: 50px; height: 90px; vertical-align: middle; background-color: #ccc;">힐링효과</div>
        <div style="display: table-cell; border:1px solid black; width:100px; height: 90px; text-align: center;">
            <div style=" border-bottom:1px solid black; width:100px; height: 30px; text-align: center; background-color: #ccc;"> 총점 </div>
            <div style="display: table-cell">   
                <div style="width: 50px; height: 30px; border-bottom: 1px solid black; border-right: 1px solid black; text-align: center; background-color: #ccc;">사전</div>
                <div style="width: 50px; height: 30px;  border-right: 1px solid black; text-align: center;"></div>
            </div>
            <div style="display: table-cell">   
                <div style="width: 50px; height: 30px; border-bottom: 1px solid black; text-align: center; background-color: #ccc;">사후</div>
                <div style="width: 50px; height: 30px; text-align: center;"></div>
            </div>
         </div>
        <div style="display: table-cell; border:1px solid black; width:100px; height: 90px; text-align: center;">
            <div style=" border-bottom:1px solid black; width:100px; height: 30px; text-align: center; background-color: #ccc;"> 평점 </div>
            <div style="display: table-cell">   
                <div style="width: 50px; height: 30px; border-bottom: 1px solid black; border-right: 1px solid black; text-align: center; background-color: #ccc;">사전</div>
                <div style="width: 50px; height: 30px;  border-right: 1px solid black; text-align: center;"></div>
            </div>
            <div style="display: table-cell">   
                <div style="width: 50px; height: 30px; border-bottom: 1px solid black; text-align: center; background-color: #ccc;">사후</div>
                <div style="width: 50px; height: 30px; text-align: center;"></div>
            </div>
         </div>
         <div style="display: table-cell; border:1px solid black; width: 50px; height: 90px; vertical-align: middle; background-color: #ccc;"></div>
         <div style="display: table-cell; border:1px solid black; width: 50px; height: 90px; vertical-align: middle; background-color: #ccc;"></div>
    </div>
    
    
    <!--자율신경검사 효과성  -->
    <div style=" display:table inline-block; padding:10px; border-collapse: collapse; font-size: 10px;text-align: center; ">
        <div style="display: table-cell; border:1px solid black; width: 50px; height: 60px; vertical-align: middle; background-color: #ccc;">프로그램<br>효과성</div>
        <div style="display: table-cell; border:1px solid black; width: 50px; height: 60px; vertical-align: middle; background-color: #ccc;">자율신경<br>활성도</div>
        <div style="display: table-cell; border:1px solid black; width:100px; height: 60px; text-align: center;">
            <div style="display: table-cell">   
                <div style="width: 50px; height: 30px; border-bottom: 1px solid black; border-right: 1px solid black; text-align: center; background-color: #ccc;">사전</div>
                <div style="width: 50px; height: 30px;  border-right: 1px solid black; text-align: center;"></div>
            </div>
            <div style="display: table-cell">   
                <div style="width: 50px; height: 30px; border-bottom: 1px solid black; text-align: center; background-color: #ccc;">사후</div>
                <div style="width: 50px; height: 30px; text-align: center;"></div>
            </div>
        </div>
        <div style="display: table-cell; border:1px solid black; width: 50px; height: 60px; vertical-align: middle; background-color: #ccc;">자율신경<br>활성도</div>
        <div style="display: table-cell; border:1px solid black; width:100px; height: 60px; text-align: center;">
            <div style="display: table-cell">   
                <div style="width: 50px; height: 30px; border-bottom: 1px solid black; border-right: 1px solid black; text-align: center; background-color: #ccc;">사전</div>
                <div style="width: 50px; height: 30px;  border-right: 1px solid black; text-align: center;"></div>
            </div>
            <div style="display: table-cell">   
                <div style="width: 50px; height: 30px; border-bottom: 1px solid black; text-align: center; background-color: #ccc;">사후</div>
                <div style="width: 50px; height: 30px; text-align: center;"></div>
            </div>
        </div>
        <div style="display: table-cell; border:1px solid black; width: 50px; height: 60px; vertical-align: middle; background-color: #ccc;">스트레스<br>저항도</div>
        <div style="display: table-cell; border:1px solid black; width:100px; height: 60px; text-align: center;">
            <div style="display: table-cell">   
                <div style="width: 50px; height: 30px; border-bottom: 1px solid black; border-right: 1px solid black; text-align: center; background-color: #ccc;">사전</div>
                <div style="width: 50px; height: 30px;  border-right: 1px solid black; text-align: center;"></div>
            </div>
            <div style="display: table-cell">   
                <div style="width: 50px; height: 30px; border-bottom: 1px solid black; text-align: center; background-color: #ccc;">사후</div>
                <div style="width: 50px; height: 30px; text-align: center;"></div>
            </div>
        </div>
        <div style="display: table-cell; border:1px solid black; width: 50px; height: 60px; vertical-align: middle; background-color: #ccc;">스트레스<br>지수</div>
        <div style="display: table-cell; border:1px solid black; width:100px; height: 60px; text-align: center;">
            <div style="display: table-cell">   
                <div style="width: 50px; height: 30px; border-bottom: 1px solid black; border-right: 1px solid black; text-align: center; background-color: #ccc;">사전</div>
                <div style="width: 50px; height: 30px;  border-right: 1px solid black; text-align: center;"></div>
            </div>
            <div style="display: table-cell">   
                <div style="width: 50px; height: 30px; border-bottom: 1px solid black; text-align: center; background-color: #ccc;">사후</div>
                <div style="width: 50px; height: 30px; text-align: center;"></div>
            </div>
        </div>
        <div style="display: table-cell; border:1px solid black; width: 50px; height: 60px; vertical-align: middle; background-color: #ccc;">피로도</div>
        <div style="display: table-cell; border:1px solid black; width:100px; height: 60px; text-align: center;">
            <div style="display: table-cell">   
                <div style="width: 50px; height: 30px; border-bottom: 1px solid black; border-right: 1px solid black; text-align: center; background-color: #ccc;">사전</div>
                <div style="width: 50px; height: 30px;  border-right: 1px solid black; text-align: center;"></div>
            </div>
            <div style="display: table-cell">   
                <div style="width: 50px; height: 30px; border-bottom: 1px solid black; text-align: center; background-color: #ccc;">사후</div>
                <div style="width: 50px; height: 30px; text-align: center;"></div>
            </div>
        </div>
        <div style="display: table-cell; border:1px solid black; width: 50px; height: 60px; vertical-align: middle; background-color: #ccc;"></div>
        <div style="display: table-cell; border:1px solid black; width: 50px; height: 60px; vertical-align: middle; background-color: #ccc;"></div>
    </div>
    
   <!--===========================================================================================================================================================================================   -->
    <!-- 소감  -->
    <div style=" display:table inline-block; padding:10px; border-collapse: collapse; font-size: 10px;text-align: center; ">
        <div style="display: table-cell; border:1px solid black; width: 50px; height: 90px; vertical-align: middle; background-color: #ccc;">소감</div>
        <div style="display: table-cell; border:1px solid black; width:100px; height: 60px; text-align: center;">
            <div style="display: table-cell">   
                <div style="width: 400px; height: 30px; border-bottom: 1px solid black; border-right: 1px solid black; text-align: center; background-color: #ccc;">프로그램 소감</div>
                <div style="width: 400px; height: 60px;  border-right: 1px solid black; text-align: center;"></div>
            </div>
            <div style="display: table-cell">   
                <div style="width: 430px; height: 30px; border-bottom: 1px solid black; text-align: center; background-color: #ccc;">시설 등 소감</div>
                <div style="width: 430px; height: 60px; text-align: center;"></div>
            </div>
        </div>
    </div>
    
  <!--===========================================================================================================================================================================================   -->
    <!-- 종합의견 -->
    <div style=" display:table inline-block; padding:10px; border-collapse: collapse; font-size: 10px;text-align: center; ">
        <div style="display: table-cell; border:1px solid black; width: 50px; height: 90px; vertical-align: middle; background-color: #ccc;">프로그램<br>효과성</div>
        <div style="display: table-cell; border:1px solid black; width:800px; height: 60px; text-align: center;"></div>
    </div>
    
  <!--===========================================================================================================================================================================================   -->
    <!-- 지출금액 -->
    <div style=" display:table inline-block; padding:10px; border-collapse: collapse; font-size: 10px;text-align: center; ">
        <div style="display: table-cell; border:1px solid black; width: 50px; height: 270px; vertical-align: middle; background-color: #ccc;">지출<br>금액</div>
        <div style="display: table-cell; border:1px solid black; width:100px; height: 60px; text-align: center;">
            <div style="display: table-cell; ">   
                <div style="width: 100px; height: 30px; border-bottom: 1px solid black; text-align: center; background-color: #ccc;">지출항목</div>
                <div style="display: table-row; width :150px; height: 90px;">
                    <div style="display: table-cell">   
                         <div style="display: table-cell;width: 50px; height: 90px; border-bottom: 1px solid black;  border-right: 1px solid black; text-align: center; vertical-align: middle;">강사</div>
                    </div> 
                    <div style="display: table-cell; vertical-align: middle;">   
                        <div style="width: 50px; height: 30px; border-bottom: 1px solid black;  text-align: center;">강사비</div>
                        <div style="width: 50px; height: 30px; border-bottom: 1px solid black;  text-align: center;">교통비</div>
                        <div style="border-bottom: 1px solid black;width: 50px; height: 30px; text-align: center;">식비</div>
                    </div> 
                </div>
                <div style="display: table-row; width :150px; height: 90px;">
                    <div style="display: table-cell">   
                         <div style="display: table-cell;width: 50px; height: 90px; border-bottom: 1px solid black;  border-right: 1px solid black; text-align: center; vertical-align: middle;">강사</div>
                    </div> 
                    <div style="display: table-cell; vertical-align: middle;">   
                        <div style="width: 50px; height: 30px; border-bottom: 1px solid black;  text-align: center;">강사비</div>
                        <div style="width: 50px; height: 30px; border-bottom: 1px solid black;  text-align: center;">교통비</div>
                        <div style="border-bottom: 1px solid black;width: 50px; height: 30px; text-align: center;">식비</div>
                    </div> 
                </div>
                <div style="width: 100px; height: 30px; border-bottom: 1px solid black; text-align: center;">예비비</div>
                <div style="width: 100px; height: 30px; text-align: center;">합계</div>
            </div>
        </div>
        <div style="display: table-cell; border:1px solid black; width:100px; height: 60px; text-align: center;">
            <div style="display: table-cell; ">   
                <div style="width: 150px; height: 30px; border-bottom: 1px solid black; text-align: center; background-color: #ccc;">기존예산</div>
                <div style="width: 150px; height: 30px;  border-bottom: 1px solid black; text-align: center;"></div>
                <div style="width: 150px; height: 30px;  border-bottom: 1px solid black; text-align: center;"></div>
                <div style="width: 150px; height: 30px;  border-bottom: 1px solid black; text-align: center;"></div>
                <div style="width: 150px; height: 30px;  border-bottom: 1px solid black; text-align: center;"></div>
                <div style="width: 150px; height: 30px;  border-bottom: 1px solid black; text-align: center;"></div>
                <div style="width: 150px; height: 30px;  border-bottom: 1px solid black; text-align: center;"></div>
                <div style="width: 150px; height: 30px;  border-bottom: 1px solid black; text-align: center;"></div>
                <div style="width: 150px; height: 30px;  text-align: center;"></div>
            </div>
        </div>
        <div style="display: table-cell; border:1px solid black; width:100px; height: 60px; text-align: center;">
            <div style="display: table-cell; ">   
                <div style="width: 150px; height: 30px; border-bottom: 1px solid black; text-align: center; background-color: #ccc;">집행금액</div>
                <div style="width: 150px; height: 30px;  border-bottom: 1px solid black; text-align: center;"></div>
                <div style="width: 150px; height: 30px;  border-bottom: 1px solid black; text-align: center;"></div>
                <div style="width: 150px; height: 30px;  border-bottom: 1px solid black; text-align: center;"></div>
                <div style="width: 150px; height: 30px;  border-bottom: 1px solid black; text-align: center;"></div>
                <div style="width: 150px; height: 30px;  border-bottom: 1px solid black; text-align: center;"></div>
                <div style="width: 150px; height: 30px;  border-bottom: 1px solid black; text-align: center;"></div>
                <div style="width: 150px; height: 30px;  border-bottom: 1px solid black; text-align: center;"></div>
                <div style="width: 150px; height: 30px;  text-align: center;"></div>
            </div>
        </div>
        <div style="display: table-cell; border:1px solid black; width:100px; height: 60px; text-align: center;">
            <div style="display: table-cell; ">   
                <div style="width: 300px; height: 30px; border-bottom: 1px solid black; text-align: center; background-color: #ccc;">세부내역</div>
                <div style="width: 300px; height: 30px;  border-bottom: 1px solid black; text-align: center;"></div>
                <div style="width: 300px; height: 30px;  border-bottom: 1px solid black; text-align: center;"></div>
                <div style="width: 300px; height: 30px;  border-bottom: 1px solid black; text-align: center;"></div>
                <div style="width: 300px; height: 30px;  border-bottom: 1px solid black; text-align: center;"></div>
                <div style="width: 300px; height: 30px;  border-bottom: 1px solid black; text-align: center;"></div>
                <div style="width: 300px; height: 30px;  border-bottom: 1px solid black; text-align: center;"></div>
                <div style="width: 300px; height: 30px;  border-bottom: 1px solid black; text-align: center;"></div>
                <div style="width: 300px; height: 30px;  text-align: center;"></div>
            </div>
        </div>
        <div style="display: table-cell; border:1px solid black; width:100px; height: 60px; text-align: center;">
            <div style="display: table-cell; ">   
                <div style="width: 100px; height: 30px; border-bottom: 1px solid black; text-align: center; background-color: #ccc;">비고</div>
                <div style="width: 100px; height: 30px;  border-bottom: 1px solid black; text-align: center;"></div>
                <div style="width: 100px; height: 30px;  border-bottom: 1px solid black; text-align: center;"></div>
                <div style="width: 100px; height: 30px;  border-bottom: 1px solid black; text-align: center;"></div>
                <div style="width: 100px; height: 30px;  border-bottom: 1px solid black; text-align: center;"></div>
                <div style="width: 100px; height: 30px;  border-bottom: 1px solid black; text-align: center;"></div>
                <div style="width: 100px; height: 30px;  border-bottom: 1px solid black; text-align: center;"></div>
                <div style="width: 100px; height: 30px;  border-bottom: 1px solid black; text-align: center;"></div>
                <div style="width: 100px; height: 30px;  text-align: center;"></div>
            </div>
        </div>
    </div>
    <!-- 수익금액 -->
    <div style=" display:table inline-block; padding:10px; border-collapse: collapse; font-size: 10px;text-align: center; ">
        <div style="display: table-cell; border:1px solid black; width: 50px; height: 210px; vertical-align: middle; background-color: #ccc;">수익<br>금액</div>
        <div style="display: table-cell; border:1px solid black; width:100px; height: 60px; text-align: center;">
            <div style="display: table-cell; ">   
                <div style="width: 100px; height: 30px; border-bottom: 1px solid black; text-align: center; background-color: #ccc;">수입항목</div>
                <div style="width: 100px; height: 30px;  border-bottom: 1px solid black; text-align: center;">프로그램</div>
                <div style="width: 100px; height: 30px;  border-bottom: 1px solid black; text-align: center;">숙박</div>
                <div style="width: 100px; height: 30px;  border-bottom: 1px solid black; text-align: center;">식사</div>
                <div style="width: 100px; height: 30px;  border-bottom: 1px solid black; text-align: center;">대관 및 기타</div>
                <div style="width: 100px; height: 30px;  border-bottom: 1px solid black; text-align: center;">계</div>
                <div style="width: 100px; height: 30px;  text-align: center;">최종금액</div>
            </div>
        </div>
        <div style="display: table-cell; border:1px solid black; width:100px; height: 60px; text-align: center;">
            <div style="display: table-cell; ">   
                <div style="width: 150px; height: 30px; border-bottom: 1px solid black; text-align: center; background-color: #ccc;">수입금액</div>
                <div style="width: 150px; height: 30px;  border-bottom: 1px solid black; text-align: center;"></div>
                <div style="width: 150px; height: 30px;  border-bottom: 1px solid black; text-align: center;"></div>
                <div style="width: 150px; height: 30px;  border-bottom: 1px solid black; text-align: center;"></div>
                <div style="width: 150px; height: 30px;  border-bottom: 1px solid black; text-align: center;"></div>
                <div style="width: 150px; height: 30px;  border-bottom: 1px solid black; text-align: center;"></div>
                <div style="width: 150px; height: 30px;  text-align: center;"></div>
            </div>
        </div>
        <div style="display: table-cell; border:1px solid black; width:100px; height: 60px; text-align: center;">
            <div style="display: table-cell; ">   
                <div style="width: 450px; height: 30px; border-bottom: 1px solid black; text-align: center; background-color: #ccc;">수입금액</div>
                <div style="width: 450px; height: 30px;  border-bottom: 1px solid black; text-align: center;"></div>
                <div style="width: 450px; height: 30px;  border-bottom: 1px solid black; text-align: center;"></div>
                <div style="width: 450px; height: 30px;  border-bottom: 1px solid black; text-align: center;"></div>
                <div style="width: 450px; height: 30px;  border-bottom: 1px solid black; text-align: center;"></div>
                <div style="width: 450px; height: 30px;  border-bottom: 1px solid black; text-align: center;"></div>
                <div style="width: 450px; height: 30px;  text-align: center;"></div>
            </div>
        </div>
        <div style="display: table-cell; border:1px solid black; width:100px; height: 60px; text-align: center;">
            <div style="display: table-cell; ">   
                <div style="width: 100px; height: 30px; border-bottom: 1px solid black; text-align: center; background-color: #ccc;">비고</div>
                <div style="width: 100px; height: 30px;  border-bottom: 1px solid black; text-align: center;"></div>
                <div style="width: 100px; height: 30px;  border-bottom: 1px solid black; text-align: center;"></div>
                <div style="width: 100px; height: 30px;  border-bottom: 1px solid black; text-align: center;"></div>
                <div style="width: 100px; height: 30px;  border-bottom: 1px solid black; text-align: center;"></div>
                <div style="width: 100px; height: 30px;  border-bottom: 1px solid black; text-align: center;"></div>
                <div style="width: 100px; height: 30px;  text-align: center;"></div>
            </div>
        </div>
    </div>
    
</div>
</body>
</html>