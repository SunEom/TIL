package FinalExample.Problem2;

public class Circle extends DObject{
   private int x, y;
   private double radius;

   public Circle(int x, int y, double r){
      this.x = x;
      this.y = y;
      this.radius = r;
   }

   @Override
   void draw() {
      System.out.println(this);
   }

   @Override
   public String toString() {
      return "Circle -> 중점: ("+x+","+y+"), 반지름: "+radius;
   }
}
