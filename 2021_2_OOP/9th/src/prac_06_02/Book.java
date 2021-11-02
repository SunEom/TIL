package prac_06_02;

public class Book {
   private String title;
   private String publisher;
   private int page;

   public Book(String title, String publisher, int page){
      this.title = title;
      this.publisher = publisher;
      this.page = page;
   }

   public String getTitle(){ return this.title; }
   public String getPublisher(){ return this.publisher; }
   public int getPage(){ return this.page; }
}
