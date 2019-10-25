package org.zerock.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.User;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.zerock.domain.Criteria;
import org.zerock.domain.EnrollmentVO;
import org.zerock.domain.FoodinfoVO;
import org.zerock.domain.PetInfoVO;
import org.zerock.domain.PetKindNameVO;
import org.zerock.domain.PetSortVO;
import org.zerock.mapper.EnrollmentMapper;
import org.zerock.mapper.FoodInfosMapper;
import org.zerock.mapper.PetIndexsMapper;
import org.zerock.security.domain.CustomUser;

import lombok.Setter;
import lombok.extern.log4j.Log4j;

@Service
@Log4j
public class PetServiceImpl implements PetService {
	@Setter(onMethod_ = @Autowired)
	private FoodInfosMapper custMapper;

	@Setter(onMethod_ = @Autowired)
	private PetIndexsMapper prodMapper;

	@Setter(onMethod_ = @Autowired)
	private EnrollmentMapper saleMapper;

	@Override
	public List<FoodinfoVO> getCustList() {
		log.info("getCustList");
		return custMapper.getCustAll();
	}

	@Override
	public List<PetSortVO> getCateList() {
		log.info("getCateList");
		return prodMapper.getCateAll();
	}

	@Override
	public List<PetInfoVO> getProdList() {
		log.info("getProdList");
		return prodMapper.getProdAll();
	}

	@Override
	public List<PetInfoVO> getProdList(String pet_sort) {
		log.info("getProdList" + pet_sort);
		return prodMapper.getProdList(pet_sort);
	}

	@Transactional
	@Override
	public void Enrollment(EnrollmentVO vo) {
		log.info("saleServiceImpl saleReg");
		CustomUser u = (CustomUser)(
				(User) SecurityContextHolder.getContext()
				.getAuthentication().getPrincipal());
		vo.setUserId(u.getUser().getUser_index());

		List<PetKindNameVO> list = 
				new ArrayList<PetKindNameVO>();
		for(int i=0;i<vo.getNames().length;i++) {
			list.add(
				new PetKindNameVO(
					vo.getPet_kind()[i],
					vo.getNames()[i]
				)
			);
		}
		vo.setOrderItems(list);
		
		saleMapper.regOrders(vo);
		saleMapper.regOrderItems(vo);
	}

	@Override
	public List getOrderList(Criteria cri) {
		List list; 
		if(cri.getSelCate().equals("all") && cri.getSelProd().equals("all")) {
			list = saleMapper.getOrdersWithPaging(cri);
		} else {
			list = saleMapper.getOrderItemsWithPaging(cri);
		}
		return list;
	}

	@Override
	public int getTotal(Criteria cri) {
		int result;
		if(cri.getSelCate().equals("all") && cri.getSelProd().equals("all")) {
			result = saleMapper.getOrdersTotalCount(cri);
		} else {
			result = saleMapper.getOrderItemsTotalCount(cri);
		}
		return result;
	}
	
}
