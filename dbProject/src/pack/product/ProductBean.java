package pack.product;

public class ProductBean {
	
	private int stock, Mnum, Inumber, P_ID, Cnum, price;
	private String IDate, IName, Importer, Producer, Origin, City;
	
	public String getCity() {
		return City;
	}
	public void setCity(String city) {
		City = city;
	}
	public String getIDate() {
		return IDate;
	}
	public void setIDate(String iDate) {
		IDate = iDate;
	}
	public int getStock() {
		return stock;
	}
	public void setStock(int stock) {
		this.stock = stock;
	}
	public int getMnum() {
		return Mnum;
	}
	public void setMnum(int mnum) {
		Mnum = mnum;
	}
	public int getInumber() {
		return Inumber;
	}
	public void setInumber(int inumber) {
		Inumber = inumber;
	}
	public int getP_ID() {
		return P_ID;
	}
	public void setP_ID(int p_ID) {
		P_ID = p_ID;
	}
	public int getCnum() {
		return Cnum;
	}
	public void setCnum(int cnum) {
		Cnum = cnum;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	public String getIName() {
		return IName;
	}
	public void setIName(String iName) {
		IName = iName;
	}
	public String getImporter() {
		return Importer;
	}
	public void setImporter(String importer) {
		Importer = importer;
	}
	public String getProducer() {
		return Producer;
	}
	public void setProducer(String producer) {
		Producer = producer;
	}
	public String getOrigin() {
		return Origin;
	}
	public void setOrigin(String origin) {
		Origin = origin;
	}
	
	
}
