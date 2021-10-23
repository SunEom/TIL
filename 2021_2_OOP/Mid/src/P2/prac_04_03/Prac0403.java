package P2.prac_04_03;

import java.util.Scanner;

public class Prac0403 {
   private static Scanner sc = new Scanner(System.in);
   private static String command;
   public static void main(String[] args){
      command = sc.next();

      if(command.equals("prime")){
         System.out.println("prime 좌석의 가격은 $20입니다.");
      } else if(command.equals("standard")){
         System.out.println("standard 좌석의 가격은 $15입니다.");
      } else if(command.equals("economy")){
         System.out.println("economy 좌석의 가격은 $12입니다.");
      } else {
         System.out.println("좌석 종류를 잘못 입력했습니다.");
      }
   }
}
