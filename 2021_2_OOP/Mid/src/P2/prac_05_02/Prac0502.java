package P2.prac_05_02;

public class Prac0502 {
   private static int number;

   public static boolean isLowerThan100(int n){
      return n<100;
   }

   public static void main(String[] args){
      if(isLowerThan100(30))
         System.out.println(30);
      else
         System.out.println(20);
   }
}
