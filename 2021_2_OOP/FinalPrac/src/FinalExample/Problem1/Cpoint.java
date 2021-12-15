package FinalExample.Problem1;

public class Cpoint {
   protected int x;
   protected int y;

   public Cpoint(int x, int y){
      this.x = x;
      this.y = y;
   }

   public int getX() {
      return x;
   }

   public int getY() {
      return y;
   }

   public void show(){
      System.out.println("("+getX()+","+getY()+")");
   }

   @Override
   public String toString(){
      return "("+getX()+","+getY()+") 입니다.";
   }
}
