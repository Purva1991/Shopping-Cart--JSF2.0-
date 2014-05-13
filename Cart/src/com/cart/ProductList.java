package com.cart;


import javax.faces.bean.ManagedBean;
import javax.faces.bean.SessionScoped;

@ManagedBean
@SessionScoped
public class ProductList {
	protected String name,description,img;
	protected int price,qty,product_id,ct_qty,total;
public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	

public int getCt_qty() {
		return ct_qty;
	}
	public void setCt_qty(int ct_qty) {
		this.ct_qty = ct_qty;
	}
public int getQty() {
		return qty;
	}
	public void setQty(int qty) {
		this.qty = qty;
	}
public int getProduct_id() {
		return product_id;
	}
	public void setProduct_id(int product_id) {
		this.product_id = product_id;
	}
	

public String getImg() {
		return img;
	}
	public void setImg(String img) {
		this.img = img;
	}
	
	
public int getTotal() {
		return total;
	}
	public void setTotal(int total) {
		this.total = total;
	}
public ProductList(int product_id,String name,String desc,String img,int price,int available_qty,int cart_qty,int total){
	this.name=name;
	this.description=desc;
	this.img=img;
	this.price=price;
	this.qty=available_qty;
	this.product_id=product_id;
	this.ct_qty=cart_qty;
	this.total=total;
}
}
