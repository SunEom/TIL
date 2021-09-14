import java.util.Scanner;

public class IntSum {
   public static void main(String[] args){
      Scanner scanner = new Scanner(System.in);

      String s1 = scanner.next();
      String s2 = scanner.next();
      int n1,n2;
      float f1, f2;

      float sum = 0.0f;

      if(s1.contains(".")){
         f1 = Float.parseFloat(s1);
         sum += f1;
      } else {
         n1 = Integer.parseInt(s1);
         sum += n1;
      }

      if(s2.contains(".")){
         f2 = Float.parseFloat(s2);
         sum += f2;
      } else {
         n2 = Integer.parseInt(s2);
         sum += n2;
      }

      System.out.println(sum);

   }
}
