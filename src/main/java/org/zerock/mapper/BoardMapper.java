package org.zerock.mapper;

import java.util.List;

import org.zerock.domain.BoardVO;
import org.zerock.domain.Criteria;

public interface BoardMapper {
	public List<BoardVO> getList();
	public List<BoardVO> getMoreList(Criteria cri);
}
