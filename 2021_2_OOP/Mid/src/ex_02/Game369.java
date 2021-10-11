package ex_02;

import java.util.Scanner;

public class Game369 {
   public static void main(String[] args){
      Scanner sc = new Scanner(System.in);
      String str = sc.next();
      int count = 0;

      for(int i=0 ; i <str.length(); i++){
         char temp = str.charAt(i);
         switch(temp){
            case '3':
            case '6':
            case '9':
               count++;
               break;
         }
      }

      if(count == 1)
         System.out.println("박수짝");
      else if(count == 2)
         System.out.println("박수짝짝");

   }
}
