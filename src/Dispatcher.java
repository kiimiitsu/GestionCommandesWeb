

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.afpa59.gc.services.commun.ServiceArticle;

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
		ServiceArticle sa = ServiceArticle.getInstance();
		
		
		String action = request.getParameter("action");
		String target;
		
		switch (action) {
			case "creer":
				target = "unArticle.jsp";
				break;
			case "liste":
				target = "listeArticles.jsp";
				request.setAttribute("articles", sa.getEntites());
				break;
			case "visualiser":
				target = "rechercherArticle.jsp";
				break;
			case "modifier":
				target = "rechercherArticle.jsp";
				break;
			case "supprimer":
				target = "rechercherArticle.jsp";
				break;
			default:
				target="article.jsp";
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
