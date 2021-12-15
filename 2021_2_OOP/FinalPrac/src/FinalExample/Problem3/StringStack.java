package FinalExample.Problem3;

public class StringStack implements Stack{
   static final int MAX_SIZE = 1000;
   private String[] stack = new String[MAX_SIZE];
   private int top;

   public StringStack(){
      this.top = -1;
   }

   @Override
   public int length() {
      return top+1;
   }

   @Override
   public Object pop() {
      if(top ==-1){
         System.out.println("Stack is empty");
         return null;
      } else {
         top-=1;
         return stack[top+1];
      }

   }

   @Override
   public Boolean push(Object ob) {
      if(top == MAX_SIZE -1){
         System.out.println("Stack is full...");
         return false;
      } else {
         top+=1;
         stack[top] = (String)ob;
         return true;
      }
   }
}
