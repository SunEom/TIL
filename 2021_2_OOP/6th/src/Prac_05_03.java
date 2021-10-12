public class Prac_05_03 {
   int sum;

   public static void main(String[] args){
      Prac_05_03 temp = new Prac_05_03();

      temp.function1(123);
      temp.function1(234);
      temp.function1(70);
      temp.function1(1);
   }

   void function1(int num){
      if(num > 100){
         sum += num;
         System.out.println(sum);
      } else if(num > 50){
         System.out.println(sum);
      } else{
         return;
      }
   }
}
