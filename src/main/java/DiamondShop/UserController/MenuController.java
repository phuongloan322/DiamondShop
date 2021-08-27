package DiamondShop.UserController;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import DiamondShop.Dto.PaginatesDto;
import DiamondShop.Entity.Contacts;
import DiamondShop.Entity.Users;
import DiamondShop.Service.User.CategoryServiceImpl;
import DiamondShop.Service.User.ContactServiceImpl;
import DiamondShop.Service.User.PaginatesServiceImpl;

@Controller
public class MenuController extends BaseController {

	@Autowired
	private CategoryServiceImpl categoryServiceImpl;

	@Autowired
	private PaginatesServiceImpl paginatesServiceImpl;

	@Autowired
	private ContactServiceImpl contactServiceImpl;

	private int totalProductsPage = 9;

	@RequestMapping(value = "/bai-viet")
	public ModelAndView About() {
		_mvShare.setViewName("user/menus/about_us");
		return _mvShare;
	}

	@RequestMapping(value = "/lien-he", method = RequestMethod.GET)
	public ModelAndView Contact(HttpSession session, String status_contact) {
		_mvShare.setViewName("user/menus/contact");
		
		Contacts contacts = new Contacts();
		Users loginInfo = (Users) session.getAttribute("LoginInfo");
		if (loginInfo != null) {
			contacts.setName(loginInfo.getDisplay_name());
			contacts.setEmail(loginInfo.getUser());
		}
		_mvShare.addObject("contact", contacts);
		_mvShare.addObject("status_contact", status_contact);
		return _mvShare;
	}

	@RequestMapping(value = "/lien-he", method = RequestMethod.POST)
	public ModelAndView Contact(HttpServletRequest request, @ModelAttribute("contact") Contacts contact) {
		int count = 0;
		count = contactServiceImpl.AddContact(contact);
		_mvShare.setViewName("redirect:lien-he");
		_mvShare.addObject("status_contact", "Success");
		return _mvShare;
	}

}
