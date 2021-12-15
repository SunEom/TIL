package Prac06_02;

public class Book {
   private String publisher;
   private String name;

   public Book(String publisher, String name){
      this.publisher = publisher;
      this.name = name;
   }

   public String getPublisher(){
      return this.publisher;
   }

   public String getName(){
      return this.name;
   }

   @Override
   public String toString(){
      return "제목: "+getName()+", 출판사: "+getPublisher();
   }

}
