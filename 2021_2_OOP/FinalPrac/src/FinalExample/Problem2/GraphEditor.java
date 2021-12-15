package FinalExample.Problem2;

import java.util.Scanner;

public class GraphEditor {
   static final int MAX_SIZE = 10;
   public static void main(String[] args){
      DObject[] doArr = new DObject[MAX_SIZE];
      Scanner sc = new Scanner(System.in);
      int itemCount = 0;
      int command1 = 0;
      int command2 = 0;

      while(command1 != 4){
         System.out.printf("삽입(1), 삭제(2), 모두 보기(3), 종료(4)>> ");
         command1 = sc.nextInt();
         if(command1 == 1){
            System.out.printf("도형종류 Line(1), Rect(2), Circle(3)>> ");
            command2 = sc.nextInt();

            if(itemCount == MAX_SIZE){
               System.out.println("배열이 가득 찼습니다.");
               continue;
            }

            if(command2 == 1){
               doArr[itemCount++] = new Line(3,4,6,7);
            } else if(command2 == 2){
               doArr[itemCount++] = new Rect(2,10,5,7);
            } else if(command2 == 3){
               doArr[itemCount++] = new Circle(5, 8, 10);
            }

         } else if(command1 == 2){
            System.out.printf("삭제하고 싶은 객체의 순서(1~)>> ");
            command2 = sc.nextInt();

            if(command2 > itemCount)
               System.out.println("없는 번호입니다.");
            else{
               for(int i=command2-1; i<itemCount-1; i++){
                  doArr[i] = doArr[i+1];
               }
               itemCount--;
            }
         } else if(command1 == 3){
            for(int i=0;i<itemCount;i++){
               doArr[i].draw();
            }
         }
      }

   }
}
