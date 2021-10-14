package ex_05;

public class CColorPoint extends Cpoint{
   String color;

   CColorPoint(int a, int b, String color){
      super(a,b);
      this.color = color;
   }

   void show(){
      super.show(color);
   }

   public static void main(String[] arg){
      Cpoint a,b;
      a = new Cpoint(2,3);
      b = new CColorPoint(3,4,"Red");
      a.show();
      b.show();
      System.out.println(a);
      System.out.println(b);
   }
}
