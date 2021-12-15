package Prac06_05;

public class Coffee {
   private String name;
   private int price;

   public Coffee(String name, int price){
      this.name = name;
      this.price = price;
   }

   public String getName() {
      return name;
   }

   public int getPrice() {
      return price;
   }

   @Override
   public String toString() {
      return "이름: "+getName()+", 가격: "+getPrice();
   }
}
