package P2.prac_04_10;

import java.util.Scanner;

public class Prac0410 {
   private static Scanner sc = new Scanner(System.in);

   public static void main(String[] args){
      switch(sc.next()){
         case "economy":
            System.out.println("$12");
            break;
         case "standard":
            System.out.println("$15");
            break;
         case "prime":
            System.out.println("$20");
            break;
         default:
            System.out.println("좌석 종류를 잘못 입력했습니다.");
            break;
      }
   }
}
