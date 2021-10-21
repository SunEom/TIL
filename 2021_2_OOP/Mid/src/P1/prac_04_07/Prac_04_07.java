package P1.prac_04_07;

import java.util.Scanner;

public class Prac_04_07 {
   public static void main(String[] args){
      Scanner sc = new Scanner(System.in);
      while(true){
         int num = sc.nextInt();
         if(num == 0)
            continue;
         else if(num >= 100 )
            break;
         System.out.println(num);
      }
   }
}
