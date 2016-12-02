package mystique.CartModel;

import java.io.Serializable;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;


@Entity
public class Cart implements Serializable
{
    @Id @GeneratedValue(strategy=GenerationType.AUTO)
	private int ID;
	private String Name;
	private String Qty;
	private String Price;
	private String Address;
	private String BillingAddress;
	private String ProductID;
	private String UserName;
	private String ModeofPayment;
	
	
	
	public int getID() {
		return ID;
	}
	public void setID(int iD) {
		ID = iD;
	}
	public String getName() {
		return Name;
	}
	public void setName(String name) {
		Name = name;
	}
	public String getQty() {
		return Qty;
	}
	public void setQty(String qty) {
		Qty = qty;
	}
	public String getPrice() {
		return Price;
	}
	public void setPrice(String price) {
		Price = price;
	}
	public String getAddress() {
		return Address;
	}
	public void setAddress(String address) {
		Address = address;
	}
	public String getBillingAddress() {
		return BillingAddress;
	}
	public void setBillingAddress(String billingAddress) {
		BillingAddress = billingAddress;
	}
	public String getProductID() {
		return ProductID;
	}
	public void setProductID(String productID) {
		ProductID = productID;
	}
	public String getUserName() {
		return UserName;
	}
	public void setUserName(String userName) {
		UserName = userName;
	}
	public String getModeofPayment() {
		return ModeofPayment;
	}
	public void setModeofPayment(String modeofPayment) {
		ModeofPayment = modeofPayment;
	}
	
	
	
	
	
	
	
	
	
}
