
package com.deo;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.bean.Customerbean;
import com.connection.ConnectionManager;

public class Customerdeo
{
	static Connection currentCon = null;

	// ****************INSERT******************************
	public static int save(Customerbean bean) {
		int status = 0;
		PreparedStatement ps = null;

		String custname = bean.getCustname();
		String custemail = bean.getCustemail();
		String custpassword = bean.getCustpassword();
		String custaddress = bean.getCustaddress();
		String custcity = bean.getCustcity();
		String custstate = bean.getCuststate();
		String custmobileno = bean.getCustmobileno();

		try 
		{
			currentCon = ConnectionManager.getConnection();
			ps = currentCon.prepareStatement("insert into customer(name,email,password,address,city,state,mobileno) values(?,?,?,?,?,?,?)");
			ps.setString(1, custname);
			ps.setString(2, custemail);
			ps.setString(3, custpassword);
			ps.setString(4, custaddress);
			ps.setString(5, custcity);
			ps.setString(6, custstate);
			ps.setString(7, custmobileno);

			status = ps.executeUpdate();
		} 
		catch (Exception e) 
		{
			System.out.println("Insertion failed : An exception has occured! " + e);
		} 
		finally 
		{
			if (ps != null) 
			{
				try {
					ps.close();
				} catch (Exception e2) {
					e2.printStackTrace();
				}
				ps = null;
			}
			if (currentCon != null) 
			{
				try {
					currentCon.close();
				} catch (Exception e2) {
					e2.printStackTrace();
				}
				currentCon = null;
			}
		}
		return status;
	}

	// ***********************UPDATE***************************
	public static int update(Customerbean bean) 
	{
		int status = 0;
		PreparedStatement ps = null;

		int custid = bean.getCustid();
		String custname = bean.getCustname();
		String custemail = bean.getCustemail();
		String custpassword = bean.getCustpassword();
		String custaddress = bean.getCustaddress();
		String custcity = bean.getCustcity();
		String custstate = bean.getCuststate();
		String custmobileno = bean.getCustmobileno();
		try {
			currentCon = ConnectionManager.getConnection();
			ps = currentCon.prepareStatement("update customer set name=?,email=?,password=?,address=?,city=?,state=?,mobileno=? where id=?");
			ps.setString(1, custname);
			ps.setString(2, custemail);
			ps.setString(3, custpassword);
			ps.setString(4, custaddress);
			ps.setString(5, custcity);
			ps.setString(6, custstate);
			ps.setString(7, custmobileno);
			ps.setInt(8, custid);

			status = ps.executeUpdate();
		} 
		catch (Exception e) 
		{
			System.out.println("Insertion failed : An exception has occured! " + e);
		} 
		finally 
		{
			if (ps != null) 
			{
				try {
					ps.close();
				} catch (Exception e2) {
					e2.printStackTrace();
				}
				ps = null;
			}
			if (currentCon != null) 
			{
				try {
					currentCon.close();
				} catch (Exception e2) {
					e2.printStackTrace();
				}
				currentCon = null;
			}
		}
		return status;
	}

	// *******************DELETE***********************
	public static int delete(Customerbean bean) {
		int status = 0;
		PreparedStatement ps = null;
		int custid = bean.getCustid();
		try {
			currentCon = ConnectionManager.getConnection();
			ps = currentCon.prepareStatement("Delete from customer where id=?");
			ps.setInt(1, custid);

			status = ps.executeUpdate();
		} 
		catch (Exception e) 
		{
			System.out.println("Insertion failed : An exception has occured! " + e);
		} 
		finally 
		{
			if (ps != null) 
			{
				try {
					ps.close();
				} catch (Exception e2) {
					e2.printStackTrace();
				}
				ps = null;
			}
			if (currentCon != null)
			{
				try {
					currentCon.close();
				} catch (Exception e2) {
					e2.printStackTrace();
				}
				currentCon = null;
			}
		}
		return status;
	}
	
	//**************GET ALL RECORD******************//
	public static List<Customerbean> getAllRecords() {
		List<Customerbean> list = new ArrayList<>();
		int status = 0;

		try 
		{
			currentCon = ConnectionManager.getConnection();
			PreparedStatement ps = currentCon.prepareStatement("SELECT * from customer");
			ResultSet rs = ps.executeQuery();

			while (rs.next()) {
				Customerbean custbean = new Customerbean();
				custbean.setCustid(rs.getInt("id"));
				custbean.setCustname(rs.getString("name"));
				custbean.setCustemail(rs.getString("email"));
				custbean.setCustpassword(rs.getString("password"));
				custbean.setCustaddress(rs.getString("address"));
		        custbean.setCuststate(rs.getString("state"));
				custbean.setCustmobileno(rs.getString("mobile"));
				
				list.add(custbean);
			}

		} catch (Exception e) {
			e.printStackTrace();
		}
		return list;
	}

	//********GET SINGLE RECORD***************//
	public static Customerbean getRecordById(int custid) {
		Customerbean custbean = null;
		//System.out.println("***"+custid);
		try {
			currentCon = ConnectionManager.getConnection();
			PreparedStatement pstmt = currentCon.prepareStatement("SELECT * from customer where id=?");
			pstmt.setInt(1, custid);
			ResultSet rs = pstmt.executeQuery();
			while (rs.next()) {
				custbean = new Customerbean();
				custbean.setCustid(rs.getInt("id"));
				custbean.setCustname(rs.getString("name"));
				custbean.setCustemail(rs.getString("email"));
				custbean.setCustpassword(rs.getString("password"));
				custbean.setCustaddress(rs.getString("address"));
				/* custbean.setCustcity(rs.getString("city")); */
				custbean.setCuststate(rs.getString("state"));
				custbean.setCustmobileno(rs.getString("mobile"));
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return custbean;
	}

	}
