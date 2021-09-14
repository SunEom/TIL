import java.util.Scanner;

public class FahToCel2 {
   public static void main(String[] args){
      Scanner scanner = new Scanner(System.in);

      double fah = scanner.nextDouble();

      double cel = (5.0/9.0)*(fah-32);

      System.out.printf("%.1f",cel);
   }
}
