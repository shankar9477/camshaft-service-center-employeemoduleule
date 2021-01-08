package com.deo;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.bean.Inventorybean;
import com.connection.ConnectionManager;

public class Inventorydeo 
{
	
	// ---------------------- SAVE -------------------//
	
	public static int save(Inventorybean ic)
	{
		int status=0;
		try {
		Connection currentCon=null;
		ResultSet rs=null;
		currentCon=ConnectionManager.getConnection();
		PreparedStatement pstmt= currentCon.prepareStatement("INSERT into inventory(partname,brandname,inwarddate,outwarddate,price,quantity) VALUES (?,?,?,?,?,?)");
		
		
			
			pstmt.setString(1, ic.getPrname());
			pstmt.setString(2, ic.getPrbrandname());
			pstmt.setString(3, ic.getPrinwarddate());
			pstmt.setString(4, ic.getProutwarddate());
			pstmt.setInt(5, ic.getPrprice());
			pstmt.setInt(6, ic.getPrquantity());
		
			status=pstmt.executeUpdate();
			
		} catch (Exception e)
		{
			e.printStackTrace();
		}
		return status;
	}

	// --------------------- UPDATE --------------------//
	
	public static int update(Inventorybean ic)
	{
		int status=0;
		try {
			Connection currentCon=null;
			ResultSet rs=null;
			currentCon=ConnectionManager.getConnection();
			PreparedStatement pstmt= currentCon.prepareStatement("UPDATE partdetails set prname=?,prbrandname=?,prinwarddate=?,proutwarddate=?,prprice=?,prquantity=? where partid=?");
			
			
			pstmt.setString(1, ic.getPrname());
			pstmt.setString(2, ic.getPrbrandname());
			pstmt.setString(3, ic.getPrinwarddate());
			pstmt.setString(4, ic.getProutwarddate());
			pstmt.setInt(5, ic.getPrprice());
			pstmt.setInt(6, ic.getPrquantity());
		    pstmt.setInt(7, ic.getPartid());
		
				status=pstmt.executeUpdate();
				
		} catch (Exception e)
		{
			e.printStackTrace();
		}
		return status;
	}
	
	
	// ----------------- DELETE ---------------//
	
	public static int delete(Inventorybean ic)
	{
		int status=0;
		try {
			Connection currentCon=null;
			ResultSet rs=null;
			currentCon=ConnectionManager.getConnection();
			PreparedStatement pstmt= currentCon.prepareStatement("DELETE from partdetails where partid=?");
			pstmt.setInt(1, ic.getPartid());
				status=pstmt.executeUpdate();
				
				} catch (Exception e)
		{
			e.printStackTrace();
		}
		return status;
	}

	
	
	//----------------- SELECT -------------------//
	
	
	public static List<Inventorybean> getAllRecords()
	{
		List<Inventorybean>list=new ArrayList<>();
		int status=0;
		
		try {
			Connection currentCon;
			
			currentCon=ConnectionManager.getConnection();
			PreparedStatement pstmt= currentCon.prepareStatement("SELECT * from inventory");
			ResultSet rs=pstmt.executeQuery();
			
			while(rs.next())
				{
					Inventorybean ic=new Inventorybean();
					ic.setPartid(rs.getInt("partid"));
					ic.setPrname(rs.getString("prname"));
					ic.setPrbrandname(rs.getString("prbrandname"));
					ic.setPrinwarddate(rs.getString("prinwarddate"));
					ic.setProutwarddate(rs.getString("proutwarddate"));
					ic.setPrprice(rs.getInt("prprice"));
					ic.setPrquantity(rs.getInt("prquantity"));
					
					list.add(ic);
				}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
return list;
	}
	
	
//--------------- SELECT BY ID ---------------------//
	
	public static Inventorybean getRecordById(int partid)
	{
		Inventorybean ic=null;
		try {
			Connection currentCon;
			currentCon=ConnectionManager.getConnection();
			PreparedStatement pstmt=currentCon.prepareStatement("SELECT * from partdetails where partid=?");
		    pstmt.setInt(1, partid);
		    ResultSet rs=pstmt.executeQuery();
			while(rs.next())
			{
			    ic=new Inventorybean();
				ic.setPartid(rs.getInt("partid"));
				ic.setPrname(rs.getString("prname"));
				ic.setPrbrandname(rs.getString("prbrandname"));;
				ic.setPrinwarddate(rs.getString("prinwarddate"));;
			    ic.setProutwarddate(rs.getString("proutwarddate"));
				ic.setPrprice(rs.getInt("prprice"));
				ic.setPrquantity(rs.getInt("prquantity"));
			
				
			}
			
		} catch (Exception e) {
		e.printStackTrace();
		}
		return ic;
	}

}
