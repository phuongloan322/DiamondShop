package DiamondShop.Entity;

public class Orders {
	private long id;
	private int id_color;
	private long id_product;
	private String status;
	public Orders() {
		super();
	}
	public long getId() {
		return id;
	}
	public void setId(long id) {
		this.id = id;
	}
	public int getId_color() {
		return id_color;
	}
	public void setId_color(int id_color) {
		this.id_color = id_color;
	}
	public long getId_product() {
		return id_product;
	}
	public void setId_product(long id_product) {
		this.id_product = id_product;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	
	
}
