package ex_02;

import java.util.Scanner;

public class CompareCircle {
   public static void main(String[] args){
      int x1, y1, r1, x2, y2, r2;
      double distance;
      Scanner sc = new Scanner(System.in);

      System.out.printf("첫번째 원의 중심과 반지름 입력 >> ");
      x1 = sc.nextInt();
      y1 = sc.nextInt();
      r1 = sc.nextInt();

      System.out.printf("두번째 원의 중심과 반지름 입력 >> ");
      x2 = sc.nextInt();
      y2 = sc.nextInt();
      r2 = sc.nextInt();

      distance = Math.sqrt( Math.pow(x1-x2,2) + Math.pow(y1-y2,2) );

      if(distance >= r1+r2)
         System.out.println("두 원은 겹치지 않습니다.");
      else
         System.out.println("두 원은 겹칩니다.");

   }
}
