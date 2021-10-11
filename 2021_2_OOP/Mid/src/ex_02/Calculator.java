package ex_02;

import java.util.Scanner;

public class Calculator {
   public static void main(String[] args){
      Scanner sc = new Scanner(System.in);
      char operator;
      double opr1, opr2;
      operator = sc.next().charAt(0);
      opr1 = sc.nextDouble();
      opr2 = sc.nextDouble();

      switch(operator){
         case '+':
            System.out.println(opr1+opr2);
            break;
         case '-':
            System.out.println(opr1-opr2);
            break;
         case '%':
            if(opr2 == 0)
               System.out.println("0으로 나눌 수 없습니다.");
            else
               System.out.println(opr1%opr2);
            break;
         case '/':
            if(opr2 == 0)
               System.out.println("0으로 나눌 수 없습니다.");
            else
               System.out.println(opr1/opr2);
            break;
      }
   }
}
