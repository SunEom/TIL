package MP07;

import java.awt.*;

public class Block2 {
   Rectangle[] rectangles;

   Block2(Point p){
      rectangles[0] = new Rectangle(p);
      rectangles[1] = new Rectangle(new Point((int)p.getX(), (int)p.getY()+Rectangle.HEIGHT));
      rectangles[2] = new Rectangle(new Point((int)p.getX(), ((int)p.getY()+Rectangle.HEIGHT)*2));
      rectangles[3] = new Rectangle(new Point((int)p.getX(), ((int)p.getY()+Rectangle.HEIGHT)*3));
   }
   Block2(int x, int y){
      Point p = new Point(x,y);
      rectangles[0] = new Rectangle(p);
      rectangles[1] = new Rectangle(new Point((int)p.getX(), (int)p.getY()+Rectangle.HEIGHT));
      rectangles[2] = new Rectangle(new Point((int)p.getX(), ((int)p.getY()+Rectangle.HEIGHT)*2));
      rectangles[3] = new Rectangle(new Point((int)p.getX(), ((int)p.getY()+Rectangle.HEIGHT)*3));
   }

   void translate(int x, int y){
      for(int i=0; i<4; i++){
         rectangles[i].translate(x,y);
      }
   }

   public String toString(){
      String result = "";

      for(int i=0;i<3;i++){
         result += rectangles[i].toString()+"\n";
      }

      result += rectangles[3].toString();

      return result;
   }

}
