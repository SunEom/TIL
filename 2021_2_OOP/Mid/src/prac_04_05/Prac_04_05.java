package prac_04_05;

import java.util.Scanner;

public class Prac_04_05 {
   public static void main(String[] args){
      Scanner sc = new Scanner(System.in);
      int num = sc.nextInt();
      while(true){
         System.out.println(num);
         if(num == 0)
            break;
         num = sc.nextInt();
      }
   }
}
