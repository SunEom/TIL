package P2.prac_02_03;

public class Subway {
   private int lineNumber;
   Subway(int number){
      lineNumber = number;
   }

   public int getlineNumber(){
      return lineNumber;
   }

   public void setLineNumber(int number){
      lineNumber = number;
   }

   public void printLineNumber(){
      System.out.println(lineNumber + " line runs");
   }
}
