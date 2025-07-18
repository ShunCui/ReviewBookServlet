package servlet;
import model.Book;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.*;
/**
 * Servlet implementation class BookSearchSerclet
 */
@WebServlet("/BookSearchServlet")
public class BookSearchSerclet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String category = request.getParameter("category");
		
		List<Book> allBooks = new ArrayList<>();
		allBooks.add(new Book("Java入門", "IT" , "images/book1.jpg"));
		allBooks.add(new Book("銀河ヒッチハイク", "SF" , "images/book2.jpg"));
		allBooks.add(new Book("坊ちゃん", "文学", "images/book3.jpg"));
		allBooks.add(new Book("安楽病棟", "文学", "images/book4.jpg"));
		List<Book> filteredBooks = newArrays<>();
		for (Book b : allBooks) {
			if(category.equals(b.getCategory())) {
				filteredBooks.add(b);
			}
		}
		
		request.setAttribute("category", category);
		request.setAttribute("books", filteredBooks);
		RequestDispatcher dispatcher = request.getRequestDispatcher("categoryResult.jsp");
		dispatcher.forward(request, response);
	}

}
