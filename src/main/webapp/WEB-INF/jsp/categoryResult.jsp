<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.List" %>
<%@ page import="model.Book" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>カテゴリ検索</title>
<link rel="stylesheet" href="css/style.css">
</head>
<body>
	
	<header>
	<a href="main.jsp">戻る</a>
	</header>
	
	<section>
		<% 
		String category = (String) request.getAttribute("category");
		List<Book> books = (List<Book>) request.getAttribute("books");
		%>
		<h2><%=category %> カテゴリの書籍一覧</h2>		
		<ul>
		<% if (books != null) {
			for (Book b : books) {%>
			<li>
				<img src="<%= b.getImagePath() %>" width="150"><br>
				<strong><%= b.getTitle() %></strong><br>
				カテゴリ：<%= b.getCategory() %><br>
				<strong>サブタイトル：</strong> <%= b.getSubtitle() %><br>
				<strong>感想：</strong> <%= b.getReview() %><br>
				
				<form action="PostDetailServlet" method="get">
					<input type="hidden" name="bookId" value="<%= b.getId() %>">
					<input type="submit" value="詳細を見る">
				</form>
			</li>
		<% }} else { %>
			<li>書籍がありません</li>
		<%} %>
		</ul>
	</section>
</body>
</html>