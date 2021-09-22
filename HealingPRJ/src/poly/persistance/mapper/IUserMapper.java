package poly.persistance.mapper;

import config.Mapper;
import poly.dto.UserDTO;

@Mapper("UserMapper")
public interface IUserMapper {

	public UserDTO loginProc(UserDTO uDTO) throws Exception;
}
