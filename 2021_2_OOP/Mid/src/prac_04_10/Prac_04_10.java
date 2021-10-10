package prac_04_10;

import java.util.Scanner;

public class Prac_04_10 {
   public static void main(String[] args){
      Scanner sc = new Scanner(System.in);
      String type = sc.next();

      switch(type){
         case "prime":
            System.out.println("가격 : 11000");
            break;
         case "standard":
            System.out.println("가격 : 10000");
            break;
         case "economy":
            System.out.println("가격 : 9000");
            break;
         default:
            System.out.println("좌석 종류를 잘못 입력했습니다.");
            break;
      }
   }
}
