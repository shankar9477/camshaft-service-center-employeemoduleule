package com.servlet;
import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.bean.Jobcardbean;
import com.deo.Jobcarddeo;

public class JobcardServlet extends HttpServlet {
	

	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			Jobcardbean jc = new Jobcardbean();
			jc.setJvehino(request.getParameter("vehicleno"));
			jc.setJdate(request.getParameter("jobdate"));
			jc.setJmeterreading(request.getParameter("meterreading"));
			jc.setJfuel(request.getParameter("fuel"));
			jc.setEid(Integer.parseInt(request.getParameter("employeeid")));
	
			jc.setCid(Integer.parseInt(request.getParameter("customerid")));
			int status = Jobcarddeo.save(jc);
			if (status > 0) {
				PrintWriter pw = response.getWriter();
				pw.println("Registered Successfully!");
				response.sendRedirect("viewJobcard.jsp");
			} else {
				response.sendRedirect("emploginError.jsp");
			}


		} catch (Exception e) {
			e.printStackTrace();
		}

	}

}
