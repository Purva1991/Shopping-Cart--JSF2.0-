package com.cart;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import javax.annotation.Resource;
import javax.faces.bean.ManagedBean;
import javax.faces.bean.SessionScoped;
import javax.faces.context.FacesContext;
import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.servlet.http.HttpSession;
import javax.sql.DataSource;

@ManagedBean
@SessionScoped
public class Login {
	private int user_id, postalCode, mobile;
	private String username, password,lastName,firstName,address1, address2, state;

	// private DataSource datasource;


	public String getLastName() {
		return lastName;
	}

	public void setLastName(String lastName) {
		this.lastName = lastName;
	}

	public String getFirstName() {
		return firstName;
	}

	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}
	public int getPostalCode() {
		return postalCode;
	}

	public void setPostalCode(int postalCode) {
		this.postalCode = postalCode;
	}

	public int getMobile() {
		return mobile;
	}

	public void setMobile(int mobile) {
		this.mobile = mobile;
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

	// @Resource(name="jdbc/purva")
	public Connection conn = null;

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public int getUser_id() {
		return user_id;
	}

	public void setUser_id(int user_id) {
		this.user_id = user_id;
	}

	public Connection getDBConnection() throws SQLException,
			ClassNotFoundException, NamingException {
		/*
		 * InitialContext ic = new InitialContext(); datasource = (DataSource)
		 * ic.lookup("java:comp/env/jdbc/purva");
		 * conn=datasource.getConnection();
		 */
		Class.forName("oracle.jdbc.driver.OracleDriver");
		conn = DriverManager.getConnection(
				"jdbc:oracle:thin:@//192.168.1.126:1521/orcl", "oracle",
				"oracle");

		return conn;

	}

	public String doLogin() throws SQLException, ClassNotFoundException,
			NamingException {
		int flag = 0;
		conn = getDBConnection();
		Statement st = conn.createStatement();
		try {

			ResultSet rs = st
					.executeQuery("select * from tbl_users where name = '"
							+ username + "'");
			while (rs.next()) {
				System.out.println(rs.getString(1));
				if (rs.getString(1).equals(this.getUsername())
						&& rs.getString(2).equals(this.getPassword())) {
					this.user_id = rs.getInt(3);

					flag = 1;
					break;
				}
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}

		if (flag == 0) {
			return ("failure");

		} else {

			st.executeUpdate("update tbl_users set user_last_login=sysdate where uid='"
					+ this.user_id + "'");
			FacesContext.getCurrentInstance().getExternalContext()
					.getSessionMap().put("username", username);
			return ("success");
		}
	}

	public String doSignUp() throws SQLException, ClassNotFoundException,
			NamingException {
		int flag1 = 0;
		Statement st = null;
		conn = getDBConnection();
		st = conn.createStatement();
		ResultSet rs = st.executeQuery("select * from tbl_users");
		while (rs.next()) {
			if (rs.getString("name").equals(username)) {
				flag1 = 1;
				break;
			}
		}
		if (flag1 == 1) {
			return ("signUpFailure");

		} else {
			st.execute("insert into tbl_users values ('" + this.getUsername() + "','" + this.getPassword()+ "',users_seq.nextval,sysdate,sysdate,'"+address1+"','"+address2+"','"+state+"','"+postalCode+"','"+mobile+"','"+firstName+"','"+lastName+"')");
			return ("signUpSuccess");

		}

	}

	public String logout() throws IOException {
		FacesContext facesContext = FacesContext.getCurrentInstance();
		HttpSession httpSession = (HttpSession) facesContext
				.getExternalContext().getSession(false);
		httpSession.invalidate();
		return "index";
	}
}
