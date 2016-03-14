package fr.eseo.application;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/Consulte")
/**
 * Servlet implementation class Consulter
 */
public class Consulter extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Consulter() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		int presentBD;
		presentBD = 1;// simule la requète vers la base de donné ( a savoir si il dispoibilité dans les chambres demandés)
		
		if(presentBD==1){
			RequestDispatcher dispat = request.getRequestDispatcher("savIndex.jsp");
			dispat.forward(request, response);
		}else{
			RequestDispatcher dispat = request.getRequestDispatcher("Consulter.jsp");
			dispat.forward(request, response);
		}
		
		/*Transmission des données*/ 
	}

}
