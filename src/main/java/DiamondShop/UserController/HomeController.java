package DiamondShop.UserController;

import java.util.HashMap;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import DiamondShop.Dto.CartDto;

@Controller
public class HomeController extends BaseController {	

	@RequestMapping(value = { "/", "/trang-chu" })
	public ModelAndView Index() {
		//ModelAndView mv = new ModelAndView("user/index");
		_mvShare.addObject("slides", _homeService.GetDataSlide());
		_mvShare.addObject("categorys", _homeService.GetDataCategory());
		_mvShare.addObject("highlightProducts", _homeService.GetDataHighlightProduct());
		_mvShare.addObject("newProducts", _homeService.GetDataNewProduct());
		_mvShare.addObject("active", 1);
		_mvShare.setViewName("user/index");
		return _mvShare;
	}

}
