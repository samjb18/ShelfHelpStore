package org.example;

public class Book {
    private String isbn;
    private String book_title;
    private int author_id;
    private int publisher_id;
    private int genre_id;
    private int type_id;
    private String blurb;
    private String cover;
    private float price;
    private float rating;
    private int stock;

    public Book(String isbn, String book_title, int author_id, int publisher_id, int genre_id, int type_id, String blurb, String cover, float price, float rating, int stock) {
        this.isbn = isbn;
        this.book_title = book_title;
        this.author_id = author_id;
        this.publisher_id = publisher_id;
        this.genre_id = genre_id;
        this.type_id = type_id;
        this.blurb = blurb;
        this.cover = cover;
        this.price = price;
        this.rating = rating;
        this.stock = stock;
    }
}
