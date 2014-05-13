package com.cart;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import javax.faces.bean.ManagedBean;
import javax.faces.bean.SessionScoped;
import javax.naming.NamingException;

@ManagedBean
@SessionScoped
public class Checkout {
	private String savedAddress1, savedAddress2, savedState, savedMobile,
			savedFirstName, savedLastName;
	private String userAddress, address1, address2, state, postalCode,
			cardNumber;
	private int savedPostalCode, user_id, expiryMonth, expiryYear, cvv,finalTotal;
	private boolean addressValue;
	private List<ProductList> l2 = new ArrayList<ProductList>();
	Connection conn;
	Login x = new Login();

	public String getAddress() throws SQLException, ClassNotFoundException,
			NamingException {

		conn = x.getDBConnection();
		Statement st = conn.createStatement();
		ResultSet rs1 = st.executeQuery("select * from tbl_users where user_id ='"+user_id+"'");
		
		while (rs1.next()) {
			savedAddress1 = rs1.getString(6);
			savedAddress2 = rs1.getString(7);
			savedState = rs1.getString(8);
			savedPostalCode = rs1.getInt(9);
			savedMobile = rs1.getString(10);
			savedFirstName = rs1.getString(11);
     		savedLastName = rs1.getString(12);
     		/*if(savedAddress2 != null && !(savedAddress2.isEmpty()))
			userAddress = savedFirstName +" "+savedLastName + ",\n" +savedAddress1+ "\n" + savedAddress2 + "\n"
					+ savedState + " " + savedPostalCode;
     		else
     			userAddress = savedFirstName +" "+savedLastName + "<br>" +savedAddress1 + "\n"
    					+ savedState + " " + savedPostalCode;*/
     			

		}
 return "checkout";
	}

	public String getSavedAddress2() {
		return savedAddress2;
	}

	public void setSavedAddress2(String savedAddress2) {
		this.savedAddress2 = savedAddress2;
	}

	public String getUserAddress() {
		return userAddress;
	}

	public void setUserAddress(String userAddress) {
		this.userAddress = userAddress;
	}

	public String getSavedAddress1() {
		return savedAddress1;
	}

	public void setSavedAddress1(String savedAddress1) {
		this.savedAddress1 = savedAddress1;
	}

	public String getSavedState() {
		return savedState;
	}

	public void setSavedState(String savedState) {
		this.savedState = savedState;
	}

	public String getSavedMobile() {
		return savedMobile;
	}

	public void setSavedMobile(String savedMobile) {
		this.savedMobile = savedMobile;
	}

	public int getSavedPostalCode() {
		return savedPostalCode;
	}

	public void setSavedPostalCode(int savedPostalCode) {
		this.savedPostalCode = savedPostalCode;
	}

	public int getUser_id() {
		return user_id;
	}

	public void setUser_id(int user_id) {
		this.user_id = user_id;
	}

	public String getSavedFirstName() {
		return savedFirstName;
	}

	public void setSavedFirstName(String savedFirstName) {
		this.savedFirstName = savedFirstName;
	}

	public String getSavedLastName() {
		return savedLastName;
	}

	public void setSavedLastName(String savedLastName) {
		this.savedLastName = savedLastName;
	}

	public String getAddress1() {
		return address1;
	}

	public void setAddress1(String address1) {
		this.address1 = address1;
	}

	public String getAddress2() {
		return address2;
	}

	public void setAddress2(String address2) {
		this.address2 = address2;
	}

	public String getState() {
		return state;
	}

	public void setState(String state) {
		this.state = state;
	}

	public String getPostalCode() {
		return postalCode;
	}

	public void setPostalCode(String postalCode) {
		this.postalCode = postalCode;
	}

public String getCardNumber() {
		return cardNumber;
	}

	public void setCardNumber(String cardNumber) {
		this.cardNumber = cardNumber;
	}

	public int getExpiryMonth() {
		return expiryMonth;
	}

	public void setExpiryMonth(int expiryMonth) {
		this.expiryMonth = expiryMonth;
	}

	public int getExpiryYear() {
		return expiryYear;
	}

	public void setExpiryYear(int expiryYear) {
		this.expiryYear = expiryYear;
	}

	public int getCvv() {
		return cvv;
	}

	public void setCvv(int cvv) {
		this.cvv = cvv;
	}

	public boolean isAddressValue() {
		return addressValue;
	}

	public void setAddressValue(boolean addressValue) {
		this.addressValue = addressValue;
	}
	

	public int getFinalTotal() {
		return finalTotal;
	}

	public void setFinalTotal(int finalTotal) {
		this.finalTotal = finalTotal;
	}

	public List<ProductList> getL2() {
		return l2;
	}

	public void setL2(List<ProductList> l2) {
		this.l2 = l2;
	}

	public String doCheckout() throws ClassNotFoundException, SQLException,
			NamingException {
		conn = x.getDBConnection();
		Statement st = conn.createStatement();
		if(l2.size()>0){
		if (addressValue) {
			
			st.execute("insert into tbl_order values(order_seq.nextval,sysdate,'"
							+ savedFirstName + "','" + savedLastName + "','"+savedAddress1+"','"
							+savedAddress2+"','"+savedMobile+"','"+savedState+"','"+savedPostalCode+"','"+user_id+"')");
			
		}
		else{
			st.execute("insert into tbl_order values(order_seq.nextval,sysdate,'"
					+ savedFirstName + "','" + savedLastName + "','"+address1+"','"
					+address2+"','"+savedMobile+"','"+state+"','"+postalCode+"','"+user_id+"')");
		}
		for(ProductList o:l2){
			st.execute("insert into tbl_order_item values(order_seq.currval,'"
					+ o.product_id + "','" + o.ct_qty + "','"+user_id+"')");
			}
			st.execute("delete from tbl_cart where user_id='"+user_id+"'");
	
 return "final";
	}

else 
	return null;

	}
}
