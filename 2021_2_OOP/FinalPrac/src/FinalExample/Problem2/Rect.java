package FinalExample.Problem2;

public class Rect extends DObject{
   private int lux, luy, rdx, rdy;

   public Rect(int lux, int luy, int rdx, int rdy){
      this.lux = lux;
      this.luy = luy;
      this.rdx = rdx;
      this.rdy = rdy;
   }

   @Override
   void draw() {
      System.out.println(this);
   }

   @Override
   public String toString() {
      return "Rect -> 왼쪽 위 점: ("+lux+","+luy+"), 오른쪽 아래 점: ("+rdx+","+rdy+")";
   }
}
