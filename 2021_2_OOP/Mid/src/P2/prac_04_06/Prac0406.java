package P2.prac_04_06;

import java.util.Scanner;

public class Prac0406 {
   private static Scanner sc = new Scanner(System.in);
   private static int number;

   public static void main(String[] args){
      while(true){
         number = sc.nextInt();
         if(number == 0 ) break;
         System.out.println(number);
      }
   }

}
