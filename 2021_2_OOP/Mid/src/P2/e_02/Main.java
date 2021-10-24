package P2.e_02;

import java.util.Scanner;

public class Main {
   public static void main(String[] args){
//      #01
//
//      Scanner sc = new Scanner(System.in);
//
//      Casechanger.printChangedChar(sc.next().charAt(0));



//      #02
//
//      Scanner sc = new Scanner(System.in);
//      ChangeMoney.printResult(sc.nextInt());


//      #03
//
//      Scanner sc = new Scanner(System.in);
//      Triangle.isPossible(sc.nextInt(), sc.nextInt(), sc.nextInt());



//      #04
//
//      Scanner sc = new Scanner(System.in);
//      int x1 = sc.nextInt();
//      int y1 = sc.nextInt();
//      int x2 = sc.nextInt();
//      int y2 = sc.nextInt();
//
//      Rectangle.isCollied(x1,y1,x2,y2);


//      #05
//
//      Scanner sc = new Scanner(System.in);
//      int num = sc.nextInt();
//      Game369.printResult(num);


//      #06
//
//      Scanner sc = new Scanner(System.in);
//      int x = sc.nextInt();
//      int y = sc.nextInt();
//      IncludeRect.printResult(x, y);


//      #07
//
//      Scanner sc = new Scanner(System.in);
//      int num = sc.nextInt();
//      CompareNum.printResult(num);


//      #08
//
//      Scanner sc = new Scanner(System.in);
//      int x1 = sc.nextInt();
//      int y1 = sc.nextInt();
//      int r1 = sc.nextInt();
//      int x2 = sc.nextInt();
//      int y2 = sc.nextInt();
//      int r2 = sc.nextInt();
//
//      CompareCircle.printResult(x1,y1,r1,x2,y2,r2);



//      #09
//
//      Scanner sc = new Scanner(System.in);
//      double x = sc.nextDouble();
//      double y = sc.nextDouble();
//      double r = sc.nextDouble();
//      double a = sc.nextDouble();
//      double b = sc.nextDouble();
//
//      IncludeCircle.printResult(x,y,r,a,b);



      Scanner sc = new Scanner(System.in);
      char operator = sc.next().charAt(0);
      double op1 = sc.nextDouble();
      double op2 = sc.nextDouble();

      Calculator.calc(operator,op1,op2);

   }
}
