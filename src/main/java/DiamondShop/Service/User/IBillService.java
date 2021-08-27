package DiamondShop.Service.User;

import java.util.HashMap;

import org.springframework.stereotype.Service;

import DiamondShop.Dto.CartDto;
import DiamondShop.Entity.Bills;

@Service
public interface IBillService {
	
	public int AddBill(Bills bill);
	
	public void AddDetail(HashMap<Long, CartDto> Carts);
}
