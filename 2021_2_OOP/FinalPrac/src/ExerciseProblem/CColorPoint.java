package ExerciseProblem;

public class CColorPoint extends Cpoint{
   protected String color;

   public CColorPoint(int x, int y, String color){
      super(x,y);
      this.color = color;
   }

   @Override
   public void show() {
      super.show(color);
   }

   @Override
   public String toString() {
      return super.toString();
   }
}
