package P2.prac_05_05;

public class Prac0505 {
   private static int sum(int n){
      if(n == 1) return 1;
      else {
         return n + sum(n-1);
      }
   }

   public static void main(String[] args){
      System.out.println(sum(100));
   }
}
