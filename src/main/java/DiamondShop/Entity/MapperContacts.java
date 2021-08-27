package DiamondShop.Entity;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

public class MapperContacts implements RowMapper<Contacts> {

	public Contacts mapRow(ResultSet rs, int rowNum) throws SQLException {
		Contacts contacts = new Contacts();
		contacts.setId(rs.getLong("id"));
		contacts.setEmail(rs.getString("email"));
		contacts.setName(rs.getString("name"));
		contacts.setTitle(rs.getString("title"));
		contacts.setContent(rs.getString("content"));
		
		return contacts;
	}
	

}
