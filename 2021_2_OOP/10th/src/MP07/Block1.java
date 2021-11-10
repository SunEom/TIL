import java.awt.*;

public class Block1 {
   Rectangle[] rectangles = new Rectangle[4];

   Block1(Point p){
      rectangles[0] = new Rectangle(p);
      rectangles[1] = new Rectangle(new Point((int)p.getX()+Rectangle.WIDTH, (int)p.getY()));
      rectangles[2] = new Rectangle(new Point((int)p.getX(), (int)p.getY()+Rectangle.HEIGHT));
      rectangles[3] = new Rectangle(new Point((int)p.getX()+Rectangle.WIDTH, (int)p.getY()+Rectangle.HEIGHT));
   }
   Block1(int x, int y){
      Point p = new Point(x,y);
      rectangles[0] = new Rectangle(p);
      rectangles[1] = new Rectangle(new Point((int)p.getX()+Rectangle.WIDTH, (int)p.getY()));
      rectangles[2] = new Rectangle(new Point((int)p.getX(), (int)p.getY()+Rectangle.HEIGHT));
      rectangles[3] = new Rectangle(new Point((int)p.getX()+Rectangle.WIDTH, (int)p.getY()+Rectangle.HEIGHT));
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
