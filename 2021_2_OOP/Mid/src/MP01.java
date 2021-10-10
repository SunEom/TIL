import java.util.Scanner;

public class MP01 {
   public static void main(String[] args){
      double humid, temp;
      double a, b, result;
      Scanner sc = new Scanner(System.in);
      
      System.out.printf("습도를 입력해주세요 : ");
      humid = sc.nextDouble();

      System.out.printf("온도를 입력해주세요 : ");
      temp = sc.nextDouble();

      a = Math.log(humid/100);
      b = (17.62*temp)/(243.12+temp);

      result = (243.12*(a+b))/(17.62-(a+b));

      System.out.println(((int)(result*10))/10.0);
   }
}
