package com.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.bean.Inventorybean;
import com.deo.Inventorydeo;

public class InventoryServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

    public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
		Inventorybean ic = new Inventorybean();
			ic.setPrname(request.getParameter("partname"));
			ic.setPrbrandname(request.getParameter("brandname"));
			ic.setPrinwarddate(request.getParameter("inwarddate"));
			ic.setProutwarddate(request.getParameter("outwarddate"));
			ic.setPrprice(Integer.parseInt(request.getParameter("price")));
			ic.setPrquantity(Integer.parseInt(request.getParameter("quantity")));
			
			int status = Inventorydeo.save(ic);
			if (status > 0) 
			{
				PrintWriter pw = response.getWriter();
				pw.println("Inserted Successfully!");
				response.sendRedirect("viewInventory.jsp");
			}
			else
			{
				response.sendRedirect("emploginError.jsp");
			}

		} catch (Exception e) {
			e.printStackTrace();
		}
}
}