package DiamondShop.Entity;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

public class MapperOrders implements RowMapper<Orders> {
	public Orders mapRow(ResultSet rs, int rowNum) throws SQLException {
		Orders orders = new Orders();
		orders.setId(rs.getLong("id"));
		orders.setId_color(rs.getInt("id_color"));
		orders.setId_product(rs.getLong("id_product"));
		orders.setStatus(rs.getString("status"));	
		return orders;
	}
	
}
