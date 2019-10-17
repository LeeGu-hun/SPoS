package org.zerock.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.zerock.domain.Criteria;
import org.zerock.domain.ReplyPageDTO;
import org.zerock.domain.ReplyVO;
import org.zerock.mapper.BoardMapper;
import org.zerock.mapper.ReplyMapper;

import lombok.Setter;
import lombok.extern.log4j.Log4j;

@Service
@Log4j
public class ReplyServiceImpl implements ReplyService {
	
	@Setter(onMethod_ = @Autowired)
	private ReplyMapper replyMapper;
	
	@Setter(onMethod_ = @Autowired)
	private BoardMapper boardMapper;

	@Transactional
	@Override
	public int registReply(ReplyVO vo) {
		log.info("registerR.........." + vo);
		boardMapper.updateReplyCnt(vo.getBoard_index(), 1);
		return replyMapper.insert(vo);
	}

	@Override
	public List<ReplyVO> getReplyList(Criteria cri, Long board_index) {
		log.info("get Reply List of a Board " + board_index);
		return replyMapper.getListWithPaging(cri, board_index);
	}
	
	@Override
	public ReplyVO getReply(Long reply_index) {
		log.info("getR.........." + reply_index);
		return replyMapper.read(reply_index);
	}

	@Transactional
	@Override
	public int removeReply(ReplyVO vo) {
		log.info("removeR.........." + vo);
		ReplyVO tempVo = replyMapper.read(vo.getReply_index());
		boardMapper.updateReplyCnt(tempVo.getBoard_index(), -1);
		return replyMapper.delete(vo.getReply_index());
	}
	
	@Override
	public ReplyPageDTO getListPage(Criteria cri, Long board_index) {
		log.info("cnt.........." + replyMapper.getCountByBidx(board_index));
		log.info("list.........." + replyMapper.getListWithPaging(cri, board_index));
		return new ReplyPageDTO(replyMapper.getCountByBidx(board_index), replyMapper.getListWithPaging(cri, board_index));
	}
}
