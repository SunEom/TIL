package Prac07_01;

public class Turtle {
   protected int limbs = 4;
   protected String food;

   public Turtle(String food){
      this.food = food;
   }

   public void setFood(String food){
      this.food = food;
   }

   protected int getLimbs(){
      return this.limbs;
   }
}
