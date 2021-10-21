package P1.prac_04_02;

import java.util.Scanner;

public class prac_04_02 {
   public static void main(String[] args){
      Scanner sc = new Scanner(System.in);
      int a,b;

      System.out.printf("정수 2개를 입력해주세요 : ");

      a = sc.nextInt();
      b = sc.nextInt();

      if(b%a ==0)
         System.out.printf("%d는 %d의 약수입니다.", a, b);
      else
         System.out.printf("%d는 %d의 약수가 아닙니다.", a,b);

   }
}
