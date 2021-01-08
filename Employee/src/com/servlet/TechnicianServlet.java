package com.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.bean.Technicianbean;

import com.deo.Techniciandeo;


/**
 * Servlet implementation class TechnicianServlet
 */
public class TechnicianServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

    public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    	try 
		{
			Technicianbean techbean = new Technicianbean();
			System.out.println(request.getParameter("name"));
			techbean.setTechname(request.getParameter("name"));
			techbean.setTechemail(request.getParameter("email"));
			techbean.setTechaddress(request.getParameter("address"));
			techbean.setTechmobileno(request.getParameter("mobile"));
			techbean.setTechgender(request.getParameter("gender"));
			
			int status = Techniciandeo.save(techbean);
			if (status > 0) 
			{
				response.sendRedirect("viewTechnician.jsp");
				System.out.println("Inserted");
			}
			else
				response.sendRedirect("loginerror.jsp");
		}
		catch (Exception e)
		{
			e.printStackTrace();
		}
	}


}