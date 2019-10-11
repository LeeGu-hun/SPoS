package org.zerock.service;

import java.util.List;

import org.zerock.domain.BoardVO;
import org.zerock.domain.Criteria;

public interface MainPageService {
	public List<BoardVO> getList();

	public List<BoardVO> getBoardMore(Criteria cri);
}
