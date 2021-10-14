package ex_05;

public class MyColorPoint extends MyPoint{
   String color;
   MyColorPoint(int x, int y, String color){
      super(x,y);
      this.color = color;
   }

   public static void main(String[] args) {
      MyPoint p = new MyColorPoint(2, 3, "blue");
      p.move(3, 4);
      p.reverse();
      p.show();
   }

   protected void move(int x, int y) {
      this.x = x;
      this.y = y;
   }

   protected void reverse() {
      int temp = this.x;
      this.x = this.y;
      this.y = temp;
   }

   protected void show(){
      System.out.print(x + ", " + y+", "+color);
   }
}
