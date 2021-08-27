package DiamondShop.Dao;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import DiamondShop.Entity.MapperMenus;
import DiamondShop.Entity.MapperSlides;
import DiamondShop.Entity.Menus;
import DiamondShop.Entity.Slides;
@Repository
public class MenusDao extends BaseDao{
	
	public List<Menus> GetDataMenu(){
		List<Menus> list = new ArrayList<Menus>();
		String sql = "SELECT * FROM menus";
		list = _jdbcTemplate.query(sql, new MapperMenus());
		return list;
	} 
}
