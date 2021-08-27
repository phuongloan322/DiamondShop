package DiamondShop.UserController;

import java.util.HashMap;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import DiamondShop.Dto.CartDto;
import DiamondShop.Entity.Bills;
import DiamondShop.Entity.Users;
import DiamondShop.Service.User.AccountServiceImpl;

@Controller
public class UserController extends BaseController {
	@Autowired
	AccountServiceImpl accountServiceImpl = new AccountServiceImpl();

	@RequestMapping(value = "/dang-ky", method = RequestMethod.GET)
	public ModelAndView Register() {
		_mvShare.setViewName("user/account/register");
		_mvShare.addObject("user", new Users());

		return _mvShare;
	}

	@RequestMapping(value = "/dang-ky", method = RequestMethod.POST)
	public ModelAndView CreateAcc(@ModelAttribute("user") Users user) {
		int count = accountServiceImpl.AddAcc(user);
		if (count > 0) {
			_mvShare.addObject("status", "");
			_mvShare.setViewName("redirect:dang-nhap");
		} else {
			_mvShare.addObject("status", "The username exists.");
		}
		return _mvShare;
	}

	@RequestMapping(value = "/dang-nhap", method = RequestMethod.GET)
	public ModelAndView DangNhap() {
		_mvShare.setViewName("user/account/login");
		_mvShare.addObject("user", new Users());
		
		return _mvShare;
	}

	@RequestMapping(value = "/dang-nhap", method = RequestMethod.POST)
	public ModelAndView Login(HttpSession session, HttpServletRequest request,  @ModelAttribute("user") Users user) {
		
		Users user_check = accountServiceImpl.CheckAcc(user);
		if (user_check != null) {
			_mvShare.setViewName("redirect:trang-chu");
			session.setAttribute("LoginInfo", user_check); // lưu thông tin đăng nhập
		} else {
			_mvShare.addObject("stt_login", "Đăng nhập thất bại");
		}
		return _mvShare;
	}
	
	@RequestMapping(value = "/dang-xuat", method = RequestMethod.GET)
	public String DangXuat(HttpSession session, HttpServletRequest request) {  //, HttpServletResponse response) {
		//remove session
		session.removeAttribute("LoginInfo");
		return "redirect:dang-nhap"; // tro ve trang truoc do
	}

	@RequestMapping(value = "/quan-ly-tai-khoan", method = RequestMethod.GET)
	public ModelAndView QuanLyTaiKhoan(HttpServletRequest request, HttpSession session) {
		_mvShare.setViewName("user/account/managerAccount");
		_mvShare.addObject("user", new Users());
		Users users = new Users();
		Users loginInfo = (Users) session.getAttribute("LoginInfo");
		if (loginInfo != null) {
			users.setUser(loginInfo.getUser());
			users.setDisplay_name(loginInfo.getDisplay_name());
			users.setAddress(loginInfo.getAddress());
		}
		_mvShare.addObject("manageraccount", users);
		_mvShare.addObject("status_edit", "");
		_mvShare.addObject("ReturnUrl",request.getHeader("Referer"));
		return _mvShare;
	}

	@RequestMapping(value = "/quan-ly-tai-khoan", method = RequestMethod.POST)
	public ModelAndView ManagerAccount(HttpServletRequest request, HttpSession session,
			@ModelAttribute("manageraccount") Users user) {
		int count = 0;
		if (!user.getPassword().equals(",")) {
			count = accountServiceImpl.EditAcc_pw(user);
		} else {
			count = accountServiceImpl.EditAcc(user);
		}

		if (count > 0) {
			_mvShare.addObject("status_edit", "");
			_mvShare.setViewName("redirect:quan-ly-tai-khoan");
			
		} else {
			_mvShare.addObject("status_edit", "Old Password not marched");
		}

		return _mvShare;
	}
}
//HttpSession session, HttpServletRequest request) {
//Users users = checkCookie(request);
//if(users == null) {		//nếu k có thì tạo mới
//	_mvShare.addObject("user", new Users());
//	_mvShare.setViewName("user/account/login");
//}
//else {					//có thì ktra đăng nhập, ktra sai thì tb lỗi
//	Users user_check = accountServiceImpl.CheckAcc(users);
//	if (user_check != null) {
//		_mvShare.setViewName("redirect:trang-chu");
//		session.setAttribute("LoginInfo", user_check);
//	}
//	else {
//		_mvShare.addObject("stt_login", "Đăng nhập thất bại");
//	}
//}
//_mvShare.addObject("stt_login", "");	
//return _mvShare;

//HttpServletResponse response,
//Users user_check = accountServiceImpl.CheckAcc(user);
//if (user_check != null) {
//	
//	session.setAttribute("LoginInfo", user_check); // lưu thông tin đăng nhập
//	if (request.getParameter("remember") != null) {
//		Cookie ckUsername = new Cookie("user", user_check.getUser());
//		ckUsername.setMaxAge(3600);
//		response.addCookie(ckUsername);
//		Cookie ckPassword = new Cookie("password", user_check.getPassword());
//		ckPassword.setMaxAge(3600);
//		response.addCookie(ckPassword);
//	}
//	_mvShare.setViewName("redirect:trang-chu");
//} else {
//	_mvShare.addObject("stt_login", "Đăng nhập thất bại");
//}
//return _mvShare;


//public Users checkCookie(HttpServletRequest request) {
//	Cookie[] cookies = request.getCookies();
//	Users users = null;
//	String username = "", password = "";
//	for (Cookie cookie : cookies) {
//		if (cookie.getName().equalsIgnoreCase("user")) {
//			username = cookie.getValue();
//		}
//		if (cookie.getName().equalsIgnoreCase("password")) {
//			password = cookie.getValue();
//		}
//	}
//	if (!username.isEmpty() && !password.isEmpty()) {
//		users.setUser(username);
//		users.setPassword(password);
//	}
//	return users;
//}

// Remove cookie
//for (Cookie cookie : request.getCookies()) {
//	if (cookie.getName().equalsIgnoreCase("user")) {
//		cookie.setMaxAge(0);
//		response.addCookie(cookie);
//	}
//	if (cookie.getName().equalsIgnoreCase("password")) {
//		cookie.setMaxAge(0);
//		response.addCookie(cookie);
//	}
//}
