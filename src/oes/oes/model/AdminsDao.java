package oes.model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import oes.db.Admins;
import oes.db.Provider;

public class AdminsDao {

	public static boolean doValidate(Admins ad) {
		// TODO Auto-generated method stub
		boolean status = false;
		try
		{
		
		Connection con = Provider.getOracleConnection();
		String sql = "select * from admintable where userid=? and password=?";
		PreparedStatement pst = con.prepareStatement(sql);
		pst.setString(1, ad.getUsername());
		pst.setString(2, ad.getPassword());
		ResultSet rs = pst.executeQuery();
                System.out.println(ad.getUsername()+" "+ad.getPassword()+" "+rs);
		if(rs.next())
		{
			status = true;
		}
		else
		{
			status = false;
		}
		
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return status;
	}

}
