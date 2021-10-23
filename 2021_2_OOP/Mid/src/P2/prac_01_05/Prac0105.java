package P2.prac_01_05;

import java.util.Scanner;

public class Prac0105 {
   private static double fah;
   private static double cel;
   private static Scanner sc = new Scanner(System.in);

   public static void main(String[] args){
      fah = sc.nextDouble();
      cel = (5./9) * (fah-32);
      cel = ((int)(cel*10))/10.0;
      System.out.println(cel);
   }
}
