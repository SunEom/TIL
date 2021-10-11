package ex_02;

import java.util.Scanner;

public class IncludeRect {
   public static void main(String[] args){
      Scanner sc = new Scanner(System.in);
      
      int x1 = sc.nextInt();
      int y1 = sc.nextInt();
      int x2 = sc.nextInt();
      int y2 = sc.nextInt();
      
      for(int i= Math.min(x1,x2); i<=Math.max(x1,x2); i++){
         for(int j= Math.min(y1,y2); j<Math.max(y1,y2); j++){
            if(!( (i>=100 && i<=200) && (j>=100 && j<=200) )){
               System.out.println("사각형이 직사각형 밖에 있습니다.");
               return;
            }
         }
      }

      System.out.println("사각형이 직사각형 안에 있습니다.");
   }
}
