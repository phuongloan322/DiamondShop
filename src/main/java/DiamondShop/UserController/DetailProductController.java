package DiamondShop.UserController;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import DiamondShop.Service.User.PaginatesServiceImpl;
import DiamondShop.Service.User.ProductServiceImpl;

@Controller
public class DetailProductController extends BaseController {
	
	@Autowired
	private ProductServiceImpl productServiceImpl;
	
	@RequestMapping(value = {"/chi-tiet-san-pham/{id}" })
	public ModelAndView Index(@PathVariable long id) {
		_mvShare.setViewName("user/products/product");
		_mvShare.addObject("product", productServiceImpl.GetProductByID(id));
		int id_category = productServiceImpl.GetProductByID(id).getId_category();
		_mvShare.addObject("productByIDCategory", productServiceImpl.GetProductByIDCategory(id_category));
		return _mvShare;
	}
}
