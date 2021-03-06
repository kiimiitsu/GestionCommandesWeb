

import java.io.IOException;

import javax.persistence.PersistenceException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.afpa59.gc.services.commun.ObjetInexistantException;
import com.afpa59.gc.services.commun.ServiceArticle;

/**
 * Servlet implementation class DeleteArticle
 */
public class ActionArticle extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ActionArticle() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String target = null;
		
		String idStr = request.getParameter("id");
		int id = Integer.parseInt(idStr);
		String action = request.getParameter("action");
		
		try{
			switch (action) {
			
				case "visualiser":
					request.setAttribute("article", ServiceArticle.getInstance().rechercherParId(id));
					request.setAttribute("action", action);
					target = "unArticle.jsp";
					break;
				case "modifier":
					request.setAttribute("article", ServiceArticle.getInstance().rechercherParId(id));
					request.setAttribute("action", action);
					target = "unArticle.jsp";
					break;
				case "supprimer":
					try{
						ServiceArticle.getInstance().supprimer(id);
					}catch (PersistenceException e) {
						System.out.println(e.getMessage());
						request.setAttribute("errors", "L'article est référencé ailleurs, vous ne pouvez pas le supprimer.");
					}
					target = "article.jsp";
					break;
				default:
					break;
			}
		}catch(ObjetInexistantException e){
			System.out.println(e.getMessage());
			target = "article.jsp";
		}
		
		
		RequestDispatcher rd = request.getRequestDispatcher(target);
		rd.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

}
