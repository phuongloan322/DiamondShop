package DiamondShop.Service.User;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import DiamondShop.Dao.CategorysDao;
import DiamondShop.Dao.MenusDao;
import DiamondShop.Dao.ProductsDao;
import DiamondShop.Dao.SlidesDao;
import DiamondShop.Dto.ProductsDto;
import DiamondShop.Entity.Categorys;
import DiamondShop.Entity.Menus;
import DiamondShop.Entity.Slides;

@Service
public class HomeServiceImpl implements IHomeService {
	@Autowired
	private SlidesDao slidesDao;
	@Autowired
	private CategorysDao categorysDao;
	@Autowired
	private MenusDao menusDao;
	@Autowired
	private ProductsDao productsDao;
	
	public List<Slides> GetDataSlide() {
		return slidesDao.GetDataSlide();
	}

	public List<Categorys> GetDataCategory() {

		return categorysDao.GetDataCategory();
	}

	public List<Menus> GetDataMenu() {
		return menusDao.GetDataMenu();
	}

	public List<ProductsDto> GetDataHighlightProduct() {
		List<ProductsDto> listProducts =  productsDao.GetDataHighlightProduct();
		return listProducts;
	}
	public List<ProductsDto> GetDataNewProduct() {
		List<ProductsDto> listProducts =  productsDao.GetDataNewProduct();
		return listProducts;
	}

	public List<ProductsDto> GetDataProducts() {
		List<ProductsDto> listProducts =  productsDao.GetDataProducts();
		return listProducts;
		
	}


	
}
