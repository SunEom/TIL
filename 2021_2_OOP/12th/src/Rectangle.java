public class Rectangle extends Shape {
   private Point p1;
   private Point p2;

   public Rectangle(Point p1, Point p2){
      this.p1 = p1;
      this.p2 = p2;
   }

   public Rectangle(int x1, int y1, int x2, int y2){
      p1 = new Point(x1, y1);
      p2 = new Point(x2, y2);
   }

   public double getArea(){
      return Math.abs(p1.getX()-p2.getX()) * Math.abs(p1.getY()-p2.getY());
   }

   public double getPerimeter(){
      return (Math.abs(p1.getX()-p2.getX()) + Math.abs(p1.getY()-p2.getY()))*2;
   }

   public String toString(){
      return "Rectangle:\np1: "+p1.toString()+"\np2: "+p2.toString();
   }
}
