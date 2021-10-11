package ex_02;

import java.util.Scanner;

public class IncludeCircle {
   public static void main(String[] args){
      Scanner sc = new Scanner(System.in);
      double x1, y1, r1, x2, y2, distance;
      System.out.printf("원의 중심과 반지름 입력 >> ");
      x1 = sc.nextDouble();
      y1 = sc.nextDouble();
      r1 = sc.nextDouble();
      
      System.out.printf("점 입력 >> ");
      x2 = sc.nextDouble();
      y2 = sc.nextDouble();
      
      distance = Math.sqrt( Math.pow(x1-x2,2) + Math.pow(y1-y2,2));
      
      if(distance <= r1)
         System.out.printf("점 (%.1f, %.1f)는 원 안에 있다.",x2,y2);
      else
         System.out.printf("점 (%.1f, %.1f)는 원 밖에 있다.",x2,y2);

   }
}
