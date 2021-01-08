package com.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.bean.Customerbean;
import com.deo.Customerdeo;

public class CustomerServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		try 
		{
			Customerbean custbean = new Customerbean();
			custbean.setCustname(request.getParameter("custname"));
			custbean.setCustemail(request.getParameter("custemail"));
			custbean.setCustpassword(request.getParameter("custpassword"));
			custbean.setCustaddress(request.getParameter("custaddress"));
			custbean.setCustcity(request.getParameter("custcity"));
			custbean.setCuststate(request.getParameter("custstate"));
			custbean.setCustmobileno(request.getParameter("custmobileno"));
			
			int status = Customerdeo.save(custbean);
			if (status > 0) 
			{
				response.sendRedirect("viewCustomer.jsp");
				System.out.println("Inserted");
			}
			else
				response.sendRedirect("adminloginerror.jsp");
		}
		catch (Exception e)
		{
			e.printStackTrace();
		}
	}

	}


