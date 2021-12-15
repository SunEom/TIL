package FinalExample.Problem2;

public class Line extends DObject{
   private int sx, sy, ex, ey;

   public Line(int sx, int sy, int ex, int ey){
      this.sx = sx;
      this.sy = sy;
      this.ex = ex;
      this.ey = ey;
   }

   @Override
   void draw() {
      System.out.println(this);
   }

   @Override
   public String toString() {
      return "Line -> 시작점: ("+sx+","+sy+"), 끝점: ("+ex+","+ey+")";
   }
}
