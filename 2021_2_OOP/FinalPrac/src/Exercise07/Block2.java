package Exercise07;

import java.awt.*;

public class Block2 {
   private Rectangle[] rectangles = new Rectangle[4];

   public Block2(Point p){
      int x = (int)p.getX();
      int y = (int)p.getY();

      rectangles[0] = new Rectangle(p);
      rectangles[1] = new Rectangle(new Point(x, y+Rectangle.HEIGHT));
      rectangles[2] = new Rectangle(new Point(x, y+Rectangle.HEIGHT*2));
      rectangles[3] = new Rectangle(new Point(x, y+Rectangle.HEIGHT*3));

   }

   public Block2(int x, int y){
      rectangles[0] = new Rectangle(new Point(x, y));
      rectangles[1] = new Rectangle(new Point(x, y+Rectangle.HEIGHT));
      rectangles[2] = new Rectangle(new Point(x, y+Rectangle.HEIGHT*2));
      rectangles[3] = new Rectangle(new Point(x, y+Rectangle.HEIGHT*3));
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
