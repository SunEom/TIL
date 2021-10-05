import java.util.Scanner;

public class Prac05_01_01 {

   static void printNum(int num){
      System.out.println(num);
   }

   static boolean isInRange(int n, int min, int max){
      return (n>=min && n<=max) ? true : false;
   }

   public static void main(String[] args){
      Scanner sc = new Scanner(System.in);
      while(true){
         int num = sc.nextInt();
         if(isInRange(num, 1, 100)){
            printNum(num);
         } else {
            System.out.println("주어진 정수는 범위 밖의 값입니다.");
         }
      }

   }
}
