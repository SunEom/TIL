package P2.prac_05_03;

import java.util.Scanner;

public class Prac0503 {
   private static int sum = 0;
   private static int number;
   private static Scanner sc = new Scanner(System.in);

   public static void main(String[] args){
      while(true){
         number = sc.nextInt();
         func1(number);
         if(number <= 50)
            break;
      }
   }

   public static void func1(int num){
      if(num> 100){
         int temp = sum + num;
         sum = temp;
         System.out.println(sum);
      } else if(num>50){
         System.out.println(sum);
      } else{
         return;
      }
   }


}
