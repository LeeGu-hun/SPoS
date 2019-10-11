package org.zerock.controller;

import java.util.List;

import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;
import org.zerock.domain.Criteria;
import org.zerock.domain.ReplyVO;
import org.zerock.service.ReplyService;

import lombok.extern.log4j.Log4j;

@RequestMapping("/replies/")
@RestController
@Log4j
public class ReplyController {
	
	private ReplyService service;

	@PostMapping(value = "/new", consumes = "application/json", produces = {MediaType.TEXT_PLAIN_VALUE})
	public ResponseEntity<String> registReply(@RequestBody ReplyVO vo) {
		log.info("ReplyVO: " + vo);
		int insertCount = service.registReply(vo);
		log.info("Relpy INSERT COUNT: " + insertCount);
		return insertCount == 1 ? new ResponseEntity<>("success", HttpStatus.OK) : new ResponseEntity<>(HttpStatus.INTERNAL_SERVER_ERROR);
	}
	
	@GetMapping(value = "/pages/{board_index}/{page}", produces = {MediaType.APPLICATION_XML_VALUE, MediaType.APPLICATION_JSON_UTF8_VALUE})
	public ResponseEntity<List<ReplyVO>> getReplyList(@PathVariable("page") int page, @PathVariable("board_index") Long board_index) {
		Criteria cri = new Criteria(page, 4);
		log.info("get Reply List board_index: " + board_index);
		log.info("cri: " + cri);
		return new ResponseEntity<>(service.getReplyList(cri, board_index), HttpStatus.OK);
	}
	
	@GetMapping(value = "/{reply_index}", produces = {MediaType.APPLICATION_XML_VALUE, MediaType.APPLICATION_JSON_UTF8_VALUE})
	public ResponseEntity<ReplyVO> get(@PathVariable("reply_index") Long reply_index) {
		log.info("get reply: " + reply_index);
		return new ResponseEntity<>(service.getReply(reply_index), HttpStatus.OK);
	}

	@DeleteMapping(value = "/{reply_index}")
	public ResponseEntity<String> remove(@RequestBody ReplyVO vo, @PathVariable("reply_index") Long reply_index) {
		log.info("remove reply: " + reply_index);
		return service.removeReply(reply_index) == 1 ? new ResponseEntity<>("success", HttpStatus.OK) : new ResponseEntity<>(HttpStatus.INTERNAL_SERVER_ERROR);
	}
	
	@RequestMapping(method = {RequestMethod.PUT, RequestMethod.PATCH}, value = "/{reply_index}", consumes = "application/json")
	public ResponseEntity<String> modify(@RequestBody ReplyVO vo, @PathVariable("reply_index") Long reply_index) {
		vo.setBoard_index(reply_index);
		log.info("rno: " + reply_index);
		log.info("modify: " + vo);
		return service.modifyReply(vo) == 1 ? new ResponseEntity<>("success", HttpStatus.OK) : new ResponseEntity<>(HttpStatus.INTERNAL_SERVER_ERROR);
	}
}
