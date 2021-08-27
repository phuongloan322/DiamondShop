package DiamondShop.UserController;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import DiamondShop.Dto.PaginatesDto;
import DiamondShop.Service.User.CategoryServiceImpl;
import DiamondShop.Service.User.PaginatesServiceImpl;
import DiamondShop.Service.User.ProductServiceImpl;

@Controller
public class CategoryController extends BaseController {
	@Autowired
	private CategoryServiceImpl categoryServiceImpl;
	
	@Autowired
	private PaginatesServiceImpl paginatesServiceImpl;
	
	@Autowired
	private ProductServiceImpl productServiceImpl;
	
	private int totalProductsPage = 9;
	
	@RequestMapping(value = "/san-pham/{id}")
	public ModelAndView Product(@PathVariable String id) {
		_mvShare.setViewName("user/products/category");
		int totalData = categoryServiceImpl.GetAllProductsByID(Integer.parseInt(id)).size();
		PaginatesDto paginateInfo = paginatesServiceImpl.GetInfoPaginates(totalData, totalProductsPage, 1);
		_mvShare.addObject("idCategory", id);
		_mvShare.addObject("paginateInfo", paginateInfo);
		_mvShare.addObject("productsPaginate", categoryServiceImpl.GetDataProductsPaginate(Integer.parseInt(id),paginateInfo.getStart(), totalProductsPage));
		
		return _mvShare;
	}
	
	@RequestMapping(value = "/san-pham/{id}/{currentPage}")
	public ModelAndView Product(@PathVariable String id,@PathVariable String currentPage) {
		_mvShare.setViewName("user/products/category");
		int totalData = categoryServiceImpl.GetAllProductsByID(Integer.parseInt(id)).size();
		PaginatesDto paginateInfo = paginatesServiceImpl.GetInfoPaginates(totalData, totalProductsPage, Integer.parseInt(currentPage));
		_mvShare.addObject("idCategory", id);
		_mvShare.addObject("paginateInfo", paginateInfo);
		_mvShare.addObject("productsPaginate", categoryServiceImpl.GetDataProductsPaginate(Integer.parseInt(id), paginateInfo.getStart(), totalProductsPage));
		
		return _mvShare;
	}
	
	@RequestMapping(value = "/tat-ca-san-pham")
	public ModelAndView Products() {
		_mvShare.setViewName("user/menus/products");
		int totalData = _homeService.GetDataProducts().size();
		PaginatesDto paginateInfo = paginatesServiceImpl.GetInfoPaginates(totalData, totalProductsPage, 1);
		_mvShare.addObject("paginateInfo", paginateInfo);
		_mvShare.addObject("productsPaginate", categoryServiceImpl.GetAllDataProductsPaginate(paginateInfo.getStart(), totalProductsPage));
		_mvShare.addObject("active", 2);
		//_mvShare.addObject("ProductsSearch", productServiceImpl.GetProductSearch(search));
		return _mvShare;
	}
	@RequestMapping(value = "/tat-ca-san-pham/{currentPage}")
	public ModelAndView Products(@PathVariable String currentPage) {
		_mvShare.setViewName("user/menus/products");
		int totalData = _homeService.GetDataProducts().size();
		PaginatesDto paginateInfo = paginatesServiceImpl.GetInfoPaginates(totalData, totalProductsPage, Integer.parseInt(currentPage));
		_mvShare.addObject("paginateInfo", paginateInfo);
		_mvShare.addObject("productsPaginate", categoryServiceImpl.GetAllDataProductsPaginate(paginateInfo.getStart(), totalProductsPage));
		
		return _mvShare;
	}
	
	
}
