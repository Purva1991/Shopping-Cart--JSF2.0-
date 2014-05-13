package com.cart;

import java.sql.*;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.faces.bean.ManagedBean;
import javax.faces.bean.SessionScoped;
import javax.naming.NamingException;

@ManagedBean
@SessionScoped
public class Cart {
	private int user_id, product_id, ct_qty, available_qty, finalTotal;
	private List<ProductList> l2 = new ArrayList<ProductList>();
	private Map<Integer,Integer> ct_qtyMap = new HashMap<Integer,Integer>();
	Login x = new Login();
	public int getUser_id() {
		return user_id;
	}

	public void setUser_id(int user_id) {
		this.user_id = user_id;
	}

	public int getProduct_id() {
		return product_id;
	}

	public void setProduct_id(int product_id) {
		this.product_id = product_id;
	}

	public int getCt_qty() {
		return ct_qty;
	}

	public void setCt_qty(int ct_qty) {
		this.ct_qty = ct_qty;
	}

	public int getAvailable_qty() {
		return available_qty;
	}

	public void setAvailable_qty(int available_qty) {
		this.available_qty = available_qty;
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
	
	
	public Map<Integer, Integer> getCt_qtyMap() {
		return ct_qtyMap;
	}

	public void setCt_qtyMap(Map<Integer, Integer> ct_qtyMap) {
		this.ct_qtyMap = ct_qtyMap;
	}
 
	
	public String addToCart() throws ClassNotFoundException, SQLException,
			NamingException {

		int flag = 0;
		Connection conn = x.getDBConnection();
		Statement st = conn.createStatement();
		ResultSet rs;
		if(ct_qty !=0 && ct_qty <= available_qty){
		
			String sql = "Select pd_id,ct_id,ct_qty,user_id FROM tbl_cart WHERE user_id='"
					+ user_id + "' AND pd_id='" + product_id + "'";
			rs = st.executeQuery(sql);
			while (rs.next()) {

				
				int added_qty = ct_qty + rs.getInt(3);
					flag = 1;
				st.executeUpdate("UPDATE tbl_cart SET ct_qty='" + added_qty
						+ "' WHERE user_id='" + user_id + "' AND pd_id='"
						+ product_id + "'");
			
				}
			

			if (flag == 0)
				st.execute("INSERT INTO tbl_cart values(cart_seq.nextval,'"
						+ product_id + "','" + user_id + "','" + ct_qty
						+ "',sysdate,1)");

		
		available_qty =available_qty - ct_qty;
		st.executeUpdate("UPDATE tbl_product SET pd_qty='" + available_qty
				+ "' WHERE pd_id='" + product_id + "'");
		}
		return "success";
	}
	public String addItem(ProductList o) throws ClassNotFoundException, SQLException,
	NamingException{
		
		if (o.qty >= 1) { // then add 1 item
			Connection conn = x.getDBConnection();
			Statement st = conn.createStatement();
			// Available>required
			st.executeUpdate("UPDATE tbl_cart SET ct_qty='" + (++o.ct_qty)
					+ "' WHERE user_id='" + user_id + "' AND pd_id='"
					+ o.product_id + "'");
			o.qty =o.qty - 1;
			st.executeUpdate("UPDATE tbl_product SET pd_qty='" + o.qty
					+ "' WHERE pd_id='" + o.product_id + "'");
			o.total+=o.price;
			finalTotal+=o.price;
		}
		return null;
	}

	public String removeItem(ProductList o) throws ClassNotFoundException, SQLException,
	NamingException{
		Connection conn = x.getDBConnection();
		Statement st = conn.createStatement();
		if (o.ct_qty > 0){
			st.executeUpdate("UPDATE tbl_cart SET ct_qty='" + (--o.ct_qty)
					+ "' WHERE user_id='" + user_id + "' AND pd_id='"
					+ o.product_id + "'");
			o.qty =o.qty + 1;
			st.executeUpdate("UPDATE tbl_product SET pd_qty='" + o.qty
					+ "' WHERE pd_id='" + o.product_id + "'");
			o.total-=o.price;
			finalTotal-=o.price;
		}
		if(o.ct_qty==0){
			l2.remove(o);
			 st.executeQuery("DELETE FROM tbl_cart WHERE pd_id='"+o.product_id+"' AND user_id='"+user_id+"'");
			
		}
	
		return null;

	}
	public String displayCart() throws ClassNotFoundException, SQLException,
			NamingException {
		finalTotal=0;
		l2.clear();
		Connection conn = x.getDBConnection();
		Statement st = conn.createStatement();
		ResultSet rs;
		rs = st.executeQuery("Select tbl_product.pd_id,tbl_product.pd_name,tbl_product.pd_description,tbl_product.pd_img, tbl_product.pd_price,tbl_product.pd_qty,tbl_cart.ct_qty FROM tbl_product INNER JOIN tbl_cart ON tbl_product.pd_id=tbl_cart.pd_id WHERE tbl_cart.user_id='"
				+ user_id + "'");
		while (rs.next()) {
			l2.add(new ProductList(rs.getInt(1), rs.getString(2), rs
					.getString(3),rs.getString(4),rs.getInt(5), rs.getInt(6),rs.getInt(7),(rs.getInt(5)*rs.getInt(7))));
			finalTotal+=rs.getInt(5)*rs.getInt(7);
		}

		return "displayCart";
	}
	public String removeCart(ProductList item) throws ClassNotFoundException, SQLException, NamingException
	{
		
		Connection conn = x.getDBConnection();
		Statement st = conn.createStatement();
		 st.executeQuery("DELETE FROM tbl_cart WHERE pd_id='"+product_id+"' AND user_id='"+user_id+"'");
		 ResultSet rs=st.executeQuery("Select pd_qty from tbl_product where pd_id='"+product_id+"'");
		 while(rs.next()){
			 
		 st.executeUpdate("Update tbl_product set pd_qty='"+(rs.getInt(1)+item.ct_qty)+"' WHERE pd_id='"+product_id+"'");
		 }
		 l2.remove(item);
		 finalTotal-=item.total;
		 return null;
	}
	
}