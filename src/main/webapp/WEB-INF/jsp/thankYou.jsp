<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>感想の投稿が完了しました</title>
</head>
<body>
	<h1>投稿ありがとうございました</h1>
	
	<%--サブタイトルがある場合だけ表示--%>
	<%
	String subtitle = (String) request.getAttribute("subtitle");
	if (subtitle != null && !subtitle.isEmpty()) {
	%>
	<h3>サブタイトル：<%=subtitle %></h3>
	<% 
	}
	%>
	
	<h3>投稿された感想：</h3>
	<p><%= request.getAttribute("comment") %></p>
	
	<br>
	<a href="http://localhost:8080/ReadingPst/PostDetailServlet?bookId=1">もう一度投稿する</a>
</body>
</html>