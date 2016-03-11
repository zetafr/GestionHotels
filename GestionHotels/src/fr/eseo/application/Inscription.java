package fr.eseo.application;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class Reservation
 */
@WebServlet("/Inscrire")
public class Inscription extends HttpServlet{
	
	
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		String password = request.getParameter("password");
		String confPassword = request.getParameter("confPassword");
		
		if(password.equals(confPassword)==true){
			session.setAttribute("correctPassword", true);
			/*Transmission des données*/
			RequestDispatcher dispat = request.getRequestDispatcher("AccueilClient.jsp");
			dispat.forward(request, response); 
		}else{
			session.setAttribute("correctPassword", false);
			/*Transmission des données*/
			RequestDispatcher dispat = request.getRequestDispatcher("Inscription.jsp");
			dispat.forward(request, response); 
		}
			
		
		
	}
}
