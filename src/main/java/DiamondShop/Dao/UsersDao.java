package DiamondShop.Dao;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.EmptyResultDataAccessException;
import org.springframework.stereotype.Repository;

import DiamondShop.Dto.ProductsDto;
import DiamondShop.Dto.ProductsDtoMapper;
import DiamondShop.Entity.MapperUsers;
import DiamondShop.Entity.Users;

@Repository
public class UsersDao extends BaseDao {
	
	
	public int AddAccount(Users user) {
		StringBuffer  sql = new StringBuffer();
		int insert;
		Users users = FindUser(user);
		if(users != null) {
			return 0;
		}else {
			sql.append("INSERT ");
			sql.append("INTO users ");
			sql.append("(user, ");
			sql.append("password, ");
			sql.append("display_name, ");
			sql.append("address) ");
			sql.append("VALUES ( ");
			sql.append("'"+user.getUser()+"', ");
			sql.append("'"+user.getPassword()+"', ");
			sql.append("'"+user.getDisplay_name()+"', ");
			sql.append("'"+user.getAddress()+"' )");
			
			return _jdbcTemplate.update(sql.toString());
			
		}
	}
	
	public int EditAccount_pw(Users user) {
		StringBuffer  sql = new StringBuffer();

			sql.append("UPDATE `users` ");
			sql.append("SET `password`='"+user.getPassword()+" ',`display_name`='"+user.getDisplay_name()+"',`address`='"+user.getAddress()+"' ");
			sql.append("WHERE user = ");
			sql.append("'"+user.getUser()+"' ");
			return _jdbcTemplate.update(sql.toString());
	}
	
	public int EditAccount(Users user) {
		StringBuffer  sql = new StringBuffer();

			sql.append("UPDATE `users` ");
			sql.append("SET `display_name`='"+user.getDisplay_name()+"',`address`='"+user.getAddress()+"' ");
			sql.append("WHERE user = ");
			sql.append("'"+user.getUser()+"' ");
			return _jdbcTemplate.update(sql.toString());
	}
	
	
	public Users FindUser(Users users) {
		try {
			StringBuffer sql = new StringBuffer();
			sql.append("SELECT * FROM users ");
			sql.append("WHERE user = " );
			sql.append("'"+users.getUser()+"' ");
			Users user = _jdbcTemplate.queryForObject(sql.toString(), new MapperUsers());
			return user;
		} catch (EmptyResultDataAccessException  e) {
			return null;
		}
	}
}
