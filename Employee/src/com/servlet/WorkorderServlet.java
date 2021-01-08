package com.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.bean.Workorderbean;
import com.deo.Workorderdeo;

/**
 * Servlet implementation class WorkorderServlet
 */
public class WorkorderServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public WorkorderServlet() {
        super();
        // TODO Auto-generated constructor stub
    }
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			Workorderbean wc = new Workorderbean();
			wc.setWname(request.getParameter("workname"));
			wc.setWdate(request.getParameter("workdate"));
			wc.setWlastservice(request.getParameter("lastservice"));
			wc.setWvehino(request.getParameter("vehicleno"));
			wc.setWestiamt(Integer.parseInt(request.getParameter("estiamatedamount")));
			wc.setWexptime(request.getParameter("expectedtime"));
	
			int status =Workorderdeo.save(wc);
			if (status > 0) {
				PrintWriter pw = response.getWriter();
				pw.println("Registered Successfully!");
				response.sendRedirect("viewWorkorder.jsp");
			} else {
				response.sendRedirect("emploginError.jsp");
			}


		} catch (Exception e) {
			e.printStackTrace();
		}


	}

}
