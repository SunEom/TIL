package P2.prac_01_04;

import java.util.Scanner;

public class Prac0104 {
   private static String s1;
   private static String s2;
   private static double num1;
   private static double num2;
   private static Scanner sc = new Scanner(System.in);

   public static void main(String[] args){
      s1 = sc.next();
      s2 = sc.next();

      num1 = Float.parseFloat(s1);
      num2 = Float.parseFloat(s2);

      System.out.println(num1+num2);
   }
}
