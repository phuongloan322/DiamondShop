package DiamondShop.Dao;

import java.util.HashMap;

import org.springframework.stereotype.Repository;

import DiamondShop.Entity.BillDetail;
import DiamondShop.Entity.Bills;
@Repository
public class BillsDao extends BaseDao {

	public int AddBill(Bills bill) {
		StringBuffer  sql = new StringBuffer();
		sql.append("INSERT INTO bills ");
		sql.append("( user, phone, display_name, address, total, quanty, note) ");
		sql.append("VALUES ");
		sql.append("( ");
		sql.append(" '"+ bill.getUser()+"', ");
		sql.append(" '"+ bill.getPhone() +"', ");
		sql.append(" '"+ bill.getDisplay_name() +"', ");
		sql.append(" '"+ bill.getAddress() +"', ");
		sql.append(" '"+ bill.getTotal() +"', ");
		sql.append(" '"+ bill.getQuanty() +"', ");
		sql.append(" '"+ bill.getNote() +"' ");
		sql.append(")");
		return _jdbcTemplate.update(sql.toString());
	}
	
	public long GetIDLastBill() {
		String sql = new String();
		sql = "SELECT MAX(id) FROM bills";
		long id = _jdbcTemplate.queryForObject(sql, new Object[] {}, Long.class);
		return id;
	}
	
	public int AddBillsDetail(BillDetail billDetail) {
		StringBuffer  sql = new StringBuffer();
		sql.append("INSERT INTO billdetail ");
		sql.append("( id_product, quanty, total, id_bills) ");
		sql.append("VALUES ");
		sql.append("( ");
		sql.append(" '" + billDetail.getId_product() + "', ");
		sql.append(" '" + billDetail.getQuanty() + "', ");
		sql.append(" '" + billDetail.getTotal() + "', ");
		sql.append(" '" + billDetail.getId_bills() + "' ");
		sql.append(")");
		return _jdbcTemplate.update(sql.toString());
	}
}
