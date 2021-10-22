package prac_04;

import java.util.Scanner;

public class Main {
   public static void main(String[] args){
      Scanner sc= new Scanner(System.in);

      System.out.printf("총 횟수 : ");
      int number = sc.nextInt();

      DiceProbablity dp = new DiceProbablity(number);

      dp.roll();
      dp.calcProbablity();
      dp.printProbablity();
   }
}
