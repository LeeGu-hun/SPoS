package org.zerock.service;

import java.util.List;

import org.zerock.domain.Criteria;
import org.zerock.domain.ReplyVO;

public interface ReplyService {

	public int registReply(ReplyVO vo);

	public List<ReplyVO> getReplyList(Criteria cri, Long bidx);
	
	public ReplyVO getReply(Long ridx);
	
	public int modifyReply(ReplyVO vo);
	
	public int removeReply(Long ridx);
}