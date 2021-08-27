package DiamondShop.Dao;

import org.springframework.stereotype.Repository;

import DiamondShop.Entity.Contacts;
@Repository
public class ContactsDao extends BaseDao {
	public int AddContact(Contacts contacts) {
		StringBuffer  sql = new StringBuffer();
		sql.append("INSERT ");
		sql.append("INTO `contacts` ");
		sql.append("( `email`, `name`, `title`, `content`) ");
		sql.append("VALUES ");
		sql.append("( ");
		sql.append(" '"+contacts.getEmail()+"', ");
		sql.append(" '"+contacts.getName()+"', ");
		sql.append(" '"+contacts.getTitle()+"', ");
		sql.append(" '"+contacts.getContent()+"' ");
		sql.append(")");
		
		return _jdbcTemplate.update(sql.toString());	
		}
	}

