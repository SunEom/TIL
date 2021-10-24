package P2.e_02;

public class Calculator {
   public static void calc(char operator, double op1, double op2){
      if(operator == '+'){
         System.out.println(op1+op2);
      } else if(operator == '-'){
         System.out.println(op1-op2);
      } else if(operator == '%'){
         if(op2 != 0 )
            System.out.println(op1%op2);
         else
            System.out.println("0으로 나눌 수 없습니다.");
      } else if(operator == '/'){
         if(op2 != 0 )
            System.out.println(op1/op2);
         else
            System.out.println("0으로 나눌 수 없습니다.");
      }
   }
}
