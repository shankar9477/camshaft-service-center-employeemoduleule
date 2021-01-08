package com.deo;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.bean.Workorderbean;
import com.connection.ConnectionManager;

public class Workorderdeo
{
//---------------- INSERT -------------//
	
	public static int save(Workorderbean wc)
	{
		int status=0;
		try {
		Connection currentCon=null;
		ResultSet rs=null;
		currentCon=ConnectionManager.getConnection();
		PreparedStatement pstmt= currentCon.prepareStatement("INSERT into workorder (workname,workdate,lastservice,vehicleno,estimatedamount,expectedtime) VALUES (?,?,?,?,?,?)");
		
		
			
			pstmt.setString(1, wc.getWname());
			pstmt.setString(2, wc.getWdate());
			pstmt.setString(3, wc.getWlastservice());
			pstmt.setString(4, wc.getWvehino());
			pstmt.setInt(5, wc.getWestiamt());
			pstmt.setString(6, wc.getWexptime());
		
			status=pstmt.executeUpdate();
			
		} catch (Exception e)
		{
			e.printStackTrace();
		}
		return status;
	}

	
	//---------------- UPDATE ------------------//
	
	public static int update(Workorderbean wc)
	{
		int status=0;
		try {
			Connection currentCon=null;
			ResultSet rs=null;
			currentCon=ConnectionManager.getConnection();
			PreparedStatement pstmt= currentCon.prepareStatement("UPDATE workorder set wname=?,wdate=?,wlastservice=?,wvehino=?,westiamt=?,wexptime=? where wid=?");
			
			
				pstmt.setString(1, wc.getWname());
				pstmt.setString(2, wc.getWdate());
				pstmt.setString(3, wc.getWlastservice());
				pstmt.setString(4, wc.getWvehino());
				pstmt.setInt(5, wc.getWestiamt());
				pstmt.setString(6, wc.getWexptime());
				pstmt.setInt(7, wc.getWid());
				status=pstmt.executeUpdate();
				
		} catch (Exception e)
		{
			e.printStackTrace();
		}
		return status;
	}
	
	
	//--------------------- DELETE ------------------------//
	
	
	
	public static int delete(Workorderbean wc)
	{
		int status=0;
		try {
			Connection currentCon=null;
			ResultSet rs=null;
			currentCon=ConnectionManager.getConnection();
			PreparedStatement pstmt= currentCon.prepareStatement("DELETE from workorder where wid=?");
			pstmt.setInt(1, wc.getWid());
				status=pstmt.executeUpdate();
				
				} catch (Exception e)
		{
			e.printStackTrace();
		}
		return status;
	}

	//---------------------- SELECT ------------------------//
	
	
	public static List<Workorderbean> getAllRecords()
	{
		List<Workorderbean>list=new ArrayList<>();
		int status=0;
		
		try {
			Connection currentCon;
			
			currentCon=ConnectionManager.getConnection();
			PreparedStatement pstmt= currentCon.prepareStatement("SELECT * from workorder");
			ResultSet rs=pstmt.executeQuery();
			
			while(rs.next())
				{
				Workorderbean wc=new Workorderbean();
					
				    wc.setWid(rs.getInt("workorderid"));
					wc.setWname(rs.getString("wname"));
					wc.setWdate(rs.getString("wdate"));
					wc.setWvehino(rs.getString("wvehino"));
					wc.setWlastservice(rs.getString("wlastservice"));
					wc.setWestiamt(rs.getInt("westiamt"));
					wc.setWexptime(rs.getString("wexptime"));
					
					list.add(wc);
				}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
return list;
	}
	
	//---------------- GET RECORD BY ID ---------------//
	
	
	public static Workorderbean getRecordById(int wid)
	{
		Workorderbean wc=null;
		try {
			Connection currentCon;
			currentCon=ConnectionManager.getConnection();
			PreparedStatement pstmt=currentCon.prepareStatement("SELECT * from workorder where wid=?");
		    pstmt.setInt(1, wid);
		    ResultSet rs=pstmt.executeQuery();
			while(rs.next())
			{
			    wc=new Workorderbean();
				wc.setWid(rs.getInt("wid"));
				wc.setWname(rs.getString("wname"));
				wc.setWdate(rs.getString("wdate"));
				wc.setWlastservice(rs.getString("wlastservice"));
				wc.setWvehino(rs.getString("wvehino"));
				wc.setWestiamt(rs.getInt("westiamt"));
				wc.setWexptime(rs.getString("wexptime"));
			
				
			}
			
		} catch (Exception e) {
		e.printStackTrace();
		}
		return wc;
	}

}
