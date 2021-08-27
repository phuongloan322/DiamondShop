package DiamondShop.Service.User;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import DiamondShop.Dao.ContactsDao;
import DiamondShop.Entity.Contacts;

@Service
public class ContactServiceImpl implements IContactService {
	
	@Autowired
	ContactsDao contactsDao = new ContactsDao();

	public int AddContact(Contacts contacts) {
		return contactsDao.AddContact(contacts);
	}
}
