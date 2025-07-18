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
		<h2>
		<% String category = (String) request.getAttribute("category"); %>
		<%=category %> カテゴリの書籍一覧		
		</h2>
		
		<%
		List<Book> books = (List<Book>) request.getAttribute("books");
		
		if (books != null && !books.isEmpty()) {
		%>
		
			<ul>
				<%　for (Book book : books) {%>
					<li style="margin-bottom: 20px;">
					 <img src="<%= book.getImagePath() %>" alt="<%= book.getTitle() %>" width="150"><br>
					 <strong><%= book.getTitle() %></strong><br>		
					 カテゴリ：<%= book.getcategory() %>
				 	</li>			
				<%}%>
			</ul>
		<%
		} else {
		%>
			<p>このカテゴリには書籍が登録されていません。</p>
		<%
		}
		%>
		
	</section>
</body>
</html>