package DiamondShop.UserController;

import java.util.HashMap;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import DiamondShop.Dto.CartDto;
import DiamondShop.Entity.Bills;
import DiamondShop.Entity.Users;
import DiamondShop.Service.User.BillServiceImpl;
import DiamondShop.Service.User.CartServiceImpl;

@Controller
public class CartController extends BaseController {
	

	@Autowired
	private CartServiceImpl cartServiceImpl = new CartServiceImpl();
	
	@Autowired
	private BillServiceImpl billServiceImpl = new BillServiceImpl();
	
	@RequestMapping(value = { "gio-hang" })
	public ModelAndView Index() {
		//ModelAndView mv = new ModelAndView("user/index");
		_mvShare.addObject("slides", _homeService.GetDataSlide());
		_mvShare.addObject("categorys", _homeService.GetDataCategory());
		_mvShare.addObject("highlightProducts", _homeService.GetDataHighlightProduct());
		_mvShare.addObject("newProducts", _homeService.GetDataNewProduct());
		_mvShare.setViewName("user/cart/list_cart");
		return _mvShare;
	}

	@RequestMapping(value = "AddCart/{id}" )
	public String AddCart(HttpServletRequest request,HttpSession session, @PathVariable long id) {
		
		HashMap<Long, CartDto> cart = (HashMap<Long, CartDto>)session.getAttribute("Cart");	
		if(cart == null) {
			cart = new HashMap<Long, CartDto>();
		}
		cart = cartServiceImpl.AddCart(id, cart);
		session.setAttribute("Cart", cart);
		session.setAttribute("TotalQuantyCart", cartServiceImpl.TotalQuanty(cart));
		session.setAttribute("TotalPriceCart", cartServiceImpl.TotalPrice(cart));
		return "redirect:"+request.getHeader("Referer");
		
	}
	
	@RequestMapping(value = "EditCart/{id}/{quanty}" )
	public String EditCart(HttpServletRequest request,HttpSession session, @PathVariable long id,  @PathVariable int quanty) {
		
		HashMap<Long, CartDto> cart = (HashMap<Long, CartDto>)session.getAttribute("Cart");	
		if(cart == null) {
			cart = new HashMap<Long, CartDto>();
		}
		cart = cartServiceImpl.EditCart(id, quanty, cart);
		session.setAttribute("Cart", cart);
		session.setAttribute("TotalQuantyCart", cartServiceImpl.TotalQuanty(cart));
		session.setAttribute("TotalPriceCart", cartServiceImpl.TotalPrice(cart));
		return "redirect:"+request.getHeader("Referer");
		
	}
	
	@RequestMapping(value = "DeleteCart/{id}" )
	public String DeleteCart(HttpServletRequest request,HttpSession session, @PathVariable long id) {		
		HashMap<Long, CartDto> cart = (HashMap<Long, CartDto>)session.getAttribute("Cart");	
		if(cart == null) {
			cart = new HashMap<Long, CartDto>();
		}
		cart = cartServiceImpl.DeleteCart(id, cart);
		session.setAttribute("Cart", cart);
		session.setAttribute("TotalQuantyCart", cartServiceImpl.TotalQuanty(cart));
		session.setAttribute("TotalPriceCart", cartServiceImpl.TotalPrice(cart));
		return "redirect:"+request.getHeader("Referer");
		
	}
//thanh toan	
	@RequestMapping(value = "/checkout", method = RequestMethod.GET)
	public ModelAndView Checkout(HttpServletRequest request,HttpSession session) {	
		_mvShare.setViewName("user/bills/checkout");
		_mvShare.addObject("user", new Bills());
		Bills bills = new Bills();
		Users loginInfo = (Users)session.getAttribute("LoginInfo");
		if(loginInfo != null) {
			bills.setDisplay_name(loginInfo.getDisplay_name());
			bills.setAddress(loginInfo.getAddress());
			bills.setUser(loginInfo.getUser());
			
		}
		_mvShare.addObject("bills", bills);
		return _mvShare;
	}
	
	@RequestMapping(value = "/checkout", method = RequestMethod.POST )
	public String CheckoutBill(HttpServletRequest request,HttpSession session, @ModelAttribute("bills") Bills bill) {
		bill.setQuanty(Integer.parseInt(session.getAttribute("TotalQuantyCart").toString()));
		bill.setTotal((Double.parseDouble(session.getAttribute("TotalPriceCart").toString())));
		if(billServiceImpl.AddBill(bill) > 0) {
			HashMap<Long, CartDto> carts = (HashMap<Long, CartDto>)session.getAttribute("Cart");
			billServiceImpl.AddDetail(carts);
		}
		session.removeAttribute("Cart");
		return "redirect:gio-hang";
	}
}
