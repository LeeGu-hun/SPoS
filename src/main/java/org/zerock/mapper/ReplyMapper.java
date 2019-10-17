package org.zerock.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.zerock.domain.Criteria;
import org.zerock.domain.ReplyVO;

public interface ReplyMapper {
	
	public int insert(ReplyVO vo);
	
	public ReplyVO read(Long reply_index);
	
	public int delete(Long reply_index);
	
	public List<ReplyVO> getListWithPaging(@Param("cri") Criteria cri, @Param("board_index") Long board_index);
	
	public int getCountByBidx(Long board_index);
}
