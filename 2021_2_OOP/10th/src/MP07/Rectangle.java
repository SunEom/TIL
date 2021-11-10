package MP07;

import java.awt.*;

public class Rectangle {
   static final int WIDTH = 50;
   static final int HEIGHT = 50;
   Point upperLeft;
   Point lowerRight;

   Rectangle (Point uL){
      upperLeft = uL;
      lowerRight = new Point((int)uL.getX()+WIDTH , (int)uL.getY()+HEIGHT);
   }

   Rectangle(Point uL, Point lR){
      upperLeft = uL;
      lowerRight = lR;
   }

   public void translate(int x, int y){
      upperLeft.move((int)upperLeft.getX()+x, (int)upperLeft.getY()+y);
      lowerRight.move((int)lowerRight.getX()+x, (int)lowerRight.getY()+y);
   }

   public String toString(){
      return "UL : "+upperLeft +", LR: "+lowerRight;
   }

}
