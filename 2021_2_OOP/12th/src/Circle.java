public class Circle extends Shape{
   private Point center;
   private int radius;

   public Circle(Point p, int r){
      center = p;
      radius = r;
   }

   public Circle(int x, int y, int r){
      center = new Point(x,y);
      radius = r;
   }

   public double getArea(){
      return Math.PI * radius * radius;
   }

   public double getPerimeter(){
      return Math.PI * radius * 2;
   }

   @Override
   public String toString(){
      return "Circle:\ncenter: "+center.toString()+"\nradius: "+radius;
   }
}
