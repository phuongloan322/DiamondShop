package DiamondShop.Dao;

import java.util.ArrayList;
import java.util.List;

import org.springframework.jdbc.core.ResultSetExtractor;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

import DiamondShop.Dto.ProductsDto;
import DiamondShop.Dto.ProductsDtoMapper;
import DiamondShop.Entity.Categorys;
import DiamondShop.Entity.MapperCategorys;

@Repository
public class ProductsDao extends BaseDao {

	private final boolean YES = true;
	private final boolean NO = false;
	private StringBuffer sqlString() {
		StringBuffer sql = new StringBuffer();

		sql.append("SELECT ");
		sql.append("p.id as \"id_product\", ");
		sql.append("p.id_category, ");
		sql.append("p.size, ");
		sql.append("p.name, ");
		sql.append("p.price, ");
		sql.append("p.sale, ");
		sql.append("p.title, ");
		sql.append("p.highlight, ");
		sql.append("p.new_product, ");
		sql.append("p.detail, ");
		sql.append("p.created_at, ");
		sql.append("p.updated_at, ");
		sql.append("c.id as \"id_color\", ");
		sql.append("c.name as \"name_color\", ");
		sql.append("c.code as \"code_color\", ");
		sql.append("c.img, ");
		sql.append("c.type ");
		sql.append("FROM products as p INNER JOIN color as c ON p.id = c.id_product ");
		
		return sql;
	}
//sp noi bat, sp moi	
	private String sqlProduct(boolean newProduct, boolean hightLight) {
		StringBuffer sql = sqlString();
		sql.append("WHERE 1 = 1 ");
		if(hightLight) {
			sql.append("AND p.highlight = 1 ");
		}
		if(newProduct) {
			sql.append("AND p.new_product = 1 ");
		}
		
		sql.append("ORDER BY RAND() ");
		
		if(hightLight) {
			sql.append("LIMIT 9 ");
		}
		if(newProduct) {
			sql.append("LIMIT 12 ");
		}
		
		return sql.toString();
	}
//tat ca san pham
	public List<ProductsDto> GetDataProducts() {
		String sql = sqlString().toString();
		List<ProductsDto> list = new ArrayList<ProductsDto>();
		list =  _jdbcTemplate.query(sql, new ProductsDtoMapper());
		return list;
	}

//san pham noi bat	
	public List<ProductsDto> GetDataHighlightProduct() {
		String sql = sqlProduct(NO, YES);
		List<ProductsDto> list = new ArrayList<ProductsDto>();
		list =  _jdbcTemplate.query(sql, new ProductsDtoMapper());
		return list;
	}
//san pham moi	
	public List<ProductsDto> GetDataNewProduct() {
		String sql = sqlProduct(YES, NO);
		List<ProductsDto> list = new ArrayList<ProductsDto>();
		list =  _jdbcTemplate.query(sql, new ProductsDtoMapper());
		return list;
	}
//san pham theo muc	
	private StringBuffer sqlProductsByID(int id) {
		StringBuffer sql = sqlString();
		sql.append("WHERE 1 = 1 ");
		sql.append("AND id_category = " + id );
		return sql;
	}
	public List<ProductsDto> GetAllProductByID(int id) {
		String sql = sqlProductsByID(id).toString();
		List<ProductsDto> list = _jdbcTemplate.query(sql, new ProductsDtoMapper());
		return list;
	}
	
//san pham theo so luong	
	private String sqlProductPaginates(int id, int start, int totalPage) {
		StringBuffer sql = sqlProductsByID(id);
		sql.append(" LIMIT " + start + " , " + totalPage );
		return sql.toString();
	}
	public List<ProductsDto> GetDataProductPaginates(int id, int start, int totalPage) {
		StringBuffer sqlGetDataByID = sqlProductsByID(id);
		List<ProductsDto> listProductsByID = _jdbcTemplate.query(sqlGetDataByID.toString(), new ProductsDtoMapper());
		List<ProductsDto> list = new ArrayList<ProductsDto>();
		
		if(listProductsByID.size() > 0) {
			String sql = sqlProductPaginates(id, start, totalPage);
			list = _jdbcTemplate.query(sql, new ProductsDtoMapper());
		}
		return list;
	}
	
//tat ca san pham theo so luong	
		private String sqlAllProductPaginates(int start, int totalPage) {
			StringBuffer sql = sqlString();
			sql.append(" LIMIT " + start + " , " + totalPage );
			return sql.toString();
		}
		public List<ProductsDto> GetAllDataProductPaginates( int start, int totalPage) {
				StringBuffer sqlGetData = sqlString();
				List<ProductsDto> listProducts = _jdbcTemplate.query(sqlGetData.toString(), new ProductsDtoMapper());
				List<ProductsDto> list = new ArrayList<ProductsDto>();
				
				if(listProducts.size() > 0) {
					String sql = sqlAllProductPaginates(start, totalPage);
					list = _jdbcTemplate.query(sql, new ProductsDtoMapper());
				}
				return list;
			}
			
				
	
//detail product	
	private String sqlProductByID(long id) {
		StringBuffer sql = sqlString();
		sql.append("WHERE p.id = " + id );
		sql.append(" LIMIT 1 ");
		return sql.toString();
	}
	public List<ProductsDto> GetProductByID(long id) {
		String sql = sqlProductByID(id);
		List<ProductsDto> list = _jdbcTemplate.query(sql, new ProductsDtoMapper());
		return list;
	}
	
//lay 1 san pham theo id
	public ProductsDto FindProductByID(long id) {
		String sql = sqlProductByID(id);
		ProductsDto product = _jdbcTemplate.queryForObject(sql, new ProductsDtoMapper());
		return product;
	}


//san pham tìm kiếm
	private StringBuffer sqlProductsSearch(String search) {
		StringBuffer sql = sqlString();
		sql.append("WHERE name like CONCAT('%','"+ search +"','%')" );
		return sql;
	}
	public List<ProductsDto> GetAllProductSearch(String search) {
		String sql = sqlProductsSearch(search).toString();
		List<ProductsDto> list = _jdbcTemplate.query(sql, new ProductsDtoMapper());
		return list;
	}
	
	
}