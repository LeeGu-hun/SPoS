package org.zerock.validator;

import java.util.regex.Pattern;

import org.springframework.validation.Errors;
import org.springframework.validation.ValidationUtils;
import org.springframework.validation.Validator;
import org.zerock.domain.BoardVO;

public class BoardRegisterValidator implements Validator{
	private static final String emailRegExp = 
			"^[_A-Za-z0-9-\\+]+(\\.[A-Za-z0-9-]+)*@" +
			"[A-Za-z0-9-]+(\\.[A-Za-z0-9-]+)*(\\.[A-Za-z]{2,})$";
	// ^:한 라인으로 시작, $:문자열의 종료, {2,}:2자이상, .*[a-z].*:영어 소문자, \\+:+, \\.:.
	
	private Pattern pattern;
	
	public BoardRegisterValidator() {
		pattern = Pattern.compile(emailRegExp);
	}

	@Override
	public boolean supports(Class<?> clazz) {
		return BoardRegisterValidator.class.isAssignableFrom(clazz);
	}

	@Override
	public void validate(Object target, Errors errors) {
		BoardVO vo = (BoardVO) target;
		
//		if(vo.getEmail() == null || vo.getEmail().trim().isEmpty()) {
//			errors.rejectValue("email", "required");
//		} else {
//			Matcher match = pattern.matcher(vo.getEmail());
//			if(!match.matches())
//				errors.rejectValue("email", "baaad");
//		}
		
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "title", "required");
		
	}
	
}
