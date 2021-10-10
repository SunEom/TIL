package prac_03_04;

public class CoffeeMachine {
   String origin;
   int degreeOfRoast;
   int grade;

   CoffeeMachine(String o){
      origin = o;
   }

   void roast(){
      System.out.println("roasting...."+origin);
   }

   void grind(){
      System.out.println("grinding...."+origin);
   }

   void brew(){
      System.out.println("brewing...."+origin);
   }
}
