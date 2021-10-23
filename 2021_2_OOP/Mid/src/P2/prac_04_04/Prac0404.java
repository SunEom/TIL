package P2.prac_04_04;

import java.util.Scanner;

public class Prac0404 {
   private static Scanner sc = new Scanner(System.in);
   private static String command;

   public static void main(String[] args){
      command = sc.next();
      while(!command.equals("quit")){
         System.out.println(command);

         command = sc.next();
      }
   }
}
