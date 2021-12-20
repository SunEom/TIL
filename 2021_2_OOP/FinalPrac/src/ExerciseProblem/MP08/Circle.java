package ExerciseProblem.MP08;

public class Circle extends Shape{
   private Point center;
   private int radius;

   public Circle(Point center, int radius) {
      this.center = center;
      this.radius = radius;
   }

   public Circle(int x, int y, int radius) {
      this.center = new Point(x,y);
      this.radius = radius;
   }

   @Override
   public double getArea(){
      return Math.PI * radius * radius;
   }

   @Override
   public double getPerimeter(){
      return Math.PI * radius * 2;
   }

   @Override
   public String toString() {
      return "Circle:\ncenter: "+center.toString()+"\nradius: "+this.radius;
   }
}

