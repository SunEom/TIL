package P1.prac_05_01;

import java.util.Scanner;

public class Prac_05_01 {
   public static void main(String[] args){
      Scanner sc = new Scanner(System.in);
      int num = sc.nextInt();
      if(isInRange(num, 1, 100)){
         System.out.println(num);
      } else {
         System.out.println("1~100 범위 밖 정수가 입력되었습니다.");
      }
   }

   static boolean isInRange(int n, int min, int max){
      if(n >= min && n <= max)
         return true;
      else
         return false;
   }
}
