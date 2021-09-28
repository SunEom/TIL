class Coffee{
   String origin;
   Coffee(String o){
      origin = o;
   }

   void roast(){
      System.out.println("Roasting... "+origin);
   }

   void grind(){
      System.out.println("Grinding... "+origin);
   }

   void brew(){
      System.out.println("Brewing... "+origin);
   }
}
public class Exercise04 {
   public static void main(String[] args){
      Coffee c = new Coffee("Brazil");
      c.roast();
      c.grind();
      c.brew();
   }
}
