package DiamondShop.Service.User;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import DiamondShop.Dto.ProductsDto;
import DiamondShop.Entity.Categorys;
import DiamondShop.Entity.Menus;
import DiamondShop.Entity.Slides;
@Service
public interface IHomeService {
		@Autowired
		public List<Slides> GetDataSlide();
		public List<Categorys> GetDataCategory();
		public List<Menus> GetDataMenu();
		public List<ProductsDto> GetDataHighlightProduct();
		public List<ProductsDto> GetDataNewProduct();
		public List<ProductsDto> GetDataProducts();
}
