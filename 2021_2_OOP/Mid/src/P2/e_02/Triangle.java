package P2.e_02;

public class Triangle {
   public static void isPossible(int a, int b, int c){
      if((a<b+c) && (b<a+c) && (c<a+b))
         System.out.println("삼각형을 만들 수 있습니다.");
      else
         System.out.println("삼각형을 만들 수 없습니다.");
   }
}
