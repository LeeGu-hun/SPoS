package org.zerock.mapper;

import java.util.List;

import org.zerock.domain.PetSortVO;
import org.zerock.domain.PetInfoVO;

public interface PetIndexsMapper {
	public List<PetSortVO> getCateAll();
	public List<PetInfoVO> getProdAll();
	public List<PetInfoVO> getProdList(String pet_sort);
}
