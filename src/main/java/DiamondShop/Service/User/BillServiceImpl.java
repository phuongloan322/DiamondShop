package DiamondShop.Service.User;

import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import DiamondShop.Dao.BillsDao;
import DiamondShop.Dto.CartDto;
import DiamondShop.Entity.BillDetail;
import DiamondShop.Entity.Bills;
@Service
public class BillServiceImpl implements IBillService {
	@Autowired
	BillsDao billsDao;
	public int AddBill(Bills bill) {
		return billsDao.AddBill(bill);
	}

	public void AddDetail(HashMap<Long, CartDto> Carts) {
		long idBillDetail = billsDao.GetIDLastBill();
		BillDetail billDetail = new BillDetail();
		for(Map.Entry<Long, CartDto> itemCart : Carts.entrySet()) {
			billDetail.setId_bills(idBillDetail);
			billDetail.setId_product(itemCart.getValue().getProduct().getId_product());
			billDetail.setQuanty(itemCart.getValue().getQuanty());
			billDetail.setTotal(itemCart.getValue().getTotalPrice());
			billsDao.AddBillsDetail(billDetail);
		}
		
	}

	
}
