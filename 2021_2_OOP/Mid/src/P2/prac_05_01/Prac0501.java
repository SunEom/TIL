package P2.prac_05_01;

import java.util.Scanner;

public class Prac0501 {
   private static int number;
   private static Scanner sc = new Scanner(System.in);

   public static boolean isInRange(int n, int min, int max){
      return n>=min && n<=max;
   }

   public static void main(String[] args){
      number = sc.nextInt();
      if(isInRange(number, 1, 100))
         System.out.println(number);
      else
         System.out.println("1~100 범위 밖 정수가 입력되었습니다.");
   }
}
