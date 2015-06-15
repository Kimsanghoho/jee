package com.homepage.serviceimpls;

import com.homepage.beans.KaupVO;
import com.homepage.web.services.KaupInterface;

public class KaupServiceImpl implements KaupInterface{
	KaupVO vo = new KaupVO();
	@Override
	public int getKaupIndex(double height, double weight) {
		vo.setHeight(height);
		vo.setWeight(weight);
		return (int) ((weight / (height * height)) * 10000);
	}

	@Override
	public String getResultMsg(int idx) {
		
		String msg ="";
		if (idx > 30) {
			msg = "비만";
		} else if (idx > 24) {
			msg = " 과체중";
		} else if (idx > 20) {
			msg = " 정상";
		} else if (idx > 15) {
			msg = " 저체중";
		} else if (idx > 13) {
			msg = " 마름";
		} else if (idx > 10) {
			msg = " 영양실조";
		} else {
			msg = " 소모증";
		}
		return "키 "+vo.getHeight()+"cm, 몸무게 "+vo.getWeight()+
				"kg 카우프 지수 "+idx+"당신은 "+msg+"입니다";
	}

}
