package Prac2;

public class Circle2 {
   private int r;
   private Point center;

   public Circle2(int x , int y, int r){
      this.center = new Point(x,y); // 구성관계
      this.r = r;
   }

   public Circle2(Point p, int r){
      this.center = p; // 집합관계
      this.r = r;
   }

   @Override
   public String toString() {
      return super.toString() + "\nr: "+r +"\nArea: "+getArea() +"\nPerimeter: "+getPerimeter();
   }

   public double getArea(){
      return Math.PI * r * r;
   }

   public double getPerimeter(){
      return Math.PI * 2 * r;
   }
}
