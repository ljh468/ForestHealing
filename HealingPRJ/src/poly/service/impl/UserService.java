package poly.service.impl;

import javax.annotation.Resource;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Service;

import poly.dto.UserDTO;
import poly.persistance.mapper.IUserMapper;
import poly.service.IUserService;

@Service("UserService")
public class UserService implements IUserService{

	private Logger log = Logger.getLogger(this.getClass());

	
	@Resource(name = "UserMapper")
	private IUserMapper userMapper;
	
	
	@Override
	public UserDTO loginProc(UserDTO uDTO) throws Exception {
		log.info(this.getClass().getName() + ".loginProc Start !!");
		log.info(this.getClass().getName() + ".loginProc End !!");
		return userMapper.loginProc(uDTO);
	}
	
}
