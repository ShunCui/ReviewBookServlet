<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>感想サイトーメイン</title>
<link rel="stylesheet" href="css/style.css">
</head>
<body>

<header>
  <a href="readingform.jsp">会員登録</a>
</header>

<section>
  <input type="text" placeholder="検索バー" disabled>
</section>

<section>
  <h2>ピックアップ書籍</h2>

  <!-- 統一されたフォーム -->
  <form action="PostDetailServlet" method="get">
    <img src="images/book1.jpg" alt="書籍１" width="150">
    <input type="hidden" name="bookId" value="1">
    <input type="submit" value="飛ぶ">
  </form>

  <form action="PostDetailServlet" method="get">
    <img src="images/book2.jpg" alt="書籍２" width="150">
    <input type="hidden" name="bookId" value="2">
    <input type="submit" value="飛ぶ">
  </form>

  <form action="PostDetailServlet" method="get">
    <img src="images/book3.jpg" alt="書籍３" width="150">
    <input type="hidden" name="bookId" value="3">
    <input type="submit" value="飛ぶ">
  </form>

  <form action="PostDetailServlet" method="get">
    <img src="images/book4.jpg" alt="書籍４" width="150">
    <input type="hidden" name="bookId" value="4">
    <input type="submit" value="飛ぶ">
  </form>
</section>

<section>
  <h3>カテゴリから探す</h3>
  <a href="BookSearchServlet?category=IT">IT</a> / <a href="BookSearchServlet?category=SF">SF</a> / <a href="BookSearchServlet?category=文学">文学</a>　/ <a href="BookSearchServlet?category=ミステリー">ミステリー</a>
</section>

<section>
  <h3>新着書評</h3>
  <img src="images/book1.jpg" alt="書籍1">
  <p>書籍１ITのカテゴリ</p>
  <img src="images/book2.jpg" alt="書籍2">
  <p>書籍２SFのカテゴリ</p>
  <img src="images/book3.jpg" alt="書籍3">
  <p>書籍３文学のカテゴリ</p>
  <img src="images/book4.jpg" alt="書籍４">
  <p>書籍４ミステリーのカテゴリ</p>
</section>

</body>
</html>
