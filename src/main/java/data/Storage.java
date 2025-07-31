package data;
import java.util.ArrayList;
import java.util.List;

import model.Book;

public class Storage {
    private static final Storage instance = new Storage(); // 唯一のインスタンス

    private List<Book> allBooks; // 本の一覧

    // private コンストラクタ → 外部から new できない
    private Storage() {
        allBooks = new ArrayList<>();
        allBooks.add(new Book("1","Java入門", "IT" , "images/book1.jpg", "subtitle", "review"));
        allBooks.add(new Book("2","銀河ヒッチハイク", "SF" , "images/book2.jpg", "subtitle", "review"));
        allBooks.add(new Book("3","坊ちゃん", "文学", "images/book3.jpg", "subtitle", "review"));
        allBooks.add(new Book("4","安楽病棟", "ミステリー", "images/book4.jpg", "subtitle", "review"));
    }

    // 唯一のインスタンスを取得するメソッド
    public static Storage getInstance() {
        return instance;
    }

    // 本一覧を取得するメソッド
    public List<Book> getAllBooks() {
        return allBooks;
    }
    
    public Book getBookById(String id) {
        for (int i = 0; i < allBooks.size(); i++) {
        	Book book = allBooks.get(i);
        	if (book.getId().equals(id)) {
        		return book;
        	}
        }
    	return null;
    }
}
