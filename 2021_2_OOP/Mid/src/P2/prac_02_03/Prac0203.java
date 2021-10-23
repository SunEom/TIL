package P2.prac_02_03;

public class Prac0203 {
   private static Subway s = new Subway(3);

   public static void main(String[] args){
      s.printLineNumber();
      s.setLineNumber(5);
      s.printLineNumber();
   }
}
