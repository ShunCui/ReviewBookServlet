package servlet;
import java.io.IOException;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class PostDetailServlet
 */
@WebServlet("/PostDetailServlet")
public class PostDetailServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.setCharacterEncoding("UTF-8");
		String bookId = request.getParameter("bookId");
		String forwardPath = "";

		switch (bookId) {
			case "1":
				forwardPath = "/WEB-INF/jsp/postDetail1.jsp";
				break;
			case "2":
				forwardPath = "/WEB-INF/jsp/postDetail2.jsp";
				break;
			case "3":
				forwardPath = "/WEB-INF/jsp/postDetail3.jsp";
				break;
			case "4":
				forwardPath = "/WEB-INF/jsp/postDetail4.jsp";
				break;
			default:
				forwardPath = "/WEB-INF/jsp/error.jsp";
		}
		RequestDispatcher dispatcher = request.getRequestDispatcher(forwardPath);
		dispatcher.forward(request, response);
	}
}

