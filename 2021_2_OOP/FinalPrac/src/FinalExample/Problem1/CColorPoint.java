package FinalExample.Problem1;

public class CColorPoint extends Cpoint{
   private String color;

   public CColorPoint(int x, int y, String color){
      super(x,y);
      this.color = color;
   }

   @Override
   public void show(){
      System.out.println("("+getX()+","+getY()+") "+color);
   }

   @Override
   public String toString(){
      return super.toString();
   }
}
