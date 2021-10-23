package P2.prac_04_05;

import java.util.Scanner;

public class Prac0405 {
   private static Scanner sc = new Scanner(System.in);
   private static int number;

   public static void main(String[] args){
      do{
         number = sc.nextInt();
         System.out.println(number);
      }while(number != 0);
   }
}
