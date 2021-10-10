package prac_04_03;

import java.util.Scanner;

public class prac_04_03 {
   public static void main(String[] args){
      Scanner sc = new Scanner(System.in);
      String type = sc.next();

      if(type.equals("prime"))
         System.out.println("prime 좌석의 가격은 15$ 입니다.");
      else if(type.equals("standard"))
         System.out.println("standard 좌석의 가격은 12$ 입니다.");
      else if(type.equals("economy"))
         System.out.println("economy 좌석의 가격은 10$ 입니다.");
      else
         System.out.println("좌석 종류를 잘못 입력했습니다.");
   }
}
