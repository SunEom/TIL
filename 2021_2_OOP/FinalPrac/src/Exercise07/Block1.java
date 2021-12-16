package Exercise07;

import java.awt.*;

public class Block1 {
   private Rectangle[] rectangles = new Rectangle[4];

   public Block1(Point p){
      int x = (int)p.getX();
      int y = (int)p.getY();

      rectangles[0] = new Rectangle(p);
      rectangles[1] = new Rectangle(new Point(x+Rectangle.WIDTH, y));
      rectangles[2] = new Rectangle(new Point(x, y+Rectangle.HEIGHT));
      rectangles[3] = new Rectangle(new Point(x+Rectangle.WIDTH, y+Rectangle.HEIGHT));
   }

   public Block1(int x, int y){
      rectangles[0] = new Rectangle(new Point(x, y));
      rectangles[1] = new Rectangle(new Point(x+Rectangle.WIDTH, y));
      rectangles[2] = new Rectangle(new Point(x, y+Rectangle.HEIGHT));
      rectangles[3] = new Rectangle(new Point(x+Rectangle.WIDTH, y+Rectangle.HEIGHT));
   }

   public void translate(int x, int y){
      for(Rectangle r : rectangles){
         r.translate(x, y);
      }
   }

   public String toString(){
      String str = "";
      for(Rectangle r : rectangles){
         str += r.toString();
      }
      return str;
   }
}
