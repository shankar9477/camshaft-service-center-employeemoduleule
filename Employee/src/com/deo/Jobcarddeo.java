package com.deo;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.bean.Jobcardbean;
import com.connection.ConnectionManager;

public class Jobcarddeo
{
	
	
	//----------------------- SAVE --------------------//
	
	public static int save(Jobcardbean jc)
	{
		int status=0;
		try {
		Connection currentCon=null;
		ResultSet rs=null;
		currentCon=ConnectionManager.getConnection();
		PreparedStatement pstmt= currentCon.prepareStatement("INSERT into jobcard(vehicleno,jobdate,meterreading,fuel,employeeid,customerid) VALUES (?,?,?,?,?,?)");
		
		
			
			pstmt.setString(1, jc.getJvehino());
			pstmt.setString(2, jc.getJdate());
			pstmt.setString(3, jc.getJmeterreading());
			pstmt.setString(4, jc.getJfuel());
			pstmt.setInt(5, jc.getEid());
			//pstmt.setInt(6, jc.getPartid());
			pstmt.setInt(6, jc.getCid());
			status=pstmt.executeUpdate();
			
		} catch (Exception e)
		{
			e.printStackTrace();
		}
		return status;
	}

	
	//--------------------------- UPDATE ---------------------------//
	
	
	public static int update(Jobcardbean jc)
	{
		int status=0;
		try {
			Connection currentCon=null;
			ResultSet rs=null;
			currentCon=ConnectionManager.getConnection();
			PreparedStatement pstmt= currentCon.prepareStatement("UPDATE jobcard set jvehino=?,jdate=?,jmeterreading=?,jfuel=?,eid=?,cid=? where jid=?");
			
			
				pstmt.setString(1, jc.getJvehino());
				pstmt.setString(2, jc.getJdate());
				pstmt.setString(3, jc.getJmeterreading());
				pstmt.setString(4, jc.getJfuel());
				pstmt.setInt(5, jc.getEid());
				//pstmt.setInt(6, jc.getPartid());
				pstmt.setInt(6, jc.getCid());
				pstmt.setInt(7, jc.getJid());
				status=pstmt.executeUpdate();
				
		} catch (Exception e)
		{
			e.printStackTrace();
		}
		return status;
	}
	
	
	//-------------------- DELETE -----------------------//
	
	
	public static int delete(Jobcardbean jc)
	{
		int status=0;
		try {
			Connection currentCon=null;
			ResultSet rs=null;
			currentCon=ConnectionManager.getConnection();
			PreparedStatement pstmt= currentCon.prepareStatement("DELETE from jobcard where jid=?");
			pstmt.setInt(1, jc.getJid());
				status=pstmt.executeUpdate();
				
				} catch (Exception e)
		{
			e.printStackTrace();
		}
		return status;
	}

	
	
	//---------------- SELECT -------------------------//
	
	
	public static List<Jobcardbean> getAllRecords()
	{
		List<Jobcardbean>list=new ArrayList<>();
		int status=0;
		
		try {
			Connection currentCon;
			
			currentCon=ConnectionManager.getConnection();
			PreparedStatement pstmt= currentCon.prepareStatement("SELECT * from jobcard");
			ResultSet rs=pstmt.executeQuery();
			
			while(rs.next())
				{
					Jobcardbean jc=new Jobcardbean();
					jc.setJid(rs.getInt("id"));
					jc.setJvehino(rs.getString("vehicleno"));
					jc.setJdate(rs.getString("jobdate"));
					jc.setJmeterreading(rs.getString("meterreading"));
					jc.setJfuel(rs.getString("fuel"));
					jc.setEid(rs.getInt("employeeid"));
					//jc.setPartid(rs.getInt("partid"));
					jc.setCid(rs.getInt("customerid"));
					list.add(jc);
				}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
return list;
	}
	
	
	//----------------- SELECT RECORD BY ID --------------//
	
	
	public static Jobcardbean getRecordById(int jid)
	{
		Jobcardbean jc=null;
		try {
			Connection currentCon;
			currentCon=ConnectionManager.getConnection();
			PreparedStatement pstmt=currentCon.prepareStatement("SELECT * from jobcard where jid=?");
		    pstmt.setInt(1, jid);
		    ResultSet rs=pstmt.executeQuery();
			while(rs.next())
			{
			    jc=new Jobcardbean();
				jc.setJid(rs.getInt("jid"));
				jc.setJvehino(rs.getString("jvehino"));
				jc.setJdate(rs.getString("jdate"));
				jc.setJmeterreading(rs.getString("jmeterreading"));
				jc.setJfuel(rs.getString("jfuel"));
				jc.setEid(rs.getInt("eid"));
				//jc.setPartid(rs.getInt("partid"));
				jc.setCid(rs.getInt("cid"));
				
			}
			
		} catch (Exception e) {
		e.printStackTrace();
		}
		return jc;
	}

}
