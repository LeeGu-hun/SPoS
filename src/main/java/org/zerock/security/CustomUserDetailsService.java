package org.zerock.security;

import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;

import lombok.extern.log4j.Log4j;

@Log4j
public class CustomUserDetailsService implements UserDetailsService {
	
//	@Setter(onMethod_ = {@Autowired})
//	private UsersMapper usersMapper;

	@Override
	public UserDetails loadUserByUsername(String userName) throws UsernameNotFoundException {
		log.warn("Load User by UserName : " + userName);
		
		// userName means userid
		//UserVO vo = usersMapper.checkLogin(userName.toUpperCase());
//		log.warn(vo);
//		log.warn("queried by member mapper: " + vo);
//		return vo==null ? null : new CustomUser(vo);
		return null;
	}
}
