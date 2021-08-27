package DiamondShop.Service.User;

import org.springframework.stereotype.Service;

import DiamondShop.Entity.Contacts;
@Service
public interface IContactService {
	public int AddContact(Contacts contacts);
}
