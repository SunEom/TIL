package ex_02;

import java.util.Scanner;

public class CompareNum {
   public static void main(String[] args){
      Scanner sc = new Scanner(System.in);
      String str = sc.next();
      
      if(str.charAt(0) == str.charAt(1))
         System.out.println("10의 자리와 1의 자리가 같습니다.");
      else
         System.out.println("10의 자리와 1의 자리가 같지 않습니다.");

   }
}
