<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>会員登録</title>
</head>
<body>
	<h1>会員登録はこちらから</h1>
	<form action="ReadingReportServlet" method="post">
		<fieldset>
			<legend>会員登録情報の入力</legend>
			<label for="name">名前：</label><br>
			<input type="text" id="name" name="name"><br><br>
			<label>性別：</label><br>
			<input type="radio" name="gender" value="0">
			<label for="male">男</label>
			<input type="radio" name="gender" value="1">
			<label for="female">女</label><br><br>
			<label for="book">紹介したい本の題名:</label><br>
			<input type="text" name="book"><br><br>
			<label for="comment">自己紹介メッセージ</label><br>
		<textarea name="comment" rows="5" cols="40" placeholder="紹介文を入力してください"></textarea><br><br>
		<input type="submit" value="登録と送信"><br>
		</fieldset>
	</form>
</body>
</html>