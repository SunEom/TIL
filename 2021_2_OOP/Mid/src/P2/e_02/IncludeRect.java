package P2.e_02;

public class IncludeRect {
   private static boolean isIncluded(int x, int y){
      return x >= 100 && x<=200 && y>=100 && y<=200;
   }
   
   public static void printResult(int x, int y){
      if(isIncluded(x,y))
         System.out.printf("(%d, %d)를 포함합니다.\n",x, y);
      else
         System.out.printf("(%d, %d)를 포함하지 않습니다.\n",x, y);
   }
}
