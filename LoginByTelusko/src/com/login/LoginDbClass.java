package com.login;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class LoginDbClass
{
	String query = "select * from login where username=? and password=?";
	public boolean check(String username,String password) throws Exception
	{
		Class.forName("oracle.jdbc.driver.OracleDriver");
		Connection con  = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","vijay","vijay");
		PreparedStatement st = con.prepareStatement(query);
		st.setString(1, username);
		st.setString(2,password);
		ResultSet rs = st.executeQuery();
		if(rs.next())
			return true;
		else
			return false;
				
	}

}
