package ex_02;

import java.util.Scanner;

public class Rectangle {
   public static void main(String[] args){
      Scanner sc = new Scanner(System.in);
      
      int x1 = sc.nextInt();
      int y1 = sc.nextInt();
      int x2 = sc.nextInt();
      int y2 = sc.nextInt();
      
      for(int i = Math.min(x1,x2) ; i<=Math.max(x1,x2); i++){
         for(int j= Math.min(y1,y2); j <=Math.max(y1,y2); j++){
            if((i>50 && i<100) && (j>50 && j<100)){
                System.out.println("두 사각형은 서로 충돌합니다.");
                return;
            }
         }
      }

      System.out.println("두 사각형은 서로 충돌하지 않습니다.");
   }
}
