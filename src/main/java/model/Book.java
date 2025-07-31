package model;

public class Book {
	private String id;
	private String title;
	private String category;
	private String imagePath;
	private String subtitle;
	private String review;
	
	public Book(String id, String title, String category, String imagePath, String subtitle, String review) {
		this.id = id;
		this.title = title;
		this.category = category;
		this.imagePath = imagePath;
		this.subtitle = subtitle;
		this.review = review;
	}
	
	public String getId() {
		return id;
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
	
	public String getSubtitle() {
		return subtitle;
	}
	public String getReview() {
		return review;
	}
	
	public void setTitle(String title) {
		this.title = title;
	}
	
	public void setCategory(String category) {
		this.category = category;
	}
	
	public void setImagePath(String imagePath) {
		this.imagePath = imagePath;
	}
	
	public void setSubtitle(String subtitle) {
		this.subtitle = subtitle;
	}
	
	public void setReview(String review) {
		this.review = review;
	}
}

