package prac_05_05;

public class Prac_05_05 {
   public static void main(String[] args){
      System.out.println(sum(100));
   }

   static int sum(int n){
      if(n == 1) return 1;
      else return n + sum(n-1);
   }
}
