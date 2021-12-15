package FinalExample.Problem4;

public class Main {
   public static void main(String[] args){
      MyPoint p = new MyColorPoint(2,3,"blue");
      p.move(3,4);
      p.reverse();
      p.show();
   }
}
