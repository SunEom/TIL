import java.util.Scanner;

public class ReadLine {
   public static void main(String[] args){
      Scanner scanner = new Scanner(System.in);

      System.out.println("문장 1개를 입력해주세요.");
      String s = scanner.nextLine();
      System.out.println(s);
   }
}
