import java.util.Scanner;

public class Example1 {
   public static void main(String[] args){
      Scanner scanner = new Scanner(System.in);

      System.out.println("단어 1개를 입력하세요.");
      String s = scanner.next();
      System.out.println(s);
      System.out.println("정수 1개를 입력하세요.");
      int num = scanner.nextInt();
      System.out.println(num);


      System.out.println(s +" "+ num);
   }
}
