package FinalExample.Problem3;

public class StackManger {
   public static void main(String[] args){
      StringStack ss = new StringStack();

      ss.push("!");
      ss.push("world");
      ss.push("Hello ");

      System.out.printf("%s",ss.pop());
      System.out.printf("%s",ss.pop());
      System.out.printf("%s",ss.pop());
      }
}
