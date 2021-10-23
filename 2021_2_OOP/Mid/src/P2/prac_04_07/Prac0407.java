package P2.prac_04_07;

import java.util.Scanner;

public class Prac0407 {
   private static Scanner sc = new Scanner(System.in);
   private static int number;

   public static void main(String[] args){
      while(true){
         number = sc.nextInt();

         if(number == 0)
            continue;
         else if ( number >= 100)
            break;
         else System.out.println(number);
      }
   }
}
