package DiamondShop.Service.User;

import java.util.List;

import org.mindrot.jbcrypt.BCrypt;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import DiamondShop.Dao.UsersDao;
import DiamondShop.Entity.Users;

@Service
public class AccountServiceImpl implements IAccountService {
	@Autowired
	UsersDao usersDao = new UsersDao();

	public int AddAcc(Users user) {

		user.setPassword(BCrypt.hashpw(user.getPassword(), BCrypt.gensalt(12)));
		return usersDao.AddAccount(user);
	}

	public int EditAcc_pw(Users user) {
		String[] pw=user.getPassword().split(",");
		user.setPassword(pw[0]);
		Users user_check = CheckAcc(user);
		if(user_check != null) {
			user.setPassword(BCrypt.hashpw(pw[1], BCrypt.gensalt(12)));
			return usersDao.EditAccount_pw(user);
		}
		else return 0;
	}
	
	public int EditAcc(Users user) {
		Users user_check = usersDao.FindUser(user);
		if(user_check != null) {
			return usersDao.EditAccount(user);
		}
		else return 0;
	}

	public Users CheckAcc(Users user) {
		String pass = user.getPassword();

		Users _user = usersDao.FindUser(user);
		if (_user != null) {
			if (BCrypt.checkpw(pass, _user.getPassword())) {
				return _user;
			} else {
				return null;
			}
		}
		return null;
	}
	public boolean CheckAccount(Users user) {
		String pass = user.getPassword();

		Users _user = usersDao.FindUser(user);
		if (_user != null) {
			if (BCrypt.checkpw(pass, _user.getPassword())) {
				return true;
			} else {
				return false;
			}
		}
		return false;
	}

}
