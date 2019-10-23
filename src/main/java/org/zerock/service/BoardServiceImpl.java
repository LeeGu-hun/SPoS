package org.zerock.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.zerock.domain.BoardAttachVO;
import org.zerock.domain.BoardVO;
import org.zerock.domain.Criteria;
import org.zerock.mapper.BoardAttachMapper;
import org.zerock.mapper.BoardMapper;

import lombok.Setter;
import lombok.extern.log4j.Log4j;

@Service
@Log4j
public class BoardServiceImpl implements BoardService {
	@Setter(onMethod_ = @Autowired)
	private BoardMapper boardMapper;
	
	@Setter(onMethod_ = @Autowired)
	private BoardAttachMapper boardAttachMapper;
	
	@Override
	public List<BoardVO> getList(Criteria cri) {
		return boardMapper.getList(cri);
	}

	@Override
	public List<BoardVO> getBoardMore(Criteria cri) {
		return boardMapper.getMoreList(cri);
	}

	@Override
	public List<BoardAttachVO> getAttachList(Long board_index) {
		return boardAttachMapper.findByBno(board_index);
	}

	@Override
	public void register(BoardVO board) {
		log.info("regist..................." + board);
		boardMapper.insertSelectKey(board);
		
		if(board.getAttachList() == null || board.getAttachList().size() <= 0)
			return;
		
		board.getAttachList().forEach(attach -> {
			attach.setBoard_index(board.getBoard_index());
			boardAttachMapper.insert(attach);
		});
	}
}
