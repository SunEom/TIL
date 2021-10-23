package P2.prac_01_01;

import java.util.Scanner;

public class Prac0101 {
   private static String str;
   private static int number;
   public static void main(String[] args){
      Scanner sc = new Scanner(System.in);

      System.out.printf("단어 입력 : ");
      str = sc.next();
      System.out.println(str);

      System.out.printf("정수 입력 : ");
      number = sc.nextInt();
      System.out.println(number);

   }
}
