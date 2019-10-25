package org.zerock.controller;

import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.zerock.domain.Criteria;
import org.zerock.domain.ReplyPageDTO;
import org.zerock.domain.ReplyVO;
import org.zerock.service.ReplyService;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@RequestMapping("/replies/")
@RestController
@Log4j
@AllArgsConstructor
public class ReplyController {
	
	private ReplyService service;

	//@PreAuthorize("isAuthenticated()")
	@PostMapping(value = "/new", consumes = "application/json", produces = {MediaType.TEXT_PLAIN_VALUE})
	public ResponseEntity<String> registReply(@RequestBody ReplyVO vo) {
		log.info("ReplyVO: " + vo);
		int insertCount = service.registReply(vo);
		log.info("Relpy INSERT COUNT: " + insertCount);
		return insertCount == 1 ? new ResponseEntity<>("success", HttpStatus.OK) : new ResponseEntity<>(HttpStatus.INTERNAL_SERVER_ERROR);
	}
	
	@GetMapping(value = "/amount/{board_index}/{amount}", produces = {MediaType.APPLICATION_XML_VALUE, MediaType.APPLICATION_JSON_UTF8_VALUE})
	public ResponseEntity<ReplyPageDTO> getReplyList(@PathVariable("amount") int amount, @PathVariable("board_index") Long board_index) {
		Criteria cri = new Criteria(1, amount);
		log.info("get Reply List board_index: " + board_index);
		log.info("cri: " + cri);
		return new ResponseEntity<>(service.getListPage(cri, board_index), HttpStatus.OK);
	}
	
	@GetMapping(value = "/{reply_index}", produces = {MediaType.APPLICATION_XML_VALUE, MediaType.APPLICATION_JSON_UTF8_VALUE})
	public ResponseEntity<ReplyVO> getReply(@PathVariable("reply_index") Long reply_index) {
		log.info("get reply: " + reply_index);
		return new ResponseEntity<>(service.getReply(reply_index), HttpStatus.OK);
	}
	
	@PreAuthorize("isAuthenticated()")
	@DeleteMapping(value = "/{reply_index}")
	public ResponseEntity<String> removeReply(@RequestBody ReplyVO vo, @PathVariable("reply_index") Long reply_index) {
		log.info("remove reply: " + reply_index);
		return service.removeReply(vo) == 1 ? new ResponseEntity<>("success", HttpStatus.OK) : new ResponseEntity<>(HttpStatus.INTERNAL_SERVER_ERROR);
	}

}
