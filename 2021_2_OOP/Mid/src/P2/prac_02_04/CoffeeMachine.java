package P2.prac_02_04;

public class CoffeeMachine {
   private String origin;

   CoffeeMachine(String o){
      origin = o;
   }

   void roast(){
      System.out.println(origin +" is roasting...");
   }

   void grind(){
      System.out.println(origin +" is grinding...");
   }

   void brew(){
      System.out.println(origin +" is brewing...");
   }
}
