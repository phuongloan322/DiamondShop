package DiamondShop.Service.User;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import DiamondShop.Dao.ProductsDao;
import DiamondShop.Dto.ProductsDto;
@Service
public class CategoryServiceImpl implements ICategoryService {
	@Autowired
	private ProductsDao productsDao;
	
	public List<ProductsDto> GetAllProductsByID(int id) {
		return productsDao.GetAllProductByID(id);
	}

	public List<ProductsDto> GetDataProductsPaginate(int id, int start, int totalPage) {
		
		return productsDao.GetDataProductPaginates(id, start, totalPage);
	}

	public List<ProductsDto> GetAllDataProductsPaginate(int start, int totalPage) {
		return productsDao.GetAllDataProductPaginates(start, totalPage);
	}
}
