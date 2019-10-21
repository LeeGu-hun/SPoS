package org.zerock.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.zerock.domain.BoardVO;
import org.zerock.domain.Criteria;

public interface BoardMapper {
	
	public List<BoardVO> getList();
	
	public List<BoardVO> getMoreList(Criteria cri);
	
	public void updateReplyCnt(@Param("board_index") Long board_index, @Param("amount") int amount);

	public void insertSelectKey(BoardVO board);
}
