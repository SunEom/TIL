package Prac06_05;

import java.time.LocalDateTime;

public class Order {
   static final int MAX_LIST = 10;
   private Customer customer;
   private LocalDateTime orderDateTime;
   private Coffee coffee;
   private int quantity;

   public void takeOrder(Customer customer, Coffee coffee){
      this.customer = customer;
      this.coffee = coffee;
      orderDateTime = LocalDateTime.now();
   }

   public int charge(){
      quantity = customer.increaseVisit();
      return this.quantity;
   }

   @Override
   public String toString() {
      return "고객정보\n"+customer.toString()+"\n\n 커피정보\n"+coffee.toString();
   }
}
