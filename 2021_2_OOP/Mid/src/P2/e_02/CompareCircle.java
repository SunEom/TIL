package P2.e_02;

public class CompareCircle {
   private static boolean isOverlap(int x1, int y1, int r1, int x2, int y2, int r2){
      double distance = Math.sqrt(Math.pow(x1-x2,2)+Math.pow(y1-y2,2));
      return distance <= r1+r2;
   }
   
   public static void printResult(int x1, int y1, int r1, int x2, int y2, int r2){
      if(isOverlap(x1,y1,r1,x2,y2,r2))
         System.out.println("두 원은 서로 겹친다.");
      else
         System.out.println("두 원은 서로 겹치지 않는다.");
   }
}
