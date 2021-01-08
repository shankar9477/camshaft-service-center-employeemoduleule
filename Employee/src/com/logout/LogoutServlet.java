package com.logout;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.bean.userbean;

/**
 * Servlet implementation class LogoutServlet
 */
public class LogoutServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LogoutServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		try 
		{
			userbean user = new userbean();
			user.removeEmpusername();
			user.removeEmppassword();
			HttpSession session = request.getSession(false);
			session.removeAttribute("currentSessionUser");
			session.invalidate();
			response.sendRedirect("empLogin.jsp");
		} 
		catch (Exception e) 
		{
			e.printStackTrace();
		}
	
	

}
}