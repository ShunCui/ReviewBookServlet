package model;

public class Book {
	private String title;
	private String category;
	private String imagePath;
	
	public Book(String title, String category, String imagePath) {
		this.title = title;
		this.category = category;
		this.imagePath = imagePath;
	}
	
	public String getTitle() {
		return title;
	}
	
	public String getCategory() {
		return category;
	}
	
	public String getImagePath() {
		return imagePath;
	}
}
