package fr.eseo.application;

import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;
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
		
		if(password.equals(confPassword)==false){
			 session.setAttribute("correctPassword", false);
			/*Transmission des données*/
			RequestDispatcher dispat = request.getRequestDispatcher("Inscription.jsp");
			dispat.forward(request, response); 
		}
		if(dateFormatIsCorrect(request.getParameter("dateNais"))==false)
			session.setAttribute("errorDateFormat", "wrong format");
		if(mailFormatIsCorrect(request.getParameter("mail"))==false)
			session.setAttribute("errorMailFormat", "wrong format");
		if(phoneNumberFormatIsCorrect(request.getParameter("tel"))==false)
			session.setAttribute("errorPhoneNumberFormat", "wrong format");
		
		/*Transmission des données*/
		RequestDispatcher dispat = request.getRequestDispatcher("AccueilClient.jsp");
		dispat.forward(request, response);
			
		
		
	}
	
	public boolean dateFormatIsCorrect(String date){
		SimpleDateFormat sdf = new SimpleDateFormat("dd/MM/yyyy");
		String s = new String(date);
        Date d = new Date();
        try {
            d = sdf.parse(s);
            String t = sdf.format(d);
            if(t.compareTo(s) !=  0)
                return true;
            else
                return false;
        } catch (Exception e) {
                return false;
        }
	}
	
	public boolean mailFormatIsCorrect(String email){
		Pattern p = Pattern.compile("^[A-Z0-9._%+-]+@[A-Z0-9.-]+\\.[A-Z]{2,4}$");
		Matcher m = p.matcher(email.toUpperCase());
		return m.matches();
	}
	
	public boolean phoneNumberFormatIsCorrect(String email){
		Pattern p = Pattern.compile("[0-9]");
		Matcher m = p.matcher(email.toUpperCase());
		return m.matches();
	}
}
