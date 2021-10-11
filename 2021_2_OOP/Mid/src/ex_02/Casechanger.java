package ex_02;

import java.util.Scanner;

public class Casechanger {
   public static void main(String[] args){
      Scanner sc = new Scanner(System.in);
      char c = sc.next().charAt(0);

      if(c >= 'a' && c<='z'){
         System.out.printf("%c\n",c+('A'-'a'));
      } else if(c >= 'A' && c<='Z'){
         System.out.printf("%c\n",c-('A'-'a'));
      } else {
         System.out.println("영문자가 아닙니다.");
      }
   }
}
