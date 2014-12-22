

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.afpa59.gc.services.commun.ServiceArticle;
import com.afpa59.gc.services.commun.ServiceClient;
import com.afpa59.gc.services.commun.ServiceCommande;
import com.afpa59.gc.services.commun.ServiceEntite;

/**
 * Servlet implementation class Dispatcher
 */
public class Dispatcher extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Dispatcher() {
        super();
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		ServiceEntite se;

		String action = request.getParameter("action");
		String entite = request.getParameter("entite");
		
		switch (entite) {
			case "article":
				se= ServiceArticle.getInstance();
				break;
			case "client":
				se= ServiceClient.getInstance();
				break;
			case "commande":
				se = ServiceCommande.getInstance();
			default:
				se = null;
				break;
		}
		
		String entiteUp = entite.substring(0, 1).toUpperCase()+entite.substring(1); //simule l'ucfirst
				
		String target;
		
		switch (action) {
			case "creer":
				target = "form"+entiteUp+".jsp";
				break;
			case "liste":
				target = "liste"+entiteUp+".jsp";
				request.setAttribute("entites", se.getEntites());
				break;
			case "visualiser":
				target = "rechercher"+entiteUp+".jsp";
				break;
			case "modifier":
				target = "rechercher"+entiteUp+".jsp";
				break;
			case "supprimer":
				target = "rechercher"+entiteUp+".jsp";
				break;
			default:
				target=entite+".jsp";
				break;
		}
		
		request.setAttribute("action", action);
		
		RequestDispatcher rd = request.getRequestDispatcher(target);
		
		rd.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

}
