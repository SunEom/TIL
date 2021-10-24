package P2.e_02;

public class IncludeCircle {
   private static boolean isInclude(double x, double y, double r, double a, double b){
      double distance = Math.sqrt(Math.pow(x-a,2) + Math.pow(y-b,2));
      return distance <= r;
   }
   public static void printResult(double x, double y, double r, double a, double b){
      if(isInclude(x,y,r,a,b))
         System.out.printf("점 (%g, %g)는 원 안에 있다.\n",a,b);
      else
      if(isInclude(x,y,r,a,b))
         System.out.printf("점 (%g, %g)는 원 밖에 있다.\n",a,b);
   }
}
