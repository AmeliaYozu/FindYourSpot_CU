package cloudFinal;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import java.sql.*;

@WebServlet("/register")
public class regiServer extends HttpServlet{
	private static final long serialVersionUID = 1L;
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
     // select put here !!!!!!!!!
	}
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String[] email = request.getParameterValues("Email");
		String[] uid = request.getParameterValues("UID");
		String[] password = request.getParameterValues("Password");
		String[] rePassword = request.getParameterValues("re-Password");
		if(!password[0].equals(rePassword[0])){
			PrintWriter out = response.getWriter();
			request.getRequestDispatcher("register.html").include(request, response);
			out.print("<p align = \"center\" style=\"color:#fff;\"> Passwords do not match, please try again!</p>");
		
		
			System.out.println(password[0].toString().length());
			System.out.println(password[0].toString());
			System.out.println(rePassword[0].toString().length());
			System.out.println(rePassword[0].toString());
		}
		else if(password[0].toString().length()<8){
			System.out.println("I AM IN!");
			
			PrintWriter out = response.getWriter();
			request.getRequestDispatcher("register.html").include(request, response);
			out.print("<p align = \"center\" style=\"color:#fff;\"> Password should be at least 8 characters, please try again!");
			
		}
		else if(!(email[0].contains("@")&&email[0].contains("."))){
			PrintWriter out = response.getWriter();
			request.getRequestDispatcher("register.html").include(request, response);
			out.print("<p align = \"center\" style=\"color:#fff;\"> Please enter a valid email address.");
			
		}
		else{
			System.out.println(email[0]);	
			String rlt;
	        try {
				 String str = "INSERT INTO User values ('" +email[0]+ "', '" + uid[0] +"', '" + password[0] +"', 3" +")";
	             System.out.println(str);
	     		 Rds.stmt.executeUpdate(str);
	     		 rlt = "success";  
	     		 str = "INSERT INTO dailyCheckIn values ('" +email[0]+ "', " + null+")";
	             System.out.println(str);
	     		 Rds.stmt.executeUpdate(str);
	//			PrintWriter out=response.getWriter();
				HttpSession session=request.getSession();  			
		        session.setAttribute("email",email[0]);
		        session.setAttribute("usrName", uid[0]);
		        session.setAttribute("checkRoom", null);
		        response.sendRedirect("libinfo.jsp");
	//	        request.getRequestDispatcher("libinfo.jsp").forward(request, response);
	//	        out.print("<p align = \"center\"  style=\"color:#fff;\">" +email[0]+", You have successfully signed in");
	
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
				rlt = "failure";
			}
	        response.getWriter().write(rlt);
		}
		}
}
