package DiamondShop.Service.User;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import DiamondShop.Dao.ProductsDao;
import DiamondShop.Dto.ProductsDto;
@Service
public class ProductServiceImpl implements IProductService {
	
	@Autowired
	private ProductsDao productsDao;
	
	public ProductsDto GetProductByID(long id) {
		List<ProductsDto> list =  productsDao.GetProductByID(id);
		return list.get(0);
	}

	public List<ProductsDto> GetProductByIDCategory(int id) {
		List<ProductsDto> list = productsDao.GetAllProductByID(id);
		return list;
	}

	public List<ProductsDto> GetProductSearch(String search) {
		List<ProductsDto> list = productsDao.GetAllProductSearch(search);
		return list;
	}

}
