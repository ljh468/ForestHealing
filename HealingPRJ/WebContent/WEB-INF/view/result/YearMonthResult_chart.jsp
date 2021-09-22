<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>연월 통계</title>
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
    <div style="width:1000px; height:40px;text-align: center;"><h3>하이힐링원 연*월 프로그램 실시 결과 보고</h3></div>
    <div style="width:1000px; height:30px;">
        <div style="display: table-cell;">
            <div style="display: table-cell;width: 200px; line-height: 30px;height: 30px; "></div>
            <div style="display: table-cell;width: 200px; line-height: 30px;height: 30px; "></div>
            <div style="display: table-cell;width: 200px; line-height: 30px;height: 30px; "></div>
            <div style="display: table-cell;width: 200px; line-height: 30px;height: 30px; font-size: 8px;  "></div>
            <div style="display: table-cell;width: 200px; line-height: 30px;height: 30px; font-size: 8px;  "></div>
        </div>
    </div>
    
    <!-- 참가유형 -->
    <div style=" display:table inline-block; padding:10px; border-collapse: collapse; font-size: 10px;text-align: center; vertical-align: middle; ">
        <div style="display: table-cell; border:1px solid black; width: 50px; height: 120px; vertical-align: middle; background-color: #ccc;">참가<br>유형</div>
        <div style="display: table-cell; border:1px solid black; width: 50px; height: 120px; vertical-align: middle;" >
            <div style=" border-bottom:1px solid black; width:50px;line-height: 60px; height: 60px; text-align: center; vertical-align: middle;background-color: #ccc; ">구분</div>
            <div style=" border-bottom:1px solid black; width:50px;line-height: 30px; height: 30px; text-align: center;background-color: #ccc; "> 인원</div>
            <div style=" width:50px; height: 30px;line-height: 30px; text-align: center; background-color: #ccc;"> 구분</div>
        </div>
        <div style="display: table-cell; border:1px solid black; width:500px; height: 120px; text-align: center;">
            <div style=" border-bottom:1px solid black; width:508px; line-height: 30px; height: 30px; text-align: center; background-color: #ccc;"> 참가자 유형</div>
                <div style="display: table-cell">   
                    <div style="width: 50px; line-height: 30px;height: 30px; border-bottom: 1px solid black; border-right: 1px solid black; text-align: center; background-color: #ccc;">아동청소년</div>
                    <div style="width: 50px; line-height: 30px;height: 30px; border-bottom: 1px solid black; border-right: 1px solid black;text-align: center; " ></div>
                    <div style="width: 50px; line-height: 30px;height: 30px; border-right: 1px solid black; text-align: center;"></div>
                </div> 
                <div style="display: table-cell; vertical-align: middle;">   
                    <div style="width: 50px; line-height: 30px;height: 30px; border-bottom: 1px solid black; border-right: 1px solid black; text-align: center; background-color: #ccc;">성인</div>
                    <div style="width: 50px; line-height: 30px;height: 30px; border-bottom: 1px solid black; border-right: 1px solid black;text-align: center;"></div>
                    <div style="width: 50px; line-height: 30px;height: 30px; border-right: 1px solid black; text-align: center;"></div>
                </div> 
                <div style="display: table-cell">   
                    <div style="width: 50px; line-height: 30px;height: 30px; border-bottom: 1px solid black; border-right: 1px solid black; text-align: center; background-color: #ccc;">노인</div>
                    <div style="width: 50px; line-height: 30px;height: 30px; border-bottom: 1px solid black; border-right: 1px solid black;text-align: center;"></div>
                    <div style="width: 50px; line-height: 30px;height: 30px; border-right: 1px solid black; text-align: center;"></div>
                </div> 
                <div style="display: table-cell">   
                    <div style="width: 50px; line-height: 30px;height: 30px; border-bottom: 1px solid black; border-right: 1px solid black; text-align: center; background-color: #ccc;">장애인</div>
                    <div style="width: 50px; line-height: 30px;height: 30px; border-bottom: 1px solid black; border-right: 1px solid black;text-align: center;"></div>
                    <div style="width: 50px; line-height: 30px;height: 30px; border-right: 1px solid black; text-align: center;"></div>
                </div> 

                <div style="display: table-cell">   
                    <div style="width: 50px; line-height: 30px;height: 30px; border-bottom: 1px solid black; border-right: 1px solid black; text-align: center; background-color: #ccc;">저소득층</div>
                    <div style="width: 50px; line-height: 30px;height: 30px; border-bottom: 1px solid black; border-right: 1px solid black;text-align: center;"></div>
                    <div style="width: 50px; line-height: 30px;height: 30px; border-right: 1px solid black; text-align: center;"></div>
                </div> 
                <div style="display: table-cell">   
                    <div style="width: 50px; line-height: 30px;height: 30px; border-bottom: 1px solid black; border-right: 1px solid black; text-align: center; background-color: #ccc;">가족</div>
                    <div style="width: 50px; line-height: 30px;height: 30px; border-bottom: 1px solid black; border-right: 1px solid black;text-align: center;"></div>
                    <div style="width: 50px; line-height: 30px;height: 30px; border-right: 1px solid black; text-align: center;"></div>
                </div> 
                <div style="display: table-cell">   
                    <div style="width: 50px; line-height: 30px;height: 30px; border-bottom: 1px solid black; border-right: 1px solid black; text-align: center; background-color: #ccc;">다문화가정</div>
                    <div style="width: 50px; line-height: 30px;height: 30px; border-bottom: 1px solid black; border-right: 1px solid black;text-align: center;"></div>
                    <div style="width: 50px; line-height: 30px;height: 30px; border-right: 1px solid black; text-align: center;"></div>
                </div> 
                <div style="display: table-cell">   
                    <div style="width: 50px; line-height: 30px;height: 30px; border-bottom: 1px solid black; border-right: 1px solid black; text-align: center; background-color: #ccc;">중독</div>
                    <div style="width: 50px; line-height: 30px;height: 30px; border-bottom: 1px solid black; border-right: 1px solid black;text-align: center;"></div>
                    <div style="width: 50px; line-height: 30px;height: 30px; border-right: 1px solid black; text-align: center;"></div>
                </div> 

                <div style="display: table-cell">   
                    <div style="width: 108px; line-height: 30px;height: 30px; border-bottom: 1px solid black;  text-align: center; background-color: #ccc;">계</div>
                    <div style="width: 108px; line-height: 30px;height: 30px; border-bottom: 1px solid black; text-align: center;"></div>
                    <div style="width: 108px; line-height: 30px;height: 30px;  text-align: center;"></div>
                </div> 
                
            </div>
            <div style="display: table-cell; border:1px solid black; width:400px; height: 120px; text-align: center;">
                <div style=" border-bottom:1px solid black; width:406px;line-height: 30px; height: 30px; text-align: center; background-color: #ccc;"> 사업구분</div>
                <div style="display: table-cell">   
                    <div style="width: 50px; line-height: 30px;height: 30px; border-bottom: 1px solid black; border-right: 1px solid black; text-align: center; background-color: #ccc;">일반</div>
                    <div style="width: 50px; line-height: 30px;height: 30px; border-bottom: 1px solid black; border-right: 1px solid black;text-align: center;"></div>
                    <div style="width: 50px; line-height: 30px;height: 30px; border-right: 1px solid black; text-align: center;"></div>
                </div> 
                <div style="display: table-cell">   
                    <div style="width: 50px; line-height: 30px;height: 30px; border-bottom: 1px solid black; border-right: 1px solid black; text-align: center; background-color: #ccc;">녹색자금</div>
                    <div style="width: 50px; line-height: 30px;height: 30px; border-bottom: 1px solid black; border-right: 1px solid black;text-align: center;"></div>
                    <div style="width: 50px; line-height: 30px;height: 30px; border-right: 1px solid black; text-align: center;"></div>
                </div> 
                <div style="display: table-cell">   
                    <div style="width: 50px; line-height: 30px;height: 30px; border-bottom: 1px solid black; border-right: 1px solid black; text-align: center; background-color: #ccc;">바우처</div>
                    <div style="width: 50px; line-height: 30px;height: 30px; border-bottom: 1px solid black; border-right: 1px solid black;text-align: center;"></div>
                    <div style="width: 50px; line-height: 30px;height: 30px; border-right: 1px solid black; text-align: center;"></div>
                </div> 
                <div style="display: table-cell">   
                    <div style="width: 50px; line-height: 30px;height: 30px; border-bottom: 1px solid black; border-right: 1px solid black; text-align: center; background-color: #ccc;">교직원</div>
                    <div style="width: 50px; line-height: 30px;height: 30px; border-bottom: 1px solid black; border-right: 1px solid black;text-align: center;"></div>
                    <div style="width: 50px; line-height: 30px;height: 30px; border-right: 1px solid black; text-align: center;"></div>
                </div> 
                <div style="display: table-cell">   
                    <div style="width: 50px; line-height: 30px;height: 30px; border-bottom: 1px solid black; border-right: 1px solid black; text-align: center; background-color: #ccc;">사회공헌</div>
                    <div style="width: 50px; line-height: 30px;height: 30px; border-bottom: 1px solid black; border-right: 1px solid black;text-align: center;"></div>
                    <div style="width: 50px; line-height: 30px;height: 30px; border-right: 1px solid black; text-align: center;"></div>
                </div> 
                <div style="display: table-cell">   
                    <div style="width: 50px; line-height: 30px;height: 30px; border-bottom: 1px solid black; border-right: 1px solid black; text-align: center;background-color: #ccc;">기타</div>
                    <div style="width: 50px; line-height: 30px;height: 30px; border-bottom: 1px solid black; border-right: 1px solid black;text-align: center;"></div>
                    <div style="width: 50px; line-height: 30px;height: 30px; border-right: 1px solid black; text-align: center;"></div>
                </div> 
                <div style="display: table-cell">   
                    <div style="width: 106px; line-height: 30px;height: 30px; border-bottom: 1px solid black; text-align: center; background-color: #ccc;">계</div>
                    <div style="width: 106px; line-height: 30px;height: 30px; border-bottom: 1px solid black; text-align: center;"></div>
                    <div style="width: 106px; line-height: 30px;height: 30px;  text-align: center;"></div>
                </div> 
            </div>
    </div>
    
    
    <!-- 지역  -->
    <% String[] list_1 = {"서울","부산","대구","인천","대전","광주","부산","울산","경기","강원","폐광지역","충북","충남/세종","경북","경남","전북","전남","제주","계"}; %>
     <!-- 지역구분 -->
     <div style=" display:table inline-block; padding:10px; border-collapse: collapse; font-size: 10px;text-align: center; ">
        <div style="display: table-cell; border:1px solid black; width: 50px; height: 90px; vertical-align: middle; background-color: #ccc;">지역</div>
        <%for(int i = 0; i < list_1.length; i++) { %>
        <div style="display: table-cell; border:1px solid black; width: 50px; height: 90px; vertical-align: middle;" >
            <div style="  border-bottom:1px solid black; width: 50px; line-height: 30px;height: 30px; text-align: center; background-color: #ccc;"><%=list_1[i]%></div>
            <div style=" border-bottom:1px solid black; width:50px; line-height: 30px;height: 30px; text-align: center;"> </div>
            <div style=" width:50px; line-height: 30px;height: 30px; text-align: center;"> </div>
        </div>
        <% } %>
       </div>
    
    
    <!--프로그램 시행개요 -->
    <div style=" display:table inline-block; padding:10px; border-collapse: collapse; font-size: 10px;text-align: center; ">
        <div style="display: table-cell; border:1px solid black; width: 50px; height: 240px; vertical-align: middle;">프로그램 <br>시행개요</div>
        <div style="display: table-cell; border:1px solid black; width: 50px; height: 240px; ">
            <div style=" display: table-cell;border-bottom:1px solid black; width: 50px; height: 91px; vertical-align: middle; ">구분</div>
            <div style=" border-bottom:1px solid black; width:50px; height: 30px; ">수익사업</div>
            <div style=" border-bottom:1px solid black; width:50px; height: 30px; ">사회공헌</div>
            <div style=" border-bottom:1px solid black; width:50px; height: 30px; ">계</div>
            <div style=" display: table-cell; width:50px; height: 60px; vertical-align: middle; "> 객실배정</div>
        </div>
        <div style="display: table-cell; border:1px solid black; width: 400px; height: 120px; vertical-align: middle;" >
            <div style="display: table-cell; border-bottom:1px solid black; width: 407px; height: 30px; background-color: #ccc;">참여인원(명)</div>
            <div style="display: table;  width: 300px; height: 30px; ">
                <div style="display: table-cell; width :150px; height: 90px;">
                    <div style=" border-bottom:1px solid black; width:150px; height: 30px; border-right: 1px solid black;text-align: center; background-color: #ccc;"> 참여자(명)</div>
                    <div style="display: table-cell">   
                         <div style="width: 50px; height: 31px; border-bottom: 1px solid black; border-left: 1px solid blac; border-right: 1px solid black; text-align: center;">남</div>
                         <div style="border-bottom:1px solid black;border-right: 1px solid black;width: 50px; height: 30px;  text-align: center;"></div>
                         <div style="border-bottom:1px solid black;border-right: 1px solid black;width: 50px; height: 30px;  text-align: center;"></div>
                         <div style="border-bottom:1px solid black;border-right: 1px solid black;width: 50px; height: 30px;  text-align: center;"></div>
                    </div> 
                    <div style="display: table-cell; vertical-align: middle;">   
                        <div style="width: 50px; height: 31px; border-bottom: 1px solid black; border-right: 1px solid black; text-align: center; ">여</div>
                        <div style="border-bottom:1px solid black;border-right: 1px solid black;width: 50px; height: 30px;  text-align: center;"></div>
                         <div style="border-bottom:1px solid black;border-right: 1px solid black;width: 50px; height: 30px;  text-align: center;"></div>
                         <div style="border-bottom:1px solid black;border-right: 1px solid black;width: 50px; height: 30px;  text-align: center;"></div>
                        
                    </div> 
                    <div style="display: table-cell; vertical-align: middle;">   
                        <div style="width: 50px; height: 31px; border-bottom: 1px solid black; border-right: 1px solid black; text-align: center; ">계</div>
                        <div style="border-bottom:1px solid black;border-right: 1px solid black;width: 50px; height: 30px;  text-align: center;"></div>
                         <div style="border-bottom:1px solid black;border-right: 1px solid black;width: 50px; height: 30px;  text-align: center;"></div>
                         <div style="border-bottom:1px solid black;border-right: 1px solid black;width: 50px; height: 30px;  text-align: center;"></div>
                    </div>
                </div>
                <div style="display: table-cell; width :150px; height: 90px;">
                    <div style=" border-bottom:1px solid black; width:150px; height: 30px; border-right: 1px solid black;text-align: center; background-color: #ccc;">인솔자(명)</div>
                    <div style="display: table-cell">   
                         <div style="width: 50px; height: 31px; border-bottom: 1px solid black; border-left: 1px solid blac; border-right: 1px solid black; text-align: center;">남</div>
                         <div style="border-bottom:1px solid black;border-right: 1px solid black;width: 50px; height: 30px;  text-align: center;"></div>
                         <div style="border-bottom:1px solid black;border-right: 1px solid black;width: 50px; height: 30px;  text-align: center;"></div>
                         <div style="border-bottom:1px solid black;border-right: 1px solid black;width: 50px; height: 30px;  text-align: center;"></div>
                    </div> 
                    <div style="display: table-cell; vertical-align: middle;">   
                        <div style="width: 50px; height: 31px; border-bottom: 1px solid black; border-right: 1px solid black; text-align: center; ">여</div>
                        <div style="border-bottom:1px solid black;border-right: 1px solid black;width: 50px; height: 30px;  text-align: center;"></div>
                         <div style="border-bottom:1px solid black;border-right: 1px solid black;width: 50px; height: 30px;  text-align: center;"></div>
                         <div style="border-bottom:1px solid black;border-right: 1px solid black;width: 50px; height: 30px;  text-align: center;"></div>
                    </div> 
                    <div style="display: table-cell; vertical-align: middle;">   
                        <div style="width: 50px; height: 31px; border-bottom: 1px solid black; border-right: 1px solid black; text-align: center; ">계</div>
                        <div style="border-bottom:1px solid black;border-right: 1px solid black;width: 50px; height: 30px;  text-align: center;"></div>
                         <div style="border-bottom:1px solid black;border-right: 1px solid black;width: 50px; height: 30px;  text-align: center;"></div>
                         <div style="border-bottom:1px solid black;border-right: 1px solid black;width: 50px; height: 30px;  text-align: center;"></div>
                    </div> 
                </div>
                <div style="display: table-cell; width :100px; height: 90px;">
                    <div style="display: table-cell">   
                         <div style=" display: table-;width: 50px; height: 61px; border-bottom: 1px solid black; border-left: 1px solid blac; border-right: 1px solid black; text-align: center;background-color: #ccc;">실인원</div>
                         <div style="border-bottom:1px solid black;border-right: 1px solid black;width: 50px; height: 30px;  text-align: center;"></div>
                         <div style="border-bottom:1px solid black;border-right: 1px solid black;width: 50px; height: 30px;  text-align: center;"></div>
                         <div style="border-bottom:1px solid black;border-right: 1px solid black;width: 50px; height: 30px;  text-align: center;"></div>
                    </div> 
                    <div style="display: table-cell;">   
                        <div style=" display: table-cell;width: 50px; height: 60px; border-bottom: 1px solid black; text-align: center; background-color: #ccc; ">연인원</div>
                        <div style="border-bottom:1px solid black;width: 50px; height: 30px; text-align: center;"></div>
                        <div style="border-bottom:1px solid black;width: 50px; height: 30px; text-align: center;"></div>
                        <div style="border-bottom:1px solid black;width: 50px; height: 30px; text-align: center;"></div>
                    </div> 
                </div>
                </div>
                <div style="display: table-cell; width: 400px; height: 60px; ">
                    <div style="display:table-row">
                        <div style="border-right: 1px solid black; width:50px;height: 60px;">인원(명)</div>
                        <div style="display: table-cell;">
                            <div style="border-bottom:1px solid black;border-right: 1px solid black; width:50px;height: 30px;">참여자</div>
                            <div style="border-right: 1px solid black; width:50px;height: 30px;"></div>
                        </div>
                        <div style="display: table-cell;">
                            <div style="border-bottom:1px solid black;border-right: 1px solid black; width:50px;height: 30px;">인솔자</div>
                            <div style="border-right: 1px solid black; width:50px;height: 30px;"></div>
                        </div>
                        <div style="display: table-cell;">
                            <div style="border-bottom:1px solid black;border-right: 1px solid black; width:50px;height: 30px;">가터</div>
                            <div style="border-right: 1px solid black; width:50px;height: 30px;"></div>
                        </div>
                        <div style="display: table-cell;">
                            <div style="border-bottom:1px solid black;border-right: 1px solid black; width:100px;height: 30px;">계</div>
                            <div style="border-right: 1px solid black; width:100px;height: 30px;"></div>
                        </div>
                        <div style="border-right: 1px solid black; width:50px;height: 60px;">객실(실)</div>
                        <div style="display: table-cell;">
                            <div style="border-bottom:1px solid black; width:50px;height: 30px;">참여자</div>
                            <div style=" width:50px;height: 30px;"></div>
                        </div>
                    </div>
                </div>
            </div>
        <div style="display: table-cell; border:1px solid black; width: 200px; height: 120px; vertical-align: middle;" >
            <div style="display: table-cell; border-bottom:1px solid black; width: 203px; height: 30px; background-color: #ccc;">지원사항</div>
            <div style="display: table;  width: 200px; height: 30px; ">
                <div style="display: table-cell; width :150px; height: 90px;">
                    <div style="display: table-cell">   
                         <div style="width: 50px; height: 60px; border-bottom: 1px solid black; border-left: 1px solid blac; border-right: 1px solid black; text-align: center;">프로그램</div>
                         <div style="border-bottom:1px solid black;border-right: 1px solid black;width: 50px; height: 30px;  text-align: center;"></div>
                         <div style="border-bottom:1px solid black;border-right: 1px solid black;width: 50px; height: 30px;  text-align: center;"></div>
                         <div style="border-bottom:1px solid black;border-right: 1px solid black;width: 50px; height: 30px;  text-align: center;"></div>
                    </div> 
                    <div style="display: table-cell; vertical-align: middle;">   
                        <div style="width: 50px; height: 60px; border-bottom: 1px solid black; border-right: 1px solid black; text-align: center; ">숙박</div>
                        <div style="border-bottom:1px solid black;border-right: 1px solid black;width: 50px; height: 30px;  text-align: center;"></div>
                         <div style="border-bottom:1px solid black;border-right: 1px solid black;width: 50px; height: 30px;  text-align: center;"></div>
                         <div style="border-bottom:1px solid black;border-right: 1px solid black;width: 50px; height: 30px;  text-align: center;"></div>
                        
                    </div> 
                    <div style="display: table-cell; vertical-align: middle;">   
                        <div style="width: 50px; height: 60px; border-bottom: 1px solid black; border-right: 1px solid black; text-align: center; ">식사</div>
                        <div style="border-bottom:1px solid black;border-right: 1px solid black;width: 50px; height: 30px;  text-align: center;"></div>
                         <div style="border-bottom:1px solid black;border-right: 1px solid black;width: 50px; height: 30px;  text-align: center;"></div>
                         <div style="border-bottom:1px solid black;border-right: 1px solid black;width: 50px; height: 30px;  text-align: center;"></div>
                    </div>
                    <div style="display: table-cell; vertical-align: middle;">   
                        <div style="width: 50px; height: 60px; border-bottom: 1px solid black; text-align: center; ">기타</div>
                        <div style="border-bottom:1px solid black;width: 50px; height: 30px;  text-align: center;"></div>
                         <div style="border-bottom:1px solid black;width: 50px; height: 30px;  text-align: center;"></div>
                         <div style="border-bottom:1px solid black;width: 50px; height: 30px;  text-align: center;"></div>
                    </div>
                </div>
                </div>
                <div style="display: table-cell; width: 200px; height: 60px; ">
                    <div style="display:table-row">
                        <div style="display: table-cell;">
                            <div style="border-bottom:1px solid black;border-right: 1px solid black; width:50px;height: 30px;">인솔자</div>
                            <div style="border-right: 1px solid black; width:50px;height: 30px;"></div>
                        </div>
                        <div style="display: table-cell;">
                            <div style="border-bottom:1px solid black;border-right: 1px solid black; width:50px;height: 30px;">기타</div>
                            <div style="border-right: 1px solid black; width:50px;height: 30px;"></div>
                        </div>
                        <div style="display: table-cell;">
                            <div style="border-bottom:1px solid black; width:100px;height: 30px;">계</div>
                            <div style=" width:100px;height: 30px;"></div>
                        </div>
                    </div>
                </div>
            </div>
        <div style="display: table-cell; border:1px solid black; width: 200px; height: 120px; vertical-align: middle;" >
            <div style="display: table-cell; border-bottom:1px solid black; width: 305px; height: 30px; background-color: #ccc;">서비스 유형</div>
            <div style="display: table;  width: 200px; height: 30px; ">
                <div style="display: table-cell; width :150px; height: 90px;">
                    <div style="display: table-cell">   
                         <div style="width: 50px; height: 60px; border-bottom: 1px solid black; border-left: 1px solid blac; border-right: 1px solid black; text-align: center;">산림교육</div>
                         <div style="border-bottom:1px solid black;border-right: 1px solid black;width: 50px; height: 30px;  text-align: center;"></div>
                         <div style="border-bottom:1px solid black;border-right: 1px solid black;width: 50px; height: 30px;  text-align: center;"></div>
                         <div style="border-bottom:1px solid black;border-right: 1px solid black;width: 50px; height: 30px;  text-align: center;"></div>
                    </div> 
                    <div style="display: table-cell; vertical-align: middle;">   
                        <div style="width: 50px; height: 60px; border-bottom: 1px solid black; border-right: 1px solid black; text-align: center; ">산림치유</div>
                        <div style="border-bottom:1px solid black;border-right: 1px solid black;width: 50px; height: 30px;  text-align: center;"></div>
                         <div style="border-bottom:1px solid black;border-right: 1px solid black;width: 50px; height: 30px;  text-align: center;"></div>
                         <div style="border-bottom:1px solid black;border-right: 1px solid black;width: 50px; height: 30px;  text-align: center;"></div>
                        
                    </div> 
                    <div style="display: table-cell; vertical-align: middle;">   
                        <div style="width: 50px; height: 60px; border-bottom: 1px solid black; border-right: 1px solid black; text-align: center; ">중독치유</div>
                        <div style="border-bottom:1px solid black;border-right: 1px solid black;width: 50px; height: 30px;  text-align: center;"></div>
                         <div style="border-bottom:1px solid black;border-right: 1px solid black;width: 50px; height: 30px;  text-align: center;"></div>
                         <div style="border-bottom:1px solid black;border-right: 1px solid black;width: 50px; height: 30px;  text-align: center;"></div>
                    </div>
                    <div style="display: table-cell; vertical-align: middle;">   
                        <div style="width: 50px; height: 60px; border-bottom: 1px solid black; border-right: 1px solid black; text-align: center; ">중독예방</div>
                        <div style="border-bottom:1px solid black;border-right: 1px solid black;width: 50px; height: 30px;  text-align: center;"></div>
                         <div style="border-bottom:1px solid black;border-right: 1px solid black;width: 50px; height: 30px;  text-align: center;"></div>
                         <div style="border-bottom:1px solid black;border-right: 1px solid black;width: 50px; height: 30px;  text-align: center;"></div>
                    </div>
                    <div style="display: table-cell; vertical-align: middle;">   
                        <div style="width: 50px; height: 60px; border-bottom: 1px solid black; border-right: 1px solid black; text-align: center; ">힐링</div>
                        <div style="border-bottom:1px solid black;border-right: 1px solid black;width: 50px; height: 30px;  text-align: center;"></div>
                         <div style="border-bottom:1px solid black;border-right: 1px solid black;width: 50px; height: 30px;  text-align: center;"></div>
                         <div style="border-bottom:1px solid black;border-right: 1px solid black;width: 50px; height: 30px;  text-align: center;"></div>
                    </div>
                    <div style="display: table-cell; vertical-align: middle;">   
                        <div style="width: 50px; height: 60px; border-bottom: 1px solid black; text-align: center; ">기타</div>
                        <div style="border-bottom:1px solid black;width: 50px; height: 30px;  text-align: center;"></div>
                         <div style="border-bottom:1px solid black;width: 50px; height: 30px;  text-align: center;"></div>
                         <div style="border-bottom:1px solid black;width: 50px; height: 30px;  text-align: center;"></div>
                    </div>
                </div>
                </div>
                <div style="display: table-cell; width: 300px; height: 60px; ">
                    <div style="display:table-row">
                        <div style="border-right: 1px solid black; width:50px;height: 60px;">식사</div>
                        <div style="display: table-cell;">
                            <div style="border-bottom:1px solid black;border-right: 1px solid black; width:50px;height: 30px;">참여자</div>
                            <div style="border-right: 1px solid black; width:50px;height: 30px;"></div>
                        </div>
                        <div style="display: table-cell;">
                            <div style="border-bottom:1px solid black;border-right: 1px solid black; width:50px;height: 30px;">인솔자</div>
                            <div style="border-right: 1px solid black; width:50px;height: 30px;"></div>
                        </div>
                        <div style="display: table-cell;">
                            <div style="border-bottom:1px solid black;border-right: 1px solid black; width:50px;height: 30px;">기타</div>
                            <div style="border-right: 1px solid black; width:50px;height: 30px;"></div>
                        </div>
                        <div style="display: table-cell;">
                            <div style="border-bottom:1px solid black; width:100px;height: 30px;">계</div>
                            <div style=" width:100px;height: 30px;"></div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    <br><br><br><br><br><br>
    
    <!-- 프로그램 운영 및 만족도 -->
    <% String[] list_2 = {"철학","음악","미술","요가명상","동작","자연치유","예방교육","소계/평균","교육","치유","소계/평균","이벤트","지역","신규","소계/평균","기타"}; %>
    <div style=" display:table inline-block; padding:10px; border-collapse: collapse; font-size: 10px;text-align: center; ">
        <div style="display: table-cell; border:1px solid black; width: 50px; height: 240px; vertical-align: middle; background-color: #ccc;">
            <div style=" display: flex;align-items: center;justify-content: center;border-bottom:1px solid black; width: 50px; height: 120px; text-align: center; background-color: #ccc;">프로그램 <br> 운영</div>
            <div style="display: flex;align-items: center;justify-content: center; width:50px; height: 120px; text-align: center;">프로그램<br>만족도 </div>
        </div>
        <div style="display: table-cell; border:1px solid black; width: 50px; height: 90px; vertical-align: middle;" >
            <div style="  border-bottom:1px solid black; width: 50px; line-height: 30px;height: 30px; text-align: center; background-color: #ccc;">구분</div>
            <div style=" border-bottom:1px solid black; width:50px; height: 30px; text-align: center;"> 프로그램(개)</div>
            <div style=" border-bottom:1px solid black; width:50px; ;height: 30px; text-align: center;"> 내부강사(명)</div>
            <div style=" border-bottom:1px solid black; width:50px; height: 30px; text-align: center;"> 외부강사(명)</div>
            <div style=" border-bottom:1px solid black; width:50px; line-height: 30px;height: 30px; text-align: center;"> 강사</div>
            <div style=" border-bottom:1px solid black; width:50px; line-height: 30px;height: 30px; text-align: center;"> 내용구성</div>
            <div style=" border-bottom:1px solid black; width:50px; line-height: 30px;height: 30px; text-align: center;">효과성 </div>
            <div style=" width:50px; line-height: 30px;height: 30px; text-align: center;">평균</div>
        </div>
        <%for(int i = 0; i < list_2.length; i++) { %>
        <div style="display: table-cell; border:1px solid black; width: 50px; height: 90px; vertical-align: middle;" >
            <div style="  border-bottom:1px solid black; width: 50px; line-height: 30px;height: 30px; text-align: center;background-color: #ccc; "><%=list_2[i] %></div>
            <div style=" border-bottom:1px solid black; width:50px; line-height: 30px;height: 30px; text-align: center;"> </div>
            <div style=" border-bottom:1px solid black; width:50px; line-height: 30px;height: 30px; text-align: center;"> </div>
            <div style=" border-bottom:1px solid black; width:50px; line-height: 30px;height: 30px; text-align: center;"> </div>
            <div style=" border-bottom:1px solid black; width:50px; line-height: 30px;height: 30px; text-align: center;"> </div>
            <div style=" border-bottom:1px solid black; width:50px; line-height: 30px;height: 30px; text-align: center;"> </div>
            <div style=" border-bottom:1px solid black; width:50px; line-height: 30px;height: 30px; text-align: center;"> </div>
            <div style=" width:50px; line-height: 30px;height: 30px; text-align: center;"> </div>
        </div>
        <%} %>
        <div style="display: table-cell; border:1px solid black; width: 100px; height: 90px; vertical-align: middle;" >
            <div style="  border-bottom:1px solid black; width: 100px; line-height: 30px;height: 30px; text-align: center; background-color: #ccc;">합계/평균</div>
            <div style=" border-bottom:1px solid black; width:100px; line-height: 30px;height: 30px; text-align: center;"> </div>
            <div style=" border-bottom:1px solid black; width:100px; line-height: 30px;height: 30px; text-align: center;"> </div>
            <div style=" border-bottom:1px solid black; width:100px; line-height: 30px;height: 30px; text-align: center;"> </div>
            <div style=" border-bottom:1px solid black; width:100px; line-height: 30px;height: 30px; text-align: center;"> </div>
            <div style=" border-bottom:1px solid black; width:100px; line-height: 30px;height: 30px; text-align: center;"> </div>
            <div style=" border-bottom:1px solid black; width:100px; line-height: 30px;height: 30px; text-align: center;"> </div>
            <div style=" width:100px; line-height: 30px;height: 30px; text-align: center;"> </div>
        </div>
    </div>
    
    <!-- 시설 서비스 만족도 -->
    <div style=" display:table inline-block; padding:10px; border-collapse: collapse; font-size: 10px;text-align: center; vertical-align: middle; ">
        <div style="display: table-cell; border:1px solid black; width: 50px; height: 90px; vertical-align: middle; background-color: #ccc;">시설<br>서비스<br>만족도</div>
        <div style="display: table-cell; border:1px solid black; width: 50px; height: 90px; vertical-align: middle;" >
            <div style=" display: table;border-bottom:1px solid black; width:50px; line-height:59px; height: 59px; text-align: center; vertical-align: middle;background-color: #ccc; ">구분</div>
            <div style=" width:50px; height: 30px; text-align: center;"> </div>
        </div>
        <div style="display: table-cell; border:1px solid black; width:100px; height: 90px; text-align: center;">
            <div style=" border-bottom:1px solid black; width:100px; height: 30px; text-align: center; background-color: #ccc;"> 숙소</div>
            <div style="display: table-cell">   
                <div style="width: 50px; height: 30px; border-bottom: 1px solid black; border-right: 1px solid black; text-align: center; background-color: #ccc;">편리성</div>
                <div style="width: 50px; height: 30px; border-right: 1px solid black; text-align: center;"></div>
            </div> 
            <div style="display: table-cell; vertical-align: middle;">   
                <div style="width: 50px; height: 30px; border-bottom: 1px solid black;  text-align: center; background-color: #ccc;">청결도</div>
                <div style="width: 50px; height: 30px;  text-align: center;"></div>
            </div> 
        </div>   
        <div style="display: table-cell; border:1px solid black; width:100px; height: 90px; text-align: center;">
            <div style=" border-bottom:1px solid black; width:100px; height: 30px; text-align: center; background-color: #ccc;"> 식당</div>
            <div style="display: table-cell">   
                <div style="width: 50px; height: 30px; border-bottom: 1px solid black; border-right: 1px solid black; text-align: center; background-color: #ccc;">편리성</div>
                <div style="width: 50px; height: 30px; border-right: 1px solid black; text-align: center;"></div>
            </div> 
            <div style="display: table-cell; vertical-align: middle;">   
                <div style="width: 50px; height: 30px; border-bottom: 1px solid black;  text-align: center; background-color: #ccc;">청결도</div>
                <div style="width: 50px; height: 30px; text-align: center;"></div>
            </div> 
        </div> 
        <div style="display: table-cell; border:1px solid black; width:150px; height: 90px; text-align: center;">
            <div style=" border-bottom:1px solid black; width:150px; height: 30px; text-align: center; background-color: #ccc;"> 프로그램 장소</div>
            <div style="display: table-cell">   
                <div style="width: 50px; height: 30px; border-bottom: 1px solid black; border-right: 1px solid black; text-align: center; background-color: #ccc;">편리성</div>
                <div style="width: 50px; height:30px;  border-right: 1px solid black; text-align: center;"></div>
            </div> 
            <div style="display: table-cell; vertical-align: middle;">   
                <div style="width: 50px; height: 30px; border-bottom: 1px solid black; border-right: 1px solid black; text-align: center; background-color: #ccc;">청결도</div>
                <div style="width: 50px; height: 30px; border-right: 1px solid black; text-align: center;"></div>
            </div> 
            <div style="display: table-cell; vertical-align: middle;">   
                <div style="width: 50px; height: 30px; border-bottom: 1px solid black;  text-align: center; background-color: #ccc;">적절성</div>
                <div style="width: 50px; height: 30px;   text-align: center;"></div>
            </div> 
        </div> 
        <div style="display: table-cell; border:1px solid black; width:150px; height: 90px; text-align: center;">
            <div style=" border-bottom:1px solid black; width:150x; height: 30px; text-align: center; background-color: #ccc;"> 숲(야외)</div>
            <div style="display: table-cell">   
                <div style="width: 50px; height: 30px; border-bottom: 1px solid black; border-right: 1px solid black; text-align: center; background-color: #ccc;">편리성</div>
                <div style="width: 50px; height: 30px; border-right: 1px solid black; text-align: center;"></div>
            </div> 
            <div style="display: table-cell; vertical-align: middle;">   
                <div style="width: 50px; height: 30px; border-bottom: 1px solid black; border-right: 1px solid black; text-align: center; background-color: #ccc;">청결도</div>
                <div style="width: 50px; height: 30px; border-right: 1px solid black;  text-align: center;"></div>
            </div> 
            <div style="display: table-cell; vertical-align: middle;">   
                <div style="width: 50px; height: 30px; border-bottom: 1px solid black;  text-align: center; background-color: #ccc;">적절성</div>
                <div style="width: 50px; height: 30px;  text-align: center;"></div>
            </div> 
        </div> 
        <div style="display: table-cell; border:1px solid black; width:150px; height: 90px; text-align: center;">
            <div style=" border-bottom:1px solid black; width:150px; height: 30px; text-align: center; background-color: #ccc;"> 운영</div>
            <div style="display: table-cell">   
                <div style="width: 50px; height: 30px; border-bottom: 1px solid black; border-right: 1px solid black; text-align: center; background-color: #ccc;">운영방식</div>
                <div style="width: 50px; height: 30px; border-right: 1px solid black; text-align: center;"></div>
            </div> 
            <div style="display: table-cell; vertical-align: middle;">   
                <div style="width: 50px; height: 30px; border-bottom: 1px solid black; border-right: 1px solid black; text-align: center; background-color: #ccc;">시간편성</div>
                <div style="width: 50px; height: 30px; border-right: 1px solid black; text-align: center;"></div>
            </div> 
            <div style="display: table-cell; vertical-align: middle;">   
                <div style="width: 50px; height: 30px; border-bottom: 1px solid black;  text-align: center; background-color: #ccc;">직원친절</div>
                <div style="width: 50px; height: 30px;  text-align: center;"></div>
            </div> 
        </div> 
        <div style="display: table-cell; border:1px solid black; width:150px; height: 90px; text-align: center;">
            <div style=" border-bottom:1px solid black; width:150px; height: 30px; text-align: center; background-color: #ccc;"> 식사</div>
            <div style="display: table-cell">   
                <div style="width: 50px; height: 30px; border-bottom: 1px solid black; border-right: 1px solid black; text-align: center; background-color: #ccc;">신선도</div>
                <div style="width: 50px; height: 30px; border-right: 1px solid black; text-align: center;"></div>
            </div> 
            <div style="display: table-cell; vertical-align: middle;">   
                <div style="width: 50px; height: 30px; border-bottom: 1px solid black; border-right: 1px solid black; text-align: center; background-color: #ccc;">다양성</div>
                <div style="width: 50px; height: 30px; border-right: 1px solid black; text-align: center;"></div>
            </div> 
            <div style="display: table-cell; vertical-align: middle;">   
                <div style="width: 50px; height: 30px; border-bottom: 1px solid black;  text-align: center; background-color: #ccc;">영양</div>
                <div style="width: 50px; height: 30px;  text-align: center;"></div>
            </div> 
        </div> 
        <div style="display: table-cell; border:1px solid black; width:100px; height: 90px; text-align: center;">
            <div style=" display: table-cell; border-bottom:1px solid black; width:150px;height: 59px; text-align: center; background-color: #ccc; "> 평균</div>
            <div style="display: table-cell"></div> 
        </div> 
    </div>
    
    <!-- 효과성 분석 -->
    <div style=" display:table inline-block; padding:10px; border-collapse: collapse; font-size: 10px;text-align: center; vertical-align: middle; ">
        <div style="display: table-cell; border:1px solid black; width: 50px; height: 120px; vertical-align: middle; background-color: #ccc;">효과성<br>분석</div>
        <div style="display: table-cell; border:1px solid black; width: 50px; height: 120px; vertical-align: middle;" >
            <div style=" display: table;border-bottom:1px solid black; width:50px; line-height:60px;height: 60px; text-align: center; vertical-align: middle;background-color: #ccc; ">구분</div>
            <div style=" border-bottom:1px solid black; width:50px; line-height:30px; height: 30px; text-align: center;"> 사전</div>
            <div style=" width:50px; line-height:30px;height: 30px; text-align: center; "> 사후</div>
        </div>
        <div style="display: table-cell; border:1px solid black; width: 300px; height: 120px; vertical-align: middle;" >
            <div style="display: table-cell; border-bottom:1px solid black; width: 305px; height: 30px; background-color: #ccc;">프로그램 효과성</div>
            <div style="display: table;  width: 300px; height: 30px; ">
                <div style="display: table-cell; width :100px; height: 90px;">
                    <div style=" border-bottom:1px solid black; width:100px; height: 30px; border-right: 1px solid black;text-align: center; background-color: #ccc;"> 예방효과</div>
                    <div style="display: table-cell">   
                         <div style="width: 50px; height: 30px; border-bottom: 1px solid black; border-left: 1px solid blac; border-right: 1px solid black; text-align: center;">총점</div>
                         <div style="border-right: 1px solid black;width: 50px; height: 30px;  text-align: center;"></div>
                    </div> 
                    <div style="display: table-cell; vertical-align: middle;">   
                        <div style="width: 50px; height: 30px; border-bottom: 1px solid black; border-right: 1px solid black; text-align: center; ">평점</div>
                        <div style="border-right: 1px solid black;width: 50px; height: 30px; text-align: center;"></div>
                    </div> 
                </div>
                <div style="display: table-cell; width :100px; height: 90px;">
                    <div style=" border-bottom:1px solid black; width:100px; height: 30px; border-right: 1px solid black;text-align: center; background-color: #ccc;">상담치유효과</div>
                    <div style="display: table-cell">   
                         <div style="width: 50px; height: 30px; border-bottom: 1px solid black; border-left: 1px solid blac; border-right: 1px solid black; text-align: center;">총점</div>
                         <div style="border-right: 1px solid black;width: 50px; height: 30px;  text-align: center;"></div>
                    </div> 
                    <div style="display: table-cell; vertical-align: middle;">   
                        <div style="width: 50px; height: 30px; border-bottom: 1px solid black; border-right: 1px solid black; text-align: center; ">평점</div>
                        <div style="border-right: 1px solid black;width: 50px; height: 30px; text-align: center;"></div>
                    </div> 
                </div>
                <div style="display: table-cell; width :100px; height: 90px;">
                    <div style=" border-bottom:1px solid black; width:100px; height: 30px;text-align: center; background-color: #ccc;"> 힐링효과</div>
                    <div style="display: table-cell">   
                         <div style="width: 50px; height: 30px; border-bottom: 1px solid black; border-left: 1px solid blac; border-right: 1px solid black; text-align: center;">총점</div>
                         <div style="border-right: 1px solid black;width: 50px; height: 30px;  text-align: center;"></div>
                    </div> 
                    <div style="display: table-cell; vertical-align: middle;">   
                        <div style="width: 50px; height: 30px; border-bottom: 1px solid black; text-align: center; ">평점</div>
                        <div style="width: 50px; height: 30px; text-align: center;"></div>
                    </div> 
                </div>
            </div>
        </div>
        <div style="display: table-cell; border:1px solid black; width: 500px; height: 120px; vertical-align: middle;" >
            <div style="display: table-cell; border-bottom:1px solid black; width: 509px; height: 30px; background-color: #ccc;">자율신경검사 효과성</div>
            <div style="display: table;  width: 500px; height: 30px; ">
                <div style="display: table-cell; width :100px; height: 90px;">
                    <div style=" border-bottom:1px solid black; width:100px; height: 30px; border-right: 1px solid black;text-align: center; background-color: #ccc;"> 자율신경활성도</div>
                    <div style="display: table-cell">   
                         <div style="width: 50px; height: 30px; border-bottom: 1px solid black; border-left: 1px solid blac; border-right: 1px solid black; text-align: center;">사전</div>
                         <div style="border-right: 1px solid black;width: 50px; height: 30px;  text-align: center;"></div>
                    </div> 
                    <div style="display: table-cell; vertical-align: middle;">   
                        <div style="width: 50px; height: 30px; border-bottom: 1px solid black; border-right: 1px solid black; text-align: center; ">사후</div>
                        <div style="border-right: 1px solid black;width: 50px; height: 30px; text-align: center;"></div>
                    </div> 
                </div>
                <div style="display: table-cell; width :100px; height: 90px;">
                    <div style=" border-bottom:1px solid black; width:100px; height: 30px; border-right: 1px solid black;text-align: center; background-color: #ccc;">자율신경 균형도</div>
                    <div style="display: table-cell">   
                         <div style="width: 50px; height: 30px; border-bottom: 1px solid black; border-left: 1px solid blac; border-right: 1px solid black; text-align: center;">사전</div>
                         <div style="border-right: 1px solid black;width: 50px; height: 30px;  text-align: center;"></div>
                    </div> 
                    <div style="display: table-cell; vertical-align: middle;">   
                        <div style="width: 50px; height: 30px; border-bottom: 1px solid black; border-right: 1px solid black; text-align: center; ">사후</div>
                        <div style="border-right: 1px solid black;width: 50px; height: 30px; text-align: center;"></div>
                    </div> 
                </div>
                <div style="display: table-cell; width :100px; height: 90px;">
                    <div style=" border-bottom:1px solid black; border-right: 1px solid black;width:100px; height: 30px;text-align: center; background-color: #ccc;"> 스트레스 저항도</div>
                    <div style="display: table-cell">   
                         <div style="width: 50px; height: 30px; border-bottom: 1px solid black; border-left: 1px solid blac; border-right: 1px solid black; text-align: center;">사전</div>
                         <div style="border-right: 1px solid black;width: 50px; height: 30px;  text-align: center;"></div>
                    </div> 
                    <div style="display: table-cell; vertical-align: middle;">   
                        <div style="width: 50px; height: 30px; border-bottom: 1px solid black; border-right: 1px solid black; text-align: center; ">사후</div>
                        <div style="width: 50px; height: 30px; text-align: center; border-right: 1px solid black;"></div>
                    </div> 
                </div>
                <div style="display: table-cell; width :100px; height: 90px;">
                    <div style=" border-bottom:1px solid black; border-right: 1px solid black; width:100px; height: 30px;text-align: center; background-color: #ccc;"> 스트레스 지수</div>
                    <div style="display: table-cell">   
                         <div style="width: 50px; height: 30px; border-bottom: 1px solid black; border-left: 1px solid blac; border-right: 1px solid black; text-align: center;">사전</div>
                         <div style="border-right: 1px solid black;width: 50px; height: 30px;  text-align: center;"></div>
                    </div> 
                    <div style="display: table-cell; vertical-align: middle;">   
                        <div style="width: 50px; height: 30px; border-bottom: 1px solid black;border-right: 1px solid black; text-align: center; ">사후</div>
                        <div style="width: 50px; height: 30px; text-align: center; border-right: 1px solid black;"></div>
                    </div> 
                </div>
                <div style="display: table-cell; width :100px; height: 90px;">
                    <div style=" border-bottom:1px solid black; width:100px; height: 30px;text-align: center; background-color: #ccc;"> 피로도</div>
                    <div style="display: table-cell">   
                         <div style="width: 50px; height: 30px; border-bottom: 1px solid black; border-left: 1px solid blac; border-right: 1px solid black; text-align: center;">사전</div>
                         <div style="border-right: 1px solid black;width: 50px; height: 30px;  text-align: center;"></div>
                    </div> 
                    <div style="display: table-cell; vertical-align: middle;">   
                        <div style="width: 50px; height: 30px; border-bottom: 1px solid black; text-align: center; ">사후</div>
                        <div style="width: 50px; height: 30px; text-align: center;"></div>
                    </div> 
                </div>
                
            </div>
            
        </div>
        <div style="display: table-cell; border:1px solid black; width: 50px; height: 120px; vertical-align: middle; "></div>
        <div style="display: table-cell; border:1px solid black; width: 50px; height: 120px; vertical-align: middle; "></div>
    </div>
    <!-- 지출 및 매출 금액 -->
    <div style=" display:table inline-block; padding:10px; border-collapse: collapse; font-size: 10px;text-align: center; vertical-align: middle; ">
        <div style="display: table-cell; border:1px solid black; width: 50px; height: 90px; vertical-align: middle; background-color: #ccc;">지출 및<br>매출<br>금액</div>
        <div style="display: table-cell; border:1px solid black; width:500px; height: 90px; text-align: center;">
            <div style=" border-bottom:1px solid black; width:508px; line-height:30px;height: 30px; text-align: center; background-color: #ccc;"> 지출</div>
                <div style="display: table-cell">   
                    <div style="width: 50px; line-height:30px;height: 30px; border-bottom: 1px solid black; border-right: 1px solid black; text-align: center; background-color: #ccc;">강사비</div>
                    <div style="width: 50px;line-height:30px; height: 30px;  border-right: 1px solid black;text-align: center; " ></div>
                </div> 
                <div style="display: table-cell; vertical-align: middle;">   
                    <div style="width: 50px; line-height:30px;height: 30px; border-bottom: 1px solid black; border-right: 1px solid black; text-align: center; background-color: #ccc;">강사교통비</div>
                    <div style="width: 50px; line-height:30px;height: 30px; border-right: 1px solid black;text-align: center;"></div>
                </div> 
                <div style="display: table-cell">   
                    <div style="width: 50px; line-height:30px;height: 30px; border-bottom: 1px solid black; border-right: 1px solid black; text-align: center; background-color: #ccc;">강사식비</div>
                    <div style="width: 50px; line-height:30px;height: 30px;  border-right: 1px solid black;text-align: center;"></div>
                </div> 
                <div style="display: table-cell">   
                    <div style="width: 50px; line-height:30px;height: 30px; border-bottom: 1px solid black; border-right: 1px solid black; text-align: center; background-color: #ccc;">참가자숙박</div>
                    <div style="width: 50px; line-height:30px;height: 30px;  border-right: 1px solid black;text-align: center;"></div>
                </div> 

                <div style="display: table-cell">   
                    <div style="width: 50px; line-height:30px;height: 30px; border-bottom: 1px solid black; border-right: 1px solid black; text-align: center; background-color: #ccc;">참가지식비</div>
                    <div style="width: 50px; line-height:30px;height: 30px;  border-right: 1px solid black;text-align: center;"></div>
                </div> 
                <div style="display: table-cell">   
                    <div style="width: 50px; line-height:30px;height: 30px; border-bottom: 1px solid black; border-right: 1px solid black; text-align: center; background-color: #ccc;">재료비</div>
                    <div style="width: 50px; line-height:30px;height: 30px;  border-right: 1px solid black;text-align: center;"></div>
                </div> 
                <div style="display: table-cell">   
                    <div style="width: 50px;line-height:30px; height: 30px; border-bottom: 1px solid black; border-right: 1px solid black; text-align: center; background-color: #ccc;">예비비</div>
                    <div style="width: 50px; line-height:30px;height: 30px;  border-right: 1px solid black;text-align: center;"></div>
                </div> 
                <div style="display: table-cell">   
                    <div style="width: 158px; line-height:30px;height: 30px; border-bottom: 1px solid black;  text-align: center; background-color: #ccc;">합계</div>
                    <div style="width: 158px; line-height:30px;height: 30px; text-align: center;"></div>
                </div> 
        </div>
        <div style="display: table-cell; border:1px solid black; width:450px; height: 90px; text-align: center;">
            <div style=" border-bottom:1px solid black; width:455px; line-height:30px;height: 30px; text-align: center; background-color: #ccc;"> 수입</div>
                <div style="display: table-cell">   
                    <div style="width: 50px; line-height:30px;height: 30px; border-bottom: 1px solid black; border-right: 1px solid black; text-align: center; background-color: #ccc;">프로그램</div>
                    <div style="width: 50px; line-height:30px;height: 30px;  border-right: 1px solid black;text-align: center; " ></div>
                </div> 
                <div style="display: table-cell; vertical-align: middle;">   
                    <div style="width: 50px; line-height:30px;height: 30px; border-bottom: 1px solid black; border-right: 1px solid black; text-align: center; background-color: #ccc;">숙박</div>
                    <div style="width: 50px;line-height:30px; height: 30px; border-right: 1px solid black;text-align: center;"></div>
                </div> 
                <div style="display: table-cell">   
                    <div style="width: 50px; line-height:30px;height: 30px; border-bottom: 1px solid black; border-right: 1px solid black; text-align: center; background-color: #ccc;">식사</div>
                    <div style="width: 50px; line-height:30px;height: 30px;  border-right: 1px solid black;text-align: center;"></div>
                </div> 
                <div style="display: table-cell">   
                    <div style="width: 50px; line-height:30px;height: 30px; border-bottom: 1px solid black; border-right: 1px solid black; text-align: center; background-color: #ccc;">대관</div>
                    <div style="width: 50px; line-height:30px;height: 30px;  border-right: 1px solid black;text-align: center;"></div>
                </div> 

                <div style="display: table-cell">   
                    <div style="width: 100px; line-height:30px;height: 30px; border-bottom: 1px solid black; border-right: 1px solid black; text-align: center; background-color: #ccc;">합계</div>
                    <div style="width: 100px; line-height:30px;height: 30px;  border-right: 1px solid black;text-align: center;"></div>
                </div> 
                <div style="display: table-cell">   
                    <div style="width: 155px; line-height:30px;height: 30px; border-bottom: 1px solid black; text-align: center; background-color: #ccc;">최종금액</div>
                    <div style="width: 155px; line-height:30px;height: 30px;  text-align: center;"></div>
                </div> 
        </div>
    </div>
    
</div>
</body>
</html>