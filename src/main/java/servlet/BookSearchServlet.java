package servlet;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import data.Storage;
import model.Book;
/**
 * Servlet implementation class BookSearchSerclet
 */
@WebServlet("/BookSearchServlet")
public class BookSearchServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String category = request.getParameter("category");
		
		List<Book> allBooks = Storage.getInstance().getAllBooks();
		List<Book> filteredBooks = new ArrayList<>();
		for (Book b : allBooks) {
			if(category.equals(b.getCategory())) {
				filteredBooks.add(b);
			}
		}
		
		request.setAttribute("category", category);
		request.setAttribute("books", filteredBooks);
		RequestDispatcher dispatcher = request.getRequestDispatcher("/WEB-INF/jsp/categoryResult.jsp");
		dispatcher.forward(request, response);
	}

}
