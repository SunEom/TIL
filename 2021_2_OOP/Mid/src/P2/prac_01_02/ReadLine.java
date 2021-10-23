package P2.prac_01_02;

import java.util.Scanner;

public class ReadLine {
   private static String str;
   public static void main(String[] args){
      Scanner sc = new Scanner(System.in);
      str = sc.nextLine();
      System.out.println(str);
   }
}
