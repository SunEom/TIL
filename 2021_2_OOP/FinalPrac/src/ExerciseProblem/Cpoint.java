package ExerciseProblem;

public class Cpoint {
   protected int x;
   protected int y;

   public Cpoint(int x, int y) {
      this.x = x;
      this.y = y;
   }

   public void show(){
      System.out.printf("(%d, %d)\n",x,y);
   }

   public void show(String color){
      System.out.printf("(%d, %d) %s\n",x,y,color);
   }

   @Override
   public String toString() {
      return "("+this.x+","+this.y+") 입니다";
   }


}
