<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ユーザー登録結果</title>
</head>
<body>
<%
	String errorMsg = (String) request.getAttribute("errorMsg");
	if (errorMsg != null && !errorMsg.isEmpty()) {
%>
	<p style="color:red;"><%= errorMsg %></p>

<%} else {
	String name = (String) request.getAttribute("name");
	String gender = (String) request.getAttribute("gender");
	String book = (String) request.getAttribute("book");
	String comment = (String) request.getAttribute("comment");
%>
<p><%= name %>さん（<%= gender %>）を登録しました。</p>
  <p>本の名前は <strong><%= book %></strong> です。</p>
  <h2>紹介メッセージ</h2>
  <p><%= comment %></p>
<% } %>
</body>
</html>