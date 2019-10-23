package org.zerock.service;

import java.util.List;

import org.zerock.domain.CateVO;
import org.zerock.domain.ProdVO;

public interface ProdService {
	// 01. 상품목록
	public List<ProdVO> listProduct();

	// 02. 상품상세
	public ProdVO detailProduct(int productId);

	// 03. 상품수정
	public void updateProduct(ProdVO vo);

	// 04. 상품삭제
	public void deleteProduct(int productId);

	// 05. 상품추가
	public void insertProduct(ProdVO vo);

	// 06. 상품이미지 삭제를 위한 이미지파일 정보
	public String fileInfo(int productId);

	// 07. cate전체불러오기
	public List<CateVO> getCateAll();

	// 08. 전체 제품 리스트
	public List<ProdVO> getProdAll();

	// 09. 카테1 불러오기
	public List<CateVO> getProdCate();

	// 10. 카테2불러오기 카테1선택후
	public List<CateVO> getDetailCate(String prodCate);

	// 11. 카테2에 따른 제품 리스트 불러오기
	public List<ProdVO> getProdList(String detailCate);
}
