package org.zerock.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.zerock.domain.CateVO;
import org.zerock.domain.ProdVO;
import org.zerock.mapper.ProdMapper;

import lombok.Setter;
import lombok.extern.log4j.Log4j;

@Service
@Log4j
public class ProdServiceImpl implements ProdService {

	@Setter(onMethod_ = @Autowired)
	private ProdMapper prodMapper;

	// 01. 상품목록
	@Override
	public List<ProdVO> listProduct() {
		return prodMapper.listProduct();
	}

	// 02. 상품상세
	@Override
	public ProdVO detailProduct(int prodId) {
		return prodMapper.detailProduct(prodId);
	}

	// 03. 상품수정
	@Override
	public void updateProduct(ProdVO vo) {
		prodMapper.updateProduct(vo);
	}

	// 04. 상품삭제
	@Override
	public void deleteProduct(int prodId) {
		prodMapper.deleteProduct(prodId);
	}

	// 05. 상품추가
	@Override
	public void insertProduct(ProdVO vo) {
		prodMapper.insertProduct(vo);
	}

	// 06. 상품이미지 삭제를 위한 이미지파일 정보
	@Override
	public String fileInfo(int prodId) {
		return prodMapper.fileInfo(prodId);
	}

	// 07
	@Override
	public List<CateVO> getCateAll() {
		return prodMapper.getCateAll();
	}

	// 08
	@Override
	public List<ProdVO> getProdAll() {
		return prodMapper.getProdAll();
	}

	// 09
	@Override
	public List<CateVO> getProdCate() {
		return prodMapper.getProdCate();
	}

	// 10
	@Override
	public List<CateVO> getDetailCate(String prodCate) {
		return prodMapper.getDetailCate(prodCate);
	}

	// 11
	@Override
	public List<ProdVO> getProdList(String detailCate) {
		return prodMapper.getProdList(detailCate);
	}
}
