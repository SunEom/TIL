package P2.Assignment2;

import java.util.Scanner;

public class Main {
   public static void main(String[] args){
      Scanner sc = new Scanner(System.in);
      char[] s = new char[5];
      for(int i=0; i <5; i++){
         s[i] = sc.next().charAt(0);
      }

      System.out.printf("문자열 %c%c%c%c%c의 해시 값은 %.2f입니다.\n",s[0],s[1],s[2],s[3],s[4], Hash.calcHash(s));
   }
}
