package DiamondShop.Service.User;

import java.util.List;

import org.springframework.stereotype.Service;

import DiamondShop.Dto.PaginatesDto;
import DiamondShop.Dto.ProductsDto;

@Service
public interface IProductService {
	public ProductsDto GetProductByID(long id);
	public List<ProductsDto> GetProductByIDCategory(int id);
	public List<ProductsDto> GetProductSearch(String search);
}
