package P1.prac_04_04;

import java.util.Scanner;

public class prac_04_04 {
   public static void main(String[] args){
      Scanner sc = new Scanner(System.in);
      String str = sc.next();

      while(!str.equals("quit")){
         System.out.println(str);
         str = sc.next();
      }
   }
}
