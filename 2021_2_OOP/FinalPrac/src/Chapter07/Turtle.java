package Chapter07;

public class Turtle {
   private int limbs = 4;
   protected String food;

   public void setFood(String food){
      this.food = food;
   }

   public void eat(){
      System.out.println("Turtle eats "+food);
   }
}
