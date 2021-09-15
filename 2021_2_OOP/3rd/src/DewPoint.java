import java.util.Scanner;

public class DewPoint {
   public static void main(String[] args){
      double humid, temp;

      double dewPoint;

      Scanner scanner = new Scanner(System.in);
      System.out.println("습도를 입력해주세요.");
      humid = scanner.nextDouble();
      System.out.println("온도를 입력해주세요.");
      temp = scanner.nextDouble();

      dewPoint = (243.12 * (Math.log(humid/100)+((17.62*temp)/(243.12+temp))))/(17.62-((Math.log(humid/100)+((17.62*temp)/(243.12+temp)))));

      dewPoint = (int)(dewPoint*10)/10.0;

      System.out.println(dewPoint);
   }
}
