package P2.Assignment1;

import java.util.Scanner;

public class Main {
   public static void main(String[] args){
      Scanner sc = new Scanner(System.in);
      double humid = sc.nextDouble();
      double temp = sc.nextDouble();

      DewPoint d = new DewPoint(humid, temp);

      d.printDewPoint();
   }
}
