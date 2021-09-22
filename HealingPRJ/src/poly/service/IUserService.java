package poly.service;

import poly.dto.UserDTO;

public interface IUserService {
	
	public UserDTO loginProc(UserDTO uDTO) throws Exception;

}
