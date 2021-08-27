package DiamondShop.Service.User;

import java.util.List;

import org.springframework.stereotype.Service;

import DiamondShop.Entity.Users;
@Service
public interface IAccountService {
	public int AddAcc(Users user);
	public int EditAcc_pw(Users user);
	public int EditAcc(Users user);
	public Users CheckAcc(Users user);
}
