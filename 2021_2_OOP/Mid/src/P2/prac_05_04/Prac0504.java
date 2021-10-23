package P2.prac_05_04;

import java.util.Scanner;

public class Prac0504 {
   private static Scanner sc = new Scanner(System.in);

   public static void main(String[] args){

      System.out.println(Add.add(sc.nextInt(), sc.nextInt()));
      System.out.println(Add.add(sc.nextDouble(), sc.nextDouble()));
      System.out.println(Add.add(sc.next(), sc.next()));

   }
}
