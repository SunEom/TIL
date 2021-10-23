package P2.prac_02_04;

public class Prac0204 {
   private static CoffeeMachine cm = new CoffeeMachine("Brazil");
   private static CoffeeMachine cm2 = new CoffeeMachine("Ethopia");
   private static CoffeeMachine cm3 = new CoffeeMachine("Colombia");

   public static void main(String[] args){
      cm.roast();
      cm.grind();
      cm.brew();
      System.out.println();

      cm2.roast();
      cm2.grind();
      cm2.brew();
      System.out.println();

      cm3.roast();
      cm3.grind();
      cm3.brew();
      System.out.println();
   }
}
