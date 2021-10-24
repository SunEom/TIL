package P2.Assignment1;

public class DewPoint {
   private double humid;
   private double temp;
   private double dewPoint;

   DewPoint(double h, double t){
      humid = h;
      temp = t;
      dewPoint = getDewPoint();
   }

   private double getDewPoint(){
      double a = Math.log(humid/100) + ((17.62*temp)/(243.12 + temp));
      return (243.12 * a) / (17.62 - a);
   }

   public void printDewPoint(){
      System.out.println("이슬점 : "+ ((int)(dewPoint*10))/10.0);
   }
}
