import java.util.Scanner;

public class ScannerExample {
   public static void main(String[] args){
      Scanner scanner = new Scanner(System.in);

      String s;
      s = scanner.next();

      System.out.println(s);

      Double d = scanner.nextDouble();

      System.out.println(d);

   }
}
