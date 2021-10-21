package P1.prac_05_03;

import java.util.Scanner;

public class Prac_05_03 {
   static int sum = 0;
   public static void main(String[] args){
      Scanner sc = new Scanner(System.in);

      while(true){
         int num = sc.nextInt();
         if(num > 100){
            sum+=num;
            System.out.println(sum);
         } else if(num > 50){
            System.out.println(sum);
         } else {
            break;
         }
      }
   }
}
