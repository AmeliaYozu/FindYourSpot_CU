package cloudFinal;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import java.sql.*;

@WebServlet("/libServlet")
public class libServer extends HttpServlet{
	private static final long serialVersionUID = 1L;
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String libName = request.getParameter("id").toString();
		
		HttpSession session = request.getSession();
		String currentEmail = (String) session.getAttribute("email");
		String checkRoom = (String) session.getAttribute("checkRoom");
		String usrStr = (String) session.getAttribute("usrName");
		
		System.out.println(libName);
		System.out.println(usrStr);
		System.out.println(checkRoom);
		
		if(libName.equals("butler")){
			response.sendRedirect("butler.jsp");
//			request.getRequestDispatcher("butler.jsp").forward(request, response);			
		}		
		else if(libName.equals("uris")){
			response.sendRedirect("uris.jsp");
		}
		else if(libName.equals("avery")){
			response.sendRedirect("avery.jsp");
		}
		else if(libName.equals("nwc")){
			response.sendRedirect("nwc.jsp");
		}
		else if(libName.equals("starr")){
			response.sendRedirect("starr.jsp");
		}
		else if(libName.equals("lehman")){
			response.sendRedirect("lehman.jsp");
		}
	}
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	}
}
