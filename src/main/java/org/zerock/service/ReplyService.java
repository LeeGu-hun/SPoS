package org.zerock.service;

import java.util.List;

import org.zerock.domain.Criteria;
import org.zerock.domain.ReplyPageDTO;
import org.zerock.domain.ReplyVO;

public interface ReplyService {

	public int registReply(ReplyVO vo);

	public List<ReplyVO> getReplyList(Criteria cri, Long board_index);
	
	public ReplyVO getReply(Long reply_index);
	
	public int removeReply(ReplyVO vo);

	public ReplyPageDTO getListPage(Criteria cri, Long bno);
}