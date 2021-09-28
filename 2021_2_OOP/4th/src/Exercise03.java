class Subway{
   int lineNumber;

   Subway(int lineNumber){
      this.lineNumber = lineNumber;
   }

   void setLineNumber(int number){
      this.lineNumber = number;
   }

   void run(){
      System.out.println(lineNumber+" line runs");
   }
}

public class Exercise03 {

   public static void main(String[] args){
      Subway s1 = new Subway(1);

//      s1.setLineNumber(1);
      s1.run();

      Subway s2 = new Subway(2);
//      s2.setLineNumber(2);
      s2.run();

   }
}
