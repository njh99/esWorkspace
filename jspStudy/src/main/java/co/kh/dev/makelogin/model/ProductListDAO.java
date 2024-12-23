package co.kh.dev.makelogin.model;

import java.util.ArrayList;

public class ProductListDAO {

	private ArrayList<ProductVO> prolist = new ArrayList<ProductVO>();
	private static ProductListDAO instance = new ProductListDAO();
	
	
	public static ProductListDAO getInstance() {
		return instance;
	}
	
	public void addProduct(ProductVO product) {
		prolist.add(product);
	}

	public ProductListDAO() {
		ProductVO chelsea = new ProductVO("첼시 홈 유니폼",123000,"nike","XS/S/M/L/XL/XXL",352,"다운로드10.jpg");
		ProductVO totham = new ProductVO("토트넘 홈 유니폼",140000,"nike","XS/S/M/L/XL/XXL",561,"다운로드2.jpg");
		ProductVO atm = new ProductVO("ATM 홈 유니폼",119000,"nike","XS/S/M/L/XL/XXL",151,"다운로드11.jpg");
		ProductVO realm = new ProductVO("레알 홈 유니폼",139000,"adidas","XS/S/M/L/XL/XXL",751,"다운로드1.jpg");
		ProductVO barcelona = new ProductVO("바르샤 홈 유니폼",149000,"nike","XS/S/M/L/XL/XXL",151,"다운로드14.jpg");
		ProductVO bayern = new ProductVO("바이언 어웨이 유니폼",141000,"adidas","XS/S/M/L/XL/XXL",151,"다운로드9.jpg");
		ProductVO acmilan = new ProductVO("AC밀란 홈 유니폼",136000,"puma","XS/S/M/L/XL/XXL",151,"다운로드8.jpg");
		ProductVO mancity = new ProductVO("맨시티 홈 유니폼",159000,"puma","XS/S/M/L/XL/XXL",151,"다운로드7.jpg");
		ProductVO arsenal = new ProductVO("아스날 어웨이 유니폼",167000,"adidas","XS/S/M/L/XL/XXL",151,"다운로드5.jpg");
		ProductVO manu = new ProductVO("맨유 어웨이 유니폼",178000,"adidas","XS/S/M/L/XL/XXL",151,"다운로드6.jpg");
		ProductVO dormun = new ProductVO("도르트문트 홈 유니폼",178000,"puma","XS/S/M/L/XL/XXL",151,"다운로드13.jpg");
		ProductVO inter = new ProductVO("인테르 홈 유니폼",178000,"nike","XS/S/M/L/XL/XXL",151,"다운로드12.jpg");
		
		prolist.add(chelsea);
		prolist.add(totham);
		prolist.add(atm);
		prolist.add(realm);
		prolist.add(barcelona);
		prolist.add(bayern);
		prolist.add(acmilan);
		prolist.add(mancity);
		prolist.add(arsenal);
		prolist.add(inter);
		prolist.add(manu);
		prolist.add(dormun);
	}

	public ArrayList<ProductVO> getAllProduct() {
		return prolist;
	}
	
	public ProductVO getProductbyName(String name) {
		ProductVO productName = null;
		
		for(int i = 0;i<prolist.size();i++) {
			ProductVO product = prolist.get(i);
			if(product != null && product.getName() != null && product.getName().equals(name)) {
				productName =product;
			}
		}
		
		return productName;
		
	}
	
	
}
