package org.zerock.controller;

import java.io.File;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import org.zerock.domain.ProdVO;
import org.zerock.service.ProdService;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;


@Controller
@AllArgsConstructor
@Log4j
@RequestMapping("/shop/")
public class ProdController {
	
	private ProdService prodSvc;

	/*
	 * // 1. 상품 전체 목록
	 * 
	 * @RequestMapping("/list.do") public ModelAndView list(ModelAndView mav) {
	 * mav.setViewName("shop/report"); mav.addObject("list", prodSvc.listProduct());
	 * 
	 * return mav; }
	 */
		// 2. 상품 상세보기
		@RequestMapping("detail/{productId}")
		public ModelAndView detail(@PathVariable("productId") int productId, ModelAndView mav){
			mav.setViewName("/shop/productDetail");
			mav.addObject("vo", prodSvc.detailProd(productId));
			return mav;
		}
		// 3. 상품등록 페이지 매핑
		@RequestMapping("write.do")
		public String write(){
			return "/shop/productWrite";
		}
		// 4. 상품등록 처리 매핑
		@RequestMapping("insert.do")
		public String insert(ProdVO vo){
			String filename = "";
			// 첨부파일(상품사진)이 있으면
			if(!vo.getProd_photo().isEmpty()){
				filename = vo.getProd_photo().getOriginalFilename();
				// 개발디렉토리 - 파일 업로드 경로
				//String path = "C:\\Users\\doubles\\Desktop\\workspace\\gitSpring\\spring02\\src\\main\\webapp\\WEB-INF\\views\\images"; //
				// 배포디렉토리 - 파일 업로드 경로
				String path = "C:\\classSTS3xml\\workspace\\"
								+ "\\.metadata\\.plugins\\org.eclipse.wst.server.core\\"
								+ "tmp0\\wtpwebapps\\spring02-master\\WEB-INF\\views\\images\\";
				
				
				
				try {
					new File(path).mkdirs(); // 디렉토리 생성
					// 임시디렉토리(서버)에 저장된 파일을 지정된 디렉토리로 전송
					vo.getProd_photo().transferTo(new File(path+filename));
				} catch (Exception e) {
					e.printStackTrace();
				}
				vo.setProd_url(filename);
				prodSvc.insertProd(vo);
			}
			return "redirect:/shop/product/list.do";
		}
		
		// 5. 상품 수정(편집) 페이지 매핑
		@RequestMapping("edit/{productId}")
		public ModelAndView edit(@PathVariable("productId") int productId, ModelAndView mav){
			mav.setViewName("/shop/productEdit");
			mav.addObject("vo", prodSvc.detailProd(productId));
			return mav;
		}
		
		// 6. 상품 수정(편집) 처리 매핑
		@RequestMapping("update.do")
		public String update(ProdVO vo){
			String filename = "";
			// 첨부파일(상품사진)이 변경되면
			if(!vo.getProd_photo().isEmpty()){
				filename = vo.getProd_photo().getOriginalFilename();
				// 개발디렉토리 - 파일 업로드 경로
				//String path = "C:\\Users\\doubles\\Desktop\\workspace\\gitSpring\\spring02\\src\\main\\webapp\\WEB-INF\\views\\images"; //
				// 배포디렉토리 - 파일 업로드 경로
				String path = "C:\\Users\\doubles\\Desktop\\workspace\\spring\\"
								+ "\\.metadata\\.plugins\\org.eclipse.wst.server.core\\"
								+ "tmp0\\wtpwebapps\\spring02\\WEB-INF\\views\\images\\";
				try {
					new File(path).mkdirs(); // 디렉토리 생성
					// 임시디렉토리(서버)에 저장된 파일을 지정된 디렉토리로 전송
					vo.getProd_photo().transferTo(new File(path+filename));
				} catch (Exception e) {
					e.printStackTrace();
				}
				vo.setProd_url(filename);
			// 첨부파일이 변경되지 않으면
			} else {
				// 기존의 파일명
				ProdVO vo2 = prodSvc.detailProd(vo.getPROD_INFO_INDEX());
				vo.setProd_url(vo2.getProd_url());
			}
			prodSvc.updateProd(vo);
			return "redirect:/shop/product/list.do";
		}
		
		// 7. 상품 삭제 처리 매핑
		@RequestMapping("delete.do")
		public String delete(@RequestParam int productId){
			// 상품 이미지 정보
			String filename = prodSvc.fileInfo(productId);
			String path = "C:\\Users\\doubles\\Desktop\\workspace\\spring\\"
					+ "\\.metadata\\.plugins\\org.eclipse.wst.server.core\\"
					+ "tmp0\\wtpwebapps\\spring02\\WEB-INF\\views\\images\\";
			// 상품 이미지 삭제
			if(filename != null){
				File file = new File(path+filename);
				// 파일이 존재하면
				if (file.exists()){ 
					file.delete(); // 파일 삭제
				}
			}
			// 레코드 삭제
			prodSvc.deleteProd(productId);
			
			
			return "redirect:/shop/product/list.do";
		}
	
	
	
	
	/*
	 * @PostMapping("/report") public void reportPost(Model model, Criteria cri) {
	 */
		/*
		 * model.addAttribute("orderList", prodSvc.getOrderList(cri));
		 * model.addAttribute("custList", prodSvc.getCustList());
		 * model.addAttribute("cateList", prodSvc.getCateList()); int total =
		 * prodSvc.getTotal(cri); model.addAttribute("pageMaker", new
		 * PageDTO(cri,total));
		 */
	
}
