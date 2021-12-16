package Exercise07;

import java.awt.*;

public class Rectangle {
   static final int WIDTH = 50;
   static final int HEIGHT = 50;
   private Point upperLeft;
   private Point lowerRight;

   public Rectangle(Point ul){
      this.upperLeft = ul;
      this.lowerRight = new Point((int)ul.getX()+WIDTH , (int)ul.getY()+HEIGHT);
   }

   public Rectangle(Point ul, Point lr){
      this.upperLeft = ul;
      this.lowerRight = lr;
   }

   public void translate(int x, int y){
      upperLeft.translate(x,y);
      lowerRight.translate(x,y);
   }

   @Override
   public String toString(){
      return "UL: " + upperLeft.toString() +" LR: "+ lowerRight.toString()+"\n";
   }
}
