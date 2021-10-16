package lecture;

import java.util.Scanner;

public class Grade {
   public static void main(String[] args){

      Scanner sc = new Scanner(System.in);
      System.out.printf("학점을 입력하세요 : ");

      switch(sc.next().charAt(0)){
         case 'a':
         case 'A':
         case 'b':
         case 'B':
            System.out.println("참 잘하였습니다.");
            break;
         case 'c':
         case 'C':
         case 'd':
         case 'D':
            System.out.println("좀 더 노력하세요.");
            break;
         case 'f':
         case 'F':
            System.out.println("다음 학기에 다시 수강하세요.");
            break;
      }

   }
}
