package Exercise08;

public class Circle extends Shape{
   private Point center;
   int radius;

   public Circle(Point p, int r){
      this.center = p;
      this.radius = r;
   }

   public Circle(int x, int y, int r){
      this.center = new Point(x,y);
      this.radius = r;
   }

   @Override
   public double getArea() {
      return Math.PI * radius * radius;
   }

   @Override
   public double getPerimeter() {
      return Math.PI * 2 * radius;
   }

   @Override
   public String toString() {
      return "Circle:\ncenter: "+center.toString()+"\nradius: "+radius;
   }
}
