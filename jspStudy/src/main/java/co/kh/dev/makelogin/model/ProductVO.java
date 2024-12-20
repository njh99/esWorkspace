package co.kh.dev.makelogin.model;

public class ProductVO {
	private String name;
	private int price;
	private String company;
	private String size;
	private int stock;
	private String filename;
	
	public String getFilename() {
		return filename;
	}




	public void setFilename(String filename) {
		this.filename = filename;
	}




	public ProductVO(String name, int price, String company, String size, int stock, String filename) {
		super();
		this.name = name;
		this.price = price;
		this.company = company;
		this.size = size;
		this.stock = stock;
		this.filename = filename;
	}




	public ProductVO(String name, int price, String company, String size, int stock) {
		super();
		this.name = name;
		this.price = price;
		this.company = company;
		this.size = size;
		this.stock = stock;
	}
	
	
	
	
	public ProductVO(String name, int price, String company) {
		super();
		this.name = name;
		this.price = price;
		this.company = company;
	}




	public ProductVO() {
		super();
	}
	
	
	public String getName() {
		return name;
	}




	public void setName(String name) {
		this.name = name;
	}




	public int getPrice() {
		return price;
	}




	public void setPrice(int price) {
		this.price = price;
	}




	public String getCompany() {
		return company;
	}




	public void setCompany(String company) {
		this.company = company;
	}




	public String getSize() {
		return size;
	}




	public void setSize(String size) {
		this.size = size;
	}




	public int getStock() {
		return stock;
	}




	public void setStock(int stock) {
		this.stock = stock;
	}




	@Override
	public String toString() {
		return "ProductVO [name=" + name + ", price=" + price + ", company=" + company + ", size=" + size + ", stock="
				+ stock + "]";
	}
	
}
