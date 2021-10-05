import java.util.Scanner;

public class Exercise6 {
   public static void main(String[] args){
      Scanner sc = new Scanner(System.in);
      while(true){
         char c = sc.next().charAt(0);
         if(c == 'n')
            break;
         System.out.println(c);
      }
   }
}
