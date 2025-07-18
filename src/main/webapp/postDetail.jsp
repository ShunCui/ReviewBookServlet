<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>投稿内容</title>

</head>
<body>
<h1>感想文投稿ページ</h1>
	<form action="PostDetailServlet" method="get">
		<fieldset>
			<legend>投稿ページ</legend>
			<label for="review">感想文：</label><br>
			<textarea id="review" name="review" rows="10" cols="80" placeholder="感想文をここに書いてください"></textarea><br><br>
			<input type="submit" value="投稿する">
		</fieldset>
	</form>
</body>
</html>