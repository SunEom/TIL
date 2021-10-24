package P2.Assignment4;

import java.util.Scanner;

public class Main {
   public static void main(String[] args){
      Scanner sc = new Scanner(System.in);
      System.out.printf("총 횟수 : ");
      int number = sc.nextInt();

      DiceProbability dp = new DiceProbability(number);

      dp.roll();
      dp.calcProbabiliy();
      dp.printProbabiliy();

   }
}
