<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>書籍１　感想</title>
</head>
<body>
	<h2>書籍１に感想を投稿</h2>
	<img src="images/book1.jpg" alt="書籍１" width="150">
	<span>本のタイトル</span>
	<form action="SubmitServlet" method="post">
		<label for="subtitle">サブタイトル</label><br>
		<input type="text" id="subtitle" name="subtitle" size="80" placeholder="EX)感動したシーンについて"></textarea><br><br>
		<label for="comment">感想：</label><br>
		<textarea name="comment" rows="10" cols="80" placeholder="ここに本文を書いてください"></textarea><br><br>
		<input type="submit" value="投稿">
	</form>
</body>
</html>