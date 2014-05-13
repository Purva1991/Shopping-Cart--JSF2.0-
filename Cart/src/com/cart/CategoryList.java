package com.cart;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.*;

import javax.faces.bean.ManagedBean;
import javax.faces.bean.SessionScoped;
import javax.naming.NamingException;

@ManagedBean
@SessionScoped
public class CategoryList {
	private Map<String, Integer> l1 = new HashMap<String, Integer>();
	private int categoryValue, ct_qty = 0;

	private List<ProductList> l2 = new ArrayList<ProductList>();
	private Map<Integer,Integer> ct_qtyMap = new HashMap<Integer,Integer>();
	
	Connection conn;

	Login x = new Login();

	public CategoryList() throws SQLException, ClassNotFoundException,
			NamingException {
		
		conn = x.getDBConnection();
		Statement st = conn.createStatement();
		ResultSet rs = st.executeQuery("select * from tbl_category");
		while (rs.next()) {
			// System.out.println(rs.getString(1));
			l1.put(rs.getString(2), rs.getInt(1));
		}

	}

	public int getCategoryValue() {
		return categoryValue;
	}

	public void setCategoryValue(int mapValue) {
		this.categoryValue = mapValue;
	}

	public int getCt_qty() {
		return ct_qty;
	}

	public void setCt_qty(int ct_qty) {
		this.ct_qty = ct_qty;
	}

	public Map<String, Integer> getL1() {
		return l1;
	}

	public void setL1(Map<String, Integer> l1) {
		this.l1 = l1;
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

	public String addItem(ProductList o) {
		if (o.qty > o.ct_qty) {
			// Available>required
			if(ct_qtyMap.containsKey(o.product_id))
			ct_qtyMap.put(o.product_id, ct_qtyMap.get(o.product_id)+1);
			else
			ct_qtyMap.put(o.product_id,++o.ct_qty);
		}
		return null;
	}

	public String removeItem(ProductList o) {
		if (o.ct_qty > 0)
			ct_qtyMap.put(o.product_id, ct_qtyMap.get(o.product_id)-1);
				
		return null;

	}

	public List<ProductList> getProducts() throws SQLException,
			ClassNotFoundException, NamingException {
		l2.clear();
		conn = x.getDBConnection();
		Statement st1 = conn.createStatement();
		ResultSet rs1 = st1
				.executeQuery("select * from tbl_product where cat_id='"
						+ categoryValue + "'");
		
			while (rs1.next()) {
				if (ct_qtyMap.containsKey(rs1.getInt(1))){
					l2.add(new ProductList(rs1.getInt(1), rs1.getString(3), rs1
							.getString(4),rs1.getString(7), rs1.getInt(5), rs1.getInt(6), ct_qtyMap
							.get(rs1.getInt(1)),0));
				}
				else
					l2.add(new ProductList(rs1.getInt(1), rs1.getString(3), rs1
					.getString(4),rs1.getString(7),rs1.getInt(5), rs1.getInt(6),ct_qty,0));

		
		}
		return l2;
	}
	
}
