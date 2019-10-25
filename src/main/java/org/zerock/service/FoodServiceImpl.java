package org.zerock.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.zerock.domain.FoodHistoryVO;
import org.zerock.mapper.FoodMapper;

import lombok.Setter;
import lombok.extern.log4j.Log4j;

@Service
@Log4j
public class FoodServiceImpl implements FoodService {
	@Setter(onMethod_ = @Autowired)
	private FoodMapper mapper;

	@Override
	public FoodHistoryVO getFood(int user_index) {
		FoodHistoryVO todayHis = new FoodHistoryVO();
		int today_amount = 0;
		int today_kcal = 0;
		List<FoodHistoryVO> foodlist = mapper.getFood(user_index);
		for(int i = 0 ; i<foodlist.size(); i++) {
			today_amount += foodlist.get(i).getFood_amount(); 
			today_kcal += foodlist.get(i).getFood_k(); 
		}
		todayHis.setFood_amount(today_amount);
		todayHis.setFood_k(today_kcal);
		log.info(todayHis);
		return todayHis;
	}
}