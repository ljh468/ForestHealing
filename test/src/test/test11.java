package test;

import java.util.ArrayList;

public class test11 {

	public static void main(String[] args) {

		ArrayList<String> pList = new ArrayList<>();
		pList.add("변화동기");
		pList.add("신뢰(라포)");
		pList.add("서비스이해");
		pList.add("조절실패");
		pList.add("현저성");
		pList.add("문제적결과");
		pList.add("낮은자기조절력");
		pList.add("부정정서");
		pList.add("편향된신념");
		pList.add("역기능적자기도식");
		pList.add("대인관계기술부족");
		pList.add("대인민감성");
		pList.add("관계/유능욕구충족");
		pList.add("긍정정서");
		pList.add("삶의만족");
		pList.add("자기이해");
		pList.add("자기수용");
		pList.add("마음관리기술/기회");
		pList.add("스마트폰활용역량");

		int questionCnt = 0;

		for (String question : pList) {
			String report = "사전";

			for (int j = 0; j < 3; j++) {
				System.out.println(questionCnt + j + 13);

				// 사전, 중간, 사후 순환로직
				System.out.println(report + "_" + question);

				if (report.equals("사전")) {
					report = "중간";
				} else if (report.equals("중간")) {
					report = "사후";
				} else {
					report = "사전";
				}

			}

			questionCnt = questionCnt + 3;

		}

	}

}