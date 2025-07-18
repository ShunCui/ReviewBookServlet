package servlet;
import java.io.IOException;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;


/**
 * Servlet implementation class ReadingReportServlet
 */
@WebServlet("/ReadingReportServlet")
public class ReadingReportServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//リクエストパラメータの取得
		request.setCharacterEncoding("UTF-8");
		String name = request.getParameter("name");
		String gender = request.getParameter("gender");
		String book = request.getParameter("book");
		String comment = request.getParameter("comment");
		
	//checking request parameter
String errorMsg = "";
if (name == null || name.length() == 0) {
	errorMsg += "名前が入力されていません。<br>";
}
if (gender == null || gender.length() == 0) {
	errorMsg += "性別が選択されていません<br>";
} 
if (book == null || book.length() == 0) {
	errorMsg += "本の題名を入力してください<br>";
}

//gender
if ("0".equals(gender)) gender = "男性";
else if ("1".equals(gender)) gender = "女性";
	
//値をjspに渡す
request.setAttribute("name", name);
request.setAttribute("gender", gender);
request.setAttribute("book" , book);
request.setAttribute("comment", comment);
request.setAttribute("errorMsg", errorMsg);

//fowarding
request.getRequestDispatcher("/WEB-INF/jsp/result.jsp").forward(request, response);
}
}
