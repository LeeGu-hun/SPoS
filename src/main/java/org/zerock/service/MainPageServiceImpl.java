package org.zerock.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.zerock.domain.BoardVO;
import org.zerock.domain.Criteria;
import org.zerock.mapper.BoardMapper;

import lombok.Setter;

@Service
public class MainPageServiceImpl implements MainPageService {
	@Setter(onMethod_ = @Autowired)
	private BoardMapper boardMapper;
	
	public List<BoardVO> getList() {
		return boardMapper.getList();
	}

	@Override
	public List<BoardVO> getBoardMore(Criteria cri) {
		return null;
	}
}
