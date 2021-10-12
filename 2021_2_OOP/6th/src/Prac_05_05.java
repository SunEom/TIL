public class Prac_05_05 {
   public static void main(String[] args){
      Prac_05_05 temp = new Prac_05_05();

      System.out.println(temp.sum(100));
   }

   long sum(int n){
      if (n==1) return 1;
      else return n+sum(n-1);
   }
}
