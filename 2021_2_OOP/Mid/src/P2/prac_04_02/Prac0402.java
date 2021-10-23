package P2.prac_04_02;

import java.util.Scanner;

public class Prac0402 {
   private static int num1;
   private static int num2;
   private static Scanner sc = new Scanner(System.in);

   public static void main(String[] args){
      num1 = sc.nextInt();
      num2 = sc.nextInt();

      if(num2 % num1 == 0)
         System.out.printf("%d는 %d의 약수입니다.", num1, num2);
      else
         System.out.printf("%d는 %d의 약수가 아닙니다.", num1, num2);
   }
}
