package org.zerock.mapper;

import java.util.List;

import org.zerock.domain.BoardAttachVO;

public interface BoardAttachMapper {

	public void insert(BoardAttachVO vo);

	public void delete(String picture_uuid);

	public List<BoardAttachVO> findByBno(Long board_index);

	public List<BoardAttachVO> getOldFiles();

	public void deleteAll(Long bno);

}