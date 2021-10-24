package P2.e_02;

public class CompareNum {
   private static boolean isSame(int num){
      int a = num/10;
      int b = num%10;
      return a == b;
   }
   
   public static void printResult(int num){
      if(num>=10 && num<=99){
         if(isSame(num))
            System.out.println("10의 자리와 1의 자리가 같습니다.");
         else
            System.out.println("10의 자리와 1의 자리가 다릅니다.");
      }
   }
}
