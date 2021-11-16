package Prac2;

public class Circle extends Point{
   private int r;

   public Circle(int x , int y, int r){
      super(x,y);
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
