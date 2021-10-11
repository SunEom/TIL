package ex_02;

import java.util.Scanner;

public class Triangle {
   public static void main(String[] args){
      int a, b, c;
      Scanner sc = new Scanner(System.in);

      a = sc.nextInt();
      b = sc.nextInt();
      c = sc.nextInt();

      if(a>=b && a>=c){
         if(b+c > a)
            System.out.println("삼각형이 가능합니다.");
         else
            System.out.println("삼각형이 불가능합니다.");
      }else if(b>=a && b>=c){
         if(a+c > b)
            System.out.println("삼각형이 가능합니다.");
         else
            System.out.println("삼각형이 불가능합니다.");
      } else {
         if(a+b > c)
            System.out.println("삼각형이 가능합니다.");
         else
            System.out.println("삼각형이 불가능합니다.");
      }
   }
}
