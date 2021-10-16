package lecture;

import java.util.Scanner;

public class Rectangle {
   public static void main(String[] args){
      Scanner sc = new Scanner(System.in);
      int x1,x2,y1,y2;

      System.out.printf("직사각형의 첫번째 점의 x1, y1 좌표를 차례로 입력하세요.: ");
      x1 = sc.nextInt();
      y1 = sc.nextInt();

      System.out.printf("두번째 점의 x2, y2 좌표를 차례로 입력하세요.: ");
      x2 = sc.nextInt();
      y2 = sc.nextInt();

      for(int i = 50; i<=100; i++){
         for(int j = 50; j<=100; j++){
            if(i> (x1<x2 ? x1 : x2) && i< (x1>x2 ? x1 : x2)  && j >(y1<y2 ? y1 : y2) && j < (y1>y2 ? y1 : y2)){
               System.out.println("두 사각형은 충돌합니다.");
               return;
            }
         }
      }

      System.out.println("두 사각형은 충돌하지 않습니다.");
   }
}
