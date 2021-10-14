package ex_04;

import java.util.Scanner;

public class Calculate {
   public static void main(String[] args){
      Scanner sc = new Scanner(System.in);
      System.out.printf("두 정수와 연산자를 입력하시오>> ");
      int a = sc.nextInt();
      int b = sc.nextInt();
      char operator = sc.next().charAt(0);
      switch(operator){
         case'+':
            Add add = new Add(a,b);
            System.out.println(add.calculate());
            break;
         case'-':
            Sub sub = new Sub(a,b);
            System.out.println(sub.calculate());
            break;
         case'*':
            Mul mul = new Mul(a,b);
            System.out.println(mul.calculate());
            break;
         case'/':
            Div div = new Div(a,b);
            System.out.println(div.calculate());
            break;
      }
   }
}
