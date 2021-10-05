import java.util.Scanner;

public class Exercise4 {
   public static void main(String[] args){
      Scanner sc = new Scanner(System.in);
      String word = sc.next();

      while(!word.equals("quit")){
         System.out.println(word);
         word = sc.next();
      }

   }
}
