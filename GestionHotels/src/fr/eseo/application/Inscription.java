package fr.eseo.application;

import java.io.IOException;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

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
		
		session.setAttribute("errorDateFormat", "new");
		session.setAttribute("errorMailFormat", "new");
		session.setAttribute("correctPassword", true);
		session.setAttribute("allFieldsAreFilled", true);
		
		if(fieldsAreFilled(request)==false)
			session.setAttribute("allFieldsAreFilled", false);
		if(dateFormatIsCorrect(request.getParameter("dateNais"))==false)
			session.setAttribute("errorDateFormat", "wrong format");
		if(mailFormatIsCorrect(request.getParameter("mail"))==false)
			session.setAttribute("errorMailFormat", "wrong format");
		if(password.equals(confPassword)==false)
			 session.setAttribute("correctPassword", false);
		
		if(session.getAttribute("errorDateFormat")!=null ||
				session.getAttribute("errorMailFormat")!=null ||
				session.getAttribute("correctPassword")!=null){
			/*Transmission des données*/
			RequestDispatcher dispat = request.getRequestDispatcher("Inscription.jsp");
			dispat.forward(request, response); 
		}else{
			/*Transmission des données*/
			RequestDispatcher dispat = request.getRequestDispatcher("AccueilClient.jsp");
			dispat.forward(request, response);
		}
	}
	
	private boolean dateFormatIsCorrect(String date){
        Pattern p = Pattern.compile("^[0-9]{2}/[0-9]{2}/[0-9]{4}$");
		Matcher m = p.matcher(date);
		return m.matches();
	}
	
	private boolean mailFormatIsCorrect(String email){
		Pattern p = Pattern.compile("^[a-zA-Z0-9._-]+@[a-zA-Z0-9._-]{2,}.[a-z]{2,4}$");
		Matcher m = p.matcher(email);
		return m.matches();
	}
	
	
	private boolean fieldsAreFilled(HttpServletRequest request){
		String[] param= {request.getParameter("nom"), 
				request.getParameter("prenom"),
				request.getParameter("login"),
				request.getParameter("password"),
				request.getParameter("confPassword"),
				request.getParameter("mail"),
				request.getParameter("adresse"),
				request.getParameter("tel"),
				request.getParameter("dateNais")};
		
		for(int i=0; i<9 ; i++)
			if(param[i].equals(""))
				return false;
		
		return true;
	}
}
